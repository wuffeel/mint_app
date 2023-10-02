import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/controller/user_controller.dart';
import '../../domain/entity/notification_model/notification_model.dart';
import '../../domain/entity/user_model/user_model.dart';
import '../../domain/use_case/fetch_chat_room_use_case.dart';
import '../../domain/use_case/get_app_notification_stream_use_case.dart';

part 'app_notifications_event.dart';

part 'app_notifications_state.dart';

@Injectable(as: AppNotificationsBloc)
class AppNotificationsBlocBase extends AppNotificationsBloc<UserModel?> {
  AppNotificationsBlocBase(
    super.getAppNotificationStreamUseCase,
    super.fetchChatRoomUseCase,
    super.userController,
  );
}

class AppNotificationsBloc<T extends UserModel?>
    extends Bloc<AppNotificationsEvent, AppNotificationsState> {
  AppNotificationsBloc(
    this._getAppNotificationStreamUseCase,
    this._fetchChatRoomUseCase,
    this._userController,
  ) : super(AppNotificationsInitial()) {
    _subscribeToUserChange();
    on<AppNotificationsInitializeRequested>(_onInitializeAppNotifications);
    on<AppNotificationsFetchChatRoomRequested>(_onFetchChatRoom);
  }

  final GetAppNotificationStreamUseCase _getAppNotificationStreamUseCase;
  final FetchChatRoomUseCase _fetchChatRoomUseCase;

  T? _currentUser;
  final UserController<T?> _userController;
  late final StreamSubscription<T?> _userSubscription;

  void _subscribeToUserChange() {
    _userSubscription = _userController.user.listen((user) {
      _currentUser = user;
      if (state is AppNotificationsInitial) {
        add(AppNotificationsInitializeRequested());
      }
    });
  }

  @override
  Future<void> close() async {
    await _userSubscription.cancel();
    return super.close();
  }

  Future<void> _onInitializeAppNotifications(
    AppNotificationsInitializeRequested event,
    Emitter<AppNotificationsState> emit,
  ) async {
    final user = _currentUser;
    if (user == null) return;
    try {
      return emit.forEach(
        await _getAppNotificationStreamUseCase(user.id),
        onData: (notificationList) {
          final todayNotifications = <NotificationModel>[];
          final previousNotifications = <NotificationModel>[];
          final now = DateTime.now();
          final today = DateTime(now.year, now.month, now.day);
          for (final notification in notificationList) {
            if (notification.createdAt.isBefore(today)) {
              previousNotifications.add(notification);
            } else {
              todayNotifications.add(notification);
            }
          }
          return AppNotificationsFetchSuccess(
            todayNotifications,
            previousNotifications,
          );
        },
      );
    } catch (error) {
      log('AppNotificationsFetchFailure: $error');
      emit(AppNotificationsFetchFailure());
    }
  }

  Future<void> _onFetchChatRoom(
    AppNotificationsFetchChatRoomRequested event,
    Emitter<AppNotificationsState> emit,
  ) async {
    final user = _currentUser;
    final state = this.state;
    if (user == null || state is! AppNotificationsFetchSuccess) return;

    try {
      final loadingState = AppNotificationsMessageLoading(
        state.todayNotifications,
        state.previousNotifications,
        event.notificationId,
      );
      emit(loadingState);
      final room = await _fetchChatRoomUseCase(event.roomId);
      if (room == null) {
        emit(AppNotificationsFetchChatRoomFailure());
        return;
      }
      emit(AppNotificationsFetchChatRoomSuccess(user.id, room));
    } catch (error) {
      log('AppNotificationsFetchChatRoomFailure: $error');
      emit(AppNotificationsFetchChatRoomFailure());
    }
  }
}
