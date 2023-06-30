import 'package:auto_route/auto_route.dart';
import 'package:contacts_app/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
  routes: [
    AutoRoute(page: LoginScreen, initial: true),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}
