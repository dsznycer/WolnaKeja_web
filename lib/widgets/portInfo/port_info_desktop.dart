import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/shared/dividerek.dart';

class PortInfoDesktop extends StatelessWidget {
  const PortInfoDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthP = size.width * 0.32;

    return Row(
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(right: 40, left: 60) +
                const EdgeInsets.symmetric(vertical: 40),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nowoczesny system zarządzania portem',
                  style: H3,
                ),
                Dividerek(),
                Text(
                  'Wprowadź zupełnie za darmo nowoczesny system zarządzania swoim portem. Reklamuj port oraz jego infrastrukturę w aplikacji mobilnej i docieraj do nowych klientów. Dodatkowo sprzedawaj miejsca oraz zarządzaj rezerwacjami. Wszystko to w jednym miejscu.',
                  style: description,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'assets/images/portPanel/portfoto.png',
                width: widthP,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
