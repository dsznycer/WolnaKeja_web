import 'package:flutter/material.dart';
import 'package:wolnakeja/services/url_service.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logo_widget.dart';
import 'package:wolnakeja/widgets/termsAndConditions/terms_and_conditions.dart';

class FooterDesktop extends StatelessWidget {
  FooterDesktop({super.key});

  final UrlService urlservice =
      UrlService(); // TODO URLService should abstract final class with static access

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colThird.withOpacity(0.3),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 1600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: LogoWidget(160),
                  ), //Logo
                  Flexible(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 270),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Śledź nas w mediach społecznościowych!',
                            style: H3,
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  urlservice.urlLauncher(urlservice.fb);
                                },
                                child: Image.asset(
                                  'assets/images/footer/fb_logo.png',
                                  height: 30,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Image.asset(
                                'assets/images/footer/insta_logo.png',
                                height: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: Column(
                        children: [
                          const Text(
                            'Masz pytania? Pomysły? Odezwij się do nas.',
                            style: H3,
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 25),
                          GestureDetector(
                            onTap: () =>
                                urlservice.urlLauncher(urlservice.phone),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/footer/phone_icon.png',
                                  width: 40,
                                ),
                                const SizedBox(width: 20),
                                const Text('516 248 020'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
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
                                const SizedBox(width: 20),
                                const Text('kontakt@wolna-keja.pl'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10),
                      constraints: const BoxConstraints(maxWidth: 270),
                      child: Column(
                        children: [
                          const Text(
                            'Aplikacja dostępna wkrótce na urządzenia z systemem Android i iOS',
                            style: description,
                            textAlign: TextAlign.justify,
                          ),
                          Image.asset(
                            'assets/images/footer/google-play-badge.png',
                            height: 67,
                          ),
                          Image.asset(
                            'assets/images/footer/iosbadge.png',
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const TermsAndConditions(),
            const Divider(color: colFirst),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Text('All Rights Reserved © Wolna Keja'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
