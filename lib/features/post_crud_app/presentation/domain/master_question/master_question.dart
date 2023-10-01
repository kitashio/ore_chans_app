import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_question.freezed.dart';
part 'master_question.g.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs

// masterQuestionモデル
@freezed
class MasterQuestion with _$MasterQuestion {
  const factory MasterQuestion({
    required String question,
    required int level,
    @JsonKey(name: 'correct_answer') required int correctAnswer,
    required List<String> answers,
  }) = _MasterQuestion;

  factory MasterQuestion.fromJson(Map<String, Object?> json) =>
      _$MasterQuestionFromJson(json);
}
