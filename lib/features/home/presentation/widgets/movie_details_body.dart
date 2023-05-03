import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/app_colors.dart' as colors;
import 'package:test_app/common/app_consts.dart' as consts;
import 'package:test_app/common/app_font_styles.dart' as fontstyle;
import 'package:test_app/common/utils.dart';
import 'package:test_app/common/widgets/filter_icon.dart';
import 'package:test_app/common/widgets/movie_rating.dart';
import 'package:test_app/features/home/data/model/movie_details.dart';

class MovieDetailsBody extends ConsumerWidget {
  const MovieDetailsBody({
    Key? key,
    required this.data,
  }) : super(key: key);
  final MovieDetails data;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 28, left: 20, right: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: colors.background,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      data.title,
                      style: fontstyle.heading2,
                    ),
                  ),
                  FilterIcon(
                    id: data.id,
                  )
                ],
              ),
              const SizedBox(height: 8),
              MovieRating(vote: data.vote),
              const SizedBox(height: 16),
              Wrap(
                spacing: 4,
                runSpacing: 4,
                children: getGenreChipList(data.genres),
              ),
              const SizedBox(height: 40),
              Text(
                consts.description,
                style: fontstyle.bodyLarge,
              ),
              const SizedBox(height: 8),
              Text(
                data.description,
                style: fontstyle.bodyLight,
              ),
              const SizedBox(height: 65),
            ],
          ),
        ),
      ),
    );
  }
}
