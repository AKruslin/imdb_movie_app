import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/common/app_assets.dart' as assets;
import 'package:test_app/common/providers/movies_provider.dart';

class FilterIcon extends ConsumerWidget {
  const FilterIcon({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        var provider = ref.read(favouritesProvider.notifier);
        provider.state.contains(id)
            ? provider.update((state) {
                List<int> temp = [...state];
                temp.remove(id);
                return temp;
              })
            : provider.update((state) => [...state, id]);
      },
      child: SvgPicture.asset(
        ref.watch(favouritesProvider).contains(id)
            ? assets.bookmarkCheckedIcon
            : assets.bookmarkUncheckedIcon,
      ),
    );
  }
}
