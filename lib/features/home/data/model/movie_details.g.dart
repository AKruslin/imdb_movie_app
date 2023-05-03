// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$$_MovieDetailsFromJson(Map<String, dynamic> json) =>
    _$_MovieDetails(
      id: json['id'] as int,
      image: json['poster_path'] as String,
      title: json['title'] as String,
      vote: (json['vote_average'] as num).toDouble(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['overview'] as String,
    );

Map<String, dynamic> _$$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.image,
      'title': instance.title,
      'vote_average': instance.vote,
      'genres': instance.genres,
      'overview': instance.description,
    };
