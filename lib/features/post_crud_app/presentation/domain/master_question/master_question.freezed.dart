// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MasterQuestion _$MasterQuestionFromJson(Map<String, dynamic> json) {
  return _MasterQuestion.fromJson(json);
}

/// @nodoc
mixin _$MasterQuestion {
  String get question => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answer')
  int get correctAnswer => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MasterQuestionCopyWith<MasterQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterQuestionCopyWith<$Res> {
  factory $MasterQuestionCopyWith(
          MasterQuestion value, $Res Function(MasterQuestion) then) =
      _$MasterQuestionCopyWithImpl<$Res, MasterQuestion>;
  @useResult
  $Res call(
      {String question,
      int level,
      @JsonKey(name: 'correct_answer') int correctAnswer,
      List<String> answers});
}

/// @nodoc
class _$MasterQuestionCopyWithImpl<$Res, $Val extends MasterQuestion>
    implements $MasterQuestionCopyWith<$Res> {
  _$MasterQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? level = null,
    Object? correctAnswer = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MasterQuestionCopyWith<$Res>
    implements $MasterQuestionCopyWith<$Res> {
  factory _$$_MasterQuestionCopyWith(
          _$_MasterQuestion value, $Res Function(_$_MasterQuestion) then) =
      __$$_MasterQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      int level,
      @JsonKey(name: 'correct_answer') int correctAnswer,
      List<String> answers});
}

/// @nodoc
class __$$_MasterQuestionCopyWithImpl<$Res>
    extends _$MasterQuestionCopyWithImpl<$Res, _$_MasterQuestion>
    implements _$$_MasterQuestionCopyWith<$Res> {
  __$$_MasterQuestionCopyWithImpl(
      _$_MasterQuestion _value, $Res Function(_$_MasterQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? level = null,
    Object? correctAnswer = null,
    Object? answers = null,
  }) {
    return _then(_$_MasterQuestion(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MasterQuestion implements _MasterQuestion {
  const _$_MasterQuestion(
      {required this.question,
      required this.level,
      @JsonKey(name: 'correct_answer') required this.correctAnswer,
      required final List<String> answers})
      : _answers = answers;

  factory _$_MasterQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_MasterQuestionFromJson(json);

  @override
  final String question;
  @override
  final int level;
  @override
  @JsonKey(name: 'correct_answer')
  final int correctAnswer;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'MasterQuestion(question: $question, level: $level, correctAnswer: $correctAnswer, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterQuestion &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, level, correctAnswer,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasterQuestionCopyWith<_$_MasterQuestion> get copyWith =>
      __$$_MasterQuestionCopyWithImpl<_$_MasterQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MasterQuestionToJson(
      this,
    );
  }
}

abstract class _MasterQuestion implements MasterQuestion {
  const factory _MasterQuestion(
      {required final String question,
      required final int level,
      @JsonKey(name: 'correct_answer') required final int correctAnswer,
      required final List<String> answers}) = _$_MasterQuestion;

  factory _MasterQuestion.fromJson(Map<String, dynamic> json) =
      _$_MasterQuestion.fromJson;

  @override
  String get question;
  @override
  int get level;
  @override
  @JsonKey(name: 'correct_answer')
  int get correctAnswer;
  @override
  List<String> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_MasterQuestionCopyWith<_$_MasterQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
