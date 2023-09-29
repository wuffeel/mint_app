part of 'app_notifications_bloc.dart';

@immutable
abstract class AppNotificationsEvent {}

class AppNotificationsInitializeRequested extends AppNotificationsEvent {}
