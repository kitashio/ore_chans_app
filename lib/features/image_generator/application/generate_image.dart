import 'package:ore_chans_app/features/image_generator/data/generate_image_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final generateImageControllerProvider =
    AsyncNotifierProvider<GenerateImageController, String>(
        () => GenerateImageController());

// 眠すぎ。気力が戻ったらリファクタ
class GenerateImageController extends AsyncNotifier<String> {
  @override
  FutureOr<String> build() => "";

  Future<void> generateImage() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final response =
          await ref.read(generateImageRepositoryProvider).generateGirlAvatar();
      final girlAvatar = response.toGirlAvatar();
      return girlAvatar.imagePath;
    });
  }
}
