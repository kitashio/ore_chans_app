import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase/src/features/auth/application/auth_notifier.dart';

/// [ログイン用のボタンのコンポーネント]
class AuthButton extends ConsumerWidget {
  const AuthButton({super.key, required this.text, required this.onPressed});
  final String text; // ボタンのタイトルを引数で渡す.
  final VoidCallback onPressed; // VoidCallback型を指定すると、ref.readを書くことができる.

  @override
  Widget build(BuildContext context, WidgetRef ref) {// WidgetRefを指定すると、ref.readを書くことができる.
    // ref.listenを使ってプロバイダーをコールバック関数の引数に渡す.
    ref.listen<AsyncValue<void>>(
      authNotifierProvider,
      (_, state) {
        if (state.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.asError.toString())),
          );
        }
      },
    );
    final state = ref.watch(authNotifierProvider);
    return SizedBox(
      width: 200,
      height: 60,
      child: ElevatedButton(
        // ログイン中はボタンを押せないようにする。ぐるぐる回るアイコンを表示する。
        onPressed: state.isLoading ? null : onPressed,
        child: state.isLoading
            ? const CircularProgressIndicator()
            : Text(text,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
      ),
    );
  }
}
