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
  String get avaterImagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get deviation => throw _privateConstructorUsedError;
  List<Question> get questionList => throw _privateConstructorUsedError;
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
      {String avaterImagePath,
      String name,
      int deviation,
      List<Question> questionList,
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
    Object? avaterImagePath = null,
    Object? name = null,
    Object? deviation = null,
    Object? questionList = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      avaterImagePath: null == avaterImagePath
          ? _value.avaterImagePath
          : avaterImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      deviation: null == deviation
          ? _value.deviation
          : deviation // ignore: cast_nullable_to_non_nullable
              as int,
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<Question>,
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
      {String avaterImagePath,
      String name,
      int deviation,
      List<Question> questionList,
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
    Object? avaterImagePath = null,
    Object? name = null,
    Object? deviation = null,
    Object? questionList = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Love(
      avaterImagePath: null == avaterImagePath
          ? _value.avaterImagePath
          : avaterImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      deviation: null == deviation
          ? _value.deviation
          : deviation // ignore: cast_nullable_to_non_nullable
              as int,
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      createdAt: freezed == createdAt ? _value.createdAt! : createdAt,
      updatedAt: freezed == updatedAt ? _value.updatedAt! : updatedAt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Love extends _Love {
  const _$_Love(
      {this.avaterImagePath = '',
      this.name = '',
      this.deviation = 0,
      final List<Question> questionList = const [],
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : _questionList = questionList,
        super._();

  factory _$_Love.fromJson(Map<String, dynamic> json) => _$$_LoveFromJson(json);

  @override
  @JsonKey()
  final String avaterImagePath;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int deviation;
  final List<Question> _questionList;
  @override
  @JsonKey()
  List<Question> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  @TimestampConverter()
  final dynamic createdAt;
  @override
  @TimestampConverter()
  final dynamic updatedAt;

  @override
  String toString() {
    return 'Love(avaterImagePath: $avaterImagePath, name: $name, deviation: $deviation, questionList: $questionList, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Love &&
            (identical(other.avaterImagePath, avaterImagePath) ||
                other.avaterImagePath == avaterImagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.deviation, deviation) ||
                other.deviation == deviation) &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      avaterImagePath,
      name,
      deviation,
      const DeepCollectionEquality().hash(_questionList),
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

abstract class _Love extends Love {
  const factory _Love(
      {final String avaterImagePath,
      final String name,
      final int deviation,
      final List<Question> questionList,
      @TimestampConverter() final dynamic createdAt,
      @TimestampConverter() final dynamic updatedAt}) = _$_Love;
  const _Love._() : super._();

  factory _Love.fromJson(Map<String, dynamic> json) = _$_Love.fromJson;

  @override
  String get avaterImagePath;
  @override
  String get name;
  @override
  int get deviation;
  @override
  List<Question> get questionList;
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
