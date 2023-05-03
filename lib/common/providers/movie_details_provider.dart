import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/providers/navigation_provider.dart';
import 'package:test_app/common/providers/network_providers.dart';
import 'package:test_app/features/home/data/model/movie.dart';
import 'package:test_app/features/home/data/model/movie_details.dart';


final currentMovieProvider = StateProvider<Movie?>((ref) => null);

final movieDetailsFutureProvider = FutureProvider<MovieDetails?>((ref) async {
  final movie = ref.watch(currentMovieProvider.notifier).state;
  final movieRepo = ref.watch(movieRepository);
  ref.watch(navigationProvider);
  try {
    if (movie != null) {
      final either = await movieRepo.fetchMovieDetails(movie.id);
      if (either.isRight()) {
        late MovieDetails movieDetails;
        either.fold((l) => null, (r) => movieDetails = r);
        return movieDetails;
      }
    } else {
      return null;
    }
  } catch (e) {
    throw ErrorDescription('Error: While fetching movie data');
  }
});
