import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/footer/footer_desktop.dart';
import 'package:wolnakeja/widgets/footer/footer_mobile.dart';

class Footer extends StatelessWidget {
  const Footer({required this.showOnLoad, super.key});

  final bool showOnLoad;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FooterMobile(showOnLoad: showOnLoad),
      desktop: FooterDesktop(showOnLoad: showOnLoad),
    );
  }
}
