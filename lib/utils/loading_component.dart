import 'package:flutter/material.dart';

/// CircularProgressIndicator を表示するだけのコンポーネント
class LoadingComponent extends StatelessWidget {
  const LoadingComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}