// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) {
  return _MovieResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get vote => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResponseCopyWith<MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseCopyWith<$Res> {
  factory $MovieResponseCopyWith(
          MovieResponse value, $Res Function(MovieResponse) then) =
      _$MovieResponseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'poster_path') String image,
      String title,
      @JsonKey(name: 'vote_average') double vote,
      @JsonKey(name: 'genre_ids') List<int> genres});
}

/// @nodoc
class _$MovieResponseCopyWithImpl<$Res>
    implements $MovieResponseCopyWith<$Res> {
  _$MovieResponseCopyWithImpl(this._value, this._then);

  final MovieResponse _value;
  // ignore: unused_field
  final $Res Function(MovieResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? vote = freezed,
    Object? genres = freezed,
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
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieResponseCopyWith<$Res>
    implements $MovieResponseCopyWith<$Res> {
  factory _$$_MovieResponseCopyWith(
          _$_MovieResponse value, $Res Function(_$_MovieResponse) then) =
      __$$_MovieResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'poster_path') String image,
      String title,
      @JsonKey(name: 'vote_average') double vote,
      @JsonKey(name: 'genre_ids') List<int> genres});
}

/// @nodoc
class __$$_MovieResponseCopyWithImpl<$Res>
    extends _$MovieResponseCopyWithImpl<$Res>
    implements _$$_MovieResponseCopyWith<$Res> {
  __$$_MovieResponseCopyWithImpl(
      _$_MovieResponse _value, $Res Function(_$_MovieResponse) _then)
      : super(_value, (v) => _then(v as _$_MovieResponse));

  @override
  _$_MovieResponse get _value => super._value as _$_MovieResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? vote = freezed,
    Object? genres = freezed,
  }) {
    return _then(_$_MovieResponse(
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
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieResponse implements _MovieResponse {
  const _$_MovieResponse(
      {required this.id,
      @JsonKey(name: 'poster_path') required this.image,
      required this.title,
      @JsonKey(name: 'vote_average') required this.vote,
      @JsonKey(name: 'genre_ids') required final List<int> genres})
      : _genres = genres;

  factory _$_MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieResponseFromJson(json);

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
  final List<int> _genres;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'MovieResponse(id: $id, image: $image, title: $title, vote: $vote, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.vote, vote) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(vote),
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  _$$_MovieResponseCopyWith<_$_MovieResponse> get copyWith =>
      __$$_MovieResponseCopyWithImpl<_$_MovieResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieResponseToJson(this);
  }
}

abstract class _MovieResponse implements MovieResponse {
  const factory _MovieResponse(
          {required final int id,
          @JsonKey(name: 'poster_path') required final String image,
          required final String title,
          @JsonKey(name: 'vote_average') required final double vote,
          @JsonKey(name: 'genre_ids') required final List<int> genres}) =
      _$_MovieResponse;

  factory _MovieResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieResponse.fromJson;

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
  @JsonKey(name: 'genre_ids')
  List<int> get genres => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieResponseCopyWith<_$_MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
