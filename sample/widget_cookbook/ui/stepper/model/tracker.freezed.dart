// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tracker _$TrackerFromJson(Map<String, dynamic> json) {
  return _Tracker.fromJson(json);
}

/// @nodoc
mixin _$Tracker {
  String get location => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackerCopyWith<Tracker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerCopyWith<$Res> {
  factory $TrackerCopyWith(Tracker value, $Res Function(Tracker) then) =
      _$TrackerCopyWithImpl<$Res, Tracker>;
  @useResult
  $Res call({String location, @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class _$TrackerCopyWithImpl<$Res, $Val extends Tracker>
    implements $TrackerCopyWith<$Res> {
  _$TrackerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrackerCopyWith<$Res> implements $TrackerCopyWith<$Res> {
  factory _$$_TrackerCopyWith(
          _$_Tracker value, $Res Function(_$_Tracker) then) =
      __$$_TrackerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String location, @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class __$$_TrackerCopyWithImpl<$Res>
    extends _$TrackerCopyWithImpl<$Res, _$_Tracker>
    implements _$$_TrackerCopyWith<$Res> {
  __$$_TrackerCopyWithImpl(_$_Tracker _value, $Res Function(_$_Tracker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Tracker(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tracker implements _Tracker {
  const _$_Tracker({this.location = '', @TimestampConverter() this.createdAt});

  factory _$_Tracker.fromJson(Map<String, dynamic> json) =>
      _$$_TrackerFromJson(json);

  @override
  @JsonKey()
  final String location;
  @override
  @TimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Tracker(location: $location, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tracker &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackerCopyWith<_$_Tracker> get copyWith =>
      __$$_TrackerCopyWithImpl<_$_Tracker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackerToJson(
      this,
    );
  }
}

abstract class _Tracker implements Tracker {
  const factory _Tracker(
      {final String location,
      @TimestampConverter() final DateTime? createdAt}) = _$_Tracker;

  factory _Tracker.fromJson(Map<String, dynamic> json) = _$_Tracker.fromJson;

  @override
  String get location;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TrackerCopyWith<_$_Tracker> get copyWith =>
      throw _privateConstructorUsedError;
}
