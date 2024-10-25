import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:wolnakeja/router/dialog_page.dart';
import 'package:wolnakeja/views/home/homeview.dart';
import 'package:wolnakeja/widgets/delete_account_info/delete_account_info_dialog.dart';
import 'package:wolnakeja/widgets/termsAndConditions/terms_and_conditions_dialog.dart';

abstract final class _RoutePaths {
  static const home = 'home';
  static const policy = 'policy';
  static const regulations = 'regulations';
  static const deleteAccountInfo = 'delete-account-info';
}

final router = GoRouter(
  observers: [seoRouteObserver],
  initialLocation: '/${_RoutePaths.home}',
  routes: [
    GoRoute(
      path: '/${_RoutePaths.home}',
      pageBuilder: (context, state) => const MaterialPage(child: Homeview()),
      routes: [
        DialogGoRoute(
          child: const TermsAndConditionsDialog.privacyPolicy(),
          path: _RoutePaths.policy,
        ),
        DialogGoRoute(
          child: const TermsAndConditionsDialog.appRegulations(),
          path: _RoutePaths.regulations,
        ),
        DialogGoRoute(
          child: const DeleteAccountInfoDialog(),
          path: _RoutePaths.deleteAccountInfo,
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const Center(child: Text('Page not found')),
);

extension Routing on BuildContext {
  void goHome() => go('/${_RoutePaths.home}');
  void goPolicy() => go('/${_RoutePaths.home}/${_RoutePaths.policy}');
  void goRegulations() => go('/${_RoutePaths.home}/${_RoutePaths.regulations}');
  void goDeleteAccountInfo() =>
      go('/${_RoutePaths.home}/${_RoutePaths.deleteAccountInfo}');
}
