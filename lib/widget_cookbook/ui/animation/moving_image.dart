import 'package:flutter/material.dart';

class MovingImage extends StatefulWidget {
  const MovingImage({super.key});

  @override
  _MovingImageState createState() => _MovingImageState();
}

class _MovingImageState extends State<MovingImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); // 上下に動き続けるためにreverse: trueを指定

    _animation = Tween<double>(begin: 0, end: 50).animate(_controller)
      ..addListener(() {
        setState(() {}); // アニメーションの値が変更されるたびに再描画
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moving Image'),
      ),
      body: Transform.translate(
        offset: Offset(0, _animation.value), // ここでy方向に動かします
        child: Image.asset('images/photo/cathat.png'), // 画像のパスを指定
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
