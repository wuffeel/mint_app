// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModelDto _$UserModelDtoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _UserModelDto.fromJson(json);
    case 'patient':
      return PatientUserDto.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserModelDto',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserModelDto {
  String get id => throw _privateConstructorUsedError;
  @DateTimeOrNullConverter()
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
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)
        $default, {
    required TResult Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
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
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult? Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
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
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
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
    TResult Function(_UserModelDto value) $default, {
    required TResult Function(PatientUserDto value) patient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModelDto value)? $default, {
    TResult? Function(PatientUserDto value)? patient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModelDto value)? $default, {
    TResult Function(PatientUserDto value)? patient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelDtoCopyWith<UserModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelDtoCopyWith<$Res> {
  factory $UserModelDtoCopyWith(
          UserModelDto value, $Res Function(UserModelDto) then) =
      _$UserModelDtoCopyWithImpl<$Res, UserModelDto>;
  @useResult
  $Res call(
      {String id,
      @DateTimeOrNullConverter() DateTime? dateOfBirth,
      String? email,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? photoUrl});
}

/// @nodoc
class _$UserModelDtoCopyWithImpl<$Res, $Val extends UserModelDto>
    implements $UserModelDtoCopyWith<$Res> {
  _$UserModelDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserModelDtoCopyWith<$Res>
    implements $UserModelDtoCopyWith<$Res> {
  factory _$$_UserModelDtoCopyWith(
          _$_UserModelDto value, $Res Function(_$_UserModelDto) then) =
      __$$_UserModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeOrNullConverter() DateTime? dateOfBirth,
      String? email,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? photoUrl});
}

/// @nodoc
class __$$_UserModelDtoCopyWithImpl<$Res>
    extends _$UserModelDtoCopyWithImpl<$Res, _$_UserModelDto>
    implements _$$_UserModelDtoCopyWith<$Res> {
  __$$_UserModelDtoCopyWithImpl(
      _$_UserModelDto _value, $Res Function(_$_UserModelDto) _then)
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
    return _then(_$_UserModelDto(
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
@JsonSerializable()
class _$_UserModelDto extends _UserModelDto with DiagnosticableTreeMixin {
  const _$_UserModelDto(
      {required this.id,
      @DateTimeOrNullConverter() this.dateOfBirth,
      this.email,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.photoUrl,
      final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_UserModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelDtoFromJson(json);

  @override
  final String id;
  @override
  @DateTimeOrNullConverter()
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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModelDto(id: $id, dateOfBirth: $dateOfBirth, email: $email, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModelDto'))
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
            other is _$_UserModelDto &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateOfBirth, email,
      firstName, lastName, phoneNumber, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelDtoCopyWith<_$_UserModelDto> get copyWith =>
      __$$_UserModelDtoCopyWithImpl<_$_UserModelDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)
        $default, {
    required TResult Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
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
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult? Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
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
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
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
    TResult Function(_UserModelDto value) $default, {
    required TResult Function(PatientUserDto value) patient,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModelDto value)? $default, {
    TResult? Function(PatientUserDto value)? patient,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModelDto value)? $default, {
    TResult Function(PatientUserDto value)? patient,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelDtoToJson(
      this,
    );
  }
}

abstract class _UserModelDto extends UserModelDto implements IUserModelDto {
  const factory _UserModelDto(
      {required final String id,
      @DateTimeOrNullConverter() final DateTime? dateOfBirth,
      final String? email,
      final String? firstName,
      final String? lastName,
      final String? phoneNumber,
      final String? photoUrl}) = _$_UserModelDto;
  const _UserModelDto._() : super._();

  factory _UserModelDto.fromJson(Map<String, dynamic> json) =
      _$_UserModelDto.fromJson;

  @override
  String get id;
  @override
  @DateTimeOrNullConverter()
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
  _$$_UserModelDtoCopyWith<_$_UserModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PatientUserDtoCopyWith<$Res>
    implements $UserModelDtoCopyWith<$Res> {
  factory _$$PatientUserDtoCopyWith(
          _$PatientUserDto value, $Res Function(_$PatientUserDto) then) =
      __$$PatientUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeOrNullConverter() DateTime? dateOfBirth,
      String? email,
      String? firstName,
      String? lastName,
      String? pinCode,
      String? phoneNumber,
      String? photoUrl});
}

/// @nodoc
class __$$PatientUserDtoCopyWithImpl<$Res>
    extends _$UserModelDtoCopyWithImpl<$Res, _$PatientUserDto>
    implements _$$PatientUserDtoCopyWith<$Res> {
  __$$PatientUserDtoCopyWithImpl(
      _$PatientUserDto _value, $Res Function(_$PatientUserDto) _then)
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
    return _then(_$PatientUserDto(
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
@JsonSerializable()
class _$PatientUserDto extends PatientUserDto with DiagnosticableTreeMixin {
  const _$PatientUserDto(
      {required this.id,
      @DateTimeOrNullConverter() this.dateOfBirth,
      this.email,
      this.firstName,
      this.lastName,
      this.pinCode,
      this.phoneNumber,
      this.photoUrl,
      final String? $type})
      : $type = $type ?? 'patient',
        super._();

  factory _$PatientUserDto.fromJson(Map<String, dynamic> json) =>
      _$$PatientUserDtoFromJson(json);

  @override
  final String id;
  @override
  @DateTimeOrNullConverter()
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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModelDto.patient(id: $id, dateOfBirth: $dateOfBirth, email: $email, firstName: $firstName, lastName: $lastName, pinCode: $pinCode, phoneNumber: $phoneNumber, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModelDto.patient'))
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
            other is _$PatientUserDto &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateOfBirth, email,
      firstName, lastName, pinCode, phoneNumber, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientUserDtoCopyWith<_$PatientUserDto> get copyWith =>
      __$$PatientUserDtoCopyWithImpl<_$PatientUserDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)
        $default, {
    required TResult Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
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
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult? Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
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
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
            String? email,
            String? firstName,
            String? lastName,
            String? phoneNumber,
            String? photoUrl)?
        $default, {
    TResult Function(
            String id,
            @DateTimeOrNullConverter() DateTime? dateOfBirth,
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
    TResult Function(_UserModelDto value) $default, {
    required TResult Function(PatientUserDto value) patient,
  }) {
    return patient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserModelDto value)? $default, {
    TResult? Function(PatientUserDto value)? patient,
  }) {
    return patient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserModelDto value)? $default, {
    TResult Function(PatientUserDto value)? patient,
    required TResult orElse(),
  }) {
    if (patient != null) {
      return patient(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientUserDtoToJson(
      this,
    );
  }
}

abstract class PatientUserDto extends UserModelDto implements IUserModelDto {
  const factory PatientUserDto(
      {required final String id,
      @DateTimeOrNullConverter() final DateTime? dateOfBirth,
      final String? email,
      final String? firstName,
      final String? lastName,
      final String? pinCode,
      final String? phoneNumber,
      final String? photoUrl}) = _$PatientUserDto;
  const PatientUserDto._() : super._();

  factory PatientUserDto.fromJson(Map<String, dynamic> json) =
      _$PatientUserDto.fromJson;

  @override
  String get id;
  @override
  @DateTimeOrNullConverter()
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
  _$$PatientUserDtoCopyWith<_$PatientUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
