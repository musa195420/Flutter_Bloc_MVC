import 'package:flutter/material.dart';
import 'package:flutter_bloc_mvc/app_view.dart';
import 'package:flutter_bloc_mvc/routes/routes.dart';
import 'package:flutter_bloc_mvc/screens/auth/views/not_found_page.dart';
import 'package:flutter_bloc_mvc/services/navigation_service.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: Routes.startup,
  navigatorKey: NavigationService.instance.navigatorKey,
  errorBuilder: (context, state) => const NotFoundPage(),
  routes: [
    GoRoute(
      // final product = state.extra as ProductModel;
      path: Routes.startup,
      pageBuilder: (_, __) => _buildPageWithTransition(
        const MyAppView(),
        //   HealthInfoPage(info: info),
        AppTransition.fade,
      ),
    ),
  ],
);

CustomTransitionPage _buildPageWithTransition(
  Widget child,
  AppTransition transitionType,
) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      switch (transitionType) {
        case AppTransition.fade:
          return FadeTransition(opacity: animation, child: child);

        case AppTransition.slideFromRight:
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );

        case AppTransition.slideFromBottom:
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );

        case AppTransition.scale:
          return ScaleTransition(scale: animation, child: child);

        case AppTransition.none:
          return child;
      }
    },
  );
}
