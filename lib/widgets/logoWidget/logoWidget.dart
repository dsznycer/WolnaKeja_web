import 'package:flutter/material.dart';

class logoWidget extends StatelessWidget {
  const logoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Image.asset(
        'assets/images/logo.png',
      ),
    );
  }
}
