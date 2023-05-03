import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/app_consts.dart' as consts;
import 'package:test_app/common/app_enum.dart';
import 'package:test_app/common/app_font_styles.dart' as fontstyles;
import 'package:test_app/common/providers/movie_details_provider.dart';
import 'package:test_app/common/providers/navigation_provider.dart';
import 'package:test_app/common/utils.dart';
import 'package:test_app/common/widgets/movie_rating.dart';
import 'package:test_app/features/home/data/model/movie.dart';
import 'package:test_app/common/widgets/filter_icon.dart';

class MovieCard extends ConsumerWidget {
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        ref.read(currentMovieProvider.notifier).update((state) => movie);
        ref
            .read(navigationProvider.notifier)
            .update((state) => Navigation.movieDetails);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Image.network(
                consts.imageW500 + movie.image,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          movie.title,
                          style: fontstyles.bodyLarge,
                        ),
                      ),
                      FilterIcon(
                        id: movie.id,
                      ),
                    ],
                  ),
                  MovieRating(vote: movie.vote),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 4,
                    runSpacing: 4,
                    children: getGenreChipList(movie.genres),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
