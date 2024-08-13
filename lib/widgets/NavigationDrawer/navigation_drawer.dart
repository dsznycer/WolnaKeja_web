import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wolnakeja/widgets/NavigationDrawer/button_drawer.dart';
import 'package:wolnakeja/widgets/logoWidget/logo_widget.dart';

class NavigDrawer extends StatelessWidget {
  const NavigDrawer({
    super.key,
    required this.functOnGest,
    required this.key1,
    required this.key2,
    required this.key3,
    required this.key4,
  });

  final void Function(GlobalKey key) functOnGest;
  final GlobalKey key1;
  final GlobalKey key2;
  final GlobalKey key3;
  final GlobalKey key4;

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
                height: 220,
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      'https://firebasestorage.googleapis.com/v0/b/wolna-keja-web.appspot.com/o/assets%2FdrawerWave.webp?alt=media&token=5bf01435-ffd1-4466-a417-df1d3aab569a',
                  fit: BoxFit.cover,
                ),
              ),
              const LogoWidget(160),
            ],
          ),
          GestureDetector(
            onTap: () {
              functOnGest(key1);
              Navigator.pop(context);
            },
            child: const ButtonDrawer(tekst: 'O aplikacji'),
          ),
          GestureDetector(
            onTap: () {
              functOnGest(key2);
              Navigator.pop(context);
            },
            child: const ButtonDrawer(tekst: 'Dla żeglarzy'),
          ),
          GestureDetector(
            onTap: () {
              functOnGest(key3);
              Navigator.pop(context);
            },
            child: const ButtonDrawer(tekst: 'Dla portów'),
          ),
          GestureDetector(
            onTap: () {
              functOnGest(key4);
              Navigator.pop(context);
            },
            child: const ButtonDrawer(tekst: 'Kontakt'),
          ),
        ],
      ),
    );
  }
}
