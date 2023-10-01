// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionsInfo _$QuestionsInfoFromJson(Map<String, dynamic> json) {
  return _QuestionsInfo.fromJson(json);
}

/// @nodoc
mixin _$QuestionsInfo {
  List<MasterQuestion> get questions => throw _privateConstructorUsedError;
  Love get love => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsInfoCopyWith<QuestionsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsInfoCopyWith<$Res> {
  factory $QuestionsInfoCopyWith(
          QuestionsInfo value, $Res Function(QuestionsInfo) then) =
      _$QuestionsInfoCopyWithImpl<$Res, QuestionsInfo>;
  @useResult
  $Res call({List<MasterQuestion> questions, Love love});

  $LoveCopyWith<$Res> get love;
}

/// @nodoc
class _$QuestionsInfoCopyWithImpl<$Res, $Val extends QuestionsInfo>
    implements $QuestionsInfoCopyWith<$Res> {
  _$QuestionsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? love = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<MasterQuestion>,
      love: null == love
          ? _value.love
          : love // ignore: cast_nullable_to_non_nullable
              as Love,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoveCopyWith<$Res> get love {
    return $LoveCopyWith<$Res>(_value.love, (value) {
      return _then(_value.copyWith(love: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionsInfoCopyWith<$Res>
    implements $QuestionsInfoCopyWith<$Res> {
  factory _$$_QuestionsInfoCopyWith(
          _$_QuestionsInfo value, $Res Function(_$_QuestionsInfo) then) =
      __$$_QuestionsInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MasterQuestion> questions, Love love});

  @override
  $LoveCopyWith<$Res> get love;
}

/// @nodoc
class __$$_QuestionsInfoCopyWithImpl<$Res>
    extends _$QuestionsInfoCopyWithImpl<$Res, _$_QuestionsInfo>
    implements _$$_QuestionsInfoCopyWith<$Res> {
  __$$_QuestionsInfoCopyWithImpl(
      _$_QuestionsInfo _value, $Res Function(_$_QuestionsInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? love = null,
  }) {
    return _then(_$_QuestionsInfo(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<MasterQuestion>,
      love: null == love
          ? _value.love
          : love // ignore: cast_nullable_to_non_nullable
              as Love,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionsInfo implements _QuestionsInfo {
  const _$_QuestionsInfo(
      {final List<MasterQuestion> questions = const [],
      this.love = const Love()})
      : _questions = questions;

  factory _$_QuestionsInfo.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionsInfoFromJson(json);

  final List<MasterQuestion> _questions;
  @override
  @JsonKey()
  List<MasterQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final Love love;

  @override
  String toString() {
    return 'QuestionsInfo(questions: $questions, love: $love)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionsInfo &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.love, love) || other.love == love));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questions), love);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionsInfoCopyWith<_$_QuestionsInfo> get copyWith =>
      __$$_QuestionsInfoCopyWithImpl<_$_QuestionsInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionsInfoToJson(
      this,
    );
  }
}

abstract class _QuestionsInfo implements QuestionsInfo {
  const factory _QuestionsInfo(
      {final List<MasterQuestion> questions,
      final Love love}) = _$_QuestionsInfo;

  factory _QuestionsInfo.fromJson(Map<String, dynamic> json) =
      _$_QuestionsInfo.fromJson;

  @override
  List<MasterQuestion> get questions;
  @override
  Love get love;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionsInfoCopyWith<_$_QuestionsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
