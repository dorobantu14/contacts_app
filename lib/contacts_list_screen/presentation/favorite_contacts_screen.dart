import 'package:contacts_app/contacts_list_screen/presentation/bloc/contacts_bloc.dart';
import 'package:contacts_app/contacts_list_screen/presentation/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteContactsScreen extends StatefulWidget {
  const FavoriteContactsScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteContactsScreen> createState() => _FavoriteContactsScreenState();
}

class _FavoriteContactsScreenState extends State<FavoriteContactsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ContactsBloc>().add(const ContactsEvent.getContacts());
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, state) {
        return ListView(
            children: state.contactsList
                .where((element) => element.favorite == 1)
                .map(
                  (e) => ContactItem(
                    name: e.name,
                    image: e.image,
                  ),
                )
                .toList());
      },
    );
  }
}
