import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/app_enum.dart';
import 'package:test_app/common/model/genre.dart';
import 'package:test_app/features/home/data/model/movie.dart';

final favouritesProvider = StateProvider<List<int>>((ref) => []);

final sortProvider = StateProvider<SortType>((ref) => SortType.all);

final moviesProvider = StateProvider<List<Movie>>((ref) => []);

final genresProvider = StateProvider<List<Genre>>((ref) => []);

final displayedMoviesProvider = Provider<List<Movie>>((ref) {
  final favourites = ref.watch(favouritesProvider);
  final movies = ref.watch(moviesProvider);
  switch (ref.watch(sortProvider)) {
    case SortType.all:
      return movies;
    case SortType.favourites:
      return movies.where((movie) => favourites.contains(movie.id)).toList();
    default:
      return [];
  }
});
