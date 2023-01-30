import 'package:flutter/material.dart';
import 'package:wolnakeja/styles/app_colors.dart';

class navButton extends StatelessWidget {
  const navButton({required this.tekst, required this.fontSize});

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
            color: AppColors.ColFirst,
          ),
        ),
        const Icon(Icons.keyboard_arrow_down_sharp),
      ],
    );
  }
}
