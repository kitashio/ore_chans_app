import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text('ミミッキュ', style: TextStyle(fontSize: 30)),
          SizedBox(
              width: 250,
              height: 250,
              child: Image.network(
                'https://www.pokemon.co.jp/ex/sun_moon/common/images/pokemon/160719_06/portrait02.png',
                fit: BoxFit.cover, // 枠内に収まるように画像を拡大縮小
              ))
        ],
      ),
    );
  }
}
