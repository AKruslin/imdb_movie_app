import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/common/model/genre.dart';

part 'movie_details.freezed.dart';

part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required int id,
    @JsonKey(name: 'poster_path') required String image,
    required String title,
    @JsonKey(name: 'vote_average') required double vote,
    @JsonKey(name: 'genres') required List<Genre> genres,
    @JsonKey(name: 'overview') required String description,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);
}
