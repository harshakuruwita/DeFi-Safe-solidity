import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:workflow/business_logic/bloc/route/route_cubit.dart';
import 'package:workflow/screens/home.dart';
import 'package:workflow/screens/login/login_page.dart';
import 'package:workflow/screens/profile.dart';
import 'package:workflow/screens/settings.dart';
import 'package:workflow/screens/splash.dart';
import 'package:workflow/util/router/route_constants.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  initialLocation: Routes.splash,
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: Routes.splash,
      pageBuilder: (context, state) => const NoTransitionPage(
        child: Splash(),
      ),
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return BlocProvider(
          create: (context) => RouteCubit(),
          child: Home(screen: child),
        );
      },
      routes: [
        GoRoute(
          path: Routes.homeNamedPage,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: LoginPage(),
          ),
        ),
        GoRoute(
          path: Routes.profileNamedPage,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: Profile(),
          ),
        ),
        GoRoute(
          path: Routes.settingsNamedPage,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: Settings(),
          ),
        ),
      ],
    ),
  ],
);
