import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class UspRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
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
              child: const cardTile(
                  img:
                      '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/uspRow/latarnia.png',
                  title: 'Wybór portu',
                  dsc:
                      'Pływający przegląda porty w okolicy i wybiera ten, który interesuje go najbardziej. Może sprawdzić jaką port posiada infrastrukturę, co znajduje się w okolicy oraz czy organizuje jakieś wydarzenia.'),
            ),
            Flexible(
              child: const cardTile(
                  img:
                      '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/uspRow/moring.png',
                  title: 'Wybór miejsca',
                  dsc:
                      'Po wybraniu portu wystarczy wpisać jaką długość ma łódź, ile osób na niej przebywa oraz jaką ma nazwę. Następnie można wybrać miejsce do cumowania. '),
            ),
            Flexible(
              child: const cardTile(
                  img:
                      '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/uspRow/platnosc.png',
                  title: 'Opłacenie postoju',
                  dsc:
                      'Port i miejsce wybrane, następnym krokiem jest opłacenie rezerwacji. Port otrzymuje informację, że dokonana została nowa rezerwacja, a opłacone miejsce oznaczane jest w systemie jako zajęte.  '),
            ),
            Flexible(
              child: const cardTile(
                  img:
                      '/Users/dominiksznycer/StudioProjects/WolnaKeja_web/assets/Images/uspRow/kotwica.png',
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

class cardTile extends StatelessWidget {
  const cardTile({required this.img, required this.title, required this.dsc});

  final String img;
  final String title;
  final String dsc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(img, width: 120),
        SizedBox(height: 20),
        Text(
          title,
          style: H2,
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.all(10),
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
