import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/doc_firebase/src/features/post_crud_app/application/post_provider.dart';
import 'package:ore_chans_app/doc_firebase/src/features/post_crud_app/domain/post/post.dart';

// 抽象クラスを作成。ここに追加、更新、削除のメソッドを書く。
abstract class PostRepository {
  Future<void> addPost(Post post);
  Future<void> updatePost(Post post);
  Future<void> deletePost(String? postID);
}

/*
- 抽象クラスを継承して、メソッドを実装する。
- withConverterを使用して、渡す引数にtoJsonを書かずに済むようにした。
- updateのところだけは、渡さないといけないので、toJsonを書いている。
*/
class PostService implements PostRepository {
  PostService(this.ref);
  Ref ref; // Refを使えるように、コンストラクタで受け取る。

  // 追加のメソッド
  @override
  Future<void> addPost(Post post) async {
    try {
      final postRef = ref.read(postReferenceWithConverter);
      postRef.add(post);
    } catch (e) {
      throw e;
    }
  }

  // 更新のメソッド
  @override
  Future<void> updatePost(Post post) async {
    try {
      final postRef = ref.read(postReferenceWithConverter);
      postRef.doc(post.id).update(post.toJson());
    } catch (e) {
      throw e;
    }
  }

  // 削除のメソッド
  @override
  Future<void> deletePost(String? postID) async {
    try {
      final postRef = ref.read(postReferenceWithConverter);
      postRef.doc(postID).delete();
    } catch (e) {
      throw e;
    }
  }
}
// PostServiceを使えるようにするプロバイダー
final postServiceProvider = Provider((ref) => PostService(ref));

// 書き直す前のコード。View ModelにFirestoreを操作するロジックを書いてしまった。
// final postNotifierProvider =
//     AsyncNotifierProvider<PostNotifier, void>(PostNotifier.new);

// class PostNotifier extends AsyncNotifier<void> {
//   @override
//   FutureOr<void> build() {
//     // 戻り値がなければ書かない。
//   }

//   // 投稿データを追加
//   Future<void> sendPost(Post post) async {
//     final postRef = ref.read(postReferenceWithConverter);

//     // 入力された値がnullだったら、ref.listenでエラーを表示する
//     if (post.body.isEmpty) {
//       state = const AsyncError<void>('投稿失敗: 本文が空です', StackTrace.empty);
//     }
//     // 入力された値がnullじゃなかったら、投稿する
//     else {
//       try {
//         state = const AsyncLoading();
//         await postRef.collection('post').add(post.toJson());
//         state = const AsyncValue<void>.data(null); // Successfully added
//       // ignore: avoid_catches_without_on_clauses
//       } catch (e, stackTrace) {
//         // ignore: noop_primitive_operations
//         state = AsyncError<void>('投稿失敗: ${e.toString()}', stackTrace);
//       }
//     }
//   }

//   // 投稿データを更新
//   Future<void> updatePost(Post post) async {
//     final postRef = ref.read(postReferenceWithConverter);

//     try {
//       state = const AsyncLoading();
//       await postRef.collection('post').doc(post.id).update(post.toJson());
//       state = const AsyncValue<void>.data(null); // Successfully updated
//     // ignore: avoid_catches_without_on_clauses
//     } catch (e, stackTrace) {
//       // ignore: noop_primitive_operations
//       state = AsyncError<void>('更新失敗: ${e.toString()}', stackTrace);
//     }
//   }

//   /* 投稿データを削除
//   ドキュメントIDはString?で渡されるようなので、引数の型をString?にしてnull許容にする必要があるみたいだ。
//   */
//   Future<void> deletePost(String? postID) async {
//     final postRef = ref.read(postReferenceWithConverter);

//     try {
//       state = const AsyncLoading();
//       await postRef.collection('post').doc(postID).delete();
//       state = const AsyncValue<void>.data(null); // Successfully deleted
//     // ignore: avoid_catches_without_on_clauses
//     } catch (e, stackTrace) {
//       // ignore: noop_primitive_operations
//       state = AsyncError<void>('削除失敗: ${e.toString()}', stackTrace);
//     }
//   }
// }
