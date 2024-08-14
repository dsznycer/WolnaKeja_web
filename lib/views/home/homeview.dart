import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

class Homeview extends StatelessWidget {
  Homeview({
    required this.show,
    super.key,
  });

  final bool show;

  final itemKeyA = GlobalKey();
  final itemKeyB = GlobalKey();
  final itemKeyC = GlobalKey();
  final itemKeyD = GlobalKey();
  final itemKeyE = GlobalKey();

  void scrollToItem(GlobalKey key) => Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 600),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.mobile
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
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigDrawer(
                functOnGest: scrollToItem,
                key1: itemKeyA,
                key2: itemKeyB,
                key3: itemKeyD,
                key4: itemKeyE,
              )
            : null,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainSlider(
                functB1: scrollToItem,
                keyB1: itemKeyA,
                keyB2: itemKeyB,
                keyB3: itemKeyD,
                keyB4: itemKeyE,
              ),
              const SizedBox(height: 40),
              CenteredView(
                child: Column(
                  children: [
                    AboutWK(key: itemKeyA),
                    const SizedBox(height: 40),
                    UspRow(key: itemKeyB),
                    const SizedBox(height: 70),
                    PartyEvent(key: itemKeyC),
                    const SizedBox(height: 70),
                    const ValuesProduct(),
                    const SizedBox(height: 100),
                    PortPanel(key: itemKeyD),
                    const SizedBox(height: 80),
                    const PortInfo(),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
              Footer(
                key: itemKeyE,
                showOnLoad: show,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
