import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/widgets/partyEvent/party_event_desktop.dart';
import 'package:wolnakeja/widgets/partyEvent/party_event_mobile.dart';

class PartyEvent extends StatelessWidget {
  const PartyEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const PartyEventMobile(),
      desktop: const PartyEventDesktop(),
    );
  }
}
