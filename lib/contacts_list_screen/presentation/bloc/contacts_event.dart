part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.getContacts({
    @Default([]) List<Contact> contactsList,
  }) = _ContactsEvent;

  const factory ContactsEvent.addNewContact({
    required Contact newContact,
  }) = _NewContactEvent;

  const factory ContactsEvent.startEditContact({
    required String contactName,
  }) = _StartEditContactEvent;

  const factory ContactsEvent.updateContact({
    required String contactName,
    required Contact updatedContact,
  }) = _UpdateContactEvent;
}
