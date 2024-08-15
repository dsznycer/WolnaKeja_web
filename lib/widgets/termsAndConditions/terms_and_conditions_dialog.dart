import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:wolnakeja/enums.dart';

class TermsAndConditionsDialog extends StatelessWidget {
  const TermsAndConditionsDialog.privacyPolicy({
    super.key,
  }) : termsType = TermsType.privacyPolicy;

  const TermsAndConditionsDialog.appRegulations({
    super.key,
  }) : termsType = TermsType.appRegulations;

  final TermsType termsType;

  Future<String> readFileAsString(String filePath) async {
    try {
      final fileContents = await rootBundle.loadString(filePath);
      return fileContents;
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final futureTerms = readFileAsString(termsType.path);

    return AlertDialog(
      title: Text(termsType.title),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: FutureBuilder<String>(
                future: futureTerms,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SelectableText(
                      snapshot.data!,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 12),
                    );
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
            TextButton.icon(
              onPressed: () => context.go('/home'),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Wróć'),
            ),
          ],
        ),
      ),
    );
  }
}
