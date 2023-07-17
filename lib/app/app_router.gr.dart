// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    ContactsWrapperRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ContactsWrapperScreen()),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(child: const LoginScreen()),
      );
    },
    ContactsRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(child: const ContactsScreen()),
      );
    },
    ContactDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ContactDetailsRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: ContactDetailsScreen(
          key: args.key,
          contactName: args.contactName,
          hasAppBar: args.hasAppBar,
          contactImage: args.contactImage,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          ContactsWrapperRoute.name,
          path: '/',
          children: [
            RouteConfig(
              LoginRoute.name,
              path: '',
              parent: ContactsWrapperRoute.name,
            ),
            RouteConfig(
              ContactsRoute.name,
              path: 'contacts-screen',
              parent: ContactsWrapperRoute.name,
            ),
            RouteConfig(
              ContactDetailsRoute.name,
              path: 'contact-details-screen',
              parent: ContactsWrapperRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [ContactsWrapperScreen]
class ContactsWrapperRoute extends PageRouteInfo<void> {
  const ContactsWrapperRoute({List<PageRouteInfo>? children})
      : super(
          ContactsWrapperRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'ContactsWrapperRoute';
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [ContactsScreen]
class ContactsRoute extends PageRouteInfo<void> {
  const ContactsRoute()
      : super(
          ContactsRoute.name,
          path: 'contacts-screen',
        );

  static const String name = 'ContactsRoute';
}

/// generated route for
/// [ContactDetailsScreen]
class ContactDetailsRoute extends PageRouteInfo<ContactDetailsRouteArgs> {
  ContactDetailsRoute({
    Key? key,
    String? contactName,
    required bool hasAppBar,
    String? contactImage,
  }) : super(
          ContactDetailsRoute.name,
          path: 'contact-details-screen',
          args: ContactDetailsRouteArgs(
            key: key,
            contactName: contactName,
            hasAppBar: hasAppBar,
            contactImage: contactImage,
          ),
        );

  static const String name = 'ContactDetailsRoute';
}

class ContactDetailsRouteArgs {
  const ContactDetailsRouteArgs({
    this.key,
    this.contactName,
    required this.hasAppBar,
    this.contactImage,
  });

  final Key? key;

  final String? contactName;

  final bool hasAppBar;

  final String? contactImage;

  @override
  String toString() {
    return 'ContactDetailsRouteArgs{key: $key, contactName: $contactName, hasAppBar: $hasAppBar, contactImage: $contactImage}';
  }
}
