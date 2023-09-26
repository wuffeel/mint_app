import '../../../../mint_core.dart';

abstract class BookingRepositoryBase {
  Future<SpecialistWorkInfoDto> getSpecialistWorkInfo(String specialistId);

  Future<void> cancelBooking(String bookingId);
}
