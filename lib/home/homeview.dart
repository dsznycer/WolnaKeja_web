import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/home/sections/about_app/about_app.dart';
import 'package:wolnakeja/home/sections/events/events.dart';
import 'package:wolnakeja/home/sections/for_port_subsection/for_port_subsection.dart';
import 'package:wolnakeja/home/sections/for_ports/for_ports.dart';
import 'package:wolnakeja/home/sections/for_sailors/for_sailors.dart';
import 'package:wolnakeja/home/sections/product_value/product_value.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/widgets/app_navigation_drawer.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/header/header.dart';

final navigationItemsKeys = [
  for (var i = 0; i < 4; i++) GlobalKey(),
];

ScreenType _getScreenType(SizingInformation sizingInformation) {
  if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
    return ScreenType.desktop;
  }
  if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
    return ScreenType.tablet;
  }
  return ScreenType.mobile;
}

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final screenType = _getScreenType(sizingInformation);

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: screenType.appBar,
          drawer: screenType.drawer,
          body: ListView(
            children: [
              const Header(),
              const SizedBox(height: 40),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1400),
                child: Column(
                  children: [
                    AboutApp(key: navigationItemsKeys[0]),
                    const SizedBox(height: 40),
                    ForSailors(key: navigationItemsKeys[1]),
                    const SizedBox(height: 70),
                    const Events(),
                    const SizedBox(height: 70),
                    const ProductValue(),
                    const SizedBox(height: 100),
                    ForPorts(key: navigationItemsKeys[2]),
                    const SizedBox(height: 80),
                    const ForPortSubsection(),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
              Footer(key: navigationItemsKeys[3]),
            ],
          ),
        );
      },
    );
  }
}

enum ScreenType {
  mobile,
  tablet,
  desktop;

  PreferredSizeWidget? get appBar => _appBar();
  PreferredSizeWidget? _appBar() {
    switch (this) {
      case ScreenType.mobile:
      case ScreenType.tablet:
        return const _AppBarMobile();
      case ScreenType.desktop:
        return null;
    }
  }

  Widget? get drawer => _drawer();
  Widget? _drawer() {
    switch (this) {
      case ScreenType.mobile:
      case ScreenType.tablet:
        return const AppNavigationDrawer();
      case ScreenType.desktop:
        return null;
    }
  }
}

class _AppBarMobile extends StatelessWidget with PreferredSizeWidget {
  const _AppBarMobile();

  @override
  Size get preferredSize => const Size.fromHeight(height);
  static const double height = 80;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 80,
      title: Image.asset(
        'assets/images/header/logoMobile.png',
        height: 60,
      ),
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: AppColors.colFirst,
        size: 35,
      ),
    );
  }
}
