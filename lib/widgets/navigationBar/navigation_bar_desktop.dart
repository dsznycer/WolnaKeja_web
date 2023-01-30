import 'package:flutter/material.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_shadows.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';
import 'navButton.dart';

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
          const logoWidget(170),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: AppColors.ColFive,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [AppShadows.shadow1],
            ),
            child: Row(
              children: [
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    funct(key1);
                  },
                  child: navButton(
                    tekst: 'O aplikacji',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    funct(key2);
                  },
                  child: navButton(
                    tekst: 'Dla żeglarzy',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    funct(key3);
                  },
                  child: navButton(
                    tekst: 'Dla portów',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    funct(key4);
                  },
                  child: navButton(
                    tekst: 'Kontakt',
                    fontSize: 18,
                  ),
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
