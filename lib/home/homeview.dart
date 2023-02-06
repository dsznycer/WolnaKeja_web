import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/home/sections/about_app/about_app.dart';
import 'package:wolnakeja/home/sections/events/events.dart';
import 'package:wolnakeja/home/sections/for_port_subsection/for_port_subsection.dart';
import 'package:wolnakeja/home/sections/for_ports/for_ports.dart';
import 'package:wolnakeja/home/sections/for_sailors/for_sailors.dart';
import 'package:wolnakeja/home/sections/product_value/product_value.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/main_navigation_bar/main_navigation_bar.dart';
import 'package:wolnakeja/widgets/navigation_drawer.dart';

class Homeview extends StatelessWidget {
  Homeview({Key? key}) : super(key: key);

  final navigationItemsKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  Future<void> scrollToItem(GlobalKey key) async {
    await Scrollable.ensureVisible(
      key.currentContext!,
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
                onItemTap: scrollToItem,
                navigationItemsKeys: navigationItemsKeys,
              )
            : null,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainNavigationBar(
                onItemTap: scrollToItem,
                navigationItemsKeys: navigationItemsKeys,
              ),
              const SizedBox(height: 40),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1400),
                child: Column(
                  children: [
                    AboutApp(key: navigationItemsKeys[0]),
                    const SizedBox(height: 40),
                    ForSailors(key: navigationItemsKeys[1]),
                    const SizedBox(height: 70),
                    const Events(),
                    const SizedBox(height: 70),
                    const ProductValue(),
                    const SizedBox(height: 100),
                    ForPorts(key: navigationItemsKeys[2]),
                    const SizedBox(height: 80),
                    const ForPortSubsection(),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
              footer(key: navigationItemsKeys[3]),
            ],
          ),
        ),
      ),
    );
  }
}
