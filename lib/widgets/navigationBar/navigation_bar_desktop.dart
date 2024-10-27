import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/views/home/homeview.dart';
import 'package:wolnakeja/widgets/logoWidget/logo_widget.dart';
import 'nav_button.dart';

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({
    super.key,
    required this.scrollToItem,
    required this.buttonsData,
  });

  final void Function(GlobalKey) scrollToItem;
  final List<ButtonData> buttonsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LogoWidget(170),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: colFive,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [shadow1],
            ),
            child: Row(
              children: [
                const SizedBox(width: 40),
                for (final buttonData in buttonsData) ...[
                  GestureDetector(
                    onTap: () => scrollToItem(buttonData.$1),
                    child: NavButton(
                      tekst: buttonData.buttonLabel,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 40),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
