// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      name: json['name'] as String,
      mobileNumber: json['mobileNumber'] as String,
      landline: json['landline'] as String,
      image: json['image'] as String? ?? '',
      favorite: json['favorite'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobileNumber': instance.mobileNumber,
      'landline': instance.landline,
      'image': instance.image,
      'favorite': instance.favorite,
    };
