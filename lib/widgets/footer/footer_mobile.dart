import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class footerMobile extends StatelessWidget {
  const footerMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColThird.withOpacity(0.3),
        borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 1600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Align(
                          child: logoWidget(150),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 270),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Śledź nas w mediach społecznościowych!',
                                style: H3,
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                      'assets/images/footer/fb_logo.png',
                                      height: 30),
                                  SizedBox(width: 10),
                                  Image.asset(
                                      'assets/images/footer/insta_logo.png',
                                      height: 30),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), //Logo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 300),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Masz pytania? Pomysły? Odezwij się do nas.',
                                style: H3M,
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/footer/phone_icon.png',
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
                                    'assets/images/footer/mail_icon.png',
                                    width: 40,
                                  ),
                                  SizedBox(width: 20),
                                  Text('kontakt@wolnakeja.pl'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.only(right: 10),
                          constraints: BoxConstraints(maxWidth: 270),
                          child: Column(
                            children: [
                              Text(
                                'Aplikacja dostępna wkrótce na urządzenia z systemem Android i iOS',
                                style: descriptionM,
                                textAlign: TextAlign.justify,
                              ),
                              Image.asset(
                                  'assets/images/footer/google-play-badge.png',
                                  height: 52),
                              Image.asset('assets/images/footer/iosbadge.png',
                                  height: 40),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
