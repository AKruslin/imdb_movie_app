// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PopularMoviesResponse _$$_PopularMoviesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PopularMoviesResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PopularMoviesResponseToJson(
        _$_PopularMoviesResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
