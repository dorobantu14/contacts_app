import 'package:auto_route/auto_route.dart';
import 'package:contacts_app/contacts_list_screen/presentation/contacts_screen.dart';
import 'package:contacts_app/contacts_list_screen/presentation/create_or_update_contact_screen/contact_details_screen.dart';
import 'package:contacts_app/contacts_wrapper_screen.dart';
import 'package:contacts_app/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
  routes: [
    AutoRoute(
      page: ContactsWrapperScreen,
      initial: true,
      children: <AutoRoute<void>>[
        AutoRoute<void>(initial: true, page: LoginScreen),
        AutoRoute<void>(page: ContactsScreen),
        AutoRoute<void>(page: ContactDetailsScreen),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}
