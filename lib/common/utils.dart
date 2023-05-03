import 'package:flutter/material.dart';
import 'package:test_app/common/app_consts.dart' as consts;
import 'package:test_app/common/model/genre.dart';

import 'package:test_app/features/home/presentation/widgets/genre_chip.dart';

List<Widget> getGenreChipList(List<Genre> listOfGenres) => listOfGenres
    .map(
      (genre) => GenreChip(
        genreName: genre.name,
      ),
    )
    .toList();

String getVoteRating(double vote) {
  return '$vote ${consts.rating}';
}
