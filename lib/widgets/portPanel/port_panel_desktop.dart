import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'text_tile.dart';

class PortPanelDesktop extends StatelessWidget {
  const PortPanelDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Żeglarze rezerwują miejsca, Ty wygodnie zarządzasz portem',
          style: H2,
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            const Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextTile('Miejsca zajęte i wolne'),
                  SizedBox(height: 25),
                  TextTile('Nadchodzące wydarzenia w Twoim porcie'),
                  SizedBox(height: 25),
                  TextTile('Moduł statystyk z przychodami i rezerwacjami '),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Image.asset('assets/images/portPanel/ipad_wk.png'),
            ),
            const Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextTile(
                    'Panel, w którym sprawdzisz czy zajęte miejsca zostały opłacone ',
                  ),
                  SizedBox(height: 25),
                  TextTile('Ostatnie rezerwacje w porcie'),
                  SizedBox(height: 25),
                  TextTile('Osobne dane dostępu dla pracowników '),
                ],
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}
