import 'package:flutter/material.dart';

/// [ボタンのコンポーネント]
class MainButtonComponent extends StatelessWidget {
  const MainButtonComponent({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text; // ボタンのテキスト
  final VoidCallback onPressed; // VoidCallback型を指定すると、ref.readを書くことができる.

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFF6388),
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
      ),
      // ログイン中はボタンを押せないようにする。ぐるぐる回るアイコンを表示する。
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
