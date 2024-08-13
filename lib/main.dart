import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:wolnakeja/views/home/homeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],
      title: 'Wolna Keja- Aplikacja do rezerwacji miejsc w portach.',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Nunito'),
      ),
      home: Homeview(),
    );
  }
}
