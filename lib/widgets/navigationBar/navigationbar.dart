import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/views/home/homeview.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class navigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          logoWidget(150),
          Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: ColThird,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [shadow1]),
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

class navButton extends StatelessWidget {
  const navButton({
    required this.tekst,
  });

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => scrollToItem(),
      child: Row(
        children: [
          Text(
            tekst,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.keyboard_arrow_down_sharp),
        ],
      ),
    );
  }
}
