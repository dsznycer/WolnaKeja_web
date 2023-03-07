import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wolnakeja/style.dart';

class MainSliderMobile extends StatelessWidget {
  const MainSliderMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Stack(
      fit: StackFit.loose,
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/mainSlider/backGroundMobile.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 250),
          ],
        ),
        Positioned(
          top: 50,
          child: Column(
            children: [
              Container(
                width: size.width * 0.7,
                child: Text(
                  'Aplikacja do rezerwacji miejsc w portach mazurskich.',
                  style: H2M,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: size.width * 0.7,
                child: Text(
                  'Rezerwuj miejsce przy kei w aplikacji. Przeglądaj porty, imprezy oraz lokalne atrakcje. '
                  'Wszysto to w jednym miejscu.',
                  style: H3M,
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: size.height * 0.7,
                width: size.width * 0.75,
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                        'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2Fmockup%2FmockupMobile.png?alt=media&token=284e6959-85fc-4b5b-885e-588ff4e7248c',
                    width: size.width * 0.75,
                    fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
