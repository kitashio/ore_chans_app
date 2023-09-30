import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/auth/data/auth_provider.dart';
import 'package:ore_chans_app/features/post_crud_app/application/user_provider.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/user/user.dart';

// ユーザー情報の登録と更新を行う抽象クラスのメソッド
abstract class UserRepository {
  Future<void> createUser(User user);
  Future<void> updateUser(User user);
}

final userServiceProvider = Provider((ref) => UserService(ref));

// ユーザー情報の登録と更新を行うクラス
class UserService implements UserRepository {
  UserService(this.ref);
  Ref ref;

  // ユーザー情報を登録するメソッド
  @override
  Future<void> createUser(User user) async {
    try {
      final uid = ref.read(uidProvider);
      final userRef = ref.read(userReferenceProvider);
      userRef.doc(uid).set(user);
    } catch (e) {
      throw e;
    }
  }

  // ユーザー情報を更新するメソッド
  @override
  Future<void> updateUser(User user) async {
    try {
      final uid = ref.read(uidProvider);
      final userRef = ref.read(userReferenceProvider);
      userRef.doc(uid).update(user.toJson());
    } catch (e) {
      throw e;
    }
  }
}
