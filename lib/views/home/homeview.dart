import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/views/home/sections/Events/events.dart';
import 'package:wolnakeja/views/home/sections/about_app/about_app.dart';
import 'package:wolnakeja/views/home/sections/how_it_works/how_it_works.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/mainSilder/mainslider.dart';
import 'package:wolnakeja/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:wolnakeja/widgets/portInfo/portInfo.dart';
import 'package:wolnakeja/widgets/portPanel/portPanel.dart';
import 'package:wolnakeja/widgets/valuesProduct/valuesProduct.dart';

class Homeview extends StatelessWidget {
  Homeview({Key? key}) : super(key: key);

  final itemKeyA = GlobalKey();
  final itemKeyB = GlobalKey();
  final itemKeyC = GlobalKey();
  final itemKeyD = GlobalKey();
  final itemKeyE = GlobalKey();

  Future scrollToItem(GlobalKey key) async {
    final context = key.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.white,
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
                  color: AppColors.ColFirst,
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
              Container(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1400),
                  child: Column(
                    children: [
                      AboutApp(key: itemKeyA),
                      const SizedBox(height: 40),
                      HowItWorks(key: itemKeyB),
                      const SizedBox(height: 70),
                      Events(key: itemKeyC),
                      const SizedBox(height: 70),
                      valuesProduct(),
                      const SizedBox(height: 100),
                      portPanel(key: itemKeyD),
                      const SizedBox(height: 80),
                      portInfo(),
                      const SizedBox(height: 80),
                    ],
                  ),
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
