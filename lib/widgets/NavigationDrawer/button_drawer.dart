import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class ButtonDrawer extends StatelessWidget {
  const ButtonDrawer({super.key, required this.tekst});

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            tekst,
            style: H3,
          ),
        ),
        const Icon(
          Icons.keyboard_arrow_down_sharp,
          size: 18,
        ),
      ],
    );
  }
}
