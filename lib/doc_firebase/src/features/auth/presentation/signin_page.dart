import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/doc_firebase/src/features/auth/application/auth_notifier.dart';
import 'package:ore_chans_app/doc_firebase/src/features/auth/presentation/widget/auth_button.dart';

/// [ログイン画面。匿名認証でログインする]
class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignInPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ログインボタンのコンポーネントを呼び出す
            AuthButton(
                text: '登録せずに利用',
                onPressed: () => ref
                    .read(authNotifierProvider.notifier)
                    .signInAnonymously()),
          ],
        ),
      ),
    );
  }
}
