import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/post_crud_app/application/love_provider.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';

// 恋愛テストの情報を登録と更新を行う抽象クラスのメソッド
abstract class LoveRepository {
  Future<void> createLove(Love love);
  Future<void> updateLove(Love love);
}

final loveServiceProvider = Provider((ref) => LoveService(ref));

// 恋愛テストの情報を登録と更新を行うクラス
class LoveService implements LoveRepository {
  Ref ref;

  LoveService(this.ref);

  @override
  Future<void> createLove(Love love) async {
    try {
      final loveRef = await ref.read(loveReferenceProvider);
      loveRef.add(love);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<void> updateLove(Love love) async {
    try {
      final loveRef = await ref.read(loveReferenceProvider);
      loveRef.doc(love.id).update(love.toJson());
    } catch (e) {
      throw e;
    }
  }
}
