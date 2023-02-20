import 'package:flutter/material.dart';

class Dividerek extends StatelessWidget {
  const Dividerek({
    super.key,
    required this.height,
    required this.width,
    required this.color,
  });

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
