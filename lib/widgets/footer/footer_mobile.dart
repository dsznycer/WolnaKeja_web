import 'package:flutter/material.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';
import 'package:wolnakeja/widgets/urlService.dart';

class footerMobile extends StatelessWidget {
  footerMobile({Key? key}) : super(key: key);

  final urlService urlservice = urlService();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.ColThird.withOpacity(0.3),
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
                                style: AppTextStyles.H3,
                              ),
                              SizedBox(height: 30),
                              GestureDetector(
                                onTap: () {
                                  urlservice.urlLauncher(urlservice.urlInsta);
                                },
                                child: Row(
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
                                style: AppTextStyles.H3M,
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 25),
                              GestureDetector(
                                onTap: () {
                                  urlservice.urlLauncher(urlservice.phone);
                                },
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/footer/phone_icon.png',
                                      width: 40,
                                    ),
                                    SizedBox(width: 20),
                                    Text('516 248 020')
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  urlservice.urlLauncher(urlservice.email);
                                },
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/footer/mail_icon.png',
                                      width: 40,
                                    ),
                                    SizedBox(width: 20),
                                    Text('kontakt@wolnakeja.pl'),
                                  ],
                                ),
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
                                style: AppTextStyles.descriptionM,
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
              color: AppColors.ColFirst,
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
