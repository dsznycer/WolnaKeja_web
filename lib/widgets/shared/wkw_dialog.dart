import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class WKWTextDialog extends StatelessWidget {
  const WKWTextDialog(
    this.textPath, {
    required this.title,
    super.key,
  });

  final String title;
  final String textPath;

  Future<String> readFileAsString(String filePath) async {
    try {
      final fileContents = await rootBundle.loadString(filePath);
      return fileContents;
    } catch (err) {
      return err.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final textFuture = readFileAsString(textPath);

    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: FutureBuilder<String>(
                future: textFuture,
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
