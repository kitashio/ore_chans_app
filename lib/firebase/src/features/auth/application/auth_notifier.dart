import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase/src/features/auth/data/auth_provider.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/data/user_repository.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/domain/user/user.dart';

final authNotifierProvider =
    AsyncNotifierProvider<AuthNotifier, void>(AuthNotifier.new);

/// [ログイン用のAsyncNotifier]
class AuthNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    // 戻り値がない場合は何も書かない
  }

  // 匿名ログインをするメソッド。匿名でアカウントが作られたら、uidをuserコレクションに保存する
  Future<void> signInAnonymously() async {
    var user = const User();
    final authRef = ref.read(firebaseAuthProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await authRef.signInAnonymously();
      // ユーザーアカウントが作成されたら、uidをuserコレクションに保存する
      ref.read(userServiceProvider).createUser(user.copyWith(id: authRef.currentUser!.uid));
    });
    // ログを出すプロバイダーを呼び出す
  }

  // ログアウトをするメソッド
  Future<void> signOut() async {
    final authRef = ref.read(firebaseAuthProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await authRef.signOut();
    });
  }
}
