part of 'header.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        const _BackGroundImage.mobile(),
        Positioned(
          top: 50,
          child: Column(
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: const Text(
                  'Aplikacja do rezerwacji miejsc w portach mazurskich.',
                  style: AppTextStyles.h2M,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: size.width * 0.7,
                child: const Text(
                  'Rezerwuj miejsce przy kei w aplikacji. Przeglądaj porty, imprezy oraz lokalne atrakcje. '
                  'Wszysto to w jednym miejscu.',
                  style: AppTextStyles.h3M,
                ),
              ),
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/mainSlider/mockupMobile.png',
                width: size.width * 0.75,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
