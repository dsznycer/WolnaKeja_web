import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:spaced/spaced.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_shadows.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';

part 'for_ports_desktop.dart';
part 'for_ports_mobile.dart';
part 'widgets/widgets.dart';

class ForPorts extends StatelessWidget {
  const ForPorts({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const _ForPortsMobile(),
      desktop: const _ForPortsDesktop(),
    );
  }
}
