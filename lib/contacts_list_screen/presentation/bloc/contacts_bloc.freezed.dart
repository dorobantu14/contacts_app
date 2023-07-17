// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contactsList) getContacts,
    required TResult Function(Contact newContact) addNewContact,
    required TResult Function(String contactName) startEditContact,
    required TResult Function(String contactName, Contact updatedContact)
        updateContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contactsList)? getContacts,
    TResult? Function(Contact newContact)? addNewContact,
    TResult? Function(String contactName)? startEditContact,
    TResult? Function(String contactName, Contact updatedContact)?
        updateContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contactsList)? getContacts,
    TResult Function(Contact newContact)? addNewContact,
    TResult Function(String contactName)? startEditContact,
    TResult Function(String contactName, Contact updatedContact)? updateContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsEvent value) getContacts,
    required TResult Function(_NewContactEvent value) addNewContact,
    required TResult Function(_StartEditContactEvent value) startEditContact,
    required TResult Function(_UpdateContactEvent value) updateContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsEvent value)? getContacts,
    TResult? Function(_NewContactEvent value)? addNewContact,
    TResult? Function(_StartEditContactEvent value)? startEditContact,
    TResult? Function(_UpdateContactEvent value)? updateContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsEvent value)? getContacts,
    TResult Function(_NewContactEvent value)? addNewContact,
    TResult Function(_StartEditContactEvent value)? startEditContact,
    TResult Function(_UpdateContactEvent value)? updateContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res, ContactsEvent>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res, $Val extends ContactsEvent>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContactsEventCopyWith<$Res> {
  factory _$$_ContactsEventCopyWith(
          _$_ContactsEvent value, $Res Function(_$_ContactsEvent) then) =
      __$$_ContactsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Contact> contactsList});
}

/// @nodoc
class __$$_ContactsEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$_ContactsEvent>
    implements _$$_ContactsEventCopyWith<$Res> {
  __$$_ContactsEventCopyWithImpl(
      _$_ContactsEvent _value, $Res Function(_$_ContactsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactsList = null,
  }) {
    return _then(_$_ContactsEvent(
      contactsList: null == contactsList
          ? _value._contactsList
          : contactsList // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_ContactsEvent implements _ContactsEvent {
  const _$_ContactsEvent({final List<Contact> contactsList = const []})
      : _contactsList = contactsList;

  final List<Contact> _contactsList;
  @override
  @JsonKey()
  List<Contact> get contactsList {
    if (_contactsList is EqualUnmodifiableListView) return _contactsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactsList);
  }

  @override
  String toString() {
    return 'ContactsEvent.getContacts(contactsList: $contactsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsEvent &&
            const DeepCollectionEquality()
                .equals(other._contactsList, _contactsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_contactsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsEventCopyWith<_$_ContactsEvent> get copyWith =>
      __$$_ContactsEventCopyWithImpl<_$_ContactsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contactsList) getContacts,
    required TResult Function(Contact newContact) addNewContact,
    required TResult Function(String contactName) startEditContact,
    required TResult Function(String contactName, Contact updatedContact)
        updateContact,
  }) {
    return getContacts(contactsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contactsList)? getContacts,
    TResult? Function(Contact newContact)? addNewContact,
    TResult? Function(String contactName)? startEditContact,
    TResult? Function(String contactName, Contact updatedContact)?
        updateContact,
  }) {
    return getContacts?.call(contactsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contactsList)? getContacts,
    TResult Function(Contact newContact)? addNewContact,
    TResult Function(String contactName)? startEditContact,
    TResult Function(String contactName, Contact updatedContact)? updateContact,
    required TResult orElse(),
  }) {
    if (getContacts != null) {
      return getContacts(contactsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsEvent value) getContacts,
    required TResult Function(_NewContactEvent value) addNewContact,
    required TResult Function(_StartEditContactEvent value) startEditContact,
    required TResult Function(_UpdateContactEvent value) updateContact,
  }) {
    return getContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsEvent value)? getContacts,
    TResult? Function(_NewContactEvent value)? addNewContact,
    TResult? Function(_StartEditContactEvent value)? startEditContact,
    TResult? Function(_UpdateContactEvent value)? updateContact,
  }) {
    return getContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsEvent value)? getContacts,
    TResult Function(_NewContactEvent value)? addNewContact,
    TResult Function(_StartEditContactEvent value)? startEditContact,
    TResult Function(_UpdateContactEvent value)? updateContact,
    required TResult orElse(),
  }) {
    if (getContacts != null) {
      return getContacts(this);
    }
    return orElse();
  }
}

