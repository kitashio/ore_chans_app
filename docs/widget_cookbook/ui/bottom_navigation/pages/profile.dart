import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text('ミュウ', style: TextStyle(fontSize: 30)),
          SizedBox(
              width: 250,
              height: 250,
              child: Image.network(
                'https://www.pokemon.co.jp/ex/bdsp/assets/img/pokemon/ill_pokemon_33.png',
                fit: BoxFit.cover, // 枠内に収まるように画像を拡大縮小
              ))
        ],
      ),
    );
  }
}
