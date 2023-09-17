import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/data/post_repository.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/domain/post/post.dart';

// PostNotifierを使えるようにするプロバイダー
final postNotifierProvider =
    AsyncNotifierProvider<PostNotifier, void>(PostNotifier.new);

/*
- View Modelの役割をするAsyncNotifier
- ViewとModelの間にこのクラスを挟むことで、ViewとModelを分離する。
- 入力フォームで null が入力されたら、ref.listenでエラーを表示する。
 */
class PostNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    // 戻り値がなければ書かない。
  }

  // 投稿データを追加
  Future<void> addPost(Post post) async {
    // 入力された値がnullだったら、ref.listenでエラーを表示する
    if (post.body.isEmpty) {// isEmptyは値が空かどうかを判定する
      state = const AsyncError<void>('投稿失敗: 投稿内容が入力されてません', StackTrace.empty);
    }
    // 入力された値がnullじゃなかったら、投稿する
    else {
      try {
        state = const AsyncLoading();
        await ref.read(postServiceProvider).addPost(post);
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
    try {
      state = const AsyncLoading();
      await ref.read(postServiceProvider).updatePost(post);
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
    try {
      state = const AsyncLoading();
      await ref.read(postServiceProvider).deletePost(postID);
      state = const AsyncValue<void>.data(null); // Successfully deleted
    } catch (e, stackTrace) {
      state = AsyncError<void>('削除失敗: ${e.toString()}', stackTrace);
    }
  }
}
