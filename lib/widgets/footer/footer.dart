import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class footer extends StatelessWidget {
  const footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColThird.withOpacity(0.3),
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Row(
          children: [
            SizedBox(
              width: 150,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
