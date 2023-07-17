import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    required String name,
    required String mobileNumber,
    required String landline,
    @Default('') String image,
    @Default(0) int favorite,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}