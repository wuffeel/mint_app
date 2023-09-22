part of 'presence_message_bloc.dart';

@immutable
abstract class PresenceMessageEvent {}

class PresenceMessageMarkAsRead extends PresenceMessageEvent {
  PresenceMessageMarkAsRead({required this.roomId, required this.messageId});

  final String roomId;
  final String messageId;
}
