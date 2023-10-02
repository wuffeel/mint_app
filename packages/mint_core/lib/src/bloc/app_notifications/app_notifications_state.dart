part of 'app_notifications_bloc.dart';

enum AppNotificationsFailureEnum { fetchChat, bookingData, markAsRead, clear }

@immutable
class AppNotificationsState {
  const AppNotificationsState({
    this.todayNotifications = const [],
    this.previousNotifications = const [],
    this.unreadNotificationCount = 0,
    this.isInitialized = false,
    this.loadingMessageId,
  });

  final List<NotificationModel> todayNotifications;
  final List<NotificationModel> previousNotifications;
  final int unreadNotificationCount;

  /// Notification loading state
  final String? loadingMessageId;

  /// Flag to represent bloc initialized state.
  final bool isInitialized;

  AppNotificationsState copyWith({
    List<NotificationModel>? todayNotifications,
    List<NotificationModel>? previousNotifications,
    int? unreadNotificationCount,
    String? loadingMessageId,
    bool? isInitialized,
  }) {
    return AppNotificationsState(
      todayNotifications: todayNotifications ?? this.todayNotifications,
      previousNotifications:
          previousNotifications ?? this.previousNotifications,
      unreadNotificationCount:
          unreadNotificationCount ?? this.unreadNotificationCount,
      loadingMessageId: loadingMessageId ?? this.loadingMessageId,
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }
}

class AppNotificationsFetchFailure extends AppNotificationsState {}

class AppNotificationsFetchChatRoomSuccess extends AppNotificationsState {
  const AppNotificationsFetchChatRoomSuccess(
    this.senderId,
    this.room, {
    super.todayNotifications,
    super.previousNotifications,
    super.unreadNotificationCount,
    super.loadingMessageId,
    super.isInitialized,
  });

  final String senderId;
  final Room room;
}

class AppNotificationsFailure extends AppNotificationsState {
  const AppNotificationsFailure(
    this.failureState, {
    super.todayNotifications,
    super.previousNotifications,
    super.unreadNotificationCount,
    super.loadingMessageId,
    super.isInitialized,
  });

  final AppNotificationsFailureEnum failureState;
}
