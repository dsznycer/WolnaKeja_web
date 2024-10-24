import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/footer/footer_desktop.dart';
import 'package:wolnakeja/widgets/footer/footer_mobile.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => FooterMobile(),
      desktop: (_) => FooterDesktop(),
    );
  }
}
