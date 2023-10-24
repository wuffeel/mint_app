// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModelDto _$NotificationModelDtoFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'chat':
      return ChatNotificationDto.fromJson(json);
    case 'booking':
      return BookingNotificationDto.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'NotificationModelDto',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$NotificationModelDto {
  String get id => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  AppNotificationStatus? get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)
        chat,
    required TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String bookingId,
            @DateTimeConverter() DateTime bookTime,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)
        booking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult? Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String bookingId,
            @DateTimeConverter() DateTime bookTime,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        booking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String bookingId,
            @DateTimeConverter() DateTime bookTime,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        booking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatNotificationDto value) chat,
    required TResult Function(BookingNotificationDto value) booking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNotificationDto value)? chat,
    TResult? Function(BookingNotificationDto value)? booking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNotificationDto value)? chat,
    TResult Function(BookingNotificationDto value)? booking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelDtoCopyWith<NotificationModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelDtoCopyWith<$Res> {
  factory $NotificationModelDtoCopyWith(NotificationModelDto value,
          $Res Function(NotificationModelDto) then) =
      _$NotificationModelDtoCopyWithImpl<$Res, NotificationModelDto>;
  @useResult
  $Res call(
      {String id,
      @DateTimeConverter() DateTime createdAt,
      String? firstName,
      String? lastName,
      String? photoUrl,
      AppNotificationStatus? status});
}

/// @nodoc
class _$NotificationModelDtoCopyWithImpl<$Res,
        $Val extends NotificationModelDto>
    implements $NotificationModelDtoCopyWith<$Res> {
  _$NotificationModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photoUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppNotificationStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatNotificationDtoCopyWith<$Res>
    implements $NotificationModelDtoCopyWith<$Res> {
  factory _$$ChatNotificationDtoCopyWith(_$ChatNotificationDto value,
          $Res Function(_$ChatNotificationDto) then) =
      __$$ChatNotificationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeConverter() DateTime createdAt,
      String roomId,
      String? firstName,
      String? lastName,
      String? photoUrl,
      AppNotificationStatus? status});
}

/// @nodoc
class __$$ChatNotificationDtoCopyWithImpl<$Res>
    extends _$NotificationModelDtoCopyWithImpl<$Res, _$ChatNotificationDto>
    implements _$$ChatNotificationDtoCopyWith<$Res> {
  __$$ChatNotificationDtoCopyWithImpl(
      _$ChatNotificationDto _value, $Res Function(_$ChatNotificationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? roomId = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photoUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ChatNotificationDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppNotificationStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatNotificationDto
    with DiagnosticableTreeMixin
    implements ChatNotificationDto {
  const _$ChatNotificationDto(
      {required this.id,
      @DateTimeConverter() required this.createdAt,
      required this.roomId,
      this.firstName,
      this.lastName,
      this.photoUrl,
      this.status,
      final String? $type})
      : $type = $type ?? 'chat';

  factory _$ChatNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$$ChatNotificationDtoFromJson(json);

  @override
  final String id;
  @override
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  final String roomId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? photoUrl;
  @override
  final AppNotificationStatus? status;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationModelDto.chat(id: $id, createdAt: $createdAt, roomId: $roomId, firstName: $firstName, lastName: $lastName, photoUrl: $photoUrl, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationModelDto.chat'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatNotificationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, roomId, firstName,
      lastName, photoUrl, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatNotificationDtoCopyWith<_$ChatNotificationDto> get copyWith =>
      __$$ChatNotificationDtoCopyWithImpl<_$ChatNotificationDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)
        chat,
    required TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String bookingId,
            @DateTimeConverter() DateTime bookTime,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)
        booking,
  }) {
    return chat(id, createdAt, roomId, firstName, lastName, photoUrl, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult? Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String bookingId,
            @DateTimeConverter() DateTime bookTime,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        booking,
  }) {
    return chat?.call(
        id, createdAt, roomId, firstName, lastName, photoUrl, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String bookingId,
            @DateTimeConverter() DateTime bookTime,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        booking,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(id, createdAt, roomId, firstName, lastName, photoUrl, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatNotificationDto value) chat,
    required TResult Function(BookingNotificationDto value) booking,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNotificationDto value)? chat,
    TResult? Function(BookingNotificationDto value)? booking,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNotificationDto value)? chat,
    TResult Function(BookingNotificationDto value)? booking,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatNotificationDtoToJson(
      this,
    );
  }
}

