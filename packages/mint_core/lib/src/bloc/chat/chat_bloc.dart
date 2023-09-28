import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart';

import '../../../mint_core.dart';
import '../../../mint_module.dart';
import '../../domain/controller/user_controller.dart';
import '../../domain/use_case/create_chat_room_use_case.dart';
import '../../domain/use_case/delete_message_use_case.dart';
import '../../domain/use_case/get_messages_use_case.dart';
import '../../domain/use_case/open_file_use_case.dart';
import '../../domain/use_case/pick_file_use_case.dart';
import '../../domain/use_case/pick_image_use_case.dart';
import '../../domain/use_case/preview_data_fetched_use_case.dart';
import '../../domain/use_case/save_audio_use_case.dart';
import '../../domain/use_case/send_message_use_case.dart';

part 'chat_event.dart';

part 'chat_state.dart';

@Injectable(as: ChatBloc)
class ChatBlocBasic extends ChatBloc<UserModel?> {
  ChatBlocBasic(
    super.userController,
    super.getMessagesUseCase,
    super.createChatRoomUseCase,
    super.sendMessageUseCase,
    super.deleteMessageUseCase,
    super.previewDataFetchedUseCase,
    super.pickImageUseCase,
    super.pickFileUseCase,
    super.loadFileUseCase,
    super.openFileUseCase,
    super.saveAudioUseCase,
  );
}

@native
@injectable
class ChatBlocPatient extends ChatBloc<PatientUser?> {
  ChatBlocPatient(
    super.userController,
    super.getMessagesUseCase,
    super.createChatRoomUseCase,
    super.sendMessageUseCase,
    super.deleteMessageUseCase,
    super.previewDataFetchedUseCase,
    super.pickImageUseCase,
    super.pickFileUseCase,
    super.loadFileUseCase,
    super.openFileUseCase,
    super.saveAudioUseCase,
  );
}

class ChatBloc<T extends UserModel?> extends Bloc<ChatEvent, ChatState> {
  ChatBloc(
    this._userController,
    this._getMessagesUseCase,
    this._createChatRoomUseCase,
    this._sendMessageUseCase,
    this._deleteMessageUseCase,
    this._previewDataFetchedUseCase,
    this._pickImageUseCase,
    this._pickFileUseCase,
    this._loadFileUseCase,
    this._openFileUseCase,
    this._saveAudioUseCase,
  ) : super(ChatInitial()) {
    _subscribeToUserChange();
    on<ChatInitializeRequested>(_onChatInitialize, transformer: restartable());
    on<ChatFetchRoomRequested>(_onRoomFetch);
    on<ChatSendMessageRequested>(_onSendMessage);
    on<ChatDeleteMessageRequested>(_onDeleteMessage);
    on<ChatPreviewDataFetched>(_onPreviewDataFetched);
    on<ChatFilePickRequested>(_onFilePick);
    on<ChatImagePickRequested>(_onImagePick);
    on<ChatFileLoadRequested>(_onFileLoad);
    on<ChatSaveAudioRequested>(_onSaveAudio);
  }

  final GetMessagesUseCase _getMessagesUseCase;
  final CreateChatRoomUseCase _createChatRoomUseCase;
  final SendMessageUseCase _sendMessageUseCase;
  final DeleteMessageUseCase _deleteMessageUseCase;
  final PreviewDataFetchedUseCase _previewDataFetchedUseCase;
  final PickImageUseCase _pickImageUseCase;
  final PickFileUseCase _pickFileUseCase;
  final LoadFileUseCase _loadFileUseCase;
  final OpenFileUseCase _openFileUseCase;
  final SaveAudioUseCase _saveAudioUseCase;

  T? _currentUser;
  final UserController<T?> _userController;
  late final StreamSubscription<T?> _userSubscription;

  void _subscribeToUserChange() {
    _userSubscription = _userController.user.listen((user) {
      _currentUser = user;
    });
  }

  @override
  Future<void> close() async {
    await _userSubscription.cancel();
    return super.close();
  }

  Future<void> _onChatInitialize(
    ChatInitializeRequested event,
    Emitter<ChatState> emit,
  ) async {
    final user = _currentUser;
    if (user == null) return;
    emit(ChatLoading());
    return emit.forEach(
      await _getMessagesUseCase(event.room),
      onData: (messages) =>
          ChatFetchMessagesSuccess(messages, event.room, user.id),
      onError: (error, _) {
        final state = this.state;
        if (state is! ChatFetchMessagesSuccess) {
          log('ChatInitializeFailure: $error');
          return ChatInitializeFailure();
        } else {
          log('ChatFetchMessagesFailure: $error');
          return ChatFetchMessagesFailure(
            state.messages,
            event.room,
            state.senderId,
          );
        }
      },
    );
  }

  Future<void> _onRoomFetch(
    ChatFetchRoomRequested event,
    Emitter<ChatState> emit,
  ) async {
    final user = _currentUser;
    if (user == null) return;

    try {
      emit(ChatFetchRoomLoading());
      final room = await _createChatRoomUseCase(user.id, event.specialistId);
      emit(ChatFetchRoomSuccess(room, user.id));
    } catch (error) {
      log('ChatFetchRoomFailure: $error');
      emit(ChatFetchRoomFailure());
    }
  }

