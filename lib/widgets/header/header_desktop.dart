part of 'header.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    Key? key,
    required this.navigationItemsKeys,
  }) : super(key: key);

  final List<GlobalKey> navigationItemsKeys;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.center,
      children: [
        const _BackGroundImage.desktop(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextRenderer(
                  text: Text(
                    'Aplikacja do rezerwacji miejsc',
                    style: AppTextStyles.h2drk,
                  ),
                ),
                const TextRenderer(
                  text: Text(
                    'w portach mazurskich',
                    style: AppTextStyles.h2drk,
                  ),
                ),
                const SizedBox(height: 30),
                Dividerek(
                  width: 70,
                  height: 4,
                  color: AppColors.colFirst.withOpacity(0.6),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Rezerwuj miejsce przy kei w aplikacji.',
                  style: AppTextStyles.h3,
                ),
                const Text(
                  'Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                  style: AppTextStyles.h3,
                ),
                const Text(
                  'Wszystko to w jednym miejscu.',
                  style: AppTextStyles.h3,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Text(
                      'Wkrótce na:',
                      style: AppTextStyles.h3Tab,
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
            const SizedBox(width: 20),
            Image.asset(
              'assets/images/mainSlider/mockup-app.png',
              width: width * 0.18,
            ),
          ],
        ),
        Positioned(
          top: 0,
          right: width * 0.04,
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
