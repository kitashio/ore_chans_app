import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(FirebaseAuth.instance, FirebaseFirestore.instance),
);

class AuthRepository {
  const AuthRepository(this._auth, this._db);

  final FirebaseAuth _auth;
  final FirebaseFirestore _db;

  static const _usersCollection = "users";

  Future<void> signInWithAnonymously() async => await _auth.signInAnonymously();
  Future<void> createUser() async {
    // 現在のタイムスタンプを取得
    Timestamp now = Timestamp.now();

    // usersコレクションにデータを追加
    await _db.collection(_usersCollection).add({
      // ユーザ名入力は時間がなかったので、一旦から文字。
      'name': "",
      'createdAt': now,
      'updatedAt': now,
    });
  }
}
