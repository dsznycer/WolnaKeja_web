import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class buttonMain extends StatelessWidget {
  const buttonMain(this.tekst);

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColFive,
          border: Border.all(
            color: ColFive,
            width: 0.8,
          ),
          boxShadow: [shadow1]),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          tekst,
          style: H3,
        ),
      ),
    );
  }
}
