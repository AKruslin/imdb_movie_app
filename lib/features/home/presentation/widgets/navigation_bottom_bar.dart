import 'package:flutter/material.dart';
import 'package:test_app/common/app_assets.dart' as assets;
import 'package:test_app/common/app_colors.dart' as colors;
import 'package:test_app/common/app_consts.dart' as consts;
import 'package:test_app/common/app_enum.dart';
import 'package:test_app/common/providers/movies_provider.dart';
import 'package:test_app/features/home/presentation/widgets/navigation_item.dart';

class NavigationBottomBar extends StatelessWidget {
  const NavigationBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        color: colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            NavigationItem(
              title: consts.movies,
              icon: assets.movieIcon,
              sortValue: SortType.all,
            ),
            NavigationItem(
              title: consts.favourites,
              icon: assets.favouriteIcon,
              sortValue: SortType.favourites,
            ),
          ],
        ),
      ),
    );
  }
}
