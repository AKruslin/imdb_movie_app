// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResponse _$$_MovieResponseFromJson(Map<String, dynamic> json) =>
    _$_MovieResponse(
      id: json['id'] as int,
      image: json['poster_path'] as String,
      title: json['title'] as String,
      vote: (json['vote_average'] as num).toDouble(),
      genres:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_MovieResponseToJson(_$_MovieResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.image,
      'title': instance.title,
      'vote_average': instance.vote,
      'genre_ids': instance.genres,
    };
