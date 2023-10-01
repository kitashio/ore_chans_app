import 'package:ore_chans_app/features/post_crud_app/application/post_crud_controller.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/domain/questions_info/questions_info.dart';
import 'package:ore_chans_app/question/data/master_question_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final getMasterQuestionProvider =
    AsyncNotifierProvider<GetQuestionsController, QuestionsInfo>(
        () => GetQuestionsController());

class GetQuestionsController extends AsyncNotifier<QuestionsInfo> {
  @override
  QuestionsInfo build() => const QuestionsInfo();

  Future<void> getQuestions(String imagePath, String name) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final response = await ref
          .read(masterQuestionsRepositoryProvider)
          .getMasterQuestions();

      final love = ref
          .read(postCrudControllerProvider.notifier)
          .saveGirl(imagePath: imagePath, name: name);

      return QuestionsInfo(questions: response, love: love);
    });
  }
}
