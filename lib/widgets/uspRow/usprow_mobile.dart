import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class UspRow_mobile extends StatelessWidget {
  const UspRow_mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Jak to działa?",
          style: H2M,
        ),
        Container(
          height: 350,
          child: Scrollbar(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TileMobileRow(
                  Number: 1,
                  picture: 'assets/images/uspRow/latarnia.png',
                  title: 'Wybór portu',
                  descript:
                      'Pływający przegląda porty w okolicy i wybiera ten, który interesuje go najbardziej. Może sprawdzić jaką port posiada infrastrukturę, co znajduje się w okolicy oraz czy organizuje jakieś wydarzenia.',
                ),
                TileMobileRow(
                  Number: 1,
                  picture: 'assets/images/uspRow/moring.png',
                  title: 'Wybór miejsca',
                  descript:
                      'Po wybraniu portu wystarczy wpisać jaką długość ma łódź, ile osób na niej przebywa oraz jaką ma nazwę. Następnie można wybrać miejsce do cumowania.',
                ),
                TileMobileRow(
                  Number: 4,
                  picture: 'assets/images/uspRow/platnosc.png',
                  title: 'Opłacenie postoju',
                  descript:
                      'Port i miejsce wybrane, następnym krokiem jest opłacenie rezerwacji. Port otrzymuje informację, że dokonana została nowa rezerwacja, a opłacone miejsce oznaczane jest w systemie jako zajęte.',
                ),
                TileMobileRow(
                  Number: 2,
                  picture: 'assets/images/uspRow/kotwica.png',
                  title: 'Czas zacumować',
                  descript:
                      'Pozostało jedynie wpłynąć do portu i rozkoszować się pięknem mazurskiej przyrody! ',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TileMobileRow extends StatelessWidget {
  const TileMobileRow({
    required this.Number,
    required this.picture,
    required this.title,
    required this.descript,
  });

  final int? Number;
  final String picture;
  final String title;
  final String descript;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [shadow1],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            picture,
            width: 100,
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: H2M,
          ),
          Padding(
            padding: EdgeInsets.all(7),
            child: Text(
              descript,
              style: descriptionM,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
