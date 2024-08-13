import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class NavButton extends StatelessWidget {
  const NavButton({super.key, required this.tekst, required this.fontSize});

  final String tekst;
  final int fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          tekst,
          style: TextStyle(
            fontSize: fontSize.toDouble(),
            fontWeight: FontWeight.bold,
            color: colFirst,
          ),
        ),
        const Icon(Icons.keyboard_arrow_down_sharp),
      ],
    );
  }
}
