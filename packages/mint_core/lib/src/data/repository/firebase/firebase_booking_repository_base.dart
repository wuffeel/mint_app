import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../mint_core.dart';
import '../../../../mint_module.dart';
import '../../../../mint_utils.dart';

@lazySingleton
class FirebaseBookingRepositoryBase implements BookingRepositoryBase {
  FirebaseBookingRepositoryBase(this._firebaseInitializer);

  final FirebaseInitializer _firebaseInitializer;

  static const _bookingInfoFunction = 'fetchBookingInformation';
  static const _excludedDaysFunction = 'getExcludedDaysById';
  static const _bookingsCollection = 'bookings';

  Future<CollectionReference<Map<String, dynamic>>> get _bookingsRef async =>
      (await _firebaseInitializer.firestore).collection(_bookingsCollection);

  @override
  Future<SpecialistWorkInfoDto> getSpecialistWorkInfo(
    String specialistId,
  ) async {
    final functions = await _firebaseInitializer.functions;

    final callable = functions.httpsCallable(_bookingInfoFunction);

    final result = await callable.call<Map<String, dynamic>>({
      'specialistId': specialistId,
    });

    final data = result.data;

    return SpecialistWorkInfoDto.fromJson(data);
  }

  @override
  Future<void> cancelBooking(String bookingId) async {
    final bookingsCollection = await _bookingsRef;
    return bookingsCollection.doc(bookingId).delete();
  }

  @override
  Future<List<DateTime>> getExcludedDaysById(String specialistId) async {
    final functions = await _firebaseInitializer.functions;

    final callable = functions.httpsCallable(_excludedDaysFunction);

    final result = await callable.call<List<dynamic>>({
      'id': specialistId,
    });

    final data = result.data;

    return data
        .map(DateTimeUtils.tryConvertToDateTime)
        .whereType<DateTime>()
        .toList();
  }
}
