import 'package:flutter/material.dart';
import 'package:wolnakeja/styles/app_colors.dart';

class AppTextStyles {
//****TextStyle/Desktop****//

  static const H2drk = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: AppColors.ColFirst,
  );

  static const TextStyle H3wht = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle H2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: Color(0xFF565656),
  );
  static const TextStyle H3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xFF565656),
  );

  static const TextStyle descriptionStyle = TextStyle(
    fontSize: 17,
    color: Color(0xFF565656),
    overflow: TextOverflow.clip,
  );

//****TextStyle/Mobile****//

  static const TextStyle H2M = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: Color(0xFF003459),
  );

  static const TextStyle H3M = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: Color(0xFF565656),
  );

  static const TextStyle descriptionM = TextStyle(
    fontSize: 15,
    color: Color(0xFF565656),
  );

//****TextStyle/Tablet****//

  static const TextStyle H2Tab = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w900,
    color: Color(0xFF003459),
  );

  static const TextStyle H3Tab = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Color(0xFF565656),
  );

  static const TextStyle descriptionTab = TextStyle(
    fontSize: 15,
    color: Color(0xFF565656),
  );
}
