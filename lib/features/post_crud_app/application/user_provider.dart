// // FirebaseFirestoreのインスタンスを作成する
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/application/post_provider.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/domain/user/user.dart';

// userコレクションでメソッドで使用するWithConverter
final userReferenceProvider = Provider.autoDispose((ref) {
  return ref.watch(fireStoreProvider).collection('user').withConverter(
        fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
        toFirestore: (user, _) => user.toJson(),
      );
});

// // ドキュメントIDを取得して表示するStreamProvider
final userRefStreamProvider = StreamProvider.autoDispose<List<User>>((ref) {
  // scoreの高い順からデータを取得する
  final snapshot = ref.watch(fireStoreProvider).collection('user').orderBy('score', descending: true).snapshots();
  return snapshot.map((snapshot) {
    return snapshot.docs.map((doc) {
      return User.fromJson(doc.data());
    }).toList();
  });
});