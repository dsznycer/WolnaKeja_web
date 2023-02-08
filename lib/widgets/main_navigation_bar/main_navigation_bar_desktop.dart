part of 'main_navigation_bar.dart';

class MainNavigationBarDesktop extends StatelessWidget {
  const MainNavigationBarDesktop({
    Key? key,
    required this.navigationItemsKeys,
  }) : super(key: key);

  final List<GlobalKey> navigationItemsKeys;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeofmockup() => size.width * 0.18;
    double WidthSize() => size.width * 0.04;

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.network(
          'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2Fbackground-kopia-slider.webp?alt=media&token=438a5b73-fac9-4762-9b9b-d84fed4542aa',
          width: size.width,
          fit: BoxFit.fitWidth,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextRenderer(
                  text: Text(
                    'Aplikacja do rezerwacji miejsc',
                    style: AppTextStyles.H2drk,
                  ),
                ),
                TextRenderer(
                  text: Text(
                    'w portach mazurskich',
                    style: AppTextStyles.H2drk,
                  ),
                ),
                SizedBox(height: 30),
                Dividerek(
                  width: 70,
                  height: 4,
                  color: AppColors.ColFirst.withOpacity(0.6),
                ),
                SizedBox(height: 30),
                Text('Rezerwuj miejsce przy kei w aplikacji.',
                    style: AppTextStyles.H3),
                Text('Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                    style: AppTextStyles.H3),
                Text('Wszystko to w jednym miejscu.', style: AppTextStyles.H3),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Wkrótce na:",
                      style: AppTextStyles.H3Tab,
                    ),
                    Image.asset(
                      'assets/images/footer/google-play-badge.png',
                      width: 140,
                    ),
                    Image.asset(
                      'assets/images/footer/iosbadge.png',
                      width: 115,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 20),
            Image.asset(
              'assets/images/mainSlider/mockup-app.png',
              width: sizeofmockup(),
            ),
          ],
        ), //Mockup
        Positioned(
          top: 0,
          right: WidthSize(),
          left: WidthSize(),
          child: AppNavigationBar(
            navigationItemsKeys: navigationItemsKeys,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            logoSize: 170,
            spacing: 40,
          ),
        ),
      ],
    );
  }
}
