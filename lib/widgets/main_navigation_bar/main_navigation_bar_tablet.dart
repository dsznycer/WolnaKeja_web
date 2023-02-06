part of 'main_navigation_bar.dart';

class MainNavigationBarTablet extends StatelessWidget {
  const MainNavigationBarTablet({
    Key? key,
    required this.onItemTap,
    required this.navigationItemsKeys,
  }) : super(key: key);

  final Future<void> Function(GlobalKey<State<StatefulWidget>>) onItemTap;

  final List<GlobalKey> navigationItemsKeys;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sizeofmockup = size.width * 0.20;
    final widthSize = size.width * 0.04;

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/mainSlider/background2.png',
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
                const SizedBox(height: 20),
                const Text(
                  'Aplikacja do rezerwacji miejsc',
                  style: AppTextStyles.H2Tab,
                ),
                const Text(
                  'w portach mazurskich',
                  style: AppTextStyles.H2Tab,
                ),
                const SizedBox(height: 15),
                Dividerek(
                  width: 70,
                  height: 4,
                  color: AppColors.ColFirst.withOpacity(0.6),
                ),
                const SizedBox(height: 15),
                const Text('Rezerwuj miejsce przy kei w aplikacji.',
                    style: AppTextStyles.H3Tab),
                const Text('Przeglądaj porty, imprezy oraz lokalne atrakcje.',
                    style: AppTextStyles.H3Tab),
                const Text('Wszystko to w jednym miejscu.',
                    style: AppTextStyles.H3Tab),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Wkrótce na:',
                      style: AppTextStyles.H3Tab,
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
        Positioned(
          top: 0,
          right: widthSize,
          left: widthSize,
          child: AppNavigationBar(
            onItemTap: onItemTap,
            navigationItemsKeys: navigationItemsKeys,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            logoSize: 130,
            spacing: 20,
          ),
        ),
      ],
    );
  }
}
