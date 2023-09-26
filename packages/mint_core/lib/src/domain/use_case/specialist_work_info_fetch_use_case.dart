import 'package:injectable/injectable.dart';

import '../../../mint_core.dart';
import '../service/abstract/booking_service_base.dart';

@injectable
class SpecialistWorkInfoFetchUseCase {
  SpecialistWorkInfoFetchUseCase(this._service);

  final BookingServiceBase _service;

  Future<SpecialistWorkInfo> call(String specialistId) {
    return _service.getSpecialistWorkInfo(specialistId);
  }
}
