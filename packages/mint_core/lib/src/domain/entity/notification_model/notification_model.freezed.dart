// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationModel {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  AppNotificationStatus? get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)
        chat,
    required TResult Function(
            String id,
            DateTime createdAt,
            String bookingId,
            DateTime bookTime,
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
            DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult? Function(
            String id,
            DateTime createdAt,
            String bookingId,
            DateTime bookTime,
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
            DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult Function(
            String id,
            DateTime createdAt,
            String bookingId,
            DateTime bookTime,
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
    required TResult Function(ChatNotification value) chat,
    required TResult Function(BookingNotification value) booking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNotification value)? chat,
    TResult? Function(BookingNotification value)? booking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNotification value)? chat,
    TResult Function(BookingNotification value)? booking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String? firstName,
      String? lastName,
      String? photoUrl,
      AppNotificationStatus? status});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ChatNotificationCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$ChatNotificationCopyWith(
          _$ChatNotification value, $Res Function(_$ChatNotification) then) =
      __$$ChatNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String roomId,
      String? firstName,
      String? lastName,
      String? photoUrl,
      AppNotificationStatus? status});
}

/// @nodoc
class __$$ChatNotificationCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$ChatNotification>
    implements _$$ChatNotificationCopyWith<$Res> {
  __$$ChatNotificationCopyWithImpl(
      _$ChatNotification _value, $Res Function(_$ChatNotification) _then)
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
    return _then(_$ChatNotification(
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

class _$ChatNotification
    with DiagnosticableTreeMixin
    implements ChatNotification {
  const _$ChatNotification(
      {required this.id,
      required this.createdAt,
      required this.roomId,
      this.firstName,
      this.lastName,
      this.photoUrl,
      this.status});

  @override
  final String id;
  @override
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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationModel.chat(id: $id, createdAt: $createdAt, roomId: $roomId, firstName: $firstName, lastName: $lastName, photoUrl: $photoUrl, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationModel.chat'))
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
            other is _$ChatNotification &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, roomId, firstName,
      lastName, photoUrl, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatNotificationCopyWith<_$ChatNotification> get copyWith =>
      __$$ChatNotificationCopyWithImpl<_$ChatNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)
        chat,
    required TResult Function(
            String id,
            DateTime createdAt,
            String bookingId,
            DateTime bookTime,
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
            DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult? Function(
            String id,
            DateTime createdAt,
            String bookingId,
            DateTime bookTime,
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
            DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult Function(
            String id,
            DateTime createdAt,
            String bookingId,
            DateTime bookTime,
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
    required TResult Function(ChatNotification value) chat,
    required TResult Function(BookingNotification value) booking,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNotification value)? chat,
    TResult? Function(BookingNotification value)? booking,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNotification value)? chat,
    TResult Function(BookingNotification value)? booking,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }
}

abstract class ChatNotification
    implements NotificationModel, INotificationModel {
  const factory ChatNotification(
      {required final String id,
      required final DateTime createdAt,
      required final String roomId,
      final String? firstName,
      final String? lastName,
      final String? photoUrl,
      final AppNotificationStatus? status}) = _$ChatNotification;

  @override
  String get id;
  @override
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
  _$$ChatNotificationCopyWith<_$ChatNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingNotificationCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$BookingNotificationCopyWith(_$BookingNotification value,
          $Res Function(_$BookingNotification) then) =
      __$$BookingNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String bookingId,
      DateTime bookTime,
      String? firstName,
      String? lastName,
      String? photoUrl,
      AppNotificationStatus? status});
}

/// @nodoc
class __$$BookingNotificationCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$BookingNotification>
    implements _$$BookingNotificationCopyWith<$Res> {
  __$$BookingNotificationCopyWithImpl(
      _$BookingNotification _value, $Res Function(_$BookingNotification) _then)
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
    return _then(_$BookingNotification(
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

class _$BookingNotification
    with DiagnosticableTreeMixin
    implements BookingNotification {
  const _$BookingNotification(
      {required this.id,
      required this.createdAt,
      required this.bookingId,
      required this.bookTime,
      this.firstName,
      this.lastName,
      this.photoUrl,
      this.status});

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String bookingId;
  @override
  final DateTime bookTime;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? photoUrl;
  @override
  final AppNotificationStatus? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationModel.booking(id: $id, createdAt: $createdAt, bookingId: $bookingId, bookTime: $bookTime, firstName: $firstName, lastName: $lastName, photoUrl: $photoUrl, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationModel.booking'))
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
            other is _$BookingNotification &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, bookingId,
      bookTime, firstName, lastName, photoUrl, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingNotificationCopyWith<_$BookingNotification> get copyWith =>
      __$$BookingNotificationCopyWithImpl<_$BookingNotification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)
        chat,
    required TResult Function(
            String id,
            DateTime createdAt,
            String bookingId,
            DateTime bookTime,
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
            DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult? Function(
            String id,
            DateTime createdAt,
            String bookingId,
            DateTime bookTime,
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
            DateTime createdAt,
            String roomId,
            String? firstName,
            String? lastName,
            String? photoUrl,
            AppNotificationStatus? status)?
        chat,
    TResult Function(
            String id,
            DateTime createdAt,
            String bookingId,
            DateTime bookTime,
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
    required TResult Function(ChatNotification value) chat,
    required TResult Function(BookingNotification value) booking,
  }) {
    return booking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNotification value)? chat,
    TResult? Function(BookingNotification value)? booking,
  }) {
    return booking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNotification value)? chat,
    TResult Function(BookingNotification value)? booking,
    required TResult orElse(),
  }) {
    if (booking != null) {
      return booking(this);
    }
    return orElse();
  }
}

abstract class BookingNotification
    implements NotificationModel, INotificationModel {
  const factory BookingNotification(
      {required final String id,
      required final DateTime createdAt,
      required final String bookingId,
      required final DateTime bookTime,
      final String? firstName,
      final String? lastName,
      final String? photoUrl,
      final AppNotificationStatus? status}) = _$BookingNotification;

  @override
  String get id;
  @override
  DateTime get createdAt;
  String get bookingId;
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
  _$$BookingNotificationCopyWith<_$BookingNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
