import 'package:flutter/material.dart';
import 'package:wolnakeja/enums.dart';
import 'package:wolnakeja/router/router.dart';
import 'package:wolnakeja/widgets/prices/prices_dialog.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        children: [
          InkWell(
            onTap: context.goRegulations,
            child: Text(
              TermsType.appRegulations.title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(width: 25),
          InkWell(
            onTap: context.goPolicy,
            child: Text(
              TermsType.privacyPolicy.title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(width: 25),
          InkWell(
            onTap: () => showDialog<void>(
              context: context,
              builder: (_) => const PricesDialog(),
            ),
            child: const Text(
              'Cennik',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(width: 25),
          InkWell(
            onTap: context.goDeleteAccountInfo,
            child: const Text(
              'Informacje o usuwaniu konta',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
