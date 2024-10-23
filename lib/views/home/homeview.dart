import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/style.dart';
import 'package:wolnakeja/widgets/NavigationDrawer/navigation_drawer.dart';
import 'package:wolnakeja/widgets/aboutwk/about_wk.dart';
import 'package:wolnakeja/widgets/centeredview/centeredview.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/mainSilder/mainslider.dart';
import 'package:wolnakeja/widgets/partyEvent/party_event.dart';
import 'package:wolnakeja/widgets/portInfo/port_info.dart';
import 'package:wolnakeja/widgets/portPanel/port_panel.dart';
import 'package:wolnakeja/widgets/uspRow/usp_row.dart';
import 'package:wolnakeja/widgets/valuesProduct/values_product.dart';

typedef SectionData = (GlobalKey key, {String? buttonLabel});
typedef ButtonData = (GlobalKey key, {String buttonLabel});

extension on SectionData {
  ButtonData toButtonData() => ($1, buttonLabel: buttonLabel!);
}

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  static final _aboutWK = (GlobalKey(), buttonLabel: 'O aplikacji');
  static final _uspRow = (GlobalKey(), buttonLabel: 'Dla żeglarzy');
  static final _partyEvent = (GlobalKey(), buttonLabel: null);
  static final _portPanel = (GlobalKey(), buttonLabel: 'Dla portów');
  static final _footer = (GlobalKey(), buttonLabel: 'Kontakt');

  static final _buttonsData = [
    _aboutWK.toButtonData(),
    _uspRow.toButtonData(),
    _portPanel.toButtonData(),
    _footer.toButtonData(),
  ];

  void scrollToItem(GlobalKey key) => Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 600),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, sizingInformation) {
        final mobile =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile;

        return Scaffold(
          appBar: mobile
              ? AppBar(
                  backgroundColor: Colors.white,
                  toolbarHeight: 80,
                  title: Image.asset(
                    'assets/images/NavigationBarMobile/logoMobile.png',
                    height: 60,
                  ),
                  centerTitle: true,
                  iconTheme: const IconThemeData(
                    color: colFirst,
                    size: 35,
                  ),
                )
              : null,
          drawer: mobile
              ? NavigDrawer(
                  scrollToItem: scrollToItem,
                  buttonsData: _buttonsData,
                )
              : null,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainSlider(
                  scrollToItem: scrollToItem,
                  buttonsData: _buttonsData,
                ),
                const SizedBox(height: 40),
                CenteredView(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: Column(
                      children: [
                        AboutWK(key: _aboutWK.$1),
                        const SizedBox(height: 40),
                        UspRow(key: _uspRow.$1),
                        const SizedBox(height: 70),
                        PartyEvent(key: _partyEvent.$1),
                        const SizedBox(height: 70),
                        const ValuesProduct(),
                        const SizedBox(height: 100),
                        PortPanel(key: _portPanel.$1),
                        const SizedBox(height: 80),
                        const PortInfo(),
                      ],
                    ),
                  ),
                ),
                Footer(key: _footer.$1),
              ],
            ),
          ),
        );
      },
    );
  }
}
