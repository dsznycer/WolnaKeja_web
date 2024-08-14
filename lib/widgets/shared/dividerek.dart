import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';

class Dividerek extends StatelessWidget {
  const Dividerek({
    this.width = 50,
    this.height = 3,
    this.color = colThird,
    this.borderRadius = 20,
    super.key,
  });

  final Color color;
  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: colThird,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
