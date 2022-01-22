import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/navigationbar/navigationbar.dart';

class mainSlider2 extends StatelessWidget {
  const mainSlider2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeofmockup() => size.width * 0.17;

    return Stack(
      children: [
        Image.asset(
          '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/mainSlider/wolna-keja-mockup-tlo.png',
          width: size.width,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Aplikacja do rezerwacji miejsc w portach mazurskich.',
                      style: H2wht,
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Image.asset(
                  '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/mainSlider/mockup-app.png',
                  width: sizeofmockup(),
                ),
              ),
            ],
          ),
        ), //Mockup
        navigationbar(),
      ],
    );
  }
}
