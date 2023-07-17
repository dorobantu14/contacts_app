import 'package:contacts_app/contacts_list_screen/repository/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/contact.dart';

part 'contacts_event.dart';

part 'contacts_state.dart';

part 'contacts_bloc.freezed.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc(ContactsRepository contactsRepository)
      : _repository = contactsRepository,
        super(const ContactsState()) {
    on<_ContactsEvent>(_onFetchContacts);
    on<_NewContactEvent>(_onNewContactAdd);
    on<_StartEditContactEvent>(_startEditContact);
    on<_UpdateContactEvent>(_updateContact);
  }

  final ContactsRepository _repository;

  void _onFetchContacts(
    _ContactsEvent event,
    Emitter<ContactsState> emit,
  ) async {
    emit(state.copyWith(status: ContactsStatus.loading));
    var response = await _repository.getContactsList();
    if (response.isSuccess) {
      var sortedResponse = response.success;
      sortedResponse.sort((a, b) => a.name.compareTo(b.name));
      emit(state.copyWith(
          status: ContactsStatus.contactsFetched,
          contactsList: sortedResponse));
    } else {
      emit(state.copyWith(status: ContactsStatus.failure));
    }
  }

  void _onNewContactAdd(
    _NewContactEvent event,
    Emitter<ContactsState> emit,
  ) async {
    emit(state.copyWith(status: ContactsStatus.loading));
    var response = await _repository.addNewContact(event.newContact);
    if (response.isSuccess) {
      emit(state.copyWith(status: ContactsStatus.newContactAdded));
    } else {
      emit(state.copyWith(status: ContactsStatus.failure));
    }
  }

  void _startEditContact(
    _StartEditContactEvent event,
    Emitter<ContactsState> emit,
  ) async {
    emit(state.copyWith(status: ContactsStatus.loading));
    var response = await _repository.getContactFromDb(event.contactName);
    if (response.isSuccess) {
      emit(state.copyWith(
          status: ContactsStatus.getContact, contactFromDB: response.success));
    } else {
      emit(state.copyWith(status: ContactsStatus.failure));
    }
  }

  void _updateContact(
    _UpdateContactEvent event,
    Emitter<ContactsState> emit,
  ) async {
    emit(state.copyWith(status: ContactsStatus.loading));
    var result = await _repository.updateContact(event.updatedContact, event.contactName);
    if (result.isSuccess) {
      emit(state.copyWith(status: ContactsStatus.updateContact));
    } else {
      emit(state.copyWith(status: ContactsStatus.failure));
    }
  }
}
