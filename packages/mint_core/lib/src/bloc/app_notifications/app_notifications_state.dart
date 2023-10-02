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

class AppNotificationsMessageLoading extends AppNotificationsFetchSuccess {
  AppNotificationsMessageLoading(
    super.todayNotifications,
    super.previousNotifications,
    this.notificationId,
  );

  final String notificationId;
}

class AppNotificationsFetchChatRoomSuccess extends AppNotificationsState {
  AppNotificationsFetchChatRoomSuccess(this.senderId, this.room);

  final String senderId;
  final Room room;
}

class AppNotificationsFetchChatRoomFailure extends AppNotificationsState {}
