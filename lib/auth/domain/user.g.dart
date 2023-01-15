// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      email: json['email'] as String,
      name: json['name'] as String?,
      password: json['password'] as String,
      medicine: (json['medicine'] as List<dynamic>?)
          ?.map((e) => Medicine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'medicine': instance.medicine,
    };
