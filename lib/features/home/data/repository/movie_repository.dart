import 'package:test_app/common/app_consts.dart';
import 'package:test_app/common/model/genre.dart';
import 'package:test_app/common/network/rest_client.dart';
import 'package:test_app/features/home/data/model/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:test_app/features/home/data/model/movie_details.dart';
import 'package:test_app/features/home/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl({required this.restClient});
  RestClient restClient;

  @override
  Future<Either<Exception, List<Movie>>> fetchMovies(
      List<Genre> genreList) async {
    try {
      final response = await restClient.fetchPopularMovies(apiKey, language, 1);
      List<Movie> movies = response.results.map((movie) {
        List<Genre> movieGenres = genreList
            .where((genre) => movie.genres.contains(genre.id))
            .toList();
        return Movie(
          id: movie.id,
          image: movie.image,
          title: movie.title,
          vote: movie.vote,
          genres: movieGenres,
        );
      }).toList();
      return Right(movies);
    } catch (e) {
      return Left(Exception());
    }
  }

  @override
  Future<Either<Exception, List<Genre>>> fetchGenres() async {
    try {
      var result = await restClient.fetchGenres(apiKey);
      return Right(result.genres);
    } catch (e) {
      return Left(Exception());
    }
  }

  @override
  Future<Either<Exception, MovieDetails>> fetchMovieDetails(int movieId) async {
    try {
      var result = await restClient.fetchMovieDetails(movieId, apiKey);
      return Right(result);
    } catch (e) {
      return Left(Exception());
    }
  }
}
