import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/features/home/data/model/movie_response.dart';

part 'popular_movies_response.freezed.dart';
part 'popular_movies_response.g.dart';

@freezed
class PopularMoviesResponse with _$PopularMoviesResponse {
  const factory PopularMoviesResponse({
    required int page,
    required List<MovieResponse> results,
  }) = _PopularMoviesResponse;

  factory PopularMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesResponseFromJson(json);
}
