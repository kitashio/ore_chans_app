import 'package:flutter/material.dart';

/// CircularProgressIndicator を表示するだけのコンポーネント
class LoadingComponent extends StatelessWidget {
  const LoadingComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 50,
      height: 50,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.black87),
        backgroundColor: Colors.yellow,
        strokeWidth: 20,
      ),
    );
  }
}
