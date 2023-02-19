part of 'header.dart';

class HeaderTablet extends StatelessWidget {
  const HeaderTablet({
    Key? key,
    required this.navigationItemsKeys,
  }) : super(key: key);

  final List<GlobalKey> navigationItemsKeys;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizeofmockup = width * 0.20;
    final widthSize = width * 0.04;

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'images/header/header_background.jpg',
          fit: BoxFit.fitWidth,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Aplikacja do rezerwacji miejsc',
                  style: AppTextStyles.h2Tab,
                ),
                const Text(
                  'w portach mazurskich',
                  style: AppTextStyles.h2Tab,
                ),
                const SizedBox(height: 15),
                Dividerek(
                  width: 70,
                  height: 4,
                  color: AppColors.colFirst.withOpacity(0.6),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Rezerwuj miejsce przy kei w aplikacji.',
                  style: AppTextStyles.h3Tab,
                ),
                const Text(
                  'Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                  style: AppTextStyles.h3Tab,
                ),
                const Text(
                  'Wszystko to w jednym miejscu.',
                  style: AppTextStyles.h3Tab,
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Text(
                      'Wkrótce na:',
                      style: AppTextStyles.h3Tab,
                    ),
                    Image.asset(
                      'assets/images/footer/google-play-badge.png',
                      width: 90,
                    ),
                    Image.asset(
                      'assets/images/footer/iosbadge.png',
                      width: 75,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 20),
            Image.asset(
              'assets/images/mainSlider/mockup-app.png',
              width: sizeofmockup,
            ),
          ],
        ),
      ],
    );
  }
}
