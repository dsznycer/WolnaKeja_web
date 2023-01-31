import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/home/sections/about_app/about_app.dart';
import 'package:wolnakeja/home/sections/events/events.dart';
import 'package:wolnakeja/home/sections/for_sailors/for_sailors.dart';
import 'package:wolnakeja/home/sections/product_value/product_value.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/mainSilder/mainslider.dart';
import 'package:wolnakeja/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:wolnakeja/widgets/portInfo/portInfo.dart';
import 'package:wolnakeja/home/sections/for_ports/for_ports.dart';

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
                key3: itemKeyC,
                key4: itemKeyD,
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
                      ForSailors(key: itemKeyB),
                      const SizedBox(height: 70),
                      const Events(),
                      const SizedBox(height: 70),
                      const ProductValue(),
                      const SizedBox(height: 100),
                      ForPorts(key: itemKeyD),
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
