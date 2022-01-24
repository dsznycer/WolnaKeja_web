import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class navigationbar extends StatelessWidget {
  const navigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: ColFirst,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12)),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image.asset(
            //   'assets/images/logo.png',
            // ),
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
