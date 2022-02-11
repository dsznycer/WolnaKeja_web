import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/NavigationDrawer/NavigationDrawer.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class navigationBarMobile extends StatelessWidget {
  const navigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/NavigationBarMobile/logoMobile.png',
            width: 200,
          ),
          IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(
              Icons.menu,
            ),
            color: ColFirst,
          )
        ],
      ),
    );
  }
}
