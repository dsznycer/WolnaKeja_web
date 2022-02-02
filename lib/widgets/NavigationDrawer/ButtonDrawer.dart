import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class ButtonDrawer extends StatelessWidget {
  const ButtonDrawer({required this.tekst, this.functional});

  final Function? functional;
  final String tekst;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        functional;
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            tekst,
            style: H3,
          ),
        ),
        Icon(
          Icons.keyboard_arrow_down_sharp,
          size: 18,
        ),
      ]),
    );
  }
}