  Future<void> _onSendMessage(
    ChatSendMessageRequested event,
    Emitter<ChatState> emit,
  ) async {
    final state = this.state;
    final user = _currentUser;
    if (state is! ChatFetchMessagesSuccess || user == null) return;

    try {
      if (state is! ChatMessageLoading) _emitLoadingMessageState(state, emit);

      await _sendMessageUseCase(
        event.message,
        state.room.id,
        bytes: event.bytes,
      );
    } catch (error) {
      log('ChatSendMessageFailure: $error');
      emit(ChatSendMessageFailure(state.messages, state.room, state.senderId));
    }
  }

  Future<void> _onDeleteMessage(
    ChatDeleteMessageRequested event,
    Emitter<ChatState> emit,
  ) async {
    final state = this.state;
    if (state is! ChatFetchMessagesSuccess) return;

    try {
      await _deleteMessageUseCase(state.room.id, event.message);
    } catch (error) {
      log('ChatDeleteMessageFailure: $error');
      emit(
        ChatDeleteMessageFailure(state.messages, state.room, state.senderId),
      );
    }
  }

  Future<void> _onPreviewDataFetched(
    ChatPreviewDataFetched event,
    Emitter<ChatState> emit,
  ) async {
    final state = this.state;
    if (state is! ChatFetchMessagesSuccess) return;

    try {
      await _previewDataFetchedUseCase(
        event.message,
        event.previewData,
        state.room.id,
      );
    } catch (error) {
      log('ChatPreviewDataApplyFailure: $error');
    }
  }

  Future<void> _onImagePick(
    ChatImagePickRequested event,
    Emitter<ChatState> emit,
  ) async {
    try {
      final state = this.state;

      _emitLoadingMessageState(state, emit);
      final message = await _pickImageUseCase();

      if (message != null) {
        add(ChatSendMessageRequested(message.message, bytes: message.bytes));
      } else {
        /// Undo loading message state
        emit(state);
      }
    } catch (error) {
      log('ChatImagePickFailure: $error');
    }
  }

  Future<void> _onFilePick(
    ChatFilePickRequested event,
    Emitter<ChatState> emit,
  ) async {
    final state = this.state;
    if (state is! ChatFetchMessagesSuccess) return;

    try {
      _emitLoadingMessageState(state, emit);
      final message = await _pickFileUseCase();

      if (message != null) {
        add(ChatSendMessageRequested(message.message, bytes: message.bytes));
      } else {
        /// Undo loading message state
        emit(state);
      }
    } catch (error) {
      log('ChatFilePickFailure: $error');
    }
  }

  Future<void> _onFileLoad(
    ChatFileLoadRequested event,
    Emitter<ChatState> emit,
  ) async {
    final state = this.state;
    if (state is! ChatFetchMessagesSuccess) return;
    final messageList = state.messages;
    final message = event.message;

    try {
      final uuid = message.metadata?['uuid'] as String?;
      final messageName = message is types.FileMessage
          ? message.name
          : message is types.AudioMessage
              ? message.name
              : null;

      final messageUri = message is types.FileMessage
          ? message.uri
          : message is types.AudioMessage
              ? message.uri
              : null;
      if (messageName == null || messageUri == null) return;
      final messageId =
          uuid != null ? '$uuid${extension(messageName)}' : messageName;

      await _loadFileUseCase(
        messageId,
        messageUri,
        onLoadingCallback: () {
          final loadingMessageList = messageList.map((element) {
            return element.id != message.id
                ? element
                : (element as types.FileMessage).copyWith(isLoading: true);
          }).toList();
          emit(
            ChatFetchMessagesSuccess(
              loadingMessageList,
              state.room,
              state.senderId,
            ),
          );
        },
        onLoadedCallback: () {
          final loadedMessageList = messageList.map((element) {
            return element.id != message.id
                ? element
                : (element as types.FileMessage).copyWith(isLoading: false);
          }).toList();
          emit(
            ChatFetchMessagesSuccess(
              loadedMessageList,
              state.room,
              state.senderId,
            ),
          );
        },
      );
      if (event.shouldOpen) await _openFileUseCase(messageId);
    } catch (error) {
      log('ChatFileLoadFailure: $error');
      emit(ChatFileLoadFailure(messageList, state.room, state.senderId));
    }
  }

  Future<void> _onSaveAudio(
    ChatSaveAudioRequested event,
    Emitter<ChatState> emit,
  ) async {
    final state = this.state;
    if (state is! ChatFetchMessagesSuccess) return;
    try {
      final message = await _saveAudioUseCase(event.audioPath, event.duration);
      if (message == null) return;
      add(ChatSendMessageRequested(message.message, bytes: message.bytes));
    } catch (error) {
      log('ChatSaveAudioFailure: $error');
      emit(ChatSaveAudioFailure(state.messages, state.room, state.senderId));
    }
  }

  /// Used for emitting [ChatMessageLoading] state.
  ///
  /// Currently, loading message state is used as inserted
  /// [types.CustomMessage] with timestamp when function is triggered.
  void _emitLoadingMessageState(ChatState state, Emitter<ChatState> emit) {
    if (state is! ChatFetchMessagesSuccess) return;
    final loadingMessage = types.CustomMessage(
      // (!) Chat UI crashes on rapid messages without unique ID.
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      author: types.User(id: state.senderId),
      type: types.MessageType.custom,
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
    emit(
      ChatMessageLoading(
        [loadingMessage, ...state.messages],
        state.room,
        state.senderId,
      ),
    );
  }
}
