import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text('ピカチュウ', style: TextStyle(fontSize: 30)),
          SizedBox(
              width: 250,
              height: 250,
              child: Image.network(
                'https://zukan.pokemon.co.jp/zukan-api/up/images/index/5bb0cfd44302cd4df0c0c88d37457931.png',
                fit: BoxFit.cover, // 枠内に収まるように画像を拡大縮小
              ))
        ],
      ),
    );
  }
}
