import 'package:flutter/material.dart';

class aboutwk extends StatelessWidget {
  const aboutwk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text('Wolna keja.'),
        Row(
          children: [
            Container(
              width: 680,
              height: 466,
              padding: EdgeInsets.all(40),
              child: Image.asset(
                '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/aboutwk/reservations.png',
                fit: BoxFit.fill,
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
            ),
            Column(
              children: [
                Text('Wygodnie rezerwuj miejsce przy kei.'),
              ],
            )
          ],
        )
      ],
    );
  }
}
