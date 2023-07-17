part of 'contacts_bloc.dart';

enum ContactsStatus {
  initial,
  loading,
  contactsFetched,
  newContactAdded,
  getContact,
  updateContact,
  failure,
}

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState({
    @Default(ContactsStatus.initial) ContactsStatus status,
    @Default([]) List<Contact> contactsList,
    Contact? newContact,
    Contact? contactFromDB,
  }) = _ContactsFetched;
}
