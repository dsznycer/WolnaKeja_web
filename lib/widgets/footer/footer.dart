import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:spaced/spaced.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wolnakeja/services/urlService.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';
import 'package:wolnakeja/widgets/logo/logo.dart';

part 'footer_mobile.dart';
part 'footer_dekstop.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const FooterMobile(),
      desktop: const FooterDesktop(),
    );
  }
}

class _FooterBase extends StatelessWidget {
  const _FooterBase({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.ColThird.withOpacity(0.3),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 1600),
              child: child,
            ),
            const Divider(
              color: AppColors.ColFirst,
            ),
            const _RightsNote(),
          ],
        ),
      ),
    );
  }
}

class _SocialMedia extends StatelessWidget {
  const _SocialMedia({Key? key, required this.spacing}) : super(key: key);

  final double spacing; //30/40

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 270),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Śledź nas w mediach społecznościowych!',
              style: AppTextStyles.H3,
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                InkWell(
                  onTap: () async => launch(UrlService.urlFb),
                  child: Image.asset('assets/images/footer/fb_logo.png',
                      height: 30),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () async => launch(UrlService.urlInsta),
                  child: Image.asset('assets/images/footer/insta_logo.png',
                      height: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactUs extends StatelessWidget {
  const _ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300),
        child: Column(
          children: [
            const Text(
              'Masz pytania? Pomysły? Odezwij się do nas.',
              style: AppTextStyles.H3,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () async => launch(UrlService.phone),
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
              onTap: () async => launch(UrlService.email),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/footer/mail_icon.png',
                    width: 40,
                  ),
                  const SizedBox(width: 20),
                  const Text('kontakt@wolnakeja.pl'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SoonAvailable extends StatelessWidget {
  const _SoonAvailable({
    Key? key,
    required this.androidLogoHeight,
    required this.iosLogoHeight,
  }) : super(key: key);

  final double androidLogoHeight; // 52/ 67
  final double iosLogoHeight; // 50/40

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.only(right: 10),
        constraints: const BoxConstraints(maxWidth: 270),
        child: Column(
          children: [
            const Text(
              'Aplikacja dostępna wkrótce na urządzenia z systemem Android i iOS',
              style: AppTextStyles.descriptionStyle,
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
    );
  }
}

class _RightsNote extends StatelessWidget {
  const _RightsNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        children: const [
          SizedBox(width: 10),
          Text('All Rights Reserved © Wolna Keja'),
        ],
      ),
    );
  }
}
