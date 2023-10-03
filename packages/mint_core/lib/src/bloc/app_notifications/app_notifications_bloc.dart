import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../mint_core.dart';
import '../../domain/controller/user_controller.dart';
import '../../domain/use_case/clear_app_notifications_use_case.dart';
import '../../domain/use_case/fetch_chat_room_use_case.dart';
import '../../domain/use_case/get_app_notification_stream_use_case.dart';
import '../../domain/use_case/mark_app_notification_as_read_use_case.dart';

part 'app_notifications_event.dart';

part 'app_notifications_state.dart';

@Injectable(as: AppNotificationsBloc)
class AppNotificationsBlocBase extends AppNotificationsBloc<UserModel?> {
  AppNotificationsBlocBase(
    super.getAppNotificationStreamUseCase,
    super.fetchChatRoomUseCase,
    super.markAppNotificationAsReadUseCase,
    super.clearAppNotificationsUseCase,
    super.userController,
  );
}

class AppNotificationsBloc<T extends UserModel?>
    extends Bloc<AppNotificationsEvent, AppNotificationsState> {
  AppNotificationsBloc(
    this._getAppNotificationStreamUseCase,
    this._fetchChatRoomUseCase,
    this._markAppNotificationAsReadUseCase,
    this._clearAppNotificationsUseCase,
    this._userController,
  ) : super(const AppNotificationsState()) {
    _subscribeToUserChange();
    on<AppNotificationsInitializeRequested>(_onInitializeAppNotifications);
    on<AppNotificationsFetchChatRoomRequested>(_onFetchChatRoom);
    on<AppNotificationsMarkAsReadRequested>(_onMarkNotificationAsRead);
    on<AppNotificationsClearRequested>(_onClearNotifications);
  }

  final GetAppNotificationStreamUseCase _getAppNotificationStreamUseCase;
  final FetchChatRoomUseCase _fetchChatRoomUseCase;
  final MarkAppNotificationAsReadUseCase _markAppNotificationAsReadUseCase;
  final ClearAppNotificationsUseCase _clearAppNotificationsUseCase;

  T? _currentUser;
  final UserController<T?> _userController;
  late final StreamSubscription<T?> _userSubscription;

  void _subscribeToUserChange() {
    _userSubscription = _userController.user.listen((user) {
      _currentUser = user;
      if (!state.isInitialized) add(AppNotificationsInitializeRequested());
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
          notificationList.sort((a, b) => b.createdAt.compareTo(a.createdAt));
          for (final notification in notificationList) {
            if (notification.createdAt.isBefore(today)) {
              previousNotifications.add(notification);
            } else {
              todayNotifications.add(notification);
            }
          }
          final unreadNotificationCount = todayNotifications
                  .where((e) => e.status == AppNotificationStatus.delivered)
                  .length +
              previousNotifications
                  .where((e) => e.status == AppNotificationStatus.delivered)
                  .length;

          return AppNotificationsState(
            todayNotifications: todayNotifications,
            previousNotifications: previousNotifications,
            unreadNotificationCount: unreadNotificationCount,
            loadingMessageId: state.loadingMessageId,
            isInitialized: state.isInitialized,
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
    if (user == null) return;

    try {
      emit(state.copyWith(loadingMessageId: event.notificationId));
      final room = await _fetchChatRoomUseCase(event.roomId);

      if (room == null) {
        emit(_failureState(AppNotificationsFailureEnum.fetchChat));
        return;
      }

      emit(
        AppNotificationsFetchChatRoomSuccess(
          user.id,
          room,
          todayNotifications: state.todayNotifications,
          previousNotifications: state.previousNotifications,
          unreadNotificationCount: state.unreadNotificationCount,
          isInitialized: state.isInitialized,
        ),
      );
    } catch (error) {
      log('AppNotificationsFetchChatRoomFailure: $error');
      emit(_failureState(AppNotificationsFailureEnum.fetchChat));
    }
  }

  Future<void> _onMarkNotificationAsRead(
    AppNotificationsMarkAsReadRequested event,
    Emitter<AppNotificationsState> emit,
  ) async {
    final user = _currentUser;
    if (user == null) return;

    try {
      await _markAppNotificationAsReadUseCase(user.id, event.notificationId);
    } catch (error) {
      log(
        'AppNotificationsMarkAsReadFailure: [${event.notificationId}], $error',
      );
      emit(_failureState(AppNotificationsFailureEnum.markAsRead));
    }
  }

  Future<void> _onClearNotifications(
    AppNotificationsClearRequested event,
    Emitter<AppNotificationsState> emit,
  ) async {
    final user = _currentUser;
    if (user == null) return;

    try {
      await _clearAppNotificationsUseCase(user.id);
    } catch (error) {
      log('AppNotificationsClearFailure: $error');
      emit(_failureState(AppNotificationsFailureEnum.clear));
    }
  }

  AppNotificationsFailure _failureState(
    AppNotificationsFailureEnum failureState,
  ) =>
      AppNotificationsFailure(
        failureState,
        todayNotifications: state.todayNotifications,
        previousNotifications: state.previousNotifications,
        unreadNotificationCount: state.unreadNotificationCount,
        loadingMessageId: state.loadingMessageId,
        isInitialized: state.isInitialized,
      );
}
