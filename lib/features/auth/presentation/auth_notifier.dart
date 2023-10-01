import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/auth/application/create_user.dart';
import 'package:ore_chans_app/features/auth/application/sign_in_with_anonymously.dart';
import 'package:ore_chans_app/features/auth/data/auth_provider.dart';

final authNotifierProvider =
    AsyncNotifierProvider<AuthNotifier, void>(AuthNotifier.new);

class AuthNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<void> signInWithAnonymously() async {
    final uid = ref.read(authStateChangesProvider).valueOrNull;
    if (uid == null) {
      state = const AsyncLoading();
      state = await AsyncValue.guard(() async {
        await ref.read(signInWithAnonymouslyProvider.future);
        await _createUser();
      });
    }
  }

  Future<void> _createUser() async => await ref.read(createUserProvider.future);
}
