import 'package:flutter/material.dart';
import 'package:wolnakeja/widgets/centeredview/centeredview.dart';
import 'package:wolnakeja/widgets/navigationbar/navigationbar.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            navigationbar(),
          ],
        ),
      ),
    );
  }
}
