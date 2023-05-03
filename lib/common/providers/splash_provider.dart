import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/model/genre.dart';
import 'package:test_app/common/providers/network_providers.dart';
import 'package:test_app/features/home/data/model/movie.dart';

import 'movies_provider.dart';

final splashProvider = FutureProvider<void>((ref) async {
  try {
    final movieRepo = ref.watch(movieRepository);
    final eitherGeneres = await movieRepo.fetchGenres();
    if (eitherGeneres.isRight()) {
      //Save all genres
      List<Genre> genres = [];
      eitherGeneres.fold((l) => null, (r) => genres = r);
      ref.watch(genresProvider.notifier).update((state) => genres);
      //Fetch Movies
      final eitherMovies = await movieRepo.fetchMovies(genres);
      if (eitherMovies.isRight()) {
        //Save all movies
        List<Movie> movies = [];
        eitherMovies.fold((l) => null, (r) => movies = r);
        ref.watch(moviesProvider.notifier).update((state) => movies);
        //Send user to home screen
        ref.watch(showHomeProvider.notifier).update((state) => true);
      } else {
        throw Error();
      }
    } else {
      throw Error();
    }
  } catch (e) {
    throw ErrorDescription('Error: While fetching movie data');
  }
});

final showHomeProvider = StateProvider<bool>((ref) => false);
