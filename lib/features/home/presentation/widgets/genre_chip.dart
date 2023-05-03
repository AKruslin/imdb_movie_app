import 'package:flutter/material.dart';
import 'package:test_app/common/app_colors.dart' as colors;
import 'package:test_app/common/app_font_styles.dart' as fontstyles;

class GenreChip extends StatelessWidget {
  const GenreChip({Key? key, required this.genreName}) : super(key: key);
  final String genreName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: colors.primary20,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        genreName,
        style: fontstyles.bodySmall,
      ),
    );
  }
}
