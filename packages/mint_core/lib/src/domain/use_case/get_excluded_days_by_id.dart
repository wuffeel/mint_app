import 'package:injectable/injectable.dart';

import '../service/abstract/booking_service_base.dart';

@injectable
class GetExcludedDaysByIdUseCase {
  GetExcludedDaysByIdUseCase(this._service);

  final BookingServiceBase _service;

  Future<List<DateTime>> call(String specialistId) {
    return _service.getExcludedDaysById(specialistId);
  }
}
