import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase_options.dart';
import 'package:ore_chans_app/widget_cookbook/ui/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LINE Messenger API',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: const HomePage(),
    );
  }
}



// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:ore_chans_app/doc_firebase/src/features/auth/data/auth_provider.dart';
// import 'package:ore_chans_app/doc_firebase/src/features/auth/presentation/signin_page.dart';
// import 'package:ore_chans_app/doc_firebase/src/features/post_crud_app/presentation/view/post_page.dart';
// import 'package:ore_chans_app/firebase_options.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//           // テーマを使ってAppBar全体にスタイルを適用する.
//           appBarTheme: const AppBarTheme(
//             backgroundColor: Colors.indigoAccent,// AppBarの背景色
//             foregroundColor: Colors.white,// AppBarのテキストの色
//             centerTitle: true,// AndroidのAppBarを真ん中に配置する
//           )),
//       home: const SplashScreen(),
//     );
//   }
// }
// // 認証が通っていればPostPage、通っていなければSignInPageを表示する
// class SplashScreen extends ConsumerWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // StreamProvider を監視し、AsyncValue<User?> を取得する。
//     final authStateAsync = ref.watch(authStateChangesProvider);
//     // パターンマッチングを使用して、状態をUIにマッピングする
//     return authStateAsync.when(
//       data: (user) => user != null ? const PostPage() : const SignInPage(),
//       loading: () => const CircularProgressIndicator(),
//       error: (err, stack) => Text('Error: $err'),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:ore_chans_app/doc_api/src/presentation/users_page.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//           // テーマを使ってAppBar全体にスタイルを適用する.
//           appBarTheme: const AppBarTheme(
//             backgroundColor: Colors.indigoAccent,// AppBarの背景色
//             foregroundColor: Colors.white,// AppBarのテキストの色
//             centerTitle: true,// AndroidのAppBarを真ん中に配置する
//           )),
//       home: const UsersPage(),
//     );
//   }
// }
