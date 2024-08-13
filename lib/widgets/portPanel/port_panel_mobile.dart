import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'text_tile.dart';

class PortPanelMobile extends StatelessWidget {
  const PortPanelMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Żeglarze rezerwują miejsca, Ty wygodnie zarządzasz portem',
          style: H2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            const Row(
              children: [
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextTile('Miejsca zajęte i wolne'),
                      SizedBox(height: 25),
                      TextTile('Nadchodzące wydarzenia w Twoim porcie'),
                      SizedBox(height: 25),
                      TextTile('Moduł statystyk z przychodami i rezerwacjami'),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    children: [
                      TextTile(
                        'Panel, w którym sprawdzisz czy zajęte miejsca zostały opłacone',
                      ),
                      SizedBox(height: 25),
                      TextTile('Ostatnie rezerwacje w porcie'),
                      SizedBox(height: 25),
                      TextTile('Osobne dane dostępu dla pracowników '),
                    ],
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Image.asset('assets/images/portPanel/ipad_wk.png'),
          ],
        ),
      ],
    );
  }
}
