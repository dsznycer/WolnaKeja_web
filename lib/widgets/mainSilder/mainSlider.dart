import 'package:flutter/material.dart';
import 'package:wolnakeja/widgets/navigationbar/navigationbar.dart';

class mainSlider extends StatelessWidget {
  const mainSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/mainSlider/mockup.svg',
          width: 300,
        ),
        Image.asset(
          '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/mainSlider/wolna-keja-mockup-tlo.png',
          width: size.width,
        ),
        navigationbar(),
      ],
    );
  }
}
