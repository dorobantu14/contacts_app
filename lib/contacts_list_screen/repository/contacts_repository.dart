import 'package:contacts_app/contacts_list_screen/data/contacts_data.dart';
import 'package:contacts_app/contacts_list_screen/entity/contact.dart';
import 'package:result_type/result_type.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:core';

class ContactsRepository {
  final Database _database;
  final ContactsData _contactsData;

  ContactsRepository({
    required Database database,
    required ContactsData contactsData,
  })  : _database = database,
        _contactsData = contactsData;

  Future<Result<List<Contact>, dynamic>> getContactsList() async {
    try {
      final response = await _contactsData.getContacts(_database);
      return Success(response);
    } catch (error) {
      return Failure(error);
    }
  }

  Future<Result<Contact, dynamic>> addNewContact(Contact newContact) async {
    try {
      final response = await _contactsData.addNewContact(_database, newContact);
      return Success(response);
    } catch (error) {
      return Failure(error);
    }
  }

  Future<Result<Contact, dynamic>> getContactFromDb(String contactName) async {
    try {
      final response =
          await _contactsData.getContactFromDb(_database, contactName);
      return Success(response);
    } catch (error) {
      return Failure(error);
    }
  }

  Future<Result<void, dynamic>> updateContact(
      Contact updatedContact, String contactToUpdate) async {
    try {
      return Success(await _contactsData.updateContact(
        _database,
        contactToUpdate,
        updatedContact,
      ));
    } catch (error) {
      return Failure(error);
    }
  }

  Database getDatabase() {
    return _database;
  }
}
