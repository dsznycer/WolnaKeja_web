import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget(this.width, {super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Image.asset(
        'assets/images/logo.png',
      ),
    );
  }
}
