import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/app_enum.dart';
import 'package:test_app/common/providers/navigation_provider.dart';
import 'package:test_app/features/home/presentation/screen/movie_details_page.dart';
import 'package:test_app/features/home/presentation/screen/movie_page.dart';
import 'package:test_app/features/home/presentation/widgets/navigation_bottom_bar.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationController = ref.watch(navigationProvider);
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Offstage(
                offstage: navigationController != Navigation.movieLibrary,
                child: const MoviesPage(),
              ),
              Offstage(
                offstage: navigationController != Navigation.movieDetails,
                child: const MovieDetailsPage(),
              ),
            ],
          ),
          const NavigationBottomBar(),
        ],
      ),
    );
  }
}
