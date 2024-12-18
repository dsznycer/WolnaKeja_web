import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/views/home/homeview.dart';
import 'package:wolnakeja/widgets/navigationBar/navigation_bar_tablet.dart';
import 'package:wolnakeja/widgets/shared/dividerek.dart';

class MainSliderTablet extends StatelessWidget {
  const MainSliderTablet({
    super.key,
    required this.scrollToItem,
    required this.buttonsData,
  });

  final void Function(GlobalKey) scrollToItem;
  final List<ButtonData> buttonsData;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sizeofmockup = size.width * 0.20;
    final width = size.width * 0.04;

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
                const SizedBox(height: 20),
                const Text(
                  'Aplikacja do rezerwacji miejsc',
                  style: H2Tab,
                ),
                const Text(
                  'w portach mazurskich',
                  style: H2Tab,
                ),
                const SizedBox(height: 15),
                Dividerek(
                  height: 4,
                  width: 70,
                  color: colFirst.withOpacity(0.6),
                  borderRadius: 12,
                ),
                const SizedBox(height: 15),
                const Text(
                  'Rezerwuj miejsce przy kei w aplikacji.',
                  style: H3Tab,
                ),
                const Text(
                  'Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                  style: H3Tab,
                ),
                const Text('Wszystko to w jednym miejscu.', style: H3Tab),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Text(
                      'Wkrótce na:',
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
            const SizedBox(width: 20),
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2Fmockup%2Fmockup-app.png?alt=media&token=51348c15-5d39-40c6-a0ca-e87e1d3df1dc',
              width: sizeofmockup,
              height: 500,
            ),
          ],
        ), // Mockup
        Positioned(
          top: 0,
          right: width,
          left: width,
          child: NavigationBarTablet(
            scrollToItem: scrollToItem,
            buttonsData: buttonsData,
          ),
        ),
      ],
    );
  }
}
