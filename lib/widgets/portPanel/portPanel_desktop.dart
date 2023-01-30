import 'package:flutter/material.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';
import 'textTile.dart';

class portPanel_desktop extends StatelessWidget {
  const portPanel_desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Żeglarze rezerwują miejsca, Ty wygodnie zarządzasz portem',
            style: AppTextStyles.H2),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textTile('Miejsca zajęte i wolne'),
                  SizedBox(height: 25),
                  textTile('Nadchodzące wydarzenia w Twoim porcie'),
                  SizedBox(height: 25),
                  textTile('Moduł statystyk z przychodami i rezerwacjami '),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                child: Image.asset('assets/images/portPanel/ipad_wk.png'),
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textTile(
                      'Panel, w którym sprawdzisz czy zajęte miejsca zostały opłacone '),
                  SizedBox(height: 25),
                  textTile('Ostatnie rezerwacje w porcie'),
                  SizedBox(height: 25),
                  textTile('Osobne dane dostępu dla pracowników '),
                ],
              ),
            ),
            SizedBox(width: 10),
          ],
        )
      ],
    );
  }
}
