import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

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
          children: [
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ), //Logo
                Column(
                  children: [
                    Text(
                      'Aplikacja dostępna wkrótce na urządzenia z systemem Android i iOS',
                      style: description,
                    ),
                    Image.asset(
                        '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/badges/google-play-badge.png',
                        height: 70),
                    Image.asset(
                        '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/badges/iosbadge.png',
                        height: 50),
                  ],
                ), //Badges
              ],
            ),
            Divider(
              color: ColFirst,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('All Rights Reserved © Wolna Keja'),
            ),
          ],
        ),
      ),
    );
  }
}
