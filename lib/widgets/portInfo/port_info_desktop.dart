import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class PortInfoDesktop extends StatelessWidget {
  const PortInfoDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthP = size.width * 0.32;

    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Container(
                margin:
                    const EdgeInsets.only(right: 40, left: 60, top: 40, bottom: 40),
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
                    )
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
        )
      ],
    );
  }
}

class _Dividerek extends StatelessWidget {
  const _Dividerek({Key? key}) : super(key: key);

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