abstract class _ContactsEvent implements ContactsEvent {
  const factory _ContactsEvent({final List<Contact> contactsList}) =
      _$_ContactsEvent;

  List<Contact> get contactsList;
  @JsonKey(ignore: true)
  _$$_ContactsEventCopyWith<_$_ContactsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewContactEventCopyWith<$Res> {
  factory _$$_NewContactEventCopyWith(
          _$_NewContactEvent value, $Res Function(_$_NewContactEvent) then) =
      __$$_NewContactEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact newContact});

  $ContactCopyWith<$Res> get newContact;
}

/// @nodoc
class __$$_NewContactEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$_NewContactEvent>
    implements _$$_NewContactEventCopyWith<$Res> {
  __$$_NewContactEventCopyWithImpl(
      _$_NewContactEvent _value, $Res Function(_$_NewContactEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newContact = null,
  }) {
    return _then(_$_NewContactEvent(
      newContact: null == newContact
          ? _value.newContact
          : newContact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get newContact {
    return $ContactCopyWith<$Res>(_value.newContact, (value) {
      return _then(_value.copyWith(newContact: value));
    });
  }
}

/// @nodoc

class _$_NewContactEvent implements _NewContactEvent {
  const _$_NewContactEvent({required this.newContact});

  @override
  final Contact newContact;

  @override
  String toString() {
    return 'ContactsEvent.addNewContact(newContact: $newContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewContactEvent &&
            (identical(other.newContact, newContact) ||
                other.newContact == newContact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newContact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewContactEventCopyWith<_$_NewContactEvent> get copyWith =>
      __$$_NewContactEventCopyWithImpl<_$_NewContactEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contactsList) getContacts,
    required TResult Function(Contact newContact) addNewContact,
    required TResult Function(String contactName) startEditContact,
    required TResult Function(String contactName, Contact updatedContact)
        updateContact,
  }) {
    return addNewContact(newContact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contactsList)? getContacts,
    TResult? Function(Contact newContact)? addNewContact,
    TResult? Function(String contactName)? startEditContact,
    TResult? Function(String contactName, Contact updatedContact)?
        updateContact,
  }) {
    return addNewContact?.call(newContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contactsList)? getContacts,
    TResult Function(Contact newContact)? addNewContact,
    TResult Function(String contactName)? startEditContact,
    TResult Function(String contactName, Contact updatedContact)? updateContact,
    required TResult orElse(),
  }) {
    if (addNewContact != null) {
      return addNewContact(newContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsEvent value) getContacts,
    required TResult Function(_NewContactEvent value) addNewContact,
    required TResult Function(_StartEditContactEvent value) startEditContact,
    required TResult Function(_UpdateContactEvent value) updateContact,
  }) {
    return addNewContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsEvent value)? getContacts,
    TResult? Function(_NewContactEvent value)? addNewContact,
    TResult? Function(_StartEditContactEvent value)? startEditContact,
    TResult? Function(_UpdateContactEvent value)? updateContact,
  }) {
    return addNewContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsEvent value)? getContacts,
    TResult Function(_NewContactEvent value)? addNewContact,
    TResult Function(_StartEditContactEvent value)? startEditContact,
    TResult Function(_UpdateContactEvent value)? updateContact,
    required TResult orElse(),
  }) {
    if (addNewContact != null) {
      return addNewContact(this);
    }
    return orElse();
  }
}

