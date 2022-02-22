import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/aboutwk/aboutwk_desktop.dart';
import 'package:wolnakeja/widgets/aboutwk/aboutwk_mobile.dart';

class aboutwk extends StatelessWidget {
  const aboutwk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: aboutwk_mobile(),
      desktop: aboutwk_desktop(),
    );
  }
}
