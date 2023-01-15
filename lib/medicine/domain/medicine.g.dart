// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Medicine _$$_MedicineFromJson(Map<String, dynamic> json) => _$_Medicine(
      id: json['id'] as String?,
      name: json['name'] as String,
      compartment: json['compartment'] as int,
      number: json['number'] as int,
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      userID: json['userID'] as String,
    );

Map<String, dynamic> _$$_MedicineToJson(_$_Medicine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'compartment': instance.compartment,
      'number': instance.number,
      'time': instance.time,
      'user': instance.user,
      'userID': instance.userID,
    };
