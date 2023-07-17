import 'package:auto_route/auto_route.dart';
import 'package:contacts_app/app/app_router.dart';
import 'package:contacts_app/contacts_list_screen/presentation/bloc/contacts_bloc.dart';
import 'package:contacts_app/contacts_list_screen/presentation/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsListScreen extends StatefulWidget {
  const ContactsListScreen({Key? key}) : super(key: key);

  @override
  State<ContactsListScreen> createState() => _ContactsListScreenState();
}

class _ContactsListScreenState extends State<ContactsListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ContactsBloc>().add(
          const ContactsEvent.getContacts(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsBloc, ContactsState>(builder: (context, state) {
      return SafeArea(
        top: false,
        minimum: const EdgeInsets.only(bottom: 16),
        child: Stack(
          children: [
            getListOfContacts(state),
            getAddContactButton(context),
          ],
        ),
      );
    });
  }

  Widget getListOfContacts(ContactsState state) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: getRefreshIndicator(state),
    );
  }

  Widget getRefreshIndicator(ContactsState state) {
    return RefreshIndicator(
      onRefresh: () {
        return Future.delayed(
          const Duration(seconds: 1),
          () {
            context.read<ContactsBloc>().add(const ContactsEvent.getContacts());
          },
        );
      },
      child: getListOfContactsBody(state),
    );
  }

  Widget getListOfContactsBody(ContactsState state) {
    return ListView(
      children: state.contactsList
          .map((e) => ContactItem(name: e.name, image: e.image))
          .toList(),
    );
  }

  VoidCallback? addContact(BuildContext context) {
    context.router.push(ContactDetailsRoute(hasAppBar: true));
    return null;
  }

  Widget getAddContactButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 32),
        child: FloatingActionButton(
          onPressed: () {
            addContact(context);
          },
          backgroundColor: Colors.white,
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
