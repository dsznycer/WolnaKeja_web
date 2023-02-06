import 'package:flutter/material.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

const splashPath =
    'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2FdrawerWave.webp?alt=media&token=5bf01435-ffd1-4466-a417-df1d3aab569a';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key? key,
    required this.onItemTap,
    required this.navigationItemsKeys,
  }) : super(key: key);

  final Future<void> Function(GlobalKey<State<StatefulWidget>>) onItemTap;

  final List<GlobalKey> navigationItemsKeys;

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
                child: const Image(
                  image: NetworkImage(splashPath),
                  fit: BoxFit.cover,
                ),
              ),
              const logoWidget(160),
            ],
          ),
          _NavigationDrawerItem(
            tekst: 'O aplikacji',
            onTap: () async => onItemTap(navigationItemsKeys[0]),
          ),
          _NavigationDrawerItem(
            tekst: 'Dla żeglarzy',
            onTap: () async => onItemTap(navigationItemsKeys[1]),
          ),
          _NavigationDrawerItem(
            tekst: 'Dla portów',
            onTap: () async => onItemTap(navigationItemsKeys[2]),
          ),
          _NavigationDrawerItem(
            tekst: 'Kontakt',
            onTap: () async => onItemTap(navigationItemsKeys[3]),
          ),
        ],
      ),
    );
  }
}

class _NavigationDrawerItem extends StatelessWidget {
  const _NavigationDrawerItem({
    Key? key,
    required this.tekst,
    required this.onTap,
  }) : super(key: key);

  final String tekst;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      // () {
      //   onTap();
      //   Navigator.pop(context);
      // },
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            tekst,
            style: AppTextStyles.H3,
          ),
        ),
        const Icon(
          Icons.keyboard_arrow_down_sharp,
          size: 18,
        ),
      ]),
    );
  }
}
