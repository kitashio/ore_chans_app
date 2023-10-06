import 'package:ore_chans_app/features/question/data/master_question_repository.dart';
import 'package:ore_chans_app/features/question/domain/master_question/master_question.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final getMasterQuestionProvider =
    AsyncNotifierProvider<GetQuestionsController, List<MasterQuestion>>(
        () => GetQuestionsController());

class GetQuestionsController extends AsyncNotifier<List<MasterQuestion>> {
  @override
  List<MasterQuestion> build() => const [];

  Future<void> getQuestions(String imagePath, String name) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final response = await ref
          .read(masterQuestionsRepositoryProvider)
          .getMasterQuestions();

      return response;
    });
  }
}
