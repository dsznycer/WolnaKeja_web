import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/navigationBar/navigation_bar_desktop.dart';
import 'package:wolnakeja/widgets/shared/dividerek.dart';

class MainSliderDesktop extends StatelessWidget {
  const MainSliderDesktop({
    super.key,
    required this.functA1,
    required this.keyA1,
    required this.keyA2,
    required this.keyA3,
    required this.keyA4,
  });

  final void Function(GlobalKey) functA1;
  final GlobalKey keyA1;
  final GlobalKey keyA2;
  final GlobalKey keyA3;
  final GlobalKey keyA4;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sizeofmockup = size.width * 0.18;
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
                const TextRenderer(
                  text: Text(
                    'Aplikacja do rezerwacji miejsc',
                    style: H2drk,
                  ),
                ),
                const TextRenderer(
                  text: Text(
                    'w portach mazurskich',
                    style: H2drk,
                  ),
                ),
                const SizedBox(height: 30),
                Dividerek(
                  height: 4,
                  width: 70,
                  color: colFirst.withOpacity(0.6),
                  borderRadius: 12,
                ),
                const SizedBox(height: 30),
                const Text('Rezerwuj miejsce przy kei w aplikacji.', style: H3),
                const Text(
                  'Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                  style: H3,
                ),
                const Text('Wszystko to w jednym miejscu.', style: H3),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Text(
                      'Wkrótce na:',
                      style: H3Tab,
                    ),
                    Image.asset(
                      'assets/images/footer/google-play-badge.png',
                      width: 140,
                    ),
                    Image.asset(
                      'assets/images/footer/iosbadge.png',
                      width: 115,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: sizeofmockup,
              height: size.height * 0.7,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                width: sizeofmockup,
                image:
                    'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2Fmockup%2Fmockup-app.png?alt=media&token=51348c15-5d39-40c6-a0ca-e87e1d3df1dc',
              ),
            ),
          ],
        ), //Mockup
        Positioned(
          top: 0,
          right: width,
          left: width,
          child: NavigationBarDesktop(
            funct: functA1,
            key1: keyA1,
            key2: keyA2,
            key3: keyA3,
            key4: keyA4,
          ),
        ),
      ],
    );
  }
}
