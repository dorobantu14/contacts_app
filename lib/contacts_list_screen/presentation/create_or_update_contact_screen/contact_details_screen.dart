import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:contacts_app/contacts_list_screen/entity/contact.dart';
import 'package:contacts_app/contacts_list_screen/repository/contacts_repository.dart';
import 'package:contacts_app/core/local_database/local_database.dart';
import 'package:contacts_app/core/text_styles/text_styles.dart';
import 'package:contacts_app/core/widgets/app_button.dart';
import 'package:contacts_app/core/widgets/input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../bloc/contacts_bloc.dart';

class ContactDetailsScreen extends StatefulWidget {
  final String? contactName;
  final String? contactImage;
  final bool hasAppBar;

  const ContactDetailsScreen({
    Key? key,
    this.contactName,
    required this.hasAppBar,
    this.contactImage,
  }) : super(key: key);

  @override
  State<ContactDetailsScreen> createState() => _ContactDetailsScreenState();
}

class _ContactDetailsScreenState extends State<ContactDetailsScreen> {
  TextEditingController nameFieldController = TextEditingController();
  TextEditingController mobileNumberFieldController = TextEditingController();
  TextEditingController landlineFieldController = TextEditingController();
  bool isContactFavorite = false;
  String pickedImage = '';
  final ImagePicker picker = ImagePicker();
  late Contact contact;

  @override
  void initState() {
    super.initState();
    if (widget.contactName != null) {
      context.read<ContactsBloc>().add(ContactsEvent.startEditContact(
          contactName: widget.contactName ?? ''));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.hasAppBar ? getAppBar() : null,
      body: SafeArea(
        top: false,
        minimum: const EdgeInsets.only(bottom: 16),
        child: BlocConsumer<ContactsBloc, ContactsState>(
          listener: (context, state) {
            if (state.status == ContactsStatus.newContactAdded) {
              context
                  .read<ContactsBloc>()
                  .add(const ContactsEvent.getContacts());
              context.router.pop();
              setState(() {});
            }
            if (state.status == ContactsStatus.getContact) {
              setState(() {
                contact = state.contactFromDB!;
                nameFieldController.text = widget.contactName!;
                mobileNumberFieldController.text =
                    state.contactFromDB!.mobileNumber;
                landlineFieldController.text = state.contactFromDB!.landline;
              });
            }

            if (state.status == ContactsStatus.updateContact) {
              context.router.pop();
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Column(
                children: [
                  getAddPhotoButton(state),
                  getNameField(),
                  getMobileNumberField(state),
                  getLandlineField(state),
                  const Spacer(),
                  getSaveButton(context, state)
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  AppBar getAppBar() => AppBar(
        title: Text(
          widget.contactName != null ? 'Update Contact' : 'Add New Contact',
          style: TextStyles.subtitleStyle,
        ),
        actions: [
          getDeleteButton(),
          getAddToFavoriteButton(),
        ],
      );

  Widget getDeleteButton() {
    return Visibility(
      visible: widget.contactName != null,
      child: GestureDetector(
        onTap: deleteContact,
        child: const Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.delete, size: 28),
        ),
      ),
    );
  }

  void deleteContact() {
    LocalDatabase.deleteData(context.read<ContactsRepository>().getDatabase(),
        widget.contactName ?? '');
    context.router.pop();
  }

  Widget getSaveButton(BuildContext context, ContactsState state) {
    return AppButton(
      onPressed: () {
        if (nameFieldController.text.isEmpty ||
            mobileNumberFieldController.text.isEmpty ||
            landlineFieldController.text.isEmpty ||
            pickedImage.isEmpty) {
          showAlertDialog(context);
        } else {
          if (widget.contactName != null) {
            context.read<ContactsBloc>().add(updateContact(state));
          } else {
            addNewContact(context);
          }
        }
      },
      text: Text(
        widget.contactName != null ? 'Update' : 'Save',
        style: TextStyles.normalBlackTextStyle,
      ),
      isRounded: false,
      color: MaterialStateProperty.all<Color>(Colors.grey.withOpacity(0.4)),
    );
  }

  Future<dynamic> showAlertDialog(BuildContext context) {
    return showDialog(context: context, builder: getDialog);
  }

  Widget getDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Fields not completed'),
      content: const SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('Please complete all contact details'
                ' in order to add it to the list.'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Try again'),
          onPressed: () {
            context.router.pop();
          },
        ),
      ],
    );
  }

  void addNewContact(BuildContext context) {
    return context.read<ContactsBloc>().add(
          ContactsEvent.addNewContact(
            newContact: Contact(
                name: nameFieldController.text,
                mobileNumber: mobileNumberFieldController.text,
                landline: landlineFieldController.text,
                favorite: isContactFavorite ? 1 : 0,
                image: pickedImage),
          ),
        );
  }

  ContactsEvent updateContact(ContactsState state) {
    return ContactsEvent.updateContact(
      contactName: widget.contactName!,
      updatedContact: Contact(
        name: nameFieldController.text,
        mobileNumber: mobileNumberFieldController.text,
        landline: landlineFieldController.text,
        favorite: isContactFavorite ? 1 : 0,
        image: state.contactFromDB?.image != pickedImage
            ? pickedImage
            : state.contactFromDB?.image ?? '',
      ),
    );
  }

  Widget getAddToFavoriteButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Visibility(
        visible: widget.contactName == null,
        child: GestureDetector(
          onTap: addToFavorites,
          child: Icon(
            isContactFavorite ? Icons.star : Icons.star_outline,
            size: 32,
          ),
        ),
      ),
    );
  }

  VoidCallback? addToFavorites() {
    setState(() {
      isContactFavorite = !isContactFavorite;
    });
    return null;
  }

  Widget getLandlineField(ContactsState state) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 4),
            child: Text('Landline'),
          ),
          Expanded(
            child: InputForm(
              controller: landlineFieldController,
              initialValue: widget.contactName != null
                  ? state.contactFromDB?.landline
                  : null,
            ),
          ),
        ],
      ),
    );
  }

  Widget getMobileNumberField(ContactsState state) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Text('Mobile'),
          ),
          Expanded(
            child: InputForm(
              controller: mobileNumberFieldController,
              initialValue: widget.contactName != null
                  ? state.contactFromDB?.mobileNumber
                  : null,
            ),
          ),
        ],
      ),
    );
  }

  Widget getNameField() {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 22),
            child: Text('Name'),
          ),
          Expanded(
            child: InputForm(
              controller: nameFieldController,
              initialValue: widget.contactName,
            ),
          ),
        ],
      ),
    );
  }

  pickImageFromGallery() {
    ImagePicker().pickImage(source: ImageSource.gallery).then((imgFile) async {
      String imgString = base64Encode(await imgFile!.readAsBytes());
      setState(() {
        pickedImage = imgString;
      });
    });
  }

  Widget getAddPhotoButton(ContactsState state) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: GestureDetector(
        onTap: () async {
          await pickImageFromGallery();
        },
        child: getPhoto(),
      ),
    );
  }

  Widget getPhoto() {
    return CircleAvatar(
      backgroundColor: Colors.grey.withOpacity(0.1),
      backgroundImage: widget.contactName != null
          ? Image.memory(
              base64Decode(
                  widget.contactImage != pickedImage && pickedImage != ''
                      ? pickedImage
                      : widget.contactImage!),
            ).image
          : pickedImage != ''
              ? Image.memory(base64Decode(pickedImage)).image
              : null,
      maxRadius: 64,
      child: widget.contactName != null || pickedImage != ''
          ? const SizedBox()
          : const Icon(Icons.photo_camera_outlined),
    );
  }
}
