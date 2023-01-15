// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicineResponse _$$_MedicineResponseFromJson(Map<String, dynamic> json) =>
    _$_MedicineResponse(
      success: json['success'] as bool,
      error: json['error'] as String?,
      medicine: json['medicine'] == null
          ? null
          : Medicine.fromJson(json['medicine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MedicineResponseToJson(_$_MedicineResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
      'medicine': instance.medicine,
    };
