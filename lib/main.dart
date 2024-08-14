import 'package:flutter/material.dart';
import 'package:wolnakeja/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wolna Keja- Aplikacja do rezerwacji miejsc w portach.',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Nunito'),
      ),
      routerConfig: router,
    );
  }
}
