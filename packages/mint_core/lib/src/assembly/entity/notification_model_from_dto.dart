import 'package:injectable/injectable.dart';

import '../../../mint_assembly.dart';
import '../../data/model/notification_model_dto/notification_model_dto.dart';
import '../../domain/entity/notification_model/notification_model.dart';

@Injectable(as: Factory<NotificationModel?, NotificationModelDto>)
class NotificationModelFromDto
    implements Factory<NotificationModel?, NotificationModelDto> {
  @override
  NotificationModel? create(NotificationModelDto param) {
    if (param is ChatNotificationDto) {
      return ChatNotification(
        id: param.id,
        createdAt: param.createdAt,
        roomId: param.roomId,
        firstName: param.firstName,
        lastName: param.lastName,
        photoUrl: param.photoUrl,
      );
    } else if (param is BookingNotificationDto) {
      return BookingNotification(
        id: param.id,
        createdAt: param.createdAt,
        bookingId: param.bookingId,
        bookTime: param.bookTime,
        firstName: param.firstName,
        lastName: param.lastName,
        photoUrl: param.photoUrl,
      );
    }
    return null;
  }
}
