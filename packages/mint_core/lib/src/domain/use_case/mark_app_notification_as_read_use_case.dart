import 'package:injectable/injectable.dart';

import '../service/abstract/app_notification_service.dart';

@injectable
class MarkAppNotificationAsReadUseCase {
  MarkAppNotificationAsReadUseCase(this._service);

  final AppNotificationService _service;

  Future<void> call(String userId, String notificationId) =>
      _service.markAppNotificationAsRead(userId, notificationId);
}
