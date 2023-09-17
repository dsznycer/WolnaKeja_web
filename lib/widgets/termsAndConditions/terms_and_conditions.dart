import 'package:flutter/material.dart';
import 'package:wolnakeja/enums.dart';
import 'package:wolnakeja/widgets/termsAndConditions/terms_and_conditions_dialog.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  void _showDialog(TermsType termsType, BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) => TermsAndConditionsDialog(termsType: termsType));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => _showDialog(TermsType.privacyPolicy, context),
          child: Text(TermsType.privacyPolicy.title),
        ),
        InkWell(
            onTap: () => _showDialog(TermsType.privacyPolicy, context),
            child: Text(TermsType.appRegulations.title)),
      ],
    );
  }
}
