import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/shared/dividerek.dart';

class ValuesProductDesktop extends StatelessWidget {
  const ValuesProductDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthP = size.width * 0.25;

    return Column(
      children: [
        const Text(
          'Wolna keja.',
          style: H2,
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    'assets/images/valuesProduct/valueofproduct.png',
                    width: widthP,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.all(40),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Planuj, rezerwuj i ciesz się mazurami.',
                      style: H3,
                    ),
                    Dividerek(),
                    Text(
                      'Mazury to polska perełka żeglarska. Niestety coraz więcej jachtów chce cumować w marinach, które niestety nie powiększają się z każdym rokiem. Z naszą aplikacją zaplanujesz podróż po Krainie Wielkich Jezior oraz wykupisz miejsca w dogodnych portach. Nigdy więcej nie martw się czy znajdziesz miejsce w porcie. I ciesz się przyrodą.  ',
                      style: description,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
