import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/common/app_assets.dart' as assets;

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(assets.appLogo),
      ),
    );
  }
}
