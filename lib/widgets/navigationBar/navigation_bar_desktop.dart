import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';
import 'navButton.dart';

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          logoWidget(170),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: ColFive,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [shadow1],
            ),
            child: Row(
              children: [
                SizedBox(width: 40),
                navButton(
                  tekst: 'O aplikacji',
                ),
                SizedBox(width: 40),
                navButton(
                  tekst: 'Dla żeglarzy',
                ),
                SizedBox(width: 40),
                navButton(
                  tekst: 'Dla portów',
                ),
                SizedBox(width: 40),
                navButton(
                  tekst: 'Kontakt',
                ),
                SizedBox(width: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}