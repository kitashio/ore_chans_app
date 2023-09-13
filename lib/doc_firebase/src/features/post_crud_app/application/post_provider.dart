// Listとモデルクラスを使った例
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:ore_chans_app/doc_firebase/src/features/post_crud_app/domain/post/post.dart';

// Firestoreのlogを出すためのloggerを作成する
final fireStoreLoggerProvider = Provider((ref) => Logger());

// FirebaseFirestoreのインスタンスを作成する
final fireStoreProvider = Provider((ref) => FirebaseFirestore.instance);

/*Listとモデルクラスを使った例
データを削除するには、documentIDを指定する必要がある。
なので、StreamProviderの中で取得する。コードで使うときは、モデルクラスのString型のidを使う。
autoDisposeを使うと、ページから離れたときに、状態を破棄する。
*/
final postStreamProvider = StreamProvider.autoDispose<List<Post>>((ref) {
  // ここで、FirebaseFirestoreのインスタンスを取得している。
  final snapshot = ref.watch(fireStoreProvider).collection('post').snapshots();// snapshotで全てのデータを取得できる。
  return snapshot.map((snapshot) {// ここで、QuerySnapshotを取得する。
    return snapshot.docs.map((doc) {// ここで、QuerySnapshotからQueryDocumentSnapshotを取得する。
      final data = doc.data();// ここで、QueryDocumentSnapshotを取得する。
      data['id'] = doc.id;// QueryDocumentSnapshotが取れているので、documentIDをここで取得できる。
      return Post.fromJson(data);// ここのfromJsonでモデルクラスに変換している。
    }).toList();// ここでList<Post>に変換している。
  });
});
