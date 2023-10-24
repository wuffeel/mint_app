import 'package:injectable/injectable.dart';

import '../service/abstract/app_notification_service.dart';

@injectable
class ClearAppNotificationsUseCase {
  ClearAppNotificationsUseCase(this._service);

  final AppNotificationService _service;

  Future<void> call(String userId) =>
      _service.clearAppNotifications(userId);
}
