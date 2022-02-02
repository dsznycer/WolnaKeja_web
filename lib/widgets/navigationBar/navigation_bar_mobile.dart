import 'package:flutter/material.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class navigationBarMobile extends StatelessWidget {
  const navigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        logoWidget(70),
        Icon(
          Icons.menu,
          size: 30,
        )
      ],
    );
  }
}
