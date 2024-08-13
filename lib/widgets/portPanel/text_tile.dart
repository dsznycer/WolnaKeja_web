import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class TextTile extends StatelessWidget {
  const TextTile(this.tekst, {super.key});

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: const [shadow1],
        borderRadius: BorderRadius.circular(12),
        color: colSix,
      ),
      child: Text(
        tekst,
        style: description,
        textAlign: TextAlign.justify,
        maxLines: 3,
      ),
    );
  }
}
