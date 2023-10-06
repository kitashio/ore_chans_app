import 'package:ore_chans_app/features/collection/domain/love/love.dart';
import 'package:ore_chans_app/features/question/domain/question/question.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final questionController = AsyncNotifierProvider<QuestionNotifier, void>(() {
  return QuestionNotifier();
});

class QuestionNotifier extends AsyncNotifier<void> {
  @override
  void build() => {};

  Love saveGirl({
    required Love love,
    required String question,
    required String answer,
  }) {
    final questionList = <Question>[
      ...love.questionList,
      Question(question: question, answer: answer)
    ];
    return Love(
      questionList: questionList,
    );
  }
}
