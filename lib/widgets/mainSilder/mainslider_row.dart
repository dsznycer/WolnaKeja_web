import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/navigationbar/navigationbar.dart';

class mainSlider2 extends StatelessWidget {
  const mainSlider2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeofmockup() => size.width * 0.18;

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/mainSlider/background2.png',
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
                  style: H2drk,
                ),
                const Text(
                  'w portach mazurskich.',
                  style: H2drk,
                ),
                SizedBox(height: 30),
                const _Dividerek(),
                SizedBox(height: 30),
                const Text('Rezerwuj miejsce przy kei w aplikacji.', style: H3),
                const Text('Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                    style: H3),
                const Text('Wszystko to w jednym miejscu.', style: H3),
                SizedBox(height: 30),
                buttonMain('Więcej'),
              ],
            ),
            SizedBox(width: 20),
            Image.asset(
              'assets/images/mainSlider/mockup-app.png',
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

class _Dividerek extends StatelessWidget {
  const _Dividerek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 4,
      decoration: BoxDecoration(
        color: ColFirst.withOpacity(0.6),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

class buttonMain extends StatelessWidget {
  const buttonMain(this.tekst);

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColFour.withOpacity(0.6),
        border: Border.all(
          color: ColFour,
          width: 0.8,
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          tekst,
          style: H3,
        ),
      ),
    ));
  }
}
