import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/shared/dividerek.dart';

class PartyEventMobile extends StatelessWidget {
  const PartyEventMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colSix,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(30),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Przejrzyj koncerty i wydarzenia, które dzieją się w portach',
                  style: H3,
                ),
                Dividerek(),
                Text(
                  'W Wolnej Kei znajdziesz również informację o koncertach i lokalanych wydarzeniach. Macie ochotę na wspólne ognisko? A może chcecie posłuchać szantów w portowym barze? Przed przypłynieciem do konkretnego portu, będziecie mogli sprawdzić co się w nim dzieje.',
                  textAlign: TextAlign.justify,
                  style: description,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'assets/images/party&events/partyEvents_k.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
