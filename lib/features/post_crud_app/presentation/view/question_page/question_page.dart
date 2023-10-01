import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/domain/master_question/master_question.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/pages/result_page.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/view/widgets/answer_button.dart';
import 'package:ore_chans_app/question/application/save_question.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({
    super.key,
    required this.imagePath,
    required this.index,
    required this.questions,
    required this.love,
  });

  final String imagePath;
  final int index;
  final List<MasterQuestion> questions;
  final Love love;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log(questions.toString());
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultPage(love),
                            ),
                          );
                        }
                      : () {
                          // 質問回答を保存
                          final updatedLove =
                              ref.read(saveQuestionProvider.notifier).saveGirl(
                                    love: love,
                                    question: questions[index].question,
                                    answer: questions[index].answers[0],
                                  );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionPage(
                                imagePath: imagePath,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionPage(
                                imagePath: imagePath,
                                index: index + 1,
                                questions: questions,
                                love: love,
                              ),
                            ),
                          );
                        }
                      : () {
                          // 質問回答を保存
                          final updatedLove =
                              ref.read(saveQuestionProvider.notifier).saveGirl(
                                    love: love,
                                    question: questions[index].question,
                                    answer: questions[index].answers[0],
                                  );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionPage(
                                imagePath: imagePath,
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
