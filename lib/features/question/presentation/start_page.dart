import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/extension/async_value_extension.dart';
import 'package:ore_chans_app/features/collection/domain/love/love.dart';
import 'package:ore_chans_app/features/question/application/get_questions.dart';
import 'package:ore_chans_app/features/question/domain/master_question/master_question.dart';
import 'package:ore_chans_app/features/question/presentation/question_page.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ore_chans_app/utils/main_button_component.dart';
import 'package:ore_chans_app/utils/name_generator.dart';

/// テスト開始画面
class StartPage extends ConsumerWidget {
  StartPage({
    Key? key,
    required this.imagePath,
  })  : name = AnimeCharacterNameGenerator().getRandomName(),
        tts = FlutterTts(),
        super(key: key) {
    tts.setLanguage('ja-JP');
    tts.setSpeechRate(0.2);
  }

  final String name;
  final FlutterTts tts;
  final String imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.handleAsyncValue<List<MasterQuestion>>(
      getMasterQuestionProvider,
      complete: (context, data) async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuestionPage(
              imagePath: imagePath,
              name: name,
              index: 0,
              questions: data,
              love: Love(),
            ),
          ),
        );
      },
    );

    return Scaffold(
      backgroundColor: const Color(0xFFFF99B1),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '恋愛偏差値を上げて\nこの子を惚れさせよう！',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Image.network(
              imagePath,
              width: 320,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "${name}ちゃん",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 12),
                IconButton(
                  onPressed: () {
                    tts.speak(name);
                  },
                  icon: const Icon(
                    Icons.volume_up,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 280,
              child: Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            const SizedBox(height: 24),
            MainButtonComponent(
              text: 'テスト開始',
              onPressed: () async => await ref
                  .read(getMasterQuestionProvider.notifier)
                  .getQuestions(imagePath, name),
            ),
          ],
        ),
      ),
    );
  }
}
