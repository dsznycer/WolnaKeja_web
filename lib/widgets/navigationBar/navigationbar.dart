import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';
import 'package:wolnakeja/widgets/navigationBar/navigation_bar_desktop.dart';
import 'package:wolnakeja/widgets/navigationBar/navigation_bar_mobile.dart';
import 'package:wolnakeja/widgets/navigationBar/navigation_bar_tablet.dart';
import 'navButton.dart';

class navigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: navigationBarMobile(),
      tablet: navigationBarTab(),
      desktop: NavigationBarDesktop(),
    );
  }
}
