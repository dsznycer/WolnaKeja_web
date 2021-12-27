import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navigationbar extends StatelessWidget {
  const navigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12)),
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
            Row(
              children: [
                navbutton('O aplikacji'),
                SizedBox(width: 20),
                navbutton('Dla żeglarzy'),
                SizedBox(width: 20),
                navbutton('Dla portów'),
                SizedBox(width: 20),
                navbutton('Kontakt'),
                SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

navbutton(String tekst) {
  return Container(
    child: Text(
      tekst,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  );
}
