import 'package:flutter/material.dart';
import 'package:wolnakeja/enums.dart';
import 'package:wolnakeja/widgets/shared/wkw_dialog.dart';

class TermsAndConditionsDialog extends StatelessWidget {
  const TermsAndConditionsDialog.privacyPolicy({
    super.key,
  }) : termsType = TermsType.privacyPolicy;

  const TermsAndConditionsDialog.appRegulations({
    super.key,
  }) : termsType = TermsType.appRegulations;

  final TermsType termsType;

  @override
  Widget build(BuildContext context) {
    return WKWTextDialog(
      termsType.path,
      title: termsType.title,
    );
  }
}
