import 'package:ore_chans_app/features/auth/data/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_with_anonymously.g.dart';

@riverpod
Future<void> signInWithAnonymously(SignInWithAnonymouslyRef ref) async =>
    ref.read(authRepositoryProvider).signInWithAnonymously();
