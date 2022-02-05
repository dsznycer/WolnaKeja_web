import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/mainSilder/main_slider_desktop.dart';
import 'package:wolnakeja/widgets/mainSilder/main_slider_mobile.dart';

class MainSlider extends StatelessWidget {
  const MainSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MainSliderMobile(),
      desktop: MainSliderDesktop(),
    );
  }
}
