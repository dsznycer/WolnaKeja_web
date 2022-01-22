import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/navigationbar/navigationbar.dart';

class mainSlider extends StatelessWidget {
  const mainSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeofmockup() => size.width * 0.17;

    return Stack(
      children: [
        Image.asset(
          '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/mainSlider/wolna-keja-mockup-tlo.png',
          // width: size.width,
          width: size.width,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment(0.3, 0.07),
            child: Image.asset(
              '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/mainSlider/mockup-app.png',
              width: sizeofmockup(),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Aplikacja do rezerwacji miejsc w portach mazurskich.',
                  style: H2wht,
                  maxLines: 3,
                ),
              ],
            ),
          ),
        ), //Mockup
        navigationbar(),
      ],
    );
  }
}
