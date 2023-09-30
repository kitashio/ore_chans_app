import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/auth/application/auth_notifier.dart';
import 'package:ore_chans_app/features/auth/presentation/widget/auth_button.dart';

/// [ログイン画面。匿名認証でログインする]
class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/photo/universe.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.lock_person, size: 150, color: Colors.white),
              const SizedBox(height: 20),
              // ログインボタンのコンポーネントを呼び出す
              AuthButton(
                  text: '登録せずに利用',
                  onPressed: () => ref
                      .read(authNotifierProvider.notifier)
                      .signInAnonymously()),
            ],
          ),
        ),
      ),
    );
  }
}
