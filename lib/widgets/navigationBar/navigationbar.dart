import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/views/home/homeview.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class navigationBar extends StatelessWidget {
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
              // border: Border(
              //   bottom: BorderSide(
              //       color: ColFirst, width: 0.1, style: BorderStyle.solid),
              // ),
              borderRadius: BorderRadius.circular(12),
              // boxShadow: [shadow1]),
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

class navButton extends StatelessWidget {
  const navButton({required this.tekst});

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => scrollToItem(),
      child: Row(
        children: [
          Text(
            tekst,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColFirst,
            ),
          ),
          Icon(Icons.keyboard_arrow_down_sharp),
        ],
      ),
    );
  }
}
