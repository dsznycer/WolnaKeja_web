import 'package:flutter/material.dart';

class navigationbar extends StatelessWidget {
  const navigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
      child: Container(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 140,
              width: 140,
              child: Image.asset('assets/images/logo.png'),
            ),
            Row(
              children: [
                Text('Jak działa aplikacja?'),
                Text('Zespół'),
                Text('Kontakt'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
