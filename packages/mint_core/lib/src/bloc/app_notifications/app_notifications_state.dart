part of 'app_notifications_bloc.dart';

@immutable
abstract class AppNotificationsState {}

class AppNotificationsInitial extends AppNotificationsState {}

class AppNotificationsLoading extends AppNotificationsState {}

class AppNotificationsFetchFailure extends AppNotificationsState {}

class AppNotificationsFetchSuccess extends AppNotificationsState {
  AppNotificationsFetchSuccess(
    this.todayNotifications,
    this.previousNotifications,
  );

  final List<NotificationModel> todayNotifications;
  final List<NotificationModel> previousNotifications;
}
