import '../../entity/notification_model/notification_model.dart';

abstract class AppNotificationService {
  Future<Stream<List<NotificationModel>>> getAppNotificationStream(
    String userId,
  );

  Future<void> markAppNotificationAsRead(String userId, String notificationId);

  Future<void> clearAppNotifications(String userId);
}
