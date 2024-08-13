import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class UspRowDesktop extends StatelessWidget {
  const UspRowDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Jak to działa?',
          style: H2,
        ),
        SizedBox(height: 15), // Nagłówek tabeli
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 15),
            Flexible(
              child: CardTile(
                  img: 'assets/images/uspRow/latarnia.png',
                  title: 'Wybór portu',
                  dsc:
                      'Pływający przegląda porty w okolicy i wybiera ten, który interesuje go najbardziej. Może sprawdzić jaką port posiada infrastrukturę, co znajduje się w okolicy oraz czy organizuje jakieś wydarzenia.'),
            ),
            Flexible(
              child: CardTile(
                  img: 'assets/images/uspRow/moring.png',
                  title: 'Wybór miejsca',
                  dsc:
                      'Po wybraniu portu wystarczy wpisać jaką długość ma łódź, ile osób na niej przebywa oraz jaką ma nazwę. Następnie można wybrać miejsce do cumowania. '),
            ),
            Flexible(
              child: CardTile(
                  img: 'assets/images/uspRow/platnosc.png',
                  title: 'Opłacenie postoju',
                  dsc:
                      'Port i miejsce wybrane, następnym krokiem jest opłacenie rezerwacji. Port otrzymuje informację, że dokonana została nowa rezerwacja, a opłacone miejsce oznaczane jest w systemie jako zajęte.  '),
            ),
            Flexible(
              child: CardTile(
                  img: 'assets/images/uspRow/kotwica.png',
                  title: 'Czas zacumować! ',
                  dsc:
                      "Pozostało jedynie wpłynąć do portu i rozkoszować się pięknem mazurskiej przyrody!  "),
            ),
            SizedBox(width: 15),
          ],
        )
      ],
    );
  }
}

class CardTile extends StatelessWidget {
  const CardTile({super.key, required this.img, required this.title, required this.dsc});

  final String img;
  final String title;
  final String dsc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(img, width: 120),
        const SizedBox(height: 20),
        Text(
          title,
          style: H2,
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            dsc,
            style: description,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
