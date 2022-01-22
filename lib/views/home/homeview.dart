import 'package:flutter/material.dart';
import 'package:wolnakeja/widgets/centeredview/centeredview.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/mainSilder/mainSlider.dart';
import 'package:wolnakeja/widgets/mainSilder/mainslider_row.dart';
import 'package:wolnakeja/widgets/navigationbar/navigationbar.dart';
import 'package:wolnakeja/widgets/usprow/usprow.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: ListView(
          children: [
            mainSlider2(),
            SizedBox(height: 20),
            UspRow(),
            SizedBox(height: 120),
            footer(),
          ],
        ),
      ),
    );
  }
}
