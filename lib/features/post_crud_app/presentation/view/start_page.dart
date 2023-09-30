import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/view/question_page/question_page.dart';
import 'package:ore_chans_app/utils/main_button_component.dart';

/// テスト開始画面
class StartPage extends ConsumerWidget {
  const StartPage({super.key});

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
            Image.asset(
              'assets/images/girls.png',
              width: 320,
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'ラブちゃん',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 12),
                Icon(
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
