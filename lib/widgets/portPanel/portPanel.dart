import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class portPanel extends StatelessWidget {
  const portPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Żeglarze rezerwują miejsca, Ty wygodnie zarządzasz portem',
            style: H2),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _textTile('Miejsca zajęte i wolne'),
                  SizedBox(height: 25),
                  _textTile('Nadchodzące wydarzenia w Twoim porcie'),
                  SizedBox(height: 25),
                  _textTile('Moduł statystyk z przychodami i rezerwacjami '),
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
                  _textTile(
                      'Panel, w którym sprawdzisz czy zajęte miejsca zostały opłacone '),
                  SizedBox(height: 25),
                  _textTile('Ostatnie rezerwacje w porcie'),
                  SizedBox(height: 25),
                  _textTile('Osobne dane dostępu dla pracowników '),
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

class _textTile extends StatelessWidget {
  const _textTile(this.tekst);

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        boxShadow: [
          shadow1,
        ],
        borderRadius: BorderRadius.circular(12),
        color: ColSix,
      ),
      child: Text(
        tekst,
        style: description,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
