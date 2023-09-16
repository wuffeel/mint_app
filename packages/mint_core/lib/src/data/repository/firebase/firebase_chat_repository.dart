import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:injectable/injectable.dart';

import '../../../../mint_assembly.dart';
import '../../../../mint_module.dart';
import '../abstract/chat_repository.dart';

@lazySingleton
class FirebaseChatRepository implements ChatRepository {
  FirebaseChatRepository(this._firebaseInitializer, this._chatUserFromMap);

  final FirebaseInitializer _firebaseInitializer;

  static const _roomCollection = 'chat_rooms';
  static const _chatUsersCollection = 'chat_users';
  static const _messagesCollection = 'messages';

  final Factory<types.User, Map<String, dynamic>> _chatUserFromMap;

  Future<CollectionReference<Map<String, dynamic>>>
      get _roomCollectionRef async {
    return (await _firebaseInitializer.firestore).collection(_roomCollection);
  }

  Future<CollectionReference<Map<String, dynamic>>>
      get _chatUsersCollectionRef async {
    return (await _firebaseInitializer.firestore)
        .collection(_chatUsersCollection);
  }

  @override
  Future<types.Room> createRoom(String userId, String specialistId) async {
    final chat = await _firebaseInitializer.chat;

    final chatUsersCollection = await _chatUsersCollectionRef;
    final specialist = await chatUsersCollection.doc(specialistId).get();
    final data = specialist.data();

    if (data == null) {
      return const types.Room(id: '', type: types.RoomType.direct, users: []);
    }

    data['id'] = specialist.id;
    final user = _chatUserFromMap.create(data);
    return chat.createRoom(user);
  }

  @override
  Future<Map<String, dynamic>?> fetchRoom(String roomId) async {
    final roomCollection = await _roomCollectionRef;
    final roomSnap = await roomCollection.doc(roomId).get();
    final data = roomSnap.data();
    if (data == null) return null;

    final userIds = List<String>.from(data['userIds'] as List<dynamic>);

    final users = await _getUsersFromIds(userIds);

    data['id'] = roomSnap.id;
    data['users'] = users;

    return data;
  }

  @override
  Future<Stream<List<types.Room>>> fetchRoomList(String userId) async {
    return (await _firebaseInitializer.chat).rooms(orderByUpdatedAt: true);
  }

  @override
  Future<Stream<List<types.Message>>> getMessages(types.Room room) async {
    return (await _firebaseInitializer.chat).messages(room);
  }

  @override
  Future<void> sendMessage(dynamic partialMessage, String roomId) async {
    final chat = await _firebaseInitializer.chat;
    return chat.sendMessage(partialMessage, roomId);
  }

  @override
  Future<void> deleteMessage(String roomId, String messageId) async {
    return (await _firebaseInitializer.chat).deleteMessage(roomId, messageId);
  }

  @override
  Future<void> onPreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
    String roomId,
  ) async {
    return (await _firebaseInitializer.chat).updateMessage(
      message.copyWith(previewData: previewData),
      roomId,
    );
  }

  @override
  Future<void> markMessageAsRead(String roomId, String messageId) async {
    final firestore = await _firebaseInitializer.firestore;
    final messageRef = firestore
        .collection(_roomCollection)
        .doc(roomId)
        .collection(_messagesCollection)
        .doc(messageId);
    return firestore.runTransaction((transaction) async {
      final snapshot = await messageRef.get();
      final seen = snapshot.get('status') as String?;
      if (seen != null && seen == 'seen') return;
      transaction.update(messageRef, {'status': 'seen'});
    });
  }

  // Used here instead of factory to prevent circular dependency.
  // The problem: ChatUserFromMap needs to use List<Users>, which are
  // fetched with ChatService. ChatService dependent on ChatUserFromMap to
  // transform Map data to types.Room, and ChatUserFromMap is dependent on
  // ChatService to retrieve users info => injector throws Stack Overflow.
  Future<List<types.User>> _getUsersFromIds(List<String> userIds) async {
    final userFutures = userIds.map((userId) async {
      final chatUsersCollection = await _chatUsersCollectionRef;
      final userSnap = await chatUsersCollection.doc(userId).get();
      final data = userSnap.data();
      if (data == null) return null;
      data['id'] = userSnap.id;
      return _chatUserFromMap.create(data);
    });
    return (await Future.wait(userFutures)).whereType<types.User>().toList();
  }
}
