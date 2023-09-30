import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

// auth用のLogger
final authLogger = Provider((ref) => Logger());

// FirebaseAuthのインスタンスを提供するProvider
final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

// ログイン状態を管理するStreamProvider
final authStateChangesProvider = StreamProvider((ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges();
});

// uidを提供するProvider
final uidProvider = Provider((ref) {
  final user = ref.watch(firebaseAuthProvider).currentUser?.uid;
  if (user != null) {
    return user;
  } else {
    throw Exception('ユーザーがサインインしていません！');
  }
});
