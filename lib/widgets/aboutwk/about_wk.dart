import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/aboutwk/about_wk_desktop.dart';
import 'package:wolnakeja/widgets/aboutwk/about_wk_mobile.dart';

class AboutWK extends StatelessWidget {
  const AboutWK({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AboutWKMobile(),
      desktop: const AboutWKDesktop(),
    );
  }
}
