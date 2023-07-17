import 'package:auto_route/auto_route.dart';
import 'package:contacts_app/contacts_list_screen/presentation/bloc/contacts_bloc.dart';
import 'package:contacts_app/contacts_list_screen/presentation/contacts_list_screen.dart';
import 'package:contacts_app/contacts_list_screen/presentation/create_contact_screen/contact_details_screen.dart';
import 'package:contacts_app/contacts_list_screen/repository/contacts_repository.dart';
import 'package:contacts_app/core/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'favorite_contacts_screen.dart';

class ContactsScreen extends StatefulWidget with AutoRouteWrapper {
  const ContactsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactsBloc(context.read<ContactsRepository>()),
      child: this,
    );
  }
}

class _ContactsScreenState extends State<ContactsScreen> {
  var drawerOptions = <Widget>[
    const ContactsListScreen(),
    const FavoriteContactsScreen(),
    const ContactDetailsScreen(hasAppBar: false,)
  ];

  var drawerScreensTitle = [
    'Contacts List',
    'Favorite Contacts List',
    'Add New Contact',
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      drawer: Drawer(
        child: ListView(
          children: getDrawerBody(context),
        ),
      ),
      body: drawerOptions[selectedIndex],
    );
  }

  List<Widget> getDrawerBody(BuildContext context) {
    return [
      DrawerHeader(
          decoration:
          BoxDecoration(color: Colors.lightBlueAccent.withOpacity(0.4)),
          child: Center(
            child: Text('Contacts Menu', style: TextStyles.subtitleStyle),
          )),
      getDrawerItem(context, 0),
      getDrawerItem(context, 1),
      getDrawerItem(context, 2),
    ];
  }

  Widget getDrawerItem(BuildContext context, int index) {
    return ListTile(
      title: Text(drawerScreensTitle[index]),
      selected: selectedIndex == index,
      onTap: () {
        onItemTapped(index);
        context.router.pop();
      },
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  AppBar getAppBar() {
    return AppBar(
      title: Text(drawerScreensTitle[selectedIndex], style: TextStyles.titleStyle),
    );
  }
}
