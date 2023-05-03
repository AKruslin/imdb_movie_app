import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:test_app/common/model/genres_response.dart';
import 'package:test_app/common/model/popular_movies_response.dart';
import 'package:test_app/features/home/data/model/movie_details.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/movie/popular')
  Future<PopularMoviesResponse> fetchPopularMovies(
    @Query("api_key") String apiKey,
    @Query("language") String language,
    @Query("page") int page,
  );
  @GET('/genre/movie/list')
  Future<GenresResponse> fetchGenres(
    @Query("api_key") String apiKey,
  );
  @GET('/movie/{id}')
  Future<MovieDetails> fetchMovieDetails(
    @Path() int id,
    @Query("api_key") String apiKey,
  );
}
