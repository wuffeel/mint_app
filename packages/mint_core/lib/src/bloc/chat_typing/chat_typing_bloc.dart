import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/use_case/initialize_chat_typing_presence_use_case.dart';
import '../../domain/use_case/on_chat_typing_end_use_case.dart';
import '../../domain/use_case/on_chat_typing_start_use_case.dart';

part 'chat_typing_event.dart';

part 'chat_typing_state.dart';

class _Debounce {
  _Debounce(this.delay);

  Duration delay;
  Timer? _timer;

  void call(void Function() callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }

  void dispose() {
    _timer?.cancel();
  }
}

@injectable
class ChatTypingBloc extends Bloc<ChatTypingEvent, ChatTypingState> {
  ChatTypingBloc(
    this._initializeChatTypingPresenceUseCase,
    this._onChatTypingStartUseCase,
    this._onChatTypingEndUseCase,
  ) : super(const ChatTypingState()) {
    on<ChatTypingInitializeRequested>(_onInitializeTyping);
    on<ChatTypingStartRequested>(_onTypingStart, transformer: restartable());
    on<ChatTypingEndRequested>(_onTypingEnd);
    on<ChatTypingChanged>(_onTypingChanged);
  }

  /// Represents seconds delay value to call typingEnd event.
  static const _typingEndDelay = 4;

  final InitializeChatTypingPresenceUseCase
      _initializeChatTypingPresenceUseCase;
  final OnChatTypingStartUseCase _onChatTypingStartUseCase;
  final OnChatTypingEndUseCase _onChatTypingEndUseCase;

  final _debounce = _Debounce(const Duration(seconds: _typingEndDelay));

  final _typingSubscriptions = <String, StreamSubscription<bool>>{};

  @override
  Future<void> close() async {
    _debounce.dispose();
    await Future.wait(_typingSubscriptions.values.map((e) => e.cancel()));
    return super.close();
  }

  Future<void> _onInitializeTyping(
    ChatTypingInitializeRequested event,
    Emitter<ChatTypingState> emit,
  ) async {
    final userId = event.userId;
    final roomId = event.roomId;

    try {
      final typingPresence = await _initializeChatTypingPresenceUseCase(
        userId,
        roomId,
      );

      final key = _getSubscriptionKey(userId, roomId);
      if (_typingSubscriptions[key] != null) return;
      _typingSubscriptions[key] = typingPresence.listen((isTyping) {
        final typingMap = Map<String, Map<String, bool>>.from(state.typingMap)
          ..putIfAbsent(roomId, () => {})
          ..update(roomId, (innerMap) => innerMap..[userId] = isTyping);
        add(ChatTypingChanged(typingMap));
      });
    } catch (error) {
      log('ChatTypingInitializeFailure: $error');
    }
  }

  void _onTypingChanged(
    ChatTypingChanged event,
    Emitter<ChatTypingState> emit,
  ) {
    emit(ChatTypingState(typingMap: event.typingMap));
  }

  Future<void> _onTypingStart(
    ChatTypingStartRequested event,
    Emitter<ChatTypingState> emit,
  ) async {
    try {
      final userId = event.userId;
      final roomId = event.roomId;

      await _onChatTypingStartUseCase(userId, roomId);

      _debounce(() {
        final isTyping = state.typingMap[roomId]?[userId];
        if (isTyping != null && isTyping) {
          add(ChatTypingEndRequested(userId, roomId));
        }
      });
    } catch (error) {
      log('ChatTypingStartFailure: $error');
    }
  }

  Future<void> _onTypingEnd(
    ChatTypingEndRequested event,
    Emitter<ChatTypingState> emit,
  ) async {
    try {
      await _onChatTypingEndUseCase(event.userId, event.roomId);
    } catch (error) {
      log('ChatTypingEndFailure: $error');
    }
  }

  /// Returns key for typing subscription map.
  String _getSubscriptionKey(String userId, String roomId) {
    return '$userId-$roomId';
  }
}
