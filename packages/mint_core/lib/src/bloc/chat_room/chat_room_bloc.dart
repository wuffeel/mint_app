import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:injectable/injectable.dart';

import '../../../mint_bloc.dart';
import '../../../mint_core.dart';
import '../../domain/use_case/fetch_chat_room_list_use_case.dart';
import '../../injector/injector.dart';

part 'chat_room_event.dart';

part 'chat_room_state.dart';

@Injectable(as: ChatRoomBloc)
class ChatRoomBlocBasic extends ChatRoomBloc<UserModel?> {
  ChatRoomBlocBasic(super.fetchChatRoomListUseCase, super.userController);
}

@native
@injectable
class ChatRoomBlocPatient extends ChatRoomBloc<PatientUser?> {
  ChatRoomBlocPatient(super.fetchChatRoomListUseCase, super.userController);
}

class ChatRoomBloc<T extends UserModel?>
    extends Bloc<ChatRoomEvent, ChatRoomState> {
  ChatRoomBloc(
    this._fetchChatRoomListUseCase,
    this._userController,
  ) : super(ChatRoomInitial()) {
    _subscribeToUserChange();
    on<ChatRoomListFetchRequested>(_onFetchRoomList);
  }

  final FetchChatRoomListUseCase _fetchChatRoomListUseCase;

  T? _currentUser;
  final UserController<T?> _userController;
  late final StreamSubscription<T?> _userSubscription;

  void _subscribeToUserChange() {
    _userSubscription = _userController.user.listen((user) {
      _currentUser = user;
      if (state is ChatRoomInitial) add(ChatRoomListFetchRequested());
    });
  }

  @override
  Future<void> close() async {
    await _userSubscription.cancel();
    return super.close();
  }

  Future<void> _onFetchRoomList(
    ChatRoomListFetchRequested event,
    Emitter<ChatRoomState> emit,
  ) async {
    final user = _currentUser;
    if (user == null) return;
    emit(ChatRoomListLoading());
    return emit.forEach(
      await _fetchChatRoomListUseCase(user.id),
      onData: (rooms) => ChatRoomListFetchSuccess(rooms, user.id),
      onError: (error, _) {
        debugPrint('ChatRoomListFetchFailure: $error');
        return ChatRoomListFetchFailure();
      },
    );
  }
}
