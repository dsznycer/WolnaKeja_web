import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class UspRowMobile extends StatelessWidget {
  const UspRowMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Jak to działa?',
          style: H2M,
        ),
        SizedBox(
          height: 350,
          child: Scrollbar(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                TileMobileRow(
                  picture: 'assets/images/uspRow/latarnia.png',
                  title: 'Wybór portu',
                  descript:
                      'Pływający przegląda porty w okolicy i wybiera ten, który interesuje go najbardziej. Może sprawdzić jaką port posiada infrastrukturę, co znajduje się w okolicy oraz czy organizuje jakieś wydarzenia.',
                ),
                TileMobileRow(
                  picture: 'assets/images/uspRow/moring.png',
                  title: 'Wybór miejsca',
                  descript:
                      'Po wybraniu portu wystarczy wpisać jaką długość ma łódź, ile osób na niej przebywa oraz jaką ma nazwę. Następnie można wybrać miejsce do cumowania.',
                ),
                TileMobileRow(
                  picture: 'assets/images/uspRow/platnosc.png',
                  title: 'Opłacenie postoju',
                  descript:
                      'Port i miejsce wybrane, następnym krokiem jest opłacenie rezerwacji. Port otrzymuje informację, że dokonana została nowa rezerwacja, a opłacone miejsce oznaczane jest w systemie jako zajęte.',
                ),
                TileMobileRow(
                  picture: 'assets/images/uspRow/kotwica.png',
                  title: 'Czas zacumować',
                  descript:
                      'Pozostało jedynie wpłynąć do portu i rozkoszować się pięknem mazurskiej przyrody!',
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
    super.key,
    required this.picture,
    required this.title,
    required this.descript,
  });

  final String picture;
  final String title;
  final String descript;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [shadow1],
      ),
      child: Column(
        children: [
          Image.asset(
            picture,
            width: 100,
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: H2M,
          ),
          Padding(
            padding: const EdgeInsets.all(7),
            child: Text(
              descript,
              style: descriptionM,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
