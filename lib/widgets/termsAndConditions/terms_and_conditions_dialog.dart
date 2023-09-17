import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wolnakeja/enums.dart';

class TermsAndConditionsDialog extends StatelessWidget {
  const TermsAndConditionsDialog({
    required this.termsType,
    Key? key,
  }) : super(key: key);

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
      actions: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                //TODO: delete future builder and use bloc
                child: FutureBuilder<String>(
                    future: futureTerms,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return SelectableText(
                          snapshot.data!,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(fontSize: 10),
                        );
                      }
                      return const CircularProgressIndicator();
                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
