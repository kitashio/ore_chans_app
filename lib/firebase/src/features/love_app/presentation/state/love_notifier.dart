import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase/src/features/love_app/data/love_repository.dart';
import 'package:ore_chans_app/firebase/src/features/love_app/domain/love/love.dart';

final userNotifierProvider =
    AsyncNotifierProvider<UserNotifier, void>(UserNotifier.new);

// UserServiceを状態管理するクラス
class UserNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  // ユーザー名がnullだったらデータの追加をさせないメソッド
  Future<void> createLove(Love love) async {
    if (love.avaterImage.isEmpty) {
      state =
          const AsyncError<void>('画像の保存に失敗: 画像がアップロードできませんでした', StackTrace.empty);
    } else {
      try {
        state = const AsyncLoading();
        await ref.read(loveServiceProvider).createLove(love);
        state = const AsyncValue<void>.data(null);
      } catch (e, stackTrace) {
        state = AsyncError<void>('画像保存失敗: ${e.toString()}', stackTrace);
      }
    }
  }

  // ユーザー名がnullだったらデータを更新させないメソッド
  Future<void> updateUser(Love love) async {
    try {
      if(love.score.isNaN) {
        state = const AsyncError<void>('情報更新に失敗: スコアの保存に失敗しました', StackTrace.empty);
      }
      state = const AsyncLoading();
      await ref.read(loveServiceProvider).updateLove(love);
      state = const AsyncValue<void>.data(null);
    } catch (e, stackTrace) {
      state = AsyncError<void>('スコアの登録に失敗: ${e.toString()}', stackTrace);
    }
  }
}
