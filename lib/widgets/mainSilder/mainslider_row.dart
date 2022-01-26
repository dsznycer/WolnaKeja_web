import 'package:flutter/cupertino.dart';
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Aplikacja do rezerwacji miejsc',
                  style: H2wht,
                ),
                const Text(
                  'w portach mazurskich.',
                  style: H2wht,
                ),
                SizedBox(height: 30),
                const Dividerek(),
                SizedBox(height: 30),
                const Text('Rezerwuj miejsce przy kei w aplikacji.',
                    style: H3wht),
                const Text('Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                    style: H3wht),
                const Text('Wszystko to w jednym miejscu.', style: H3wht),
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
          right: 40,
          left: 0,
          child: navigationBar(),
        ),
      ],
    );
  }
}

class Dividerek extends StatelessWidget {
  const Dividerek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 4,
      decoration: BoxDecoration(
        color: ColSecond.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
