import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final saveQuestionProvider = NotifierProvider<SaveQuestionController, Love>(
    () => SaveQuestionController());

class SaveQuestionController extends Notifier<Love> {
  @override
  Love build() => const Love();

  Love saveGirl({
    required Love love,
    required String question,
    required String answer,
  }) {
    final questionList = <Map<String, String>>[
      ...love.questionList,
      {question: answer}
    ];
    return Love(
      questionList: questionList,
    );
  }
}
