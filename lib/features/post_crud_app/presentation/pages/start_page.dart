import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/utils/main_button_component.dart';
import 'package:ore_chans_app/utils/name_generator.dart';

/// テスト開始画面
class StartPage extends ConsumerWidget {
  const StartPage({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  "${AnimeCharacterNameGenerator().getRandomName()}ちゃん",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 12),
                const Icon(
                  Icons.volume_up,
                  color: Colors.white,
                  size: 32,
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
