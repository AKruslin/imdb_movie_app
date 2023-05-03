// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return _MovieDetails.fromJson(json);
}

/// @nodoc
mixin _$MovieDetails {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get vote => throw _privateConstructorUsedError;
  @JsonKey(name: 'genres')
  List<Genre> get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsCopyWith<MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsCopyWith<$Res> {
  factory $MovieDetailsCopyWith(
          MovieDetails value, $Res Function(MovieDetails) then) =
      _$MovieDetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'poster_path') String image,
      String title,
      @JsonKey(name: 'vote_average') double vote,
      @JsonKey(name: 'genres') List<Genre> genres,
      @JsonKey(name: 'overview') String description});
}

/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res> implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._value, this._then);

  final MovieDetails _value;
  // ignore: unused_field
  final $Res Function(MovieDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? vote = freezed,
    Object? genres = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vote: vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as double,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieDetailsCopyWith<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  factory _$$_MovieDetailsCopyWith(
          _$_MovieDetails value, $Res Function(_$_MovieDetails) then) =
      __$$_MovieDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'poster_path') String image,
      String title,
      @JsonKey(name: 'vote_average') double vote,
      @JsonKey(name: 'genres') List<Genre> genres,
      @JsonKey(name: 'overview') String description});
}

/// @nodoc
class __$$_MovieDetailsCopyWithImpl<$Res>
    extends _$MovieDetailsCopyWithImpl<$Res>
    implements _$$_MovieDetailsCopyWith<$Res> {
  __$$_MovieDetailsCopyWithImpl(
      _$_MovieDetails _value, $Res Function(_$_MovieDetails) _then)
      : super(_value, (v) => _then(v as _$_MovieDetails));

  @override
  _$_MovieDetails get _value => super._value as _$_MovieDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? vote = freezed,
    Object? genres = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_MovieDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vote: vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as double,
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetails implements _MovieDetails {
  const _$_MovieDetails(
      {required this.id,
      @JsonKey(name: 'poster_path') required this.image,
      required this.title,
      @JsonKey(name: 'vote_average') required this.vote,
      @JsonKey(name: 'genres') required final List<Genre> genres,
      @JsonKey(name: 'overview') required this.description})
      : _genres = genres;

  factory _$_MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailsFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'poster_path')
  final String image;
  @override
  final String title;
  @override
  @JsonKey(name: 'vote_average')
  final double vote;
  final List<Genre> _genres;
  @override
  @JsonKey(name: 'genres')
  List<Genre> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  @JsonKey(name: 'overview')
  final String description;

  @override
  String toString() {
    return 'MovieDetails(id: $id, image: $image, title: $title, vote: $vote, genres: $genres, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.vote, vote) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(vote),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_MovieDetailsCopyWith<_$_MovieDetails> get copyWith =>
      __$$_MovieDetailsCopyWithImpl<_$_MovieDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailsToJson(this);
  }
}

abstract class _MovieDetails implements MovieDetails {
  const factory _MovieDetails(
          {required final int id,
          @JsonKey(name: 'poster_path') required final String image,
          required final String title,
          @JsonKey(name: 'vote_average') required final double vote,
          @JsonKey(name: 'genres') required final List<Genre> genres,
          @JsonKey(name: 'overview') required final String description}) =
      _$_MovieDetails;

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$_MovieDetails.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'poster_path')
  String get image => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_average')
  double get vote => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'genres')
  List<Genre> get genres => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'overview')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsCopyWith<_$_MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
