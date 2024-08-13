import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class ButtonMain extends StatelessWidget {
  const ButtonMain(this.tekst, {super.key});

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colFive,
          border: Border.all(
            color: colFive,
            width: 0.8,
          ),
          boxShadow: const [shadow1],),
      child: Align(
       
        child: Text(
          tekst,
          style: H3,
        ),
      ),
    );
  }
}
