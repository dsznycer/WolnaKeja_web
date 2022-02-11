import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/NavigationDrawer/NavigationDrawer.dart';
import 'package:wolnakeja/widgets/aboutwk/aboutwk.dart';
import 'package:wolnakeja/widgets/centeredview/centeredview.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/mainSilder/mainslider.dart';
import 'package:wolnakeja/widgets/navigationBar/navigationAppBar.dart';
import 'package:wolnakeja/widgets/navigationBar/navigation_bar_mobile.dart';
import 'package:wolnakeja/widgets/partyEvent/partyEvent.dart';
import 'package:wolnakeja/widgets/portPanel/portPanel.dart';
import 'package:wolnakeja/widgets/uspRow/usprow.dart';
import 'package:wolnakeja/widgets/valuesProduct/valuesProduct.dart';
import 'package:wolnakeja/style.dart';

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
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? AppBar(
                backgroundColor: Colors.white,
                toolbarHeight: 80,
                title: Image.asset(
                  'assets/images/NavigationBarMobile/logoMobile.png',
                  height: 65,
                ),
                centerTitle: true,
                iconTheme: IconThemeData(
                  color: ColFirst,
                  size: 35,
                ),
              )
            : null,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainSlider(),
              SizedBox(height: 40),
              CenteredView(
                child: Column(
                  children: [
                    Container(key: itemKeyA, child: aboutwk()),
                    SizedBox(height: 40),
                    usprow(),
                    SizedBox(height: 70),
                    partyEvent(),
                    SizedBox(height: 70),
                    valuesProduct(),
                    SizedBox(height: 100),
                    portPanel(),
                    SizedBox(height: 80),
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
