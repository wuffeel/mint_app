import 'package:injectable/injectable.dart';

import '../../../../mint_assembly.dart';
import '../../../data/model/notification_model_dto/notification_model_dto.dart';
import '../../../data/repository/abstract/app_notification_repository.dart';
import '../../entity/notification_model/notification_model.dart';
import '../abstract/app_notification_service.dart';

@injectable
class FirebaseAppNotificationService implements AppNotificationService {
  FirebaseAppNotificationService(
    this._appNotificationRepository,
    this._notificationModelFromDto,
  );

  final AppNotificationRepository _appNotificationRepository;

  final Factory<NotificationModel?, NotificationModelDto>
      _notificationModelFromDto;

  @override
  Future<Stream<List<NotificationModel>>> getAppNotificationStream(
    String userId,
  ) async {
    final notificationStream =
        await _appNotificationRepository.getAppNotificationStream(userId);

    return notificationStream.asyncMap(
      (notification) => notification
          .map(_notificationModelFromDto.create)
          .whereType<NotificationModel>()
          .toList(),
    );
  }

  @override
  Future<void> markAppNotificationAsRead(String userId, String notificationId) {
    return _appNotificationRepository.markAppNotificationAsRead(
      userId,
      notificationId,
    );
  }

  @override
  Future<void> clearAppNotifications(String userId) {
    return _appNotificationRepository.clearAppNotifications(userId);
  }
}
