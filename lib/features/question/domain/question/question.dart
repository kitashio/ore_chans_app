import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs

// questionList用のモデル
@freezed
class Question with _$Question {
  const factory Question({
    @Default('') String question,
    @Default('') String answer,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}