abstract class _NewContactEvent implements ContactsEvent {
  const factory _NewContactEvent({required final Contact newContact}) =
      _$_NewContactEvent;

  Contact get newContact;
  @JsonKey(ignore: true)
  _$$_NewContactEventCopyWith<_$_NewContactEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartEditContactEventCopyWith<$Res> {
  factory _$$_StartEditContactEventCopyWith(_$_StartEditContactEvent value,
          $Res Function(_$_StartEditContactEvent) then) =
      __$$_StartEditContactEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactName});
}

/// @nodoc
class __$$_StartEditContactEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$_StartEditContactEvent>
    implements _$$_StartEditContactEventCopyWith<$Res> {
  __$$_StartEditContactEventCopyWithImpl(_$_StartEditContactEvent _value,
      $Res Function(_$_StartEditContactEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactName = null,
  }) {
    return _then(_$_StartEditContactEvent(
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartEditContactEvent implements _StartEditContactEvent {
  const _$_StartEditContactEvent({required this.contactName});

  @override
  final String contactName;

  @override
  String toString() {
    return 'ContactsEvent.startEditContact(contactName: $contactName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartEditContactEvent &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartEditContactEventCopyWith<_$_StartEditContactEvent> get copyWith =>
      __$$_StartEditContactEventCopyWithImpl<_$_StartEditContactEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contactsList) getContacts,
    required TResult Function(Contact newContact) addNewContact,
    required TResult Function(String contactName) startEditContact,
    required TResult Function(String contactName, Contact updatedContact)
        updateContact,
  }) {
    return startEditContact(contactName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contactsList)? getContacts,
    TResult? Function(Contact newContact)? addNewContact,
    TResult? Function(String contactName)? startEditContact,
    TResult? Function(String contactName, Contact updatedContact)?
        updateContact,
  }) {
    return startEditContact?.call(contactName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contactsList)? getContacts,
    TResult Function(Contact newContact)? addNewContact,
    TResult Function(String contactName)? startEditContact,
    TResult Function(String contactName, Contact updatedContact)? updateContact,
    required TResult orElse(),
  }) {
    if (startEditContact != null) {
      return startEditContact(contactName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsEvent value) getContacts,
    required TResult Function(_NewContactEvent value) addNewContact,
    required TResult Function(_StartEditContactEvent value) startEditContact,
    required TResult Function(_UpdateContactEvent value) updateContact,
  }) {
    return startEditContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsEvent value)? getContacts,
    TResult? Function(_NewContactEvent value)? addNewContact,
    TResult? Function(_StartEditContactEvent value)? startEditContact,
    TResult? Function(_UpdateContactEvent value)? updateContact,
  }) {
    return startEditContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsEvent value)? getContacts,
    TResult Function(_NewContactEvent value)? addNewContact,
    TResult Function(_StartEditContactEvent value)? startEditContact,
    TResult Function(_UpdateContactEvent value)? updateContact,
    required TResult orElse(),
  }) {
    if (startEditContact != null) {
      return startEditContact(this);
    }
    return orElse();
  }
}

abstract class _StartEditContactEvent implements ContactsEvent {
  const factory _StartEditContactEvent({required final String contactName}) =
      _$_StartEditContactEvent;

  String get contactName;
  @JsonKey(ignore: true)
  _$$_StartEditContactEventCopyWith<_$_StartEditContactEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateContactEventCopyWith<$Res> {
  factory _$$_UpdateContactEventCopyWith(_$_UpdateContactEvent value,
          $Res Function(_$_UpdateContactEvent) then) =
      __$$_UpdateContactEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactName, Contact updatedContact});

  $ContactCopyWith<$Res> get updatedContact;
}

