import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'usprow_desktop.dart';
import 'usprow_mobile.dart';

class UspRow extends StatelessWidget {
  const UspRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const UspRowMobile(),
      desktop: (_) => const UspRowDesktop(),
    );
  }
}
