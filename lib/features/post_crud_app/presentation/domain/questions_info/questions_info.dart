import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/domain/master_question/master_question.dart';

part 'questions_info.freezed.dart';
part 'questions_info.g.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs

// QuestionsInfoモデル
@freezed
class QuestionsInfo with _$QuestionsInfo {
  const factory QuestionsInfo({
    @Default([]) List<MasterQuestion> questions,
    @Default(Love()) Love love,
  }) = _QuestionsInfo;

  factory QuestionsInfo.fromJson(Map<String, Object?> json) =>
      _$QuestionsInfoFromJson(json);
}
