import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';
import 'navButton.dart';

class NavigationBarTablet extends StatelessWidget {
  const NavigationBarTablet(
      {Key? key,
      required this.funct,
      required this.key1,
      required this.key2,
      required this.key3,
      required this.key4})
      : super(key: key);

  final Function funct;
  final GlobalKey key1;
  final GlobalKey key2;
  final GlobalKey key3;
  final GlobalKey key4;

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
              color: colFive,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [shadow1],
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    funct(key1);
                  },
                  child: navButton(
                    fontSize: 14,
                    tekst: 'O aplikacji',
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    funct(key2);
                  },
                  child: navButton(
                    fontSize: 14,
                    tekst: 'Dla żeglarzy',
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    funct(key3);
                  },
                  child: navButton(
                    fontSize: 14,
                    tekst: 'Dla portów',
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    funct(key4);
                  },
                  child: navButton(
                    fontSize: 14,
                    tekst: 'Kontakt',
                  ),
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
