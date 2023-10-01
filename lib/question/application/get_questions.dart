import 'package:ore_chans_app/features/post_crud_app/domain/master_question/master_question.dart';
import 'package:ore_chans_app/question/data/master_question_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final getMasterQuestionProvider =
    AsyncNotifierProvider<getQuestionsController, List<MasterQuestion>>(
        () => getQuestionsController());

class getQuestionsController extends AsyncNotifier<List<MasterQuestion>> {
  @override
  List<MasterQuestion> build() => <MasterQuestion>[];

  Future<void> getQuestions() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final response = await ref
          .read(masterQuestionsRepositoryProvider)
          .getMasterQuestions();
      return response;
    });
  }
}
