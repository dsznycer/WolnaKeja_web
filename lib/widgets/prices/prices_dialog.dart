import 'package:flutter/material.dart';

class PricesDialog extends StatelessWidget {
  const PricesDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Cennik usług'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: _PricesTable(),
            ),
            TextButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Wróć'))
          ],
        ),
      ),
    );
  }
}

class _PricesTable extends StatelessWidget {
  const _PricesTable();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 25),
        Row(children: [
          _Text(text: 'Rezerwacja w porcie'),
          _Text(text: '50zł')
        ]),
        SizedBox(height: 15),
        Row(children: [
          _Text(text: 'Cena za osobę w porcie podczas cumowania'),
          _Text(text: '10zł')
        ]),
        SizedBox(height: 15),
        Row(children: [
          _Text(text: 'Podłączenie łodzi do prądu na czas rezerwacji'),
          _Text(text: '15zł')
        ]),
        SizedBox(height: 15),
        Row(children: [
          _Text(text: 'Napełnienie zbiornika z wodą'),
          _Text(text: '20zł')
        ]),
        SizedBox(height: 25),
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
