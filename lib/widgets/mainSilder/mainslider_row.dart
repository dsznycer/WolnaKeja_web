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
      alignment: Alignment.center,
      children: [
        Image.asset(
          '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/mainSlider/wolna-keja-mockup-tlo.png',
          width: size.width,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aplikacja do rezerwacji miejsc',
                  style: H2wht,
                ),
                Text(
                  'w portach mazurskich.',
                  style: H2wht,
                ),
                Divider(
                  height: 2,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(width: 20),
            Image.asset(
              '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/mainSlider/mockup-app.png',
              width: sizeofmockup(),
            ),
          ],
        ), //Mockup
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: navigationbar(),
        ),
      ],
    );
  }
}
