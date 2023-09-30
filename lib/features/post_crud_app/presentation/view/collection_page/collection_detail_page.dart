import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CollectionDetailPage extends ConsumerWidget {
  CollectionDetailPage({super.key});

  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  List<int> data = [1, 2, 3, 4, 5, 6, 7, 8];

  Widget _buildListItem(BuildContext context, int index) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300,
        height: 100,
        child: Card(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Q.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  Text(' 重要なイベントで相手のサポートが必要なとき、どうする？',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('A.',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent))),
                  Text(' サポートを惜しまない',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFF99B1),
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color(0xffFF99B1),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: size.height / 2.8,
                  width: size.height / 2.8,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://pub-3626123a908346a7a8be8d9295f44e26.r2.dev/generations/0-3bc8fc45-660e-4feb-ab76-cee6fdd87d7d.png'),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text('ラブちゃん',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text: '偏差値 ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      TextSpan(
                          text: '80',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ]),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: size.width / 3,
                    height: size.height / 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFC2CD),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      'テスト内容',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemBuilder: (context, index) {
                  return _buildListItem(context, index);
                },
                itemCount: data.length,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
                controller: controller,
                count: data.length,
                effect: const ScrollingDotsEffect(
                  activeDotColor: Color(0xffFFC2CD),
                  activeStrokeWidth: 2.6,
                  activeDotScale: 1.3,
                  maxVisibleDots: 5,
                  radius: 8,
                  spacing: 10,
                  dotHeight: 12,
                  dotWidth: 12,
                )),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
