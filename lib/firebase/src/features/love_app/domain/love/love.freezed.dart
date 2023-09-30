// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'love.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Love _$LoveFromJson(Map<String, dynamic> json) {
  return _Love.fromJson(json);
}

/// @nodoc
mixin _$Love {
  String get avaterImage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  @TimestampConverter()
  dynamic get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoveCopyWith<Love> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoveCopyWith<$Res> {
  factory $LoveCopyWith(Love value, $Res Function(Love) then) =
      _$LoveCopyWithImpl<$Res, Love>;
  @useResult
  $Res call(
      {String avaterImage,
      String name,
      int score,
      @TimestampConverter() dynamic createdAt,
      @TimestampConverter() dynamic updatedAt});
}

/// @nodoc
class _$LoveCopyWithImpl<$Res, $Val extends Love>
    implements $LoveCopyWith<$Res> {
  _$LoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avaterImage = null,
    Object? name = null,
    Object? score = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      avaterImage: null == avaterImage
          ? _value.avaterImage
          : avaterImage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoveCopyWith<$Res> implements $LoveCopyWith<$Res> {
  factory _$$_LoveCopyWith(_$_Love value, $Res Function(_$_Love) then) =
      __$$_LoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String avaterImage,
      String name,
      int score,
      @TimestampConverter() dynamic createdAt,
      @TimestampConverter() dynamic updatedAt});
}

/// @nodoc
class __$$_LoveCopyWithImpl<$Res> extends _$LoveCopyWithImpl<$Res, _$_Love>
    implements _$$_LoveCopyWith<$Res> {
  __$$_LoveCopyWithImpl(_$_Love _value, $Res Function(_$_Love) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avaterImage = null,
    Object? name = null,
    Object? score = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Love(
      avaterImage: null == avaterImage
          ? _value.avaterImage
          : avaterImage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt ? _value.createdAt! : createdAt,
      updatedAt: freezed == updatedAt ? _value.updatedAt! : updatedAt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Love implements _Love {
  const _$_Love(
      {this.avaterImage = '',
      this.name = '',
      this.score = 0,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt});

  factory _$_Love.fromJson(Map<String, dynamic> json) => _$$_LoveFromJson(json);

  @override
  @JsonKey()
  final String avaterImage;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int score;
  @override
  @TimestampConverter()
  final dynamic createdAt;
  @override
  @TimestampConverter()
  final dynamic updatedAt;

  @override
  String toString() {
    return 'Love(avaterImage: $avaterImage, name: $name, score: $score, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Love &&
            (identical(other.avaterImage, avaterImage) ||
                other.avaterImage == avaterImage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      avaterImage,
      name,
      score,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoveCopyWith<_$_Love> get copyWith =>
      __$$_LoveCopyWithImpl<_$_Love>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoveToJson(
      this,
    );
  }
}

abstract class _Love implements Love {
  const factory _Love(
      {final String avaterImage,
      final String name,
      final int score,
      @TimestampConverter() final dynamic createdAt,
      @TimestampConverter() final dynamic updatedAt}) = _$_Love;

  factory _Love.fromJson(Map<String, dynamic> json) = _$_Love.fromJson;

  @override
  String get avaterImage;
  @override
  String get name;
  @override
  int get score;
  @override
  @TimestampConverter()
  dynamic get createdAt;
  @override
  @TimestampConverter()
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LoveCopyWith<_$_Love> get copyWith => throw _privateConstructorUsedError;
}
