import '../../model/notification_model_dto/notification_model_dto.dart';

abstract class AppNotificationRepository {
  Future<Stream<List<NotificationModelDto>>> getAppNotificationStream(
    String userId,
  );

  Future<void> markAppNotificationAsRead(String userId, String notificationId);

  Future<void> clearAppNotifications(String userId);
}
