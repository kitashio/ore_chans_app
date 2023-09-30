import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/auth/application/auth_notifier.dart';
import 'package:ore_chans_app/utils/loading_component.dart';

/// [ログイン用のボタンのコンポーネント]
class AuthButton extends ConsumerWidget {
  const AuthButton({super.key, required this.onPressed});
  final VoidCallback onPressed; // VoidCallback型を指定すると、ref.readを書くことができる.

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WidgetRefを指定すると、ref.readを書くことができる.
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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFF6388),
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
      ),
      // ログイン中はボタンを押せないようにする。ぐるぐる回るアイコンを表示する。
      onPressed: state.isLoading ? null : onPressed,
      child: state.isLoading
          ? const LoadingComponent()
          : const Text(
              'はじめる',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
    );
  }
}
