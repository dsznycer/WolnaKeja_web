import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logo_widget.dart';
import 'nav_button.dart';

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop(
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
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LogoWidget(170),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: colFive,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [shadow1],
            ),
            child: Row(
              children: [
                const SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    funct(key1);
                  },
                  child: const NavButton(
                    tekst: 'O aplikacji',
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 40),
                GestureDetector(
                  onTap: () =>
                    funct(key2)
                  ,
                  child: const NavButton(
                    tekst: 'Dla żeglarzy',
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    funct(key3);
                  },
                  child: const NavButton(
                    tekst: 'Dla portów',
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    funct(key4);
                  },
                  child: const NavButton(
                    tekst: 'Kontakt',
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
