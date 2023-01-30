import 'package:flutter/material.dart';

class AppShadows {
  static const BoxShadow shadow1 = BoxShadow(
    color: Colors.black12,
    blurRadius: 5,
    spreadRadius: 3,
    offset: Offset(2.0, 2.0),
  );
}

//TODO Factor out whole decorations rather than shadows alone
