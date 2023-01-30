import 'package:flutter/material.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/logoWidget/logoWidget.dart';

const splashPath =
    'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2FdrawerWave.webp?alt=media&token=5bf01435-ffd1-4466-a417-df1d3aab569a';

class NavigationDrawer extends StatelessWidget {
  final Function functOnGest;
  final GlobalKey key1;
  final GlobalKey key2;
  final GlobalKey key3;
  final GlobalKey key4;

  const NavigationDrawer(
      {Key? key,
      required this.functOnGest,
      required this.key1,
      required this.key2,
      required this.key3,
      required this.key4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
            onTap: () => functOnGest(key1),
          ),
          _NavigationDrawerItem(
            tekst: 'Dla żeglarzy',
            onTap: () => functOnGest(key2),
          ),
          _NavigationDrawerItem(
            tekst: 'Dla portów',
            onTap: () => functOnGest(key3),
          ),
          _NavigationDrawerItem(
            tekst: 'Kontakt',
            onTap: () => functOnGest(key4),
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
      onTap: () {
        onTap();
        Navigator.pop(context);
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            tekst,
            style: H3,
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