/// @nodoc
class __$$_UpdateContactEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$_UpdateContactEvent>
    implements _$$_UpdateContactEventCopyWith<$Res> {
  __$$_UpdateContactEventCopyWithImpl(
      _$_UpdateContactEvent _value, $Res Function(_$_UpdateContactEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactName = null,
    Object? updatedContact = null,
  }) {
    return _then(_$_UpdateContactEvent(
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      updatedContact: null == updatedContact
          ? _value.updatedContact
          : updatedContact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get updatedContact {
    return $ContactCopyWith<$Res>(_value.updatedContact, (value) {
      return _then(_value.copyWith(updatedContact: value));
    });
  }
}

/// @nodoc

class _$_UpdateContactEvent implements _UpdateContactEvent {
  const _$_UpdateContactEvent(
      {required this.contactName, required this.updatedContact});

  @override
  final String contactName;
  @override
  final Contact updatedContact;

  @override
  String toString() {
    return 'ContactsEvent.updateContact(contactName: $contactName, updatedContact: $updatedContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateContactEvent &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.updatedContact, updatedContact) ||
                other.updatedContact == updatedContact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactName, updatedContact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateContactEventCopyWith<_$_UpdateContactEvent> get copyWith =>
      __$$_UpdateContactEventCopyWithImpl<_$_UpdateContactEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contactsList) getContacts,
    required TResult Function(Contact newContact) addNewContact,
    required TResult Function(String contactName) startEditContact,
    required TResult Function(String contactName, Contact updatedContact)
        updateContact,
  }) {
    return updateContact(contactName, updatedContact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contactsList)? getContacts,
    TResult? Function(Contact newContact)? addNewContact,
    TResult? Function(String contactName)? startEditContact,
    TResult? Function(String contactName, Contact updatedContact)?
        updateContact,
  }) {
    return updateContact?.call(contactName, updatedContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contactsList)? getContacts,
    TResult Function(Contact newContact)? addNewContact,
    TResult Function(String contactName)? startEditContact,
    TResult Function(String contactName, Contact updatedContact)? updateContact,
    required TResult orElse(),
  }) {
    if (updateContact != null) {
      return updateContact(contactName, updatedContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsEvent value) getContacts,
    required TResult Function(_NewContactEvent value) addNewContact,
    required TResult Function(_StartEditContactEvent value) startEditContact,
    required TResult Function(_UpdateContactEvent value) updateContact,
  }) {
    return updateContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsEvent value)? getContacts,
    TResult? Function(_NewContactEvent value)? addNewContact,
    TResult? Function(_StartEditContactEvent value)? startEditContact,
    TResult? Function(_UpdateContactEvent value)? updateContact,
  }) {
    return updateContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsEvent value)? getContacts,
    TResult Function(_NewContactEvent value)? addNewContact,
    TResult Function(_StartEditContactEvent value)? startEditContact,
    TResult Function(_UpdateContactEvent value)? updateContact,
    required TResult orElse(),
  }) {
    if (updateContact != null) {
      return updateContact(this);
    }
    return orElse();
  }
}

abstract class _UpdateContactEvent implements ContactsEvent {
  const factory _UpdateContactEvent(
      {required final String contactName,
      required final Contact updatedContact}) = _$_UpdateContactEvent;

