import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/footer/footer_dekstop.dart';
import 'package:wolnakeja/widgets/footer/footer_mobile.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class footer extends StatelessWidget {
  const footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: footerMobile(),
      desktop: footerDesktop(),
    );
  }
}
