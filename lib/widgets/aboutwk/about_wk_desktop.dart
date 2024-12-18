import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/shared/dividerek.dart';

class AboutWKDesktop extends StatelessWidget {
  const AboutWKDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'O aplikacji',
          style: H2,
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                margin: const EdgeInsets.all(40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    'assets/images/aboutwk/reservations-kopia.png',
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
                    TextRenderer(
                      child: Text(
                        'Wygodnie zarezerwuj i opłać miejsce przy kei.',
                        style: H3,
                      ),
                    ),
                    Dividerek(),
                    TextRenderer(
                      child: Text(
                        'Wolna Keja to aplikacja służąca do rezerwacji miejsc w portach mazurskich. Żeglarze mają możliwość wybrania oraz opłacenia wybranego przez siebie miejsca w porcie. Porty natomiast, mogą pokazać swoją infrastrukturę, udogodnienia czy atrakcje dostępne w pobliżu. Szukasz apteki, chcesz pozwiedzać lokalne atrakcje? A może szukasz miejsca, aby zagrać w paintball?   ',
                        style: description,
                        textAlign: TextAlign.justify,
                      ),
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
