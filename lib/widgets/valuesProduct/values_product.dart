import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/valuesProduct/values_product_mobile.dart';

class ValuesProduct extends StatelessWidget {
  const ValuesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const ValuesProductMobile(),
      desktop: (_) => const ValuesProductMobile(),
    );
  }
}
