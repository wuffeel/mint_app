import '../../../assembly/factory.dart';
import '../../../data/model/specialist_work_info_dto/specialist_work_info_dto.dart';
import '../../../data/repository/abstract/booking_repository_base.dart';
import '../../entity/specialist_work_info/specialist_work_info.dart';
import '../abstract/booking_service_base.dart';

class FirebaseBookingServiceBase implements BookingServiceBase {
  FirebaseBookingServiceBase(
    this._bookingRepository,
    this._specialistWorkInfoFromDto,
  );

  final BookingRepositoryBase _bookingRepository;

  final Factory<SpecialistWorkInfo, SpecialistWorkInfoDto>
      _specialistWorkInfoFromDto;

  @override
  Future<SpecialistWorkInfo> getSpecialistWorkInfo(String specialistId) async {
    final workInfoDto = await _bookingRepository.getSpecialistWorkInfo(
      specialistId,
    );
    return _specialistWorkInfoFromDto.create(workInfoDto);
  }

  @override
  Future<void> cancelBooking(String bookingId) {
    return _bookingRepository.cancelBooking(bookingId);
  }
}
