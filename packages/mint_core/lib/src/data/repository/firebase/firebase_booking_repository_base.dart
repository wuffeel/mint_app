import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../mint_core.dart';
import '../../../../mint_module.dart';

class FirebaseBookingRepositoryBase implements BookingRepositoryBase {
  FirebaseBookingRepositoryBase(this._firebaseInitializer);

  final FirebaseInitializer _firebaseInitializer;

  static const _bookingInfoFunction = 'fetchBookingInformation';
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
}
