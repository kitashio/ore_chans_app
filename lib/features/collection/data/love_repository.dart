import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';

final loveRepositoryProvider = Provider(
  (ref) => LoveRepository(FirebaseFirestore.instance),
);

class LoveRepository {
  LoveRepository(this._db);

  final FirebaseFirestore _db;

  static const _userCollection = "user";
  static const _loveCollection = "love";

  Stream<List<Love>> fetchLoveDataStream() {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return _db
        .collection(_userCollection)
        .doc(userId)
        .collection(_loveCollection)
        .snapshots()
        .map((querySnapshot) => querySnapshot.docs
            .map((doc) => Love.fromJson(doc.data()))
            .toList());
  }

  Future<void> createLove(Love love) async {
    try {
      await getLoveReference().add(love);
    } catch (e) {
      rethrow;
    }
  }

  CollectionReference getLoveReference() {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return _db
        .collection(_userCollection)
        .doc(userId)
        .collection(_loveCollection)
        .withConverter<Love>(
          fromFirestore: (snapshot, _) => Love.fromJson(snapshot.data()!),
          toFirestore: (love, _) => {
            ...love.toJson(),
            "questionList": love.questionList.map((question) {
              return {
                "question": question.question,
                "answer": question.answer,
              };
            }).toList(),
          },
        );
  }
}