  String get contactName;
  Contact get updatedContact;
  @JsonKey(ignore: true)
  _$$_UpdateContactEventCopyWith<_$_UpdateContactEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactsState {
  ContactsStatus get status => throw _privateConstructorUsedError;
  List<Contact> get contactsList => throw _privateConstructorUsedError;
  Contact? get newContact => throw _privateConstructorUsedError;
  Contact? get contactFromDB => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactsStateCopyWith<ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res, ContactsState>;
  @useResult
  $Res call(
      {ContactsStatus status,
      List<Contact> contactsList,
      Contact? newContact,
      Contact? contactFromDB});

  $ContactCopyWith<$Res>? get newContact;
  $ContactCopyWith<$Res>? get contactFromDB;
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res, $Val extends ContactsState>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? contactsList = null,
    Object? newContact = freezed,
    Object? contactFromDB = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContactsStatus,
      contactsList: null == contactsList
          ? _value.contactsList
          : contactsList // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      newContact: freezed == newContact
          ? _value.newContact
          : newContact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      contactFromDB: freezed == contactFromDB
          ? _value.contactFromDB
          : contactFromDB // ignore: cast_nullable_to_non_nullable
              as Contact?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get newContact {
    if (_value.newContact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.newContact!, (value) {
      return _then(_value.copyWith(newContact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contactFromDB {
    if (_value.contactFromDB == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contactFromDB!, (value) {
      return _then(_value.copyWith(contactFromDB: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContactsFetchedCopyWith<$Res>
    implements $ContactsStateCopyWith<$Res> {
  factory _$$_ContactsFetchedCopyWith(
          _$_ContactsFetched value, $Res Function(_$_ContactsFetched) then) =
      __$$_ContactsFetchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ContactsStatus status,
      List<Contact> contactsList,
      Contact? newContact,
      Contact? contactFromDB});

  @override
  $ContactCopyWith<$Res>? get newContact;
  @override
  $ContactCopyWith<$Res>? get contactFromDB;
}

/// @nodoc
class __$$_ContactsFetchedCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$_ContactsFetched>
    implements _$$_ContactsFetchedCopyWith<$Res> {
  __$$_ContactsFetchedCopyWithImpl(
      _$_ContactsFetched _value, $Res Function(_$_ContactsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? contactsList = null,
    Object? newContact = freezed,
    Object? contactFromDB = freezed,
  }) {
    return _then(_$_ContactsFetched(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContactsStatus,
      contactsList: null == contactsList
          ? _value._contactsList
          : contactsList // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      newContact: freezed == newContact
          ? _value.newContact
          : newContact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      contactFromDB: freezed == contactFromDB
          ? _value.contactFromDB
          : contactFromDB // ignore: cast_nullable_to_non_nullable
              as Contact?,
    ));
  }
}

/// @nodoc

class _$_ContactsFetched implements _ContactsFetched {
  const _$_ContactsFetched(
      {this.status = ContactsStatus.initial,
      final List<Contact> contactsList = const [],
      this.newContact,
      this.contactFromDB})
      : _contactsList = contactsList;

  @override
  @JsonKey()
  final ContactsStatus status;
  final List<Contact> _contactsList;
  @override
  @JsonKey()
  List<Contact> get contactsList {
    if (_contactsList is EqualUnmodifiableListView) return _contactsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactsList);
  }

  @override
  final Contact? newContact;
  @override
  final Contact? contactFromDB;

  @override
  String toString() {
    return 'ContactsState(status: $status, contactsList: $contactsList, newContact: $newContact, contactFromDB: $contactFromDB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsFetched &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._contactsList, _contactsList) &&
            (identical(other.newContact, newContact) ||
                other.newContact == newContact) &&
            (identical(other.contactFromDB, contactFromDB) ||
                other.contactFromDB == contactFromDB));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_contactsList),
      newContact,
      contactFromDB);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsFetchedCopyWith<_$_ContactsFetched> get copyWith =>
      __$$_ContactsFetchedCopyWithImpl<_$_ContactsFetched>(this, _$identity);
}

abstract class _ContactsFetched implements ContactsState {
  const factory _ContactsFetched(
      {final ContactsStatus status,
      final List<Contact> contactsList,
      final Contact? newContact,
      final Contact? contactFromDB}) = _$_ContactsFetched;

  @override
  ContactsStatus get status;
  @override
  List<Contact> get contactsList;
  @override
  Contact? get newContact;
  @override
  Contact? get contactFromDB;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsFetchedCopyWith<_$_ContactsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}
