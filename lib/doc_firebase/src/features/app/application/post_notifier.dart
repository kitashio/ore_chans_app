import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/doc_firebase/src/features/app/data/post_provider.dart';
import 'package:ore_chans_app/doc_firebase/src/features/app/domain/post/post.dart';

final postNotifierProvider =
    AsyncNotifierProvider<PostNotifier, void>(PostNotifier.new);

class PostNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    // 戻り値がなければ書かない。
  }

  // 投稿データを追加
  Future<void> sendPost(Post post) async {
    final postRef = ref.read(fireStoreProvider);

    // 入力された値がnullだったら、ref.listenでエラーを表示する
    if (post.body.isEmpty) {
      state = const AsyncError<void>('投稿失敗: 本文が空です', StackTrace.empty);
    }
    // 入力された値がnullじゃなかったら、投稿する
    else {
      try {
        state = const AsyncLoading();
        await postRef.collection('post').add(post.toJson());
        state = const AsyncValue<void>.data(null); // Successfully added
      // ignore: avoid_catches_without_on_clauses
      } catch (e, stackTrace) {
        // ignore: noop_primitive_operations
        state = AsyncError<void>('投稿失敗: ${e.toString()}', stackTrace);
      }
    }
  }

  // 投稿データを更新
  Future<void> updatePost(Post post) async {
    final postRef = ref.read(fireStoreProvider);

    try {
      state = const AsyncLoading();
      await postRef.collection('post').doc(post.id).update(post.toJson());
      state = const AsyncValue<void>.data(null); // Successfully updated
    // ignore: avoid_catches_without_on_clauses
    } catch (e, stackTrace) {
      // ignore: noop_primitive_operations
      state = AsyncError<void>('更新失敗: ${e.toString()}', stackTrace);
    }
  }

  /* 投稿データを削除
  ドキュメントIDはString?で渡されるようなので、引数の型をString?にしてnull許容にする必要があるみたいだ。
  */
  Future<void> deletePost(String? postID) async {
    final postRef = ref.read(fireStoreProvider);

    try {
      state = const AsyncLoading();
      await postRef.collection('post').doc(postID).delete();
      state = const AsyncValue<void>.data(null); // Successfully deleted
    // ignore: avoid_catches_without_on_clauses
    } catch (e, stackTrace) {
      // ignore: noop_primitive_operations
      state = AsyncError<void>('削除失敗: ${e.toString()}', stackTrace);
    }
  }
}
