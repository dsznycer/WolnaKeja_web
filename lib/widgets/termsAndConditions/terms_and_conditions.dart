import 'package:flutter/material.dart';
import 'package:wolnakeja/enums.dart';
import 'package:wolnakeja/widgets/prices/prices_dialog.dart';
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
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        children: [
          InkWell(
              onTap: () => _showDialog(TermsType.appRegulations, context),
              child: Text(
                TermsType.appRegulations.title,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
          const SizedBox(width: 25),
          InkWell(
            onTap: () => _showDialog(TermsType.privacyPolicy, context),
            child: Text(
              TermsType.privacyPolicy.title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(width: 25),
          InkWell(
            onTap: () => showDialog(
                context: context, builder: (_) => const PricesDialog()),
            child: const Text(
              'Cennik',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
