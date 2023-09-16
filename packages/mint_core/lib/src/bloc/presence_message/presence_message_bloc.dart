import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/use_case/message_mark_as_read_use_case.dart';

part 'presence_message_event.dart';

part 'presence_message_state.dart';

@injectable
class PresenceMessageBloc
    extends Bloc<PresenceMessageEvent, PresenceMessageState> {
  PresenceMessageBloc(
    this._messageMarkAsReadUseCase,
  ) : super(PresenceMessageInitial()) {
    on<PresenceMessageMarkAsRead>(_onMarkAsRead);
  }

  final MessageMarkAsReadUseCase _messageMarkAsReadUseCase;

  Future<void> _onMarkAsRead(
    PresenceMessageMarkAsRead event,
    Emitter<PresenceMessageState> emit,
  ) async {
    try {
      await _messageMarkAsReadUseCase(event.roomId, event.messageId);
    } catch (error) {
      log('PresenceMessageMarkAsReadFailure: $error');
    }
  }
}
