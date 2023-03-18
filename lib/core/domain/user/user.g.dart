// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      email: const EmailAddressConverter().fromJson(json['email'] as String),
      name: const UsernameConverter().fromJson(json['name'] as String),
      medicines: (json['medicines'] as List<dynamic>)
          .map((e) => Medicine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': const EmailAddressConverter().toJson(instance.email),
      'name': const UsernameConverter().toJson(instance.name),
      'medicines': instance.medicines,
    };
