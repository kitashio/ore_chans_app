import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/question/domain/master_question/master_question.dart';

final masterQuestionsRepositoryProvider = Provider(
  (ref) => MasterQuestionsRepository(FirebaseFirestore.instance),
);

class MasterQuestionsRepository {
  MasterQuestionsRepository(this._db);

  final FirebaseFirestore _db;

  static const _masterQuestionsCollection = "questions";

  Future<List<MasterQuestion>> getMasterQuestions() async {
    final snapshot = await _db.collection(_masterQuestionsCollection).get();
    snapshot.docs.shuffle(Random());
    final docs = snapshot.docs.sublist(0, 10);
    final questions =
        docs.map((e) => MasterQuestion.fromJson(e.data())).toList();
    print(questions.toString());
    return questions;
  }
}
