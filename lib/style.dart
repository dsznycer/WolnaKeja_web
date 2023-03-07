import 'package:flutter/material.dart';

//***Colors***//

const Color colFirst = Color(0xFF003459);
const Color colSecond = Color(0xFFA9C9F8);
const Color colThird = Color(0xFF849CB7);
const Color colFour = Color(0xFFDDA01E);
const Color colFive = Color(0xFFF1F1E6);
const Color colSix = Color(0xFFFAFAFF);

const Color bgrd = Color(0xFFE5E5E5);

//****TextStyle/Desktop****//

const H2drk = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w800,
  color: colFirst,
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

//****TextStyle/Mobile****//

const TextStyle H2M = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w900,
  color: Color(0xFF003459),
);

const TextStyle H3M = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w700,
  color: Color(0xFF565656),
);

const TextStyle descriptionM = TextStyle(
  fontSize: 15,
  color: Color(0xFF565656),
);

//****TextStyle/Tablet****//

const TextStyle H2Tab = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.w900,
  color: Color(0xFF003459),
);

const TextStyle H3Tab = TextStyle(
  fontSize: 19,
  fontWeight: FontWeight.w700,
  color: Color(0xFF565656),
);

const TextStyle descriptionTab = TextStyle(
  fontSize: 15,
  color: Color(0xFF565656),
);

//****Shadows****//

const BoxShadow shadow1 = BoxShadow(
  color: Colors.black12,
  blurRadius: 5,
  spreadRadius: 3,
  offset: Offset(2.0, 2.0),
);
