import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/portPanel/port_panel_mobile.dart';
import 'port_panel_desktop.dart';

class PortPanel extends StatelessWidget {
  const PortPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const PortPanelMobile(),
      desktop: const PortPanelDesktop(),
    );
  }
}
