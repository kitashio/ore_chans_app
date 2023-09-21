import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        // Columnで子要素を縦に並べる
        children: [
          const SizedBox(height: 100), // 20pxの空白を追加
          Center(
            // Stackをラップして中央に配置
            child: Stack(
              clipBehavior: Clip.none, // 子要素がはみ出ても表示する
              children: [
                // 丸と四角のコンテナを重ねる
                // 下に配置するコンテナ
                Container(
                  width: 300,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.rectangle,
                  ),
                ),
                // 上に配置するコンテナ
                Positioned(
                  // 位置を指定する
                  top: -50, // 上から-50pxの位置に配置
                  left: 100, // 左から50pxの位置に配置
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    // 丸の中に星を配置
                    child: const Icon(Icons.person,
                        color: Colors.white, size: 50.0),
                  ),
                ),
                const Column(
                  children: [
                    SizedBox(height: 100),
                    Text("""
                      こんにちわ!
                      私の名前はhogeです。
                      年齢は２８歳です。
                      仕事はITエンジニアです。
                      趣味はゲームとアニメです。
                      どうぞよろしくお願いします。
                      """)
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 300,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.rectangle,
            ),
            child: const Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(width: 10),
                    Text('hoge@co.jp')
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text('09099774455')
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
