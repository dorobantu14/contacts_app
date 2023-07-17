import 'package:contacts_app/app/app_router.dart';
import 'package:contacts_app/contacts_list_screen/data/contacts_data.dart';
import 'package:contacts_app/contacts_list_screen/repository/contacts_repository.dart';
import 'package:contacts_app/core/local_database/local_database.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appRouter = AppRouter();
  final database = await LocalDatabase.initializeDatabase();
  final providers = await _getRepositoryProviders(database);
  LocalDatabase.selectData(database, 'Alina');
  runApp(
    MultiRepositoryProvider(
      providers: providers,
      child: MyApp(appRouter: appRouter),
    ),
  );
}

Future<List<RepositoryProvider<dynamic>>> _getRepositoryProviders(
  Database database,
) async {
  return [
    RepositoryProvider<ContactsRepository>(
      create: (context) => ContactsRepository(
        database: database,
        contactsData: ContactsData(),
      ),
    ),
  ];
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter;

  const MyApp({
    super.key,
    required AppRouter appRouter,
  }) : _appRouter = appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Contacts App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
