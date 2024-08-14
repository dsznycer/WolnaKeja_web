import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:wolnakeja/views/home/homeview.dart';
import 'package:wolnakeja/views/temp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //navigatorObservers: [routeObserver],
      title: 'Wolna Keja- Aplikacja do rezerwacji miejsc w portach.',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Nunito'),
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => Homeview(show: false),
    ),
    GoRoute(
      path: '/policy',
      builder: (context, state) => Homeview(show: true),
    ),
  ],
  errorBuilder: (context, state) => Center(
    child: Text('Not found'),
  ),
);
