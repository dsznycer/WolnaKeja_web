import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/portInfo/port_info_mobile.dart';
import 'port_info_desktop.dart';

class PortInfo extends StatelessWidget {
  const PortInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const PortInfoMobile(),
      desktop: const PortInfoDesktop(),
    );
  }
}
