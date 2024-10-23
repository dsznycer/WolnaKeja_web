import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wolnakeja/views/home/homeview.dart';
import 'package:wolnakeja/widgets/NavigationDrawer/button_drawer.dart';
import 'package:wolnakeja/widgets/logoWidget/logo_widget.dart';

class NavigDrawer extends StatelessWidget {
  const NavigDrawer({
    super.key,
    required this.scrollToItem,
    required this.buttonsData,
  });

  final void Function(GlobalKey key) scrollToItem;
  final List<ButtonData> buttonsData;

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
          for (final buttonData in buttonsData)
            ButtonDrawer(
              tekst: buttonData.buttonLabel,
              onTap: () {
                scrollToItem(buttonData.$1);
                Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }
}
