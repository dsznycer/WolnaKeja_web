import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.width});

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
