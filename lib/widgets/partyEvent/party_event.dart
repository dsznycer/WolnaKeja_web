import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/partyEvent/party_event_mobile.dart';
import 'package:wolnakeja/widgets/partyEvent/party_event_desktop.dart';


class PartyEvent extends StatelessWidget {
  const PartyEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const PartyEventMobile(),
      desktop: const PartyEventDesktop(),
    );
  }
}
