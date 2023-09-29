import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/controller/user_controller.dart';
import '../../domain/entity/notification_model/notification_model.dart';
import '../../domain/entity/user_model/user_model.dart';
import '../../domain/use_case/get_app_notification_stream_use_case.dart';
import '../../injector/injector.dart';

part 'app_notifications_event.dart';

part 'app_notifications_state.dart';

@Injectable(as: AppNotificationsBloc)
class AppNotificationsBlocBase extends AppNotificationsBloc<UserModel?> {
  AppNotificationsBlocBase(
    super.getAppNotificationStreamUseCase,
    super.userController,
  );
}

@native
@injectable
class AppNotificationsBlocPatient extends AppNotificationsBloc<PatientUser?> {
  AppNotificationsBlocPatient(
    super.getAppNotificationStreamUseCase,
    super.userController,
  );
}

class AppNotificationsBloc<T extends UserModel?>
    extends Bloc<AppNotificationsEvent, AppNotificationsState> {
  AppNotificationsBloc(
    this._getAppNotificationStreamUseCase,
    this._userController,
  ) : super(AppNotificationsInitial()) {
    _subscribeToUserChange();
    on<AppNotificationsInitializeRequested>(_onInitializeAppNotifications);
  }

  final GetAppNotificationStreamUseCase _getAppNotificationStreamUseCase;

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
}
