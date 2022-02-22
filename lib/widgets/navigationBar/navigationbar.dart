import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/navigationBar/navigation_bar_desktop.dart';
import 'package:wolnakeja/widgets/navigationBar/navigation_bar_tablet.dart';

class navigationBar extends StatelessWidget {
  navigationBar(
      {required this.funct1,
      required this.keyA,
      required this.keyB,
      required this.keyC,
      required this.keyD});

  final Function funct1;
  final GlobalKey keyA;
  final GlobalKey keyB;
  final GlobalKey keyC;
  final GlobalKey keyD;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Icon(Icons.star),
      tablet: navigationBarTab(),
      desktop: NavigationBarDesktop(
          funct: funct1, key1: keyA, key2: keyB, key3: keyC, key4: keyD),
    );
  }
}
