part of 'chat_typing_bloc.dart';

@immutable
abstract class ChatTypingEvent {}

class ChatTypingInitializeRequested extends ChatTypingEvent {
  ChatTypingInitializeRequested(this.userId, this.roomId);

  final String userId;
  final String roomId;
}

class ChatTypingStartRequested extends ChatTypingEvent {
  ChatTypingStartRequested(this.userId, this.roomId);

  final String userId;
  final String roomId;
}

class ChatTypingEndRequested extends ChatTypingEvent {
  ChatTypingEndRequested(this.userId, this.roomId);

  final String userId;
  final String roomId;
}

class ChatTypingChanged extends ChatTypingEvent {
  ChatTypingChanged(this.typingMap);

  final Map<String, Map<String, bool>> typingMap;
}
