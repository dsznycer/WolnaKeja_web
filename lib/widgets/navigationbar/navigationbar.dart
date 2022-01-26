import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class navigationBar extends StatelessWidget {
  const navigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          logoWidget(),
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: ColFirst,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                SizedBox(width: 40),
                navbutton('O aplikacji'),
                SizedBox(width: 40),
                navbutton('Dla żeglarzy'),
                SizedBox(width: 40),
                navbutton('Dla portów'),
                SizedBox(width: 40),
                navbutton('Kontakt'),
                SizedBox(width: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

navbutton(String tekst) {
  return Row(
    children: [
      Text(
        tekst,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Icon(Icons.keyboard_arrow_down_sharp),
    ],
  );
}
