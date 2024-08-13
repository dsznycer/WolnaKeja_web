import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class AboutWKMobile extends StatelessWidget {
  const AboutWKMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'O aplikacji',
          style: H2,
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wygodnie zarezerwuj i opłać miejsce przy kei.',
                style: H3,
              ),
              _Dividerek(),
              Text(
                'Wolna Keja to aplikacja służąca do rezerwacji miejsc w portach mazurskich. Żeglarze mają możliwość wybrania oraz opłacenia wybranego przez siebie miejsca w porcie. Porty natomiast, mogą pokazać swoją infrastrukturę, udogodnienia czy atrakcje dostępne w pobliżu. Szukasz apteki, chcesz pozwiedzać lokalne atrakcje? A może szukasz miejsca, aby zagrać w paintball? ',
                style: description,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              'assets/images/aboutwk/reservations-kopia.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}

class _Dividerek extends StatelessWidget {
  const _Dividerek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
            color: colThird,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
