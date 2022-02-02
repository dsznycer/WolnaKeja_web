import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:wolnakeja/widgets/NavigationDrawer/NavigationDrawer.dart';

import 'package:wolnakeja/widgets/aboutwk/aboutwk.dart';
import 'package:wolnakeja/widgets/centeredview/centeredview.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/mainSilder/main_slider_desktop.dart';
import 'package:wolnakeja/widgets/partyEvent/partyEvent.dart';
import 'package:wolnakeja/widgets/portPanel/portPanel.dart';
import 'package:wolnakeja/widgets/usprow/usprow.dart';
import 'package:wolnakeja/widgets/valuesProduct/valuesProduct.dart';

final itemKeyA = GlobalKey();
final itemKeyB = GlobalKey();

Future scrollToItem() async {
  final context = itemKeyA.currentContext!;

  await Scrollable.ensureVisible(context);
}

class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainSliderDesktop(),
              SizedBox(height: 40),
              CenteredView(
                child: Column(
                  children: [
                    Container(key: itemKeyA, child: aboutwk()),
                    SizedBox(height: 40),
                    UspRow(),
                    SizedBox(height: 70),
                    partyEvent(),
                    SizedBox(height: 70),
                    valuesProduct(),
                    SizedBox(height: 100),
                    portPanel(),
                    SizedBox(height: 120),
                  ],
                ),
              ),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
