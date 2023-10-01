import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/auth/presentation/signin_page.dart';
import 'package:ore_chans_app/features/collection/data/love_repository.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';
import 'package:ore_chans_app/utils/main_button_component.dart';

class ResultPage extends ConsumerStatefulWidget {
  const ResultPage(this.love, {Key? key}) : super(key: key);

  final Love love;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends ConsumerState<ResultPage> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        ConfettiController(duration: const Duration(milliseconds: 500));
    _controller.play();

    if (widget.love.isPassed) {
      ref.read(loveRepositoryProvider).createLove(widget.love);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                    image: NetworkImage(widget.love.avaterImagePath),
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
                  if (widget.love.isPassed)
                    ConfettiWidget(
                        confettiController: _controller,
                        numberOfParticles: 100,
                        minBlastForce: 10,
                        maxBlastForce: 80,
                        blastDirection: 3 * pi / 2,
                        blastDirectionality: BlastDirectionality.explosive),
                  const Text('あなたの偏差値は',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const Spacer(),
                  Text('${widget.love.deviation}',
                      style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: widget.love.isPassed
                              ? Colors.red
                              : Colors.black)),
                  const Spacer(),
                  widget.love.isPassed
                      ? const Column(
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
                        )
                      : const Column(
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
                        ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            MainButtonComponent(
                text: 'タイトルへ戻る',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()),
                      (route) => false);
                })
          ],
        ),
      ),
    );
  }
}
