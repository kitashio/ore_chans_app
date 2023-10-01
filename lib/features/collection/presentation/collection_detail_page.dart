import 'package:flutter/material.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CollectionDetailPage extends StatelessWidget {
  CollectionDetailPage(this.love, {super.key});

  final Love love;

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  Widget _buildListItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300,
        height: 100,
        child: Card(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Q.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  Text(love.questionList[index].keys.first,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text('A.',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 82, 82, 1)))),
                  Text(love.questionList[index].values.first,
                      style: const TextStyle(
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
  Widget build(BuildContext context) {
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
                    image: DecorationImage(
                      image: NetworkImage(love.avatarImagePath),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(love.name,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: '偏差値 ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      TextSpan(
                          text: '${love.deviation}',
                          style: const TextStyle(
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
                itemCount: love.questionList.length,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
                controller: controller,
                count: love.questionList.length,
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
