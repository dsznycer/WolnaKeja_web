import 'package:flutter/material.dart';
import 'package:spaced/spaced.dart';
import 'package:wolnakeja/home/homeview.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_shadows.dart';
import 'package:wolnakeja/widgets/logo/logo.dart';

const _navigationBarItemStrings = [
  'O aplikacji',
  'Dla zeglarzy',
  'Dla portów',
  'Kontakt',
];

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
    required this.padding,
    required this.logoSize,
    required this.spacing,
  });

  final EdgeInsets padding;
  final double logoSize;
  final double spacing;

  Future<void> scrollToItem(GlobalKey key) async {
    await Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Logo(width: 170),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.colFive,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [AppShadows.shadow1],
          ),
          child: SpacedRow(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < _navigationBarItemStrings.length; i++)
                _NavigationBarItem(
                  tekst: _navigationBarItemStrings[i],
                  onTap: () async => scrollToItem(navigationItemsKeys[i]),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    required this.tekst,
    required this.onTap,
  });

  final String tekst;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            tekst,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.colFirst,
            ),
          ),
          const Icon(Icons.keyboard_arrow_down_sharp),
        ],
      ),
    );
  }
}
