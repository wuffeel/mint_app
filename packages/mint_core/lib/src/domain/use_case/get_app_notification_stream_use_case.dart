import 'package:injectable/injectable.dart';

import '../entity/notification_model/notification_model.dart';
import '../service/abstract/app_notification_service.dart';

@injectable
class GetAppNotificationStreamUseCase {
  GetAppNotificationStreamUseCase(this._service);

  final AppNotificationService _service;

  Future<Stream<List<NotificationModel>>> call(String userId) =>
      _service.getAppNotificationStream(userId);
}
