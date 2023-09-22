part of 'presence_message_bloc.dart';

@immutable
abstract class PresenceMessageState {}

class PresenceMessageInitial extends PresenceMessageState {}

class PresenceMessageMarkAsReadSuccess extends PresenceMessageState {}

class PresenceMessageMarkAsReadFailure extends PresenceMessageState {}
