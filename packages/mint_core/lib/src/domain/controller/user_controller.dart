import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../mint_module.dart';
import '../entity/user_model/user_model.dart';

abstract class UserController<T extends UserModel?> {
  Stream<T?> get user;

  void addToUserStream(T? user);
}

@web
@LazySingleton(as: UserController<UserModel?>)
class UserControllerWeb implements UserController<UserModel?> {
  final _userController = BehaviorSubject<UserModel?>();

  @override
  Stream<UserModel?> get user => _userController.stream;

  @override
  void addToUserStream(UserModel? user) => _userController.add(user);
}

@native
@LazySingleton(as: UserController<PatientUser?>)
class UserControllerNative extends UserController<PatientUser?> {
  final _userController = BehaviorSubject<PatientUser?>();

  @override
  Stream<PatientUser?> get user => _userController.stream;

  @override
  void addToUserStream(PatientUser? user) {
    _userController.add(user);
  }
}
