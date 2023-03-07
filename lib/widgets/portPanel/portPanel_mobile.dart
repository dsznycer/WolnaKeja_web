import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'textTile.dart';

class portPanel_mobile extends StatelessWidget {
  const portPanel_mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Żeglarze rezerwują miejsca, Ty wygodnie zarządzasz portem',
          style: H2,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            Row(
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
                      textTile('Moduł statystyk z przychodami i rezerwacjami'),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    children: [
                      textTile(
                          'Panel, w którym sprawdzisz czy zajęte miejsca zostały opłacone'),
                      SizedBox(height: 25),
                      textTile('Ostatnie rezerwacje w porcie'),
                      SizedBox(height: 25),
                      textTile('Osobne dane dostępu dla pracowników '),
                    ],
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Container(
              child: Image.asset('assets/images/portPanel/ipad_wk.png'),
            ),
          ],
        )
      ],
    );
  }
}
