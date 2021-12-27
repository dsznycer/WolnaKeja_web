import 'package:flutter/material.dart';

class usprow extends StatelessWidget {
  const usprow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            'Jak to działa?',
          ),
        ), // Nagłówek tabeli
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/Images/lat.png',
                  width: 130,
                ),
                Text('Znajdź port.')
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/Images/rope.png',
                  width: 130,
                ),
                Text('Wybierz miejsce.')
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/Images/pay.png',
                  width: 130,
                ),
                Text('Opłacenie postoju.')
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/Images/kotw.png',
                  width: 130,
                ),
                Text('Czas zacumować!')
              ],
            ),
          ],
        )
      ],
    );
  }
}
