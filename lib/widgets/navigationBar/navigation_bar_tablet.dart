import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';
import 'navButton.dart';

class navigationBarTab extends StatelessWidget {
  const navigationBarTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          logoWidget(130),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: ColFive,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [shadow1],
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                navButton(
                  fontSize: 14,
                  tekst: 'O aplikacji',
                ),
                SizedBox(width: 20),
                navButton(
                  fontSize: 14,
                  tekst: 'Dla żeglarzy',
                ),
                SizedBox(width: 20),
                navButton(
                  fontSize: 14,
                  tekst: 'Dla portów',
                ),
                SizedBox(width: 20),
                navButton(
                  fontSize: 14,
                  tekst: 'Kontakt',
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
