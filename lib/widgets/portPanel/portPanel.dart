import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/portPanel/portPanel_mobile.dart';
import 'portPanel_desktop.dart';

class portPanel extends StatelessWidget {
  const portPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: portPanel_mobile(),
      desktop: portPanel_desktop(),
    );
  }
}
