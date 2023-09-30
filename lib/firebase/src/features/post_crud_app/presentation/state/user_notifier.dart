import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/data/user_repository.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/domain/user/user.dart';

final userNotifierProvider =
    AsyncNotifierProvider<UserNotifier, void>(UserNotifier.new);

// UserServiceを状態管理するクラス
class UserNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  // ユーザー名がnullだったらデータの追加をさせないメソッド
  Future<void> createUser(User user) async {
    if (user.name.isEmpty) {
      state =
          const AsyncError<void>('ユーザー登録失敗: ユーザー名が入力されてません', StackTrace.empty);
    } else {
      try {
        state = const AsyncLoading();
        await ref.read(userServiceProvider).createUser(user);
        state = const AsyncValue<void>.data(null);
      } catch (e, stackTrace) {
        state = AsyncError<void>('ユーザー登録失敗: ${e.toString()}', stackTrace);
      }
    }
  }

  // ユーザー名がnullだったらデータを更新させないメソッド
  Future<void> updateUser(User user) async {
    try {
      state = const AsyncLoading();
      await ref.read(userServiceProvider).updateUser(user);
      state = const AsyncValue<void>.data(null);
    } catch (e, stackTrace) {
      state = AsyncError<void>('ユーザー更新失敗: ${e.toString()}', stackTrace);
    }
  }
}
