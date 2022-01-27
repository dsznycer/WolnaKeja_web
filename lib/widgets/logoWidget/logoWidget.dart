import 'package:flutter/material.dart';

class logoWidget extends StatelessWidget {
  const logoWidget(this.width);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Image.asset(
        'assets/images/logo.png',
      ),
    );
  }
}
