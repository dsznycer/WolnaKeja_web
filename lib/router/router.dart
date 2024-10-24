import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:wolnakeja/router/dialog_page.dart';
import 'package:wolnakeja/views/home/homeview.dart';
import 'package:wolnakeja/widgets/termsAndConditions/terms_and_conditions_dialog.dart';

final router = GoRouter(
  observers: [seoRouteObserver],
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => MaterialPage(child: Homeview()),
      routes: [
        DialogGoRoute(
          child: const TermsAndConditionsDialog.privacyPolicy(),
          path: 'policy',
        ),
        DialogGoRoute(
          child: const TermsAndConditionsDialog.appRegulations(),
          path: 'regulations',
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const Center(child: Text('Not found')),
);

extension Routing on BuildContext {
  void goHome() => go('/home');
  void goPolicy() => go('/home/policy');
  void goRegulations() => go('/home/regulations');
}
