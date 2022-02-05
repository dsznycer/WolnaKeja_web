import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class valuesProduct_mobile extends StatelessWidget {
  const valuesProduct_mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthP = size.width * 0.65;

    return Column(
      children: [
        Container(
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
        Container(
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
            color: ColThird,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
