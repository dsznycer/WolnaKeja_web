import 'package:flutter/material.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_shadows.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';

class buttonMain extends StatelessWidget {
  const buttonMain(this.tekst);

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.ColFive,
          border: Border.all(
            color: AppColors.ColFive,
            width: 0.8,
          ),
          boxShadow: [AppShadows.shadow1]),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          tekst,
          style: AppTextStyles.H3,
        ),
      ),
    );
  }
}
