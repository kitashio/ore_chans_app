import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/collection/domain/love/love.dart';
import 'package:ore_chans_app/features/question/domain/master_question/master_question.dart';
import 'package:ore_chans_app/features/question/presentation/deviation_controller.dart';
import 'package:ore_chans_app/features/question/presentation/question_controller.dart';
import 'package:ore_chans_app/features/question/presentation/result_page.dart';
import 'package:ore_chans_app/utils/answer_button.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({
    super.key,
    required this.imagePath,
    required this.name,
    required this.index,
    required this.questions,
    required this.love,
  });

  final String imagePath;
  final String name;
  final int index;
  final List<MasterQuestion> questions;
  final Love love;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log(love.toString());
    final size = MediaQuery.of(context).size;
    final isFinalQuestion = index + 1 == questions.length;
    return Scaffold(
      backgroundColor: const Color(0xFFFF99B1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF6388),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          (index + 1).toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      width: 240,
                      child: Container(
                        height: 24,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: index + 1,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFF6388),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10 - (index + 1),
                              child: Container(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(imagePath, width: 280),
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          questions[index].question,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFF6388),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.volume_up,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                AnswerButtonComponent(
                  text: questions[index].answers[0],
                  onPressed: isFinalQuestion
                      ? () {
                          // 偏差値計算
                          ref
                              .read(deviationControllerProvider.notifier)
                              .countUp(
                                level: questions[index].level,
                                answer: 1,
                                correctAnswer: questions[index].correctAnswer,
                              );
                          final count = ref.read(deviationControllerProvider);
                          final updatedLove = love.copyWith(
                            avaterImagePath: imagePath,
                            name: name,
                            deviation: count,
                            createdAt: DateTime.now(),
                            updatedAt: DateTime.now(),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultPage(updatedLove),
                            ),
                          );
                        }
                      : () {
                          // 偏差値計算
                          ref
                              .read(deviationControllerProvider.notifier)
                              .countUp(
                                level: questions[index].level,
                                answer: 1,
                                correctAnswer: questions[index].correctAnswer,
                              );
                          // 質問回答を保存
                          final updatedLove =
                              ref.read(questionController.notifier).saveGirl(
                                    love: love,
                                    question: questions[index].question,
                                    answer: questions[index].answers[0],
                                  );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionPage(
                                imagePath: imagePath,
                                name: name,
                                index: index + 1,
                                questions: questions,
                                love: updatedLove,
                              ),
                            ),
                          );
                        },
                ),
                const SizedBox(height: 4),
                AnswerButtonComponent(
                  text: questions[index].answers[1],
                  onPressed: isFinalQuestion
                      ? () {
                          // 偏差値計算
                          ref
                              .read(deviationControllerProvider.notifier)
                              .countUp(
                                level: questions[index].level,
                                answer: 2,
                                correctAnswer: questions[index].correctAnswer,
                              );
                          final count = ref.read(deviationControllerProvider);
                          final updatedLove = love.copyWith(
                            avaterImagePath: imagePath,
                            name: name,
                            deviation: count,
                            createdAt: DateTime.now(),
                            updatedAt: DateTime.now(),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultPage(updatedLove),
                            ),
                          );
                        }
                      : () {
                          // 偏差値計算
                          ref
                              .read(deviationControllerProvider.notifier)
                              .countUp(
                                level: questions[index].level,
                                answer: 1,
                                correctAnswer: questions[index].correctAnswer,
                              );
                          // 質問回答を保存
                          final updatedLove =
                              ref.read(questionController.notifier).saveGirl(
                                    love: love,
                                    question: questions[index].question,
                                    answer: questions[index].answers[0],
                                  );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionPage(
                                imagePath: imagePath,
                                name: name,
                                index: index + 1,
                                questions: questions,
                                love: updatedLove,
                              ),
                            ),
                          );
                        },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
