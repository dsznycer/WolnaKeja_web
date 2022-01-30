import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class aboutwk extends StatelessWidget {
  const aboutwk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'O aplikacji',
          style: H2,
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                margin: EdgeInsets.all(40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    'assets/images/aboutwk/reservations-kopia.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wygodnie zarezerwuj i opłać miejsce przy kei.',
                      style: H3,
                    ),
                    _Dividerek(),
                    Text(
                      'Wolna Keja to aplikacja służąca do rezerwacji miejsc w portach mazurskich. Żeglarze mają możliwość wybrania oraz opłacenia wybranego przez siebie miejsca w porcie. Porty natomiast, mogą pokazać swoją infrastrukturę, udogodnienia czy atrakcje dostępne w pobliżu. Szukasz apteki, chcesz pozwiadzać lokalne atrakcje? A może szukacie miejsca, aby zagrać w paintball?   ',
                      style: description,
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ),
          ],
        )
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
        SizedBox(height: 20),
        Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
            color: ColThird,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
