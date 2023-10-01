import 'package:flutter/material.dart';

/// [ボタンのコンポーネント]
class AnswerButtonComponent extends StatelessWidget {
  const AnswerButtonComponent({
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
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
      ),
      // ログイン中はボタンを押せないようにする。ぐるぐる回るアイコンを表示する。
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
