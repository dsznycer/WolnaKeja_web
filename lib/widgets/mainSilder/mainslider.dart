import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/mainSilder/main_slider_desktop.dart';
import 'package:wolnakeja/widgets/mainSilder/main_slider_mobile.dart';

class MainSlider extends StatelessWidget {
  const MainSlider(
      {Key? key,
      required this.functB1,
      required this.keyB1,
      required this.keyB2,
      required this.keyB3,
      required this.keyB4})
      : super(key: key);
  final Function functB1;
  final GlobalKey keyB1;
  final GlobalKey keyB2;
  final GlobalKey keyB3;
  final GlobalKey keyB4;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MainSliderMobile(),
      tablet: MainSliderDesktop(
          functA1: functB1,
          keyA1: keyB1,
          keyA2: keyB2,
          keyA3: keyB3,
          keyA4: keyB4),
      desktop: MainSliderDesktop(
          functA1: functB1,
          keyA1: keyB1,
          keyA2: keyB2,
          keyA3: keyB3,
          keyA4: keyB4),
    );
  }
}
