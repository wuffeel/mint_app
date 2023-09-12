// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)
        $default, {
    required TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? pinCode,
            String? phoneNumber,
            String? photoUrl)
        patient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult? Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? pinCode,
            String? phoneNumber,
            String? photoUrl)?
        patient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? pinCode,
            String? phoneNumber,
            String? photoUrl)?
        patient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserModel value) $default, {
    required TResult Function(PatientUser value) patient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModel value)? $default, {
    TResult? Function(PatientUser value)? patient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModel value)? $default, {
    TResult Function(PatientUser value)? patient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      DateTime? dateOfBirth,
      String? email,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? photoUrl});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateOfBirth = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? dateOfBirth,
      String? email,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? photoUrl});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateOfBirth = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserModel extends _UserModel with DiagnosticableTreeMixin {
  const _$_UserModel(
      {required this.id,
      this.dateOfBirth,
      this.email,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.photoUrl})
      : super._();

  @override
  final String id;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phoneNumber;
  @override
  final String? photoUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModel(id: $id, dateOfBirth: $dateOfBirth, email: $email, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('photoUrl', photoUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, dateOfBirth, email,
      firstName, lastName, phoneNumber, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)
        $default, {
    required TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? pinCode,
            String? phoneNumber,
            String? photoUrl)
        patient,
  }) {
    return $default(
        id, dateOfBirth, email, firstName, lastName, phoneNumber, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult? Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? pinCode,
            String? phoneNumber,
            String? photoUrl)?
        patient,
  }) {
    return $default?.call(
        id, dateOfBirth, email, firstName, lastName, phoneNumber, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? pinCode,
            String? phoneNumber,
            String? photoUrl)?
        patient,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          id, dateOfBirth, email, firstName, lastName, phoneNumber, photoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserModel value) $default, {
    required TResult Function(PatientUser value) patient,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModel value)? $default, {
    TResult? Function(PatientUser value)? patient,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModel value)? $default, {
    TResult Function(PatientUser value)? patient,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _UserModel extends UserModel implements IUserModel {
  const factory _UserModel(
      {required final String id,
      final DateTime? dateOfBirth,
      final String? email,
      final String? firstName,
      final String? lastName,
      final String? phoneNumber,
      final String? photoUrl}) = _$_UserModel;
  const _UserModel._() : super._();

  @override
  String get id;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get phoneNumber;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PatientUserCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$PatientUserCopyWith(
          _$PatientUser value, $Res Function(_$PatientUser) then) =
      __$$PatientUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? dateOfBirth,
      String? email,
      String? firstName,
      String? lastName,
      String? pinCode,
      String? phoneNumber,
      String? photoUrl});
}

/// @nodoc
class __$$PatientUserCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$PatientUser>
    implements _$$PatientUserCopyWith<$Res> {
  __$$PatientUserCopyWithImpl(
      _$PatientUser _value, $Res Function(_$PatientUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateOfBirth = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? pinCode = freezed,
    Object? phoneNumber = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$PatientUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PatientUser extends PatientUser with DiagnosticableTreeMixin {
  const _$PatientUser(
      {required this.id,
      this.dateOfBirth,
      this.email,
      this.firstName,
      this.lastName,
      this.pinCode,
      this.phoneNumber,
      this.photoUrl})
      : super._();

  @override
  final String id;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? pinCode;
  @override
  final String? phoneNumber;
  @override
  final String? photoUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModel.patient(id: $id, dateOfBirth: $dateOfBirth, email: $email, firstName: $firstName, lastName: $lastName, pinCode: $pinCode, phoneNumber: $phoneNumber, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModel.patient'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('pinCode', pinCode))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('photoUrl', photoUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, dateOfBirth, email,
      firstName, lastName, pinCode, phoneNumber, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientUserCopyWith<_$PatientUser> get copyWith =>
      __$$PatientUserCopyWithImpl<_$PatientUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)
        $default, {
    required TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? pinCode,
            String? phoneNumber,
            String? photoUrl)
        patient,
  }) {
    return patient(id, dateOfBirth, email, firstName, lastName, pinCode,
        phoneNumber, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult? Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? pinCode,
            String? phoneNumber,
            String? photoUrl)?
        patient,
  }) {
    return patient?.call(id, dateOfBirth, email, firstName, lastName, pinCode,
        phoneNumber, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult Function(
            String id,
            DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? pinCode,
            String? phoneNumber,
            String? photoUrl)?
        patient,
    required TResult orElse(),
  }) {
    if (patient != null) {
      return patient(id, dateOfBirth, email, firstName, lastName, pinCode,
          phoneNumber, photoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserModel value) $default, {
    required TResult Function(PatientUser value) patient,
  }) {
    return patient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModel value)? $default, {
    TResult? Function(PatientUser value)? patient,
  }) {
    return patient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModel value)? $default, {
    TResult Function(PatientUser value)? patient,
    required TResult orElse(),
  }) {
    if (patient != null) {
      return patient(this);
    }
    return orElse();
  }
}

abstract class PatientUser extends UserModel implements IUserModel {
  const factory PatientUser(
      {required final String id,
      final DateTime? dateOfBirth,
      final String? email,
      final String? firstName,
      final String? lastName,
      final String? pinCode,
      final String? phoneNumber,
      final String? photoUrl}) = _$PatientUser;
  const PatientUser._() : super._();

  @override
  String get id;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  String? get pinCode;
  @override
  String? get phoneNumber;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$PatientUserCopyWith<_$PatientUser> get copyWith =>
      throw _privateConstructorUsedError;
}
