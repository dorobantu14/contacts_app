import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:contacts_app/app/app_router.dart';
import 'package:contacts_app/core/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final String image;
  final String name;

  const ContactItem({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 48, top: 16),
      child: GestureDetector(
        onTap: () {
          context.router.push(
            ContactDetailsRoute(contactName: name, contactImage: image, hasAppBar: true),
          );
        },
        child: Row(
          children: [
            getContactPhoto(),
            getContactName(),
            const Spacer(),
            // getEditButton(context),
          ],
        ),
      ),
    );
  }

  Widget getContactName() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(name, style: TextStyles.normalBlackTextStyle),
    );
  }

  Widget getContactPhoto() {
    return CircleAvatar(
      backgroundColor: Colors.grey.withOpacity(0.4),
      backgroundImage: Image.memory(
        base64Decode(image),
        fit: BoxFit.cover,
      ).image,
      maxRadius: 28,
      child:
          image != '' ? const SizedBox() : const Icon(Icons.person, size: 28),
    );
  }
}
