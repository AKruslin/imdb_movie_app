import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/common/app_colors.dart' as colors;
import 'package:test_app/common/app_enum.dart';
import 'package:test_app/common/app_font_styles.dart' as fontstyles;
import 'package:test_app/common/providers/movies_provider.dart';
import 'package:test_app/common/providers/navigation_provider.dart';

class NavigationItem extends ConsumerWidget {
  const NavigationItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.sortValue,
  }) : super(key: key);

  final String title;
  final String icon;
  final SortType sortValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var color = ref.watch(sortProvider.state).state == sortValue
        ? colors.primary
        : colors.white;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        ref.read(sortProvider.notifier).update((state) => sortValue);
        ref
            .read(navigationProvider.notifier)
            .update((state) => Navigation.movieLibrary);
      },
      child: Stack(
        children: [
          Container(
            height: 60,
            width: 110,
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(icon, color: color),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: fontstyles.navigationBar.apply(
                    color: color,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            width: 110,
            decoration: BoxDecoration(
                color: color != colors.white ? color : null,
                borderRadius: BorderRadius.circular(2)),
          )
        ],
      ),
    );
  }
}
