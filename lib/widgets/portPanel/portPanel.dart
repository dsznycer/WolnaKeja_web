import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class portPanel extends StatelessWidget {
  const portPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Żeglarze rezerwują miejsca, Ty wygodnie zarządzasz portem'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
                children: [
                  _textTile('elo elo'),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                child: Image.asset(
                    '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/portPanel/ipad_wk.png'),
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  _textTile('elo elo'),
                ],
              ),
            ),
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
      child: Text(
        tekst,
        style: description,
      ),
    );
  }
}
