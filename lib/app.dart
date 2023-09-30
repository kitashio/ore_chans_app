import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/auth/data/auth_provider.dart';
import 'package:ore_chans_app/features/auth/presentation/signin_page.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/view/collection_page/collection_list_page.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/view/post_page.dart';
import 'package:ore_chans_app/utils/loading_component.dart';

class OreChansApp extends ConsumerWidget {
  const OreChansApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStateAsync = ref.watch(authStateChangesProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OreChansApp',
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: authStateAsync.when(
        data: (user) =>
            user != null ? const CollectionListPage() : const SignInPage(),
        loading: () => const LoadingComponent(),
        error: (err, stack) => Text('Error: $err'),
      ),
    );
  }
}
