import 'package:dartz/dartz.dart';
import 'package:test_app/common/model/genre.dart';
import 'package:test_app/features/home/data/model/movie.dart';
import 'package:test_app/features/home/data/model/movie_details.dart';

abstract class MovieRepository {
  Future<Either<Exception, List<Movie>>> fetchMovies(List<Genre> genreList);
  Future<Either<Exception, List<Genre>>> fetchGenres();
  Future<Either<Exception, MovieDetails>> fetchMovieDetails(int movieId);
}
