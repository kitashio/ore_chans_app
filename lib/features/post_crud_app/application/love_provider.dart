import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase/src/features/auth/data/auth_provider.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/application/user_provider.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/domain/love/love.dart';

// loveコレクションでメソッドで使用するWithConverter
final loveReferenceProvider = Provider.autoDispose((ref) {
  final uid = ref.watch(uidProvider);
  return ref
      .watch(userReferenceProvider)
      .doc(uid)
      .collection('love')
      .withConverter(
        fromFirestore: (snapshot, _) => Love.fromJson(snapshot.data()!),
        toFirestore: (love, _) => love.toJson(),
      );
});

// loveサブコレクションのデータを取得するStreamProvider
final loveStreamProvider = StreamProvider.autoDispose<List<Love>>((ref) {
  final uid = ref.watch(uidProvider);
  final snapshot = ref
      .watch(userReferenceProvider)
      .doc(uid)
      .collection('love')
      .orderBy('score', descending: true)
      .snapshots();
  return snapshot.map((snapshot) {
    return snapshot.docs.map((doc) {
      final data = doc.data();
      final id = doc.id;
      data['id'] = id;
      return Love.fromJson(doc.data());
    }).toList();
  });
});
