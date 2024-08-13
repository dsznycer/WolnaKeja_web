import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wolnakeja/style.dart';

class MainSliderMobile extends StatelessWidget {
  const MainSliderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/mainSlider/backGroundMobile.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(height: 250),
          ],
        ),
        Positioned(
          top: 50,
          child: Column(
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: const Text(
                  'Aplikacja do rezerwacji miejsc w portach mazurskich.',
                  style: H2M,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: size.width * 0.7,
                child: const Text(
                  'Rezerwuj miejsce przy kei w aplikacji. Przeglądaj porty, imprezy oraz lokalne atrakcje. '
                  'Wszysto to w jednym miejscu.',
                  style: H3M,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: size.height * 0.7,
                width: size.width * 0.75,
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                        'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2Fmockup%2FmockupMobile.png?alt=media&token=284e6959-85fc-4b5b-885e-588ff4e7248c',
                    width: size.width * 0.75,
                    fit: BoxFit.contain,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
