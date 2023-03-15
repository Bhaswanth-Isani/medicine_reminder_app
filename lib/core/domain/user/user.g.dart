// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: const EmailAddressConverter().fromJson(json['email'] as String),
      name: const UsernameConverter().fromJson(json['name'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': const EmailAddressConverter().toJson(instance.email),
      'name': const UsernameConverter().toJson(instance.name),
    };
