import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/extension/async_value_extension.dart';
import 'package:ore_chans_app/features/image_generator/application/generate_image.dart';
import 'package:ore_chans_app/utils/main_button_component.dart';

/// [ログイン画面。匿名認証でログインする]
class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    ref.handleAsyncValue<String>(
      generateImageControllerProvider,
      complete: (context, data) async {
        // ここで遷移させる。
        debugPrint(data);
      },
    );

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color(0xFFFF99B1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '恋愛偏差値テスト',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 8),
              Image.asset(
                'assets/images/love_collection_logo.png',
                width: 320,
              ),
              const SizedBox(height: 32),
              Image.asset(
                'assets/images/top_girl.png',
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 24),
              MainButtonComponent(
                text: 'はじめる',
                onPressed: () async => await ref
                    .read(generateImageControllerProvider.notifier)
                    .generateImage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
