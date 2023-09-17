import 'package:flutter/material.dart';
import 'package:wolnakeja/enums.dart';

class TermsAndConditionsDialog extends StatelessWidget {
  const TermsAndConditionsDialog({
    required this.termsType,
    Key? key,
  }) : super(key: key);

  final TermsType termsType;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                //TODO: delete future builder and use bloc
                child: FutureBuilder<String>(
                    future: futureString,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
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
