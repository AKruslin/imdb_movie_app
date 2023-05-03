import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/providers/splash_provider.dart';
import 'package:test_app/features/home/presentation/screen/home_page.dart';
import 'package:test_app/features/splash/screen/splash_page.dart';

import 'common/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(child: MovieApp()),
  );
}

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: const AppCrossfade(),
    );
  }
}

class AppCrossfade extends ConsumerWidget {
  const AppCrossfade({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(splashProvider);
    return Scaffold(
      body: AnimatedCrossFade(
          firstChild: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const SplashPage()),
          secondChild: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const HomePage()),
          crossFadeState: ref.watch(showHomeProvider)
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 1000)),
    );
  }
}
