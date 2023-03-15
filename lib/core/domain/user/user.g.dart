// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: const EmailAddressConverter().fromJson(json['email'] as String),
      username: const UsernameConverter().fromJson(json['username'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': const EmailAddressConverter().toJson(instance.email),
      'username': const UsernameConverter().toJson(instance.username),
    };
