import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/NavigationDrawer/ButtonDrawer.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    ColFive,
                    Colors.white,
                  ]),
                  boxShadow: [shadow1]),
              child: logoWidget(160)),
          ButtonDrawer(tekst: 'O aplikacji'),
          ButtonDrawer(tekst: 'Dla żeglarzy'),
          ButtonDrawer(tekst: 'Dla portów'),
          ButtonDrawer(tekst: 'Kontakt')
        ],
      ),
    );
  }
}
