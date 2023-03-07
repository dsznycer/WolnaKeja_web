import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class textTile extends StatelessWidget {
  const textTile(this.tekst);

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: [
          shadow1,
        ],
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
