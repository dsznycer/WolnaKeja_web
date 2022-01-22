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
        Positioned.fill(
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aplikacja do rezerwacji miejsc.',
                      style: H2wht,
                    ),
                    Text(
                      'w portach mazurskich.',
                      style: H2wht,
                    ),
                  ],
                ),
              ),
              Image.asset(
                '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/mainSlider/mockup-app.png',
                width: sizeofmockup(),
              ),
            ],
          ),
        ), //Mockup
        navigationbar(),
      ],
    );
  }
}
