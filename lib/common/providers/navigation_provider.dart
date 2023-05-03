import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/app_enum.dart';

final navigationProvider =
    StateProvider<Navigation>((ref) => Navigation.movieLibrary);
