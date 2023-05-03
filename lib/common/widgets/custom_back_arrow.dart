import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/common/app_assets.dart' as assets;
import 'package:test_app/common/app_colors.dart' as colors;
import 'package:test_app/common/app_enum.dart';
import 'package:test_app/common/providers/navigation_provider.dart';

class CustomBackArrow extends ConsumerWidget {
  const CustomBackArrow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => ref
          .read(navigationProvider.notifier)
          .update((state) => Navigation.movieLibrary),
      child: Container(
          margin: const EdgeInsets.only(top: 0, left: 20),
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: colors.background.withOpacity(.2)),
          child: SvgPicture.asset(assets.backArrowIcon)),
    );
  }
}
