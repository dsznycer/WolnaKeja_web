import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';
import 'package:wolnakeja/widgets/app_navigation_bar.dart';
import 'package:wolnakeja/widgets/dividerek.dart';

part 'header_mobile.dart';
part 'header_tablet.dart';
part 'header_desktop.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HeaderMobile(),
      tablet: const HeaderTablet(),
      desktop: const HeaderDesktop(),
    );
  }
}

class _BackGroundImage extends StatelessWidget {
  const _BackGroundImage.mobile()
      : path = 'assets/images/mainSlider/backGroundMobile.png';

  const _BackGroundImage.desktop()
      : path = 'images/header/header_background.jpg';

  const _BackGroundImage.tablet()
      : path = 'images/header/header_background.jpg';

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: double.infinity,
      fit: BoxFit.fitWidth,
    );
  }
}
