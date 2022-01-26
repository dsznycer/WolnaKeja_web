import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class footer extends StatelessWidget {
  const footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColThird.withOpacity(0.3),
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                logoWidget(), //Logo
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        'Aplikacja dostępna wkrótce na urządzenia z systemem Android i iOS',
                        style: description,
                      ),
                      Image.asset(
                          '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/footer/google-play-badge.png',
                          height: 70),
                      Image.asset(
                          '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/footer/iosbadge.png',
                          height: 50),
                    ],
                  ),
                ),
                Flexible(
                    child: Column(
                  children: [Text('Kontakt')],
                )) //Badges
              ],
            ),
            Divider(
              color: ColFirst,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(children: [
                SizedBox(width: 10),
                Text('All Rights Reserved © Wolna Keja'),
              ]),
            ), // Copyright
          ],
        ),
      ),
    );
  }
}
