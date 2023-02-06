import 'package:flutter/material.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_shadows.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    Key? key,
    required this.padding,
    required this.logoSize,
    required this.spacing,
    required this.onItemTap,
    required this.navigationItemsKeys,
  }) : super(key: key);

  final Future<void> Function(GlobalKey<State<StatefulWidget>>) onItemTap;

  final List<GlobalKey> navigationItemsKeys;

  final EdgeInsets
      padding; //const EdgeInsets.symmetric(vertical: 20, horizontal: 20) / const EdgeInsets.symmetric(vertical: 10, horizontal: 10)
  final double logoSize; // 170/130
  final double spacing; // 40/20

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const logoWidget(170),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: AppColors.ColFive,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [AppShadows.shadow1],
            ),
            child: Row(
              children: [
                const SizedBox(width: 40),
                _NavigationBarItem(
                  tekst: 'O aplikacji',
                  onTap: () async => onItemTap(navigationItemsKeys[0]),
                  fontSize: 18,
                ),
                const SizedBox(width: 40),
                _NavigationBarItem(
                  tekst: 'Dla zeglarzy',
                  onTap: () async => onItemTap(navigationItemsKeys[1]),
                  fontSize: 18,
                ),
                const SizedBox(width: 40),
                _NavigationBarItem(
                  tekst: 'Dla portów',
                  onTap: () async => onItemTap(navigationItemsKeys[2]),
                  fontSize: 18,
                ),
                const SizedBox(width: 40),
                _NavigationBarItem(
                  tekst: 'Kontakt',
                  onTap: () => () async => onItemTap(navigationItemsKeys[3]),
                  fontSize: 18,
                ),
                const SizedBox(width: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    required this.tekst,
    required this.fontSize,
    required this.onTap,
  });

  final String tekst;
  final int fontSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            tekst,
            style: TextStyle(
              fontSize: fontSize.toDouble(),
              fontWeight: FontWeight.bold,
              color: AppColors.ColFirst,
            ),
          ),
          const Icon(Icons.keyboard_arrow_down_sharp),
        ],
      ),
    );
  }
}
