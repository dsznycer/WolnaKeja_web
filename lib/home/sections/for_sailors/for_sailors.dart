import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/models/app_models.dart';
import 'package:wolnakeja/styles/app_shadows.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';

part 'for_sailors_mobile.dart';
part 'for_sailors_desktop.dart';

class ForSailors extends StatelessWidget {
  const ForSailors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ForSailorsMobile(),
      desktop: const ForSailorsDesktop(),
    );
  }
}

const _choosePortTileData = PictureWithTitleAndDescription(
  path: 'assets/images/uspRow/latarnia.png',
  title: 'Wybór portu',
  description:
      'Pływający przegląda porty w okolicy i wybiera ten, który interesuje go najbardziej. Może sprawdzić jaką port posiada infrastrukturę, co znajduje się w okolicy oraz czy organizuje jakieś wydarzenia.',
);

const _choosePlaceTileData = PictureWithTitleAndDescription(
  path: 'assets/images/uspRow/moring.png',
  title: 'Wybór miejsca',
  description:
      'Po wybraniu portu wystarczy wpisać jaką długość ma łódź, ile osób na niej przebywa oraz jaką ma nazwę. Następnie można wybrać miejsce do cumowania.',
);

const _payTileData = PictureWithTitleAndDescription(
  path: 'assets/images/uspRow/platnosc.png',
  title: 'Opłacenie postoju',
  description:
      'Port i miejsce wybrane, następnym krokiem jest opłacenie rezerwacji. Port otrzymuje informację, że dokonana została nowa rezerwacja, a opłacone miejsce oznaczane jest w systemie jako zajęte.',
);

const _moorTileData = PictureWithTitleAndDescription(
  path: 'assets/images/uspRow/kotwica.png',
  title: 'Czas zacumować',
  description:
      'Pozostało jedynie wpłynąć do portu i rozkoszować się pięknem mazurskiej przyrody!',
);

const _tilesData = [
  _choosePortTileData,
  _choosePlaceTileData,
  _payTileData,
  _moorTileData
];

class _ForSailorsTitle extends StatelessWidget {
  const _ForSailorsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Jak to działa?',
      style: AppTextStyles.h2,
    );
  }
}
