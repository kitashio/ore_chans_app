import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/master_question/master_question.dart';

final masterQuestionsRepositoryProvider = Provider(
  (ref) => MasterQuestionsRepository(FirebaseFirestore.instance),
);

class MasterQuestionsRepository {
  MasterQuestionsRepository(this._db);

  final FirebaseFirestore _db;

  static const _masterQuestionsCollection = "master_questions";

  Future<List<MasterQuestion>> getMasterQuestions() async {
    final docs = await _db.collection(_masterQuestionsCollection).get();
    log('log: ${docs.docs.first}');
    return docs.docs.map((e) => MasterQuestion.fromJson(e.data())).toList();
  }
}
