import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/common/model/genre.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String image,
    required String title,
    required double vote,
    required List<Genre> genres,
  }) = _Movie;
}
