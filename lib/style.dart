import 'package:flutter/material.dart';

//***Colors***//

const Color ColFirst = Color(0xFF003459);
const Color ColSecond = Color(0xFFFAFAFF);
const Color ColThird = Color(0xFF849CB7);
const Color ColFour = Color(0xFFDDA01E);

const Color Bgrd = Color(0xFFE5E5E5);

//****TextStyle****//

const H2drk = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w800,
  color: ColFirst,
);
const TextStyle H3wht = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

const TextStyle H2 = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w800,
  color: Color(0xFF565656),
);
const TextStyle H3 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Color(0xFF565656),
);

const TextStyle description = TextStyle(
  fontSize: 17,
  color: Color(0xFF565656),
  overflow: TextOverflow.clip,
);

//****Shadows****//

const BoxShadow shadow1 = BoxShadow(
    color: Color(0x30A2ACBD),
    blurRadius: 6,
    spreadRadius: 3,
    offset: Offset(2.0, 2.0));
