import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogPage<T> extends Page<T> {
  const DialogPage({
    required this.builder,
    this.anchorPoint,
    this.barrierColor = Colors.black87,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.themes,
    this.padding,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  final Offset? anchorPoint;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final CapturedThemes? themes;
  final WidgetBuilder builder;
  final EdgeInsets? padding;

  @override
  Route<T> createRoute(BuildContext context) => DialogRoute<T>(
        context: context,
        settings: this,
        builder: (context) => Dialog(
          insetPadding: padding ??
              const EdgeInsets.symmetric(horizontal: 128, vertical: 64),
          child: builder(context),
        ),
        anchorPoint: anchorPoint,
        barrierColor: barrierColor,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        themes: themes,
      );
}

class DialogGoRoute extends GoRoute {
  DialogGoRoute({
    required Widget child,
    EdgeInsets? padding,
    required super.path,
  }) : super(
          pageBuilder: (context, state) =>
              DialogPage(padding: padding, builder: (_) => child),
        );
}
