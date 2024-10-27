import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/views/home/homeview.dart';
import 'package:wolnakeja/widgets/mainSilder/main_slider_desktop.dart';
import 'package:wolnakeja/widgets/mainSilder/main_slider_mobile.dart';
import 'package:wolnakeja/widgets/mainSilder/main_slider_tablet.dart';

class MainSlider extends StatelessWidget {
  const MainSlider({
    super.key,
    required this.scrollToItem,
    required this.buttonsData,
  });

  final void Function(GlobalKey) scrollToItem;
  final List<ButtonData> buttonsData;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const MainSliderMobile(),
      tablet: (_) => MainSliderTablet(
        scrollToItem: scrollToItem,
        buttonsData: buttonsData,
      ),
      desktop: (_) => MainSliderDesktop(
        scrollToItem: scrollToItem,
        buttonsData: buttonsData,
      ),
    );
  }
}
