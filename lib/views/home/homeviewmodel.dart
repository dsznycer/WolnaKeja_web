import 'package:flutter/material.dart';
import 'homeview.dart';

class scroll {
  final itemKeyA = GlobalKey();
  final itemKeyB = GlobalKey();

  Future scrollToItem() async {
    final context = itemKeyA.currentContext!;

    await Scrollable.ensureVisible(context);
  }
}
