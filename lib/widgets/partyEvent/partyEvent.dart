import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/partyEvent/partyEvent_desktop.dart';
import 'package:wolnakeja/widgets/partyEvent/partyEvent_mobile.dart';
import 'package:wolnakeja/widgets/uspRow/usprow_desktop.dart';
import 'package:wolnakeja/widgets/uspRow/usprow_mobile.dart';

class partyEvent extends StatelessWidget {
  const partyEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PartyEvent_mobile(),
      desktop: partyEvent_desktop(),
    );
  }
}
