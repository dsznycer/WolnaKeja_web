import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class navigationAppBar extends StatelessWidget {
  const navigationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
            icon: Image.asset('assets/images/NavigationBarMobile/menu.png',
                width: 80),
          )
        ],
      ),
    );
  }
}
