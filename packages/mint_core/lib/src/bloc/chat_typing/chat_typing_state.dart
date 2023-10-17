part of 'chat_typing_bloc.dart';

@immutable
class ChatTypingState {
  const ChatTypingState({this.typingMap = const {}});

  final Map<String, Map<String, bool>> typingMap;
}
