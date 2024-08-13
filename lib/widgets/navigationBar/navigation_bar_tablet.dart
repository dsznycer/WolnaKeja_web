import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logo_widget.dart';
import 'nav_button.dart';

class NavigationBarTablet extends StatelessWidget {
  const NavigationBarTablet({
    super.key,
    required this.funct,
    required this.key1,
    required this.key2,
    required this.key3,
    required this.key4,
  });

  final void Function(GlobalKey) funct;
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
          const LogoWidget(130),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: colFive,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [shadow1],
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    funct(key1);
                  },
                  child: const NavButton(
                    fontSize: 14,
                    tekst: 'O aplikacji',
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    funct(key2);
                  },
                  child: const NavButton(
                    fontSize: 14,
                    tekst: 'Dla żeglarzy',
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    funct(key3);
                  },
                  child: const NavButton(
                    fontSize: 14,
                    tekst: 'Dla portów',
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    funct(key4);
                  },
                  child: const NavButton(
                    fontSize: 14,
                    tekst: 'Kontakt',
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
