import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class partyEvent extends StatelessWidget {
  const partyEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColSix,
      ),
      child: Row(
        children: [
          Flexible(
            child: Container(
              margin: EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Przejrzyj koncerty i wydarzenia, które dzieją się w portach',
                    style: H3,
                  ),
                  _Dividerek(),
                  Text(
                    'W Wolnej Kei znajdziesz również informację o koncertach i lokalanych wydarzeniach. Macie ochotę na wspólne ognisko? A może chcecie posłuchać szantów w portowym barze? Przed przypłynieciem do konkretnego portu, będziecie mogli sprawdzić co się w nim dzieje. ',
                    style: description,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.all(40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  'assets/images/party&events/partyEvents_k.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Dividerek extends StatelessWidget {
  const _Dividerek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
            color: ColThird,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
