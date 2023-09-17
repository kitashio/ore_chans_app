import 'package:flutter/material.dart';

/// [AspectRatioの使い方]
class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aspect Ratio"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            width: 100.0,
            height: 100.0,
            child: AspectRatio(
              aspectRatio: 1.618 / 1,
              child: Container(
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
