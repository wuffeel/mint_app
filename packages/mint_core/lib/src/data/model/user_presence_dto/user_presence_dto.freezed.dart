// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPresenceDto _$UserPresenceDtoFromJson(Map<String, dynamic> json) {
  return _UserPresenceDto.fromJson(json);
}

/// @nodoc
mixin _$UserPresenceDto {
  bool get isOnline => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get lastSeen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPresenceDtoCopyWith<UserPresenceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPresenceDtoCopyWith<$Res> {
  factory $UserPresenceDtoCopyWith(
          UserPresenceDto value, $Res Function(UserPresenceDto) then) =
      _$UserPresenceDtoCopyWithImpl<$Res, UserPresenceDto>;
  @useResult
  $Res call({bool isOnline, @DateTimeConverter() DateTime lastSeen});
}

/// @nodoc
class _$UserPresenceDtoCopyWithImpl<$Res, $Val extends UserPresenceDto>
    implements $UserPresenceDtoCopyWith<$Res> {
  _$UserPresenceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
    Object? lastSeen = null,
  }) {
    return _then(_value.copyWith(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPresenceDtoCopyWith<$Res>
    implements $UserPresenceDtoCopyWith<$Res> {
  factory _$$_UserPresenceDtoCopyWith(
          _$_UserPresenceDto value, $Res Function(_$_UserPresenceDto) then) =
      __$$_UserPresenceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOnline, @DateTimeConverter() DateTime lastSeen});
}

/// @nodoc
class __$$_UserPresenceDtoCopyWithImpl<$Res>
    extends _$UserPresenceDtoCopyWithImpl<$Res, _$_UserPresenceDto>
    implements _$$_UserPresenceDtoCopyWith<$Res> {
  __$$_UserPresenceDtoCopyWithImpl(
      _$_UserPresenceDto _value, $Res Function(_$_UserPresenceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
    Object? lastSeen = null,
  }) {
    return _then(_$_UserPresenceDto(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPresenceDto
    with DiagnosticableTreeMixin
    implements _UserPresenceDto {
  const _$_UserPresenceDto(
      {required this.isOnline, @DateTimeConverter() required this.lastSeen});

  factory _$_UserPresenceDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserPresenceDtoFromJson(json);

  @override
  final bool isOnline;
  @override
  @DateTimeConverter()
  final DateTime lastSeen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPresenceDto(isOnline: $isOnline, lastSeen: $lastSeen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserPresenceDto'))
      ..add(DiagnosticsProperty('isOnline', isOnline))
      ..add(DiagnosticsProperty('lastSeen', lastSeen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPresenceDto &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isOnline, lastSeen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPresenceDtoCopyWith<_$_UserPresenceDto> get copyWith =>
      __$$_UserPresenceDtoCopyWithImpl<_$_UserPresenceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPresenceDtoToJson(
      this,
    );
  }
}

abstract class _UserPresenceDto implements UserPresenceDto {
  const factory _UserPresenceDto(
          {required final bool isOnline,
          @DateTimeConverter() required final DateTime lastSeen}) =
      _$_UserPresenceDto;

  factory _UserPresenceDto.fromJson(Map<String, dynamic> json) =
      _$_UserPresenceDto.fromJson;

  @override
  bool get isOnline;
  @override
  @DateTimeConverter()
  DateTime get lastSeen;
  @override
  @JsonKey(ignore: true)
  _$$_UserPresenceDtoCopyWith<_$_UserPresenceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
