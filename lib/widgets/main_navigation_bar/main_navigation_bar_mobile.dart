part of 'main_navigation_bar.dart';

class MainNavigationBarMobile extends StatelessWidget {
  const MainNavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Stack(
      fit: StackFit.loose,
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/mainSlider/backGroundMobile.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 200),
          ],
        ),
        Positioned(
          top: 50,
          child: Column(
            children: [
              Container(
                width: size.width * 0.7,
                child: Text(
                  'Aplikacja do rezerwacji miejsc w portach mazurskich.',
                  style: AppTextStyles.H2M,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: size.width * 0.7,
                child: Text(
                  'Rezerwuj miejsce przy kei w aplikacji. Przeglądaj porty, imprezy oraz lokalne atrakcje. '
                  'Wszysto to w jednym miejscu.',
                  style: AppTextStyles.H3M,
                ),
              ),
              SizedBox(height: 50),
              Image.asset('assets/images/mainSlider/mockupMobile.png',
                  width: size.width * 0.75, fit: BoxFit.contain),
            ],
          ),
        ),
      ],
    );
  }
}
