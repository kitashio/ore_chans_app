import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          // テーマを使ってAppBar全体にスタイルを適用する.
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.indigoAccent,// AppBarの背景色
            foregroundColor: Colors.white,// AppBarのテキストの色
            centerTitle: true,// AndroidのAppBarを真ん中に配置する
          )),
      home: const ,
    );
  }
}
