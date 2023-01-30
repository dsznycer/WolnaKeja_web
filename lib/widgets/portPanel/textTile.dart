import 'package:flutter/material.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_shadows.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';

class textTile extends StatelessWidget {
  const textTile(this.tekst);

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: const [
          AppShadows.shadow1,
        ],
        borderRadius: BorderRadius.circular(12),
        color: AppColors.ColSix,
      ),
      child: Text(
        tekst,
        style: AppTextStyles.descriptionStyle,
        textAlign: TextAlign.justify,
        maxLines: 3,
      ),
    );
  }
}