abstract class ChatNotificationDto
    implements NotificationModelDto, INotificationModelDto {
  const factory ChatNotificationDto(
      {required final String id,
      @DateTimeConverter() required final DateTime createdAt,
      required final String roomId,
      final String? firstName,
      final String? lastName,
      final String? photoUrl,
      final AppNotificationStatus? status}) = _$ChatNotificationDto;

  factory ChatNotificationDto.fromJson(Map<String, dynamic> json) =
      _$ChatNotificationDto.fromJson;

  @override
  String get id;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  String get roomId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get photoUrl;
  @override
  AppNotificationStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$ChatNotificationDtoCopyWith<_$ChatNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingNotificationDtoCopyWith<$Res>
    implements $NotificationModelDtoCopyWith<$Res> {
  factory _$$BookingNotificationDtoCopyWith(_$BookingNotificationDto value,
          $Res Function(_$BookingNotificationDto) then) =
      __$$BookingNotificationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeConverter() DateTime createdAt,
      String bookingId,
      @DateTimeConverter() DateTime bookTime,
      String? firstName,
      String? lastName,
      String? photoUrl,
      AppNotificationStatus? status});
}

/// @nodoc
class __$$BookingNotificationDtoCopyWithImpl<$Res>
    extends _$NotificationModelDtoCopyWithImpl<$Res, _$BookingNotificationDto>
    implements _$$BookingNotificationDtoCopyWith<$Res> {
  __$$BookingNotificationDtoCopyWithImpl(_$BookingNotificationDto _value,
      $Res Function(_$BookingNotificationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? bookingId = null,
    Object? bookTime = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photoUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_$BookingNotificationDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      bookTime: null == bookTime
          ? _value.bookTime
          : bookTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppNotificationStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingNotificationDto
    with DiagnosticableTreeMixin
    implements BookingNotificationDto {
  const _$BookingNotificationDto(
      {required this.id,
      @DateTimeConverter() required this.createdAt,
      required this.bookingId,
      @DateTimeConverter() required this.bookTime,
      this.firstName,
      this.lastName,
      this.photoUrl,
      this.status,
      final String? $type})
      : $type = $type ?? 'booking';

  factory _$BookingNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$$BookingNotificationDtoFromJson(json);

  @override
  final String id;
  @override
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  final String bookingId;
  @override
  @DateTimeConverter()
  final DateTime bookTime;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? photoUrl;
  @override
  final AppNotificationStatus? status;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationModelDto.booking(id: $id, createdAt: $createdAt, bookingId: $bookingId, bookTime: $bookTime, firstName: $firstName, lastName: $lastName, photoUrl: $photoUrl, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationModelDto.booking'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('bookingId', bookingId))
      ..add(DiagnosticsProperty('bookTime', bookTime))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingNotificationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookTime, bookTime) ||
                other.bookTime == bookTime) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, bookingId,
      bookTime, firstName, lastName, photoUrl, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingNotificationDtoCopyWith<_$BookingNotificationDto> get copyWith =>
      __$$BookingNotificationDtoCopyWithImpl<_$BookingNotificationDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)
        chat,
    required TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String bookingId,
            @DateTimeConverter() DateTime bookTime,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)
        booking,
  }) {
    return booking(id, createdAt, bookingId, bookTime, firstName, lastName,
        photoUrl, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult? Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String bookingId,
            @DateTimeConverter() DateTime bookTime,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        booking,
  }) {
    return booking?.call(id, createdAt, bookingId, bookTime, firstName,
        lastName, photoUrl, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult Function(
            String id,
            @DateTimeConverter() DateTime createdAt,
            String bookingId,
            @DateTimeConverter() DateTime bookTime,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        booking,
    required TResult orElse(),
  }) {
    if (booking != null) {
      return booking(id, createdAt, bookingId, bookTime, firstName, lastName,
          photoUrl, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatNotificationDto value) chat,
    required TResult Function(BookingNotificationDto value) booking,
  }) {
    return booking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNotificationDto value)? chat,
    TResult? Function(BookingNotificationDto value)? booking,
  }) {
    return booking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNotificationDto value)? chat,
    TResult Function(BookingNotificationDto value)? booking,
    required TResult orElse(),
  }) {
    if (booking != null) {
      return booking(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingNotificationDtoToJson(
      this,
    );
  }
}

abstract class BookingNotificationDto
    implements NotificationModelDto, INotificationModelDto {
  const factory BookingNotificationDto(
      {required final String id,
      @DateTimeConverter() required final DateTime createdAt,
      required final String bookingId,
      @DateTimeConverter() required final DateTime bookTime,
      final String? firstName,
      final String? lastName,
      final String? photoUrl,
      final AppNotificationStatus? status}) = _$BookingNotificationDto;

  factory BookingNotificationDto.fromJson(Map<String, dynamic> json) =
      _$BookingNotificationDto.fromJson;

  @override
  String get id;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  String get bookingId;
  @DateTimeConverter()
  DateTime get bookTime;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get photoUrl;
  @override
  AppNotificationStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$BookingNotificationDtoCopyWith<_$BookingNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
