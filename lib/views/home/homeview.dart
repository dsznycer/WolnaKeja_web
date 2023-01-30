import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/NavigationDrawer/NavigationDrawer.dart';
import 'package:wolnakeja/widgets/aboutwk/aboutwk.dart';
import 'package:wolnakeja/widgets/centeredview/centeredview.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/mainSilder/mainslider.dart';
import 'package:wolnakeja/widgets/partyEvent/partyEvent.dart';
import 'package:wolnakeja/widgets/portInfo/portInfo.dart';
import 'package:wolnakeja/widgets/portPanel/portPanel.dart';
import 'package:wolnakeja/widgets/uspRow/usprow.dart';
import 'package:wolnakeja/widgets/valuesProduct/valuesProduct.dart';
import 'package:wolnakeja/style.dart';

class Homeview extends StatelessWidget {
  Homeview({Key? key}) : super(key: key);

  final itemKeyA = GlobalKey();
  final itemKeyB = GlobalKey();
  final itemKeyC = GlobalKey();
  final itemKeyD = GlobalKey();
  final itemKeyE = GlobalKey();

  Future scrollToItem(GlobalKey key) async {
    final context = key.currentContext!;
    await Scrollable.ensureVisible(context,
        duration: const Duration(milliseconds: 600));
  }

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
                  color: ColFirst,
                  size: 35,
                ),
              )
            : null,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer(
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
              SizedBox(height: 40),
              CenteredView(
                child: Column(
                  children: [
                    aboutwk(key: itemKeyA),
                    SizedBox(height: 40),
                    usprow(key: itemKeyB),
                    SizedBox(height: 70),
                    partyEvent(key: itemKeyC),
                    SizedBox(height: 70),
                    valuesProduct(),
                    SizedBox(height: 100),
                    portPanel(key: itemKeyD),
                    SizedBox(height: 80),
                    portInfo(),
                    SizedBox(height: 80),
                  ],
                ),
              ),
              footer(key: itemKeyE),
            ],
          ),
        ),
      ),
    );
  }
}
