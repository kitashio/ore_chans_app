import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/collection/data/love_repository.dart';
import 'package:ore_chans_app/features/post_crud_app/domain/love/love.dart';

final fetchLoveDataStreamProvider = StreamProvider<List<Love>>((ref) async* {
  yield* ref.watch(loveRepositoryProvider).fetchLoveDataStream();
});
