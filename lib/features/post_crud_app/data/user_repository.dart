import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/auth/data/auth_provider.dart';
import 'package:ore_chans_app/features/post_crud_app/application/user_provider.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/user/user.dart';

final userServiceProvider = Provider((ref) => UserService(ref));

// ユーザー情報の登録と更新を行うクラス
class UserService {
  UserService(this.ref);
  Ref ref;

  static const _userCollection = "user";

  // ユーザー情報を登録するメソッド
  Future<void> createUser(User user) async {
    try {
      final uid = ref.read(uidProvider);
      final userRef = ref.read(userReferenceProvider);
      userRef.doc(uid).set(user);
    } catch (e) {
      rethrow;
    }
  }

  CollectionReference getUserReference() {
    return FirebaseFirestore.instance.collection(_userCollection).withConverter(
          fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
          toFirestore: (user, _) => {},
        );
  }
}
