import 'package:ore_chans_app/features/auth/data/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_user.g.dart';

@riverpod
Future<void> createUser(CreateUserRef ref) async =>
    ref.read(authRepositoryProvider).createUser();
