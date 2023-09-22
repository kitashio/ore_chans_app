import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/application/post_provider.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/domain/post/post.dart';

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