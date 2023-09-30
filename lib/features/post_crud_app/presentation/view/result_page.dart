import 'package:flutter/material.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';
import 'package:ore_chans_app/utils/main_button_component.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(this.love, {super.key});

  final Love love;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffFF99B1),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: size.height / 10),
            Container(
                height: size.height / 2.8,
                width: size.height / 2.8,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(love.avaterImage),
                  ),
                )),
            Container(
              width: size.width / 1.1,
              height: size.height / 3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  const Text('あなたの偏差値は',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const Spacer(),
                  Text('${love.score}',
                      style: const TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const Spacer(),
                  love.score < 60
                      ? const Column(
                          children: [
                            Text('残念！',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            Text('あなたには惚れませんでした⭐️',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                          ],
                        )
                      : const Column(
                          children: [
                            Text('おめでとう！',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            Text('あなたにメロメロ❤',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                          ],
                        ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            love.score < 60
                ? MainButtonComponent(text: 'もう一度', onPressed: () {})
                : MainButtonComponent(text: 'この子をGETする', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
