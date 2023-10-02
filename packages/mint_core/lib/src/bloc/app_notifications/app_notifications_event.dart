part of 'app_notifications_bloc.dart';

@immutable
abstract class AppNotificationsEvent {}

class AppNotificationsInitializeRequested extends AppNotificationsEvent {}

class AppNotificationsFetchChatRoomRequested extends AppNotificationsEvent {
  AppNotificationsFetchChatRoomRequested(this.notificationId, this.roomId);

  final String notificationId;
  final String roomId;
}

class AppNotificationsMarkAsReadRequested extends AppNotificationsEvent {
  AppNotificationsMarkAsReadRequested(this.notificationId);

  final String notificationId;
}

class AppNotificationsClearRequested extends AppNotificationsEvent {}
