import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class valuesProduct_desktop extends StatelessWidget {
  const valuesProduct_desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthP = size.width * 0.25;

    return Column(
      children: [
        Text(
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
                margin: EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Planuj, rezerwuj i ciesz się mazurami.',
                      style: H3,
                    ),
                    _Dividerek(),
                    Text(
                      'Mazury to polska perełka żeglarska. Niestety coraz więcej jachtów chce cumować w marinach, które niestety nie powiększają się z każdym rokiem. Z naszą aplikacją zaplanujesz podróż po Krainie Wielkich Jezior oraz wykupisz miejsca w dogodnych portach. Nigdy więcej nie martw się czy znajdziesz miejsce w porcie. I ciesz się przyrodą.  ',
                      style: description,
                      textAlign: TextAlign.justify,
                    )
                  ],
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
        SizedBox(height: 20),
        Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
            color: colThird,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
