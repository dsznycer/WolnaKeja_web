import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/navigationBar/navigation_bar_tablet.dart';

class MainSliderTablet extends StatelessWidget {
  MainSliderTablet(
      {Key? key,
      required this.functA1,
      required this.keyA1,
      required this.keyA2,
      required this.keyA3,
      required this.keyA4})
      : super(key: key);
  final Function functA1;
  final GlobalKey keyA1;
  final GlobalKey keyA2;
  final GlobalKey keyA3;
  final GlobalKey keyA4;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeofmockup() => size.width * 0.20;
    double WidthSize() => size.width * 0.04;

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.network(
          'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2Fbackground-kopia-slider.webp?alt=media&token=438a5b73-fac9-4762-9b9b-d84fed4542aa',
          width: size.width,
          fit: BoxFit.fitWidth,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Aplikacja do rezerwacji miejsc',
                  style: H2Tab,
                ),
                Text(
                  'w portach mazurskich',
                  style: H2Tab,
                ),
                SizedBox(height: 15),
                _Dividerek(),
                SizedBox(height: 15),
                Text('Rezerwuj miejsce przy kei w aplikacji.', style: H3Tab),
                Text('Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                    style: H3Tab),
                Text('Wszystko to w jednym miejscu.', style: H3Tab),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Wkrótce na:",
                      style: H3Tab,
                    ),
                    Image.asset(
                      'assets/images/footer/google-play-badge.png',
                      width: 90,
                    ),
                    Image.asset(
                      'assets/images/footer/iosbadge.png',
                      width: 75,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 20),
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2Fmockup%2Fmockup-app.png?alt=media&token=51348c15-5d39-40c6-a0ca-e87e1d3df1dc',
              width: sizeofmockup(),
              height: 500,
            ),
          ],
        ), //Mockup
        Positioned(
          top: 0,
          right: WidthSize(),
          left: WidthSize(),
          child: NavigationBarTablet(
              funct: functA1,
              key1: keyA1,
              key2: keyA2,
              key3: keyA3,
              key4: keyA4),
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
        color: colFirst.withOpacity(0.6),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
