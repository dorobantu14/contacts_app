import 'package:contacts_app/contacts_list_screen/entity/contact.dart';
import 'package:contacts_app/core/local_database/local_database.dart';
import 'package:sqflite/sqflite.dart';

class ContactsData {
  Future<List<Contact>> getContacts(Database database) async {
    List<Map<String, dynamic>> response = await database.query('contacts_list');
    return response.map((e) => Contact.fromJson(e)).toList();
  }

  Future<Contact> addNewContact(Database database, Contact newContact) async {
    await LocalDatabase.insertUser(
      database,
      newContact.name,
      newContact.mobileNumber,
      newContact.landline,
      newContact.favorite,
      newContact.image,
    );

    return newContact;
  }

  Future<Contact> getContactFromDb(Database db, String contactName) async {
    var result = await LocalDatabase.selectData(db, contactName);
    Contact contact = Contact.fromJson(result.first);
    return contact;
  }

  Future<void> updateContact(Database db, String contactToUpdate,
      Contact updatedContact) async {
    LocalDatabase.updateData(db: db,
        contactToUpdate: contactToUpdate,
        name: updatedContact.name,
        mobileNumber: updatedContact.mobileNumber,
        landline: updatedContact.landline,
        image: updatedContact.image,
        favorite: updatedContact.favorite);
  }
}
