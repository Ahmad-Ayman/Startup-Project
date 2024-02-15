import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static BuildContext? buildContext;

  Routes._();

  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  // SCREENS
  static const splashScreen = '/';

  static final goRouter = GoRouter(
    initialLocation: '/',
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: splashScreen,
        parentNavigatorKey: rootNavigatorKey,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: MyHomePage(title: ""),
        ),
      ),
    ],
  );

  static navigateToScreen(
      String screenName, NavigateType navigateType, BuildContext context,
      {Object? arguments, Function()? afterComplete}) async {
    switch (navigateType) {
      case NavigateType.pushNamed:
        GoRouter.of(context)
            .pushNamed(screenName, extra: arguments)
            .whenComplete(() {
          if (afterComplete != null) {
            afterComplete();
          }
        });
        break;

      case NavigateType.goNamed:
        GoRouter.of(context).goNamed(screenName, extra: arguments);
        break;

      case NavigateType.pushReplacementNamed:
        GoRouter.of(context).pushReplacementNamed(screenName, extra: arguments);
        break;

      default:
        GoRouter.of(context).goNamed(screenName);
        break;
    }
  }

  static void navigateToFirstScreen(context) {
    while (Navigator.canPop(context)) {
      Navigator.of(context).pop();
    }
  }

  static CustomTransitionPage<dynamic> fadeTransitionScreenWrapper(
      context, state, Widget screen) {
    return CustomTransitionPage(
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.linear).animate(animation),
          child: child,
        );
      },
      key: state.pageKey,
      child: screen,
    );
  }
}

enum NavigateType { pushNamed, goNamed, pushReplacementNamed }
