import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ore_chans_app/extension/async_value_extension.dart';
import 'package:ore_chans_app/features/auth/data/auth_provider.dart';
import 'package:ore_chans_app/features/auth/presentation/signin_page.dart';
import 'package:ore_chans_app/utils/loading_component.dart';
import 'package:ore_chans_app/utils/loading_service.dart';

class OreChansApp extends ConsumerStatefulWidget {
  const OreChansApp({Key? key}) : super(key: key);

  @override
  OreChansAppState createState() => OreChansAppState();
}

class OreChansAppState extends ConsumerState<OreChansApp> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(
      const AssetImage("assets/images/love_collection_logo.png"),
      context,
    );
  }

  @override
  Widget build(BuildContext context) {
    final authStateAsync = ref.watch(authStateChangesProvider);
    final isLoading = ref.watch(loadingProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OreChansApp',
      navigatorKey: ref.watch(navigatorKeyProvider),
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: authStateAsync.when(
        data: (user) => const SignInPage(),
        loading: () => const LoadingComponent(),
        error: (err, stack) => Text('Error: $err'),
      ),
      builder: (context, child) => Stack(
        children: [
          child!,
          // ローディングを表示する
          if (isLoading)
            const ColoredBox(
              color: Color(0xFFFF99B1),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SpinKitPumpingHeart(
                      color: Colors.white,
                      size: 50.0,
                      duration: Duration(milliseconds: 500),
                    ),
                    SizedBox(height: 8),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        "ロードちゅう...",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
