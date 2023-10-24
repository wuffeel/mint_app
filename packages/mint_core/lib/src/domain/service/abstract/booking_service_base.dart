import '../../../../mint_core.dart';

abstract class BookingServiceBase {
  Future<SpecialistWorkInfo> getSpecialistWorkInfo(String specialistId);

  Future<void> cancelBooking(String bookingId);

  Future<List<DateTime>> getExcludedDaysById(String specialistId);
}
