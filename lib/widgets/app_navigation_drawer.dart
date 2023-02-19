import 'package:flutter/material.dart';
import 'package:wolnakeja/home/homeview.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';
import 'package:wolnakeja/widgets/logo/logo.dart';

const splashPath =
    'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2FdrawerWave.webp?alt=media&token=5bf01435-ffd1-4466-a417-df1d3aab569a';

class AppNavigationDrawer extends StatelessWidget {
  const AppNavigationDrawer({
    super.key,
  });

  Future<void> scrollToItem(GlobalKey key) async {
    await Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/drawerWave.webp',
                  fit: BoxFit.cover,
                ),
              ),
              const Logo(width: 160),
            ],
          ),
          _NavigationDrawerItem(
            tekst: 'O aplikacji',
            onTap: () async => scrollToItem(navigationItemsKeys[0]),
          ),
          _NavigationDrawerItem(
            tekst: 'Dla żeglarzy',
            onTap: () async => scrollToItem(navigationItemsKeys[1]),
          ),
          _NavigationDrawerItem(
            tekst: 'Dla portów',
            onTap: () async => scrollToItem(navigationItemsKeys[2]),
          ),
          _NavigationDrawerItem(
            tekst: 'Kontakt',
            onTap: () async => scrollToItem(navigationItemsKeys[3]),
          ),
        ],
      ),
    );
  }
}

class _NavigationDrawerItem extends StatelessWidget {
  const _NavigationDrawerItem({
    super.key,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              tekst,
              style: AppTextStyles.h3,
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            size: 18,
          ),
        ],
      ),
    );
  }
}
