import 'package:flutter/material.dart';

/// [FractionallySizedBoxの使い方]
class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FractionallySizedBox"),
      ),
      body: Column(
        children: [
          // 背景色
          Container(
            width: 300,
            height: 300,
            color: Colors.grey,
            child: FractionallySizedBox(
              alignment: Alignment.topLeft,
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // 画像を表示。
          /* Flexibleでラップしないと、FractionallySizedBoxのサイズが画面いっぱいになってしまう。
          Expandedだと、FractionallySizedBoxのサイズが画面いっぱいになってしまう。
          Expandedとの違いは、伸びることはなく、FractionallySizedBoxのサイズに合わせて、画像が縮小される。
          */
      Flexible(
        child: Container(
          color: Colors.blue,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.5,
            child: Image.asset(
              'images/cat33.png',
            ),
          ),
        ),
      ),
        ],
      ),
    );
  }
}
