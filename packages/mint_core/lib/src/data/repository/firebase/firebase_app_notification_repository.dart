import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../mint_module.dart';
import '../../../backbone/app_notification_status.dart';
import '../../model/notification_model_dto/notification_model_dto.dart';
import '../abstract/app_notification_repository.dart';

@lazySingleton
class FirebaseAppNotificationRepository implements AppNotificationRepository {
  FirebaseAppNotificationRepository(this._firebaseInitializer);

  final FirebaseInitializer _firebaseInitializer;

  static const _usersCollection = 'users';
  static const _userNotificationsCollection = 'notifications';

  Future<CollectionReference<Map<String, dynamic>>>
      _userNotificationsCollectionRef(String userId) async {
    return (await _firebaseInitializer.firestore)
        .collection(_usersCollection)
        .doc(userId)
        .collection(_userNotificationsCollection);
  }

  @override
  Future<Stream<List<NotificationModelDto>>> getAppNotificationStream(
    String userId,
  ) async {
    final userNotificationsCollection =
        await _userNotificationsCollectionRef(userId);

    return userNotificationsCollection.snapshots().asyncMap((snap) {
      return snap.docs
          .map(
            (notification) => NotificationModelDto.fromJsonWithId(
              notification.data(),
              notification.id,
            ),
          )
          .toList();
    });
  }

  @override
  Future<void> markAppNotificationAsRead(
    String userId,
    String notificationId,
  ) async {
    final userNotificationsCollection =
        await _userNotificationsCollectionRef(userId);

    return userNotificationsCollection.doc(notificationId).update({
      'status': AppNotificationStatus.seen.name,
    });
  }

  @override
  Future<void> clearAppNotifications(String userId) async {
    final firestore = await _firebaseInitializer.firestore;

    final userNotificationsCollection =
        await _userNotificationsCollectionRef(userId);

    final batch = firestore.batch();

    final querySnapshot = await userNotificationsCollection
        .where('status', isEqualTo: AppNotificationStatus.delivered.name)
        .get();

    for (final snap in querySnapshot.docs) {
      final docReference = snap.reference;

      final newData = {'status': AppNotificationStatus.seen.name};

      batch.update(docReference, newData);
    }

    await batch.commit();
  }
}
