import 'package:flutter/material.dart';
/*
callbackの型を定義.
typedefは、関数の型をただ定義するだけなので難しいものではないです.
*/
typedef ButtonCallback = void Function();

class CustomElevatedButton extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final double width;
  final double height;
  final String title;
  final ButtonCallback onPressed;// ボタンが押された時の処理。パラメータ化できます。

  const CustomElevatedButton({super.key,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.width,
    required this.height,
    required this.onPressed, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        minimumSize: Size(width, height),
      ),
      onPressed: onPressed,
      child: Text(title), // ボタンのテキスト。こちらもパラメータ化できます。
    );
  }
}
