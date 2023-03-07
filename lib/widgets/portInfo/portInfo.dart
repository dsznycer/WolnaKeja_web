import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/portInfo/portInfo_mobile.dart';
import 'portInfo_desktop.dart';

class portInfo extends StatelessWidget {
  const portInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: portInfo_mobile(),
      desktop: portInfo_desktop(),
    );
  }
}
