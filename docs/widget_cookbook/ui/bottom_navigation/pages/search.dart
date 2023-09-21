import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text('レックーザ', style: TextStyle(fontSize: 30)),
          SizedBox(
              width: 250,
              height: 250,
              child: Image.network(
                'https://zukan.pokemon.co.jp/zukan-api/up/images/index/85fbbb44dd266379ee08caac27d89648.png',
                fit: BoxFit.cover, // 枠内に収まるように画像を拡大縮小
              ))
        ],
      ),
    );
  }
}
