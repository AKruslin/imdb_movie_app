import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/common/app_assets.dart' as assets;
import 'package:test_app/common/app_consts.dart' as consts;
import 'package:test_app/common/app_enum.dart';
import 'package:test_app/common/app_font_styles.dart' as fontstyles;
import 'package:test_app/common/providers/movies_provider.dart';
import 'package:test_app/features/home/data/model/movie.dart';
import 'package:test_app/features/home/presentation/widgets/movie_card.dart';

class MoviesPage extends ConsumerWidget {
  const MoviesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Movie> movies = ref.watch(displayedMoviesProvider);
    SortType sortType = ref.watch(sortProvider);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              assets.appLogo,
              height: 28,
              width: 28,
            ),
            const SizedBox(height: 28),
            Text(
              sortType == 0 ? consts.popular : consts.favourites,
              style: fontstyles.heading1,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: movies.length,
                itemBuilder: (context, index) =>
                    MovieCard(movie: movies[index]),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
