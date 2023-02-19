import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';

class ForPortSubsection extends StatelessWidget {
  const ForPortSubsection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Column(
        children: const [
          _Text(desktop: false),
          _Photo(desktop: false),
        ],
      ),
      desktop: Column(
        children: [
          Row(
            children: const [
              Flexible(
                child: _Text(desktop: true),
              ),
              Flexible(
                child: _Photo(desktop: true),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Dividerek extends StatelessWidget {
  const _Dividerek();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
            color: AppColors.colThird,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    required this.desktop,
  });

  final bool desktop;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.all(40) + EdgeInsets.only(left: desktop ? 20 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Nowoczesny system zarządzania portem',
            style: AppTextStyles.h3,
          ),
          _Dividerek(),
          Text(
            'Wprowadź zupełnie za darmo nowoczesny system zarządzania swoim portem. Reklamuj port oraz jego infrastrukturę w aplikacji mobilnej i docieraj do nowych klientów. Dodatkowo sprzedawaj miejsca oraz zarządzaj rezerwacjami. Wszystko to w jednym miejscu.',
            style: AppTextStyles.descriptionStyle,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}

class _Photo extends StatelessWidget {
  const _Photo({
    required this.desktop,
  });

  final bool desktop;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image.asset(
          'assets/images/portPanel/portfoto.png',
          width: MediaQuery.of(context).size.width * (desktop ? 0.32 : 0.65),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
