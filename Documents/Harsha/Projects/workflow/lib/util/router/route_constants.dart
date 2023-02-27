import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workflow/screens/error/error_page.dart';

class Routes {
  static const root = '/';
  static const splash = '/splash';
  static const homeNamedPage = '/home';
  static const homeDetailsNamedPage = 'details';
  static const profileNamedPage = '/profile';
  static const profileDetailsNamedPage = 'details';
  static const settingsNamedPage = '/settings';
  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      const ErrorPage();
}
