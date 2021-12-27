import 'package:flutter/material.dart';

class footer extends StatefulWidget {
  const footer({Key? key}) : super(key: key);

  @override
  _footerState createState() => _footerState();
}

class _footerState extends State<footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(),
          Row(),
        ],
      ),
    );
  }
}
