import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class PortInfoMobile extends StatelessWidget {
  const PortInfoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthP = size.width * 0.65;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(40),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nowoczesny system zarządzania portem',
                style: H3,
              ),
              _Dividerek(),
              Text(
                'Wprowadź zupełnie za darmo nowoczesny system zarządzania swoim portem. Reklamuj port oraz jego infrastrukturę w aplikacji mobilnej i docieraj do nowych klientów. Dodatkowo sprzedawaj miejsca oraz zarządzaj rezerwacjami. Wszystko to w jednym miejscu.',
                style: description,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 500),
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
      ],
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
            color: colThird,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
