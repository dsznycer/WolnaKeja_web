import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class navButton extends StatelessWidget {
  const navButton({required this.tekst});

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
