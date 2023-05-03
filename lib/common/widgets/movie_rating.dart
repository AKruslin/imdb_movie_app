import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/common/utils.dart';
import '../app_assets.dart' as assets;
import '../app_font_styles.dart' as fontstyles;

class MovieRating extends StatelessWidget {
  const MovieRating({
    Key? key,
    required this.vote,
  }) : super(key: key);

  final double vote;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(assets.starIcon),
        const SizedBox(width: 4),
        Text(
          getVoteRating(vote),
          style: fontstyles.bodyRegular,
        )
      ],
    );
  }
}
