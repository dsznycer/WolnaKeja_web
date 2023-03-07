import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'usprow_desktop.dart';
import 'usprow_mobile.dart';

class usprow extends StatelessWidget {
  const usprow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: UspRow_mobile(),
      desktop: UspRow_desktop(),
    );
  }
}
