import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/navigationbar/navigationbar.dart';
import 'ButtonMain.dart';

class MainSliderDesktop extends StatelessWidget {
  const MainSliderDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeofmockup() => size.width * 0.18;
    double WidthSize() => size.width * 0.04;

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/mainSlider/background2.png',
          width: size.width,
          fit: BoxFit.fitWidth,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Aplikacja do rezerwacji miejsc',
                  style: H2drk,
                ),
                Text(
                  'w portach mazurskich.',
                  style: H2drk,
                ),
                SizedBox(height: 30),
                _Dividerek(),
                SizedBox(height: 30),
                Text('Rezerwuj miejsce przy kei w aplikacji.', style: H3),
                Text('Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                    style: H3),
                Text('Wszystko to w jednym miejscu.', style: H3),
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
          right: WidthSize(),
          left: WidthSize(),
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
