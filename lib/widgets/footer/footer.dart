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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: logoWidget(160),
                ), //Logo
                Container(
                  width: 270,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Śledź nas w mediach społecznościowych!',
                        style: H3,
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                              '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/footer/fb_logo.png',
                              height: 30),
                          SizedBox(width: 10),
                          Image.asset(
                              '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/footer/insta_logo.png',
                              height: 30),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 270,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Masz pytania? Pomysły? Odezwij się do nas.',
                        style: H3,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Image.asset(
                            '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/footer/phone_icon.png',
                            width: 40,
                          ),
                          SizedBox(width: 20),
                          Text('516 248 020'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/footer/mail_icon.png',
                            width: 40,
                          ),
                          SizedBox(width: 20),
                          Text('kontakt@wolnakeja.pl'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 270,
                  child: Column(
                    children: [
                      Text(
                        'Aplikacja dostępna wkrótce na urządzenia z systemem Android i iOS',
                        style: description,
                        textAlign: TextAlign.justify,
                      ),
                      Image.asset(
                          '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/footer/google-play-badge.png',
                          height: 67),
                      Image.asset(
                          '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/footer/iosbadge.png',
                          height: 50),
                    ],
                  ),
                ),
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
            ),
          ],
        ),
      ),
    );
  }
}
