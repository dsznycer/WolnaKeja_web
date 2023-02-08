import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';
import 'package:wolnakeja/widgets/dividerek.dart';
import 'package:wolnakeja/widgets/navigation_bar.dart';

part 'main_navigation_bar_mobile.dart';
part 'main_navigation_bar_tablet.dart';
part 'main_navigation_bar_desktop.dart';

class MainNavigationBar extends StatelessWidget {
  const MainNavigationBar({
    Key? key,
    required this.navigationItemsKeys,
  }) : super(key: key);

  final List<GlobalKey> navigationItemsKeys;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const MainNavigationBarMobile(),
      tablet: MainNavigationBarTablet(
        navigationItemsKeys: navigationItemsKeys,
      ),
      desktop: MainNavigationBarDesktop(
        navigationItemsKeys: navigationItemsKeys,
      ),
    );
  }
}
