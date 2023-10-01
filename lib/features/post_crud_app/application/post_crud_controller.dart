import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final postCrudControllerProvider =
    NotifierProvider<ConvertQuestionToLoveController, Love>(() {
  return ConvertQuestionToLoveController();
});

class ConvertQuestionToLoveController extends Notifier<Love> {
  @override
  Love build() => const Love();

  Love saveGirl({
    required String imagePath,
    required String name,
  }) {
    return Love(
      avatarImagePath: imagePath,
      name: name,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
