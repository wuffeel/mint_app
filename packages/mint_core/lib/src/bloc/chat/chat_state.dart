part of 'chat_bloc.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class ChatInitializeFailure extends ChatState {}

class ChatFetchRoomLoading extends ChatState {}

class ChatFetchRoomSuccess extends ChatState {
  ChatFetchRoomSuccess(this.room, this.senderId);

  final types.Room room;
  final String senderId;
}

class ChatFetchRoomFailure extends ChatState {}

class ChatFetchMessagesSuccess extends ChatState {
  ChatFetchMessagesSuccess(this.messages, this.room, this.senderId);

  final List<types.Message> messages;
  final types.Room room;
  final String senderId;
}

class ChatFetchMessagesFailure extends ChatFetchMessagesSuccess {
  ChatFetchMessagesFailure(super.messages, super.room, super.senderId);
}

class ChatSendMessageFailure extends ChatFetchMessagesSuccess {
  ChatSendMessageFailure(super.messages, super.room, super.senderId);
}

class ChatDeleteMessageFailure extends ChatFetchMessagesSuccess {
  ChatDeleteMessageFailure(super.messages, super.room, super.senderId);
}

class ChatFileLoadFailure extends ChatFetchMessagesSuccess {
  ChatFileLoadFailure(super.messages, super.room, super.senderId);
}

class ChatSaveAudioFailure extends ChatFetchMessagesSuccess {
  ChatSaveAudioFailure(super.messages, super.room, super.senderId);
}

class ChatMessageLoading extends ChatFetchMessagesSuccess {
  ChatMessageLoading(super.messages, super.room, super.senderId);
}
