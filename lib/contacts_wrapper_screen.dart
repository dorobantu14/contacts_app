import 'package:auto_route/auto_route.dart';
import 'package:contacts_app/contacts_list_screen/presentation/bloc/contacts_bloc.dart';
import 'package:contacts_app/contacts_list_screen/repository/contacts_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login/presentation/bloc/login_bloc.dart';

class ContactsWrapperScreen extends StatefulWidget implements AutoRouteWrapper {
  const ContactsWrapperScreen({
    super.key,
  });

  @override
  State<ContactsWrapperScreen> createState() => _ContactsWrapperScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<ContactsBloc>(
          create: (context) => ContactsBloc(
            context.read<ContactsRepository>(),
          ),
        ),
      ],
      child: this,
    );
  }
}

class _ContactsWrapperScreenState extends State<ContactsWrapperScreen> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
