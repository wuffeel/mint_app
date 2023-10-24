import '../../../../mint_core.dart';

abstract class BookingRepositoryBase {
  Future<SpecialistWorkInfoDto> getSpecialistWorkInfo(String specialistId);

  Future<void> cancelBooking(String bookingId);

  Future<List<DateTime>> getExcludedDaysById(String specialistId);
}
