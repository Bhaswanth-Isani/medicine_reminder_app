// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserApiResponse _$$_UserApiResponseFromJson(Map<String, dynamic> json) =>
    _$_UserApiResponse(
      success: json['success'] as bool,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_UserApiResponseToJson(_$_UserApiResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'user': instance.user,
      'token': instance.token,
      'error': instance.error,
    };

_$_SendOTPResponse _$$_SendOTPResponseFromJson(Map<String, dynamic> json) =>
    _$_SendOTPResponse(
      success: json['success'] as bool,
      otp: _$JsonConverterFromJson<String, OTP>(
          json['otp'], const OTPConverter().fromJson),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_SendOTPResponseToJson(_$_SendOTPResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'otp': _$JsonConverterToJson<String, OTP>(
          instance.otp, const OTPConverter().toJson),
      'error': instance.error,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$_ForgotPasswordResponse _$$_ForgotPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ForgotPasswordResponse(
      success: json['success'] as bool,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_ForgotPasswordResponseToJson(
        _$_ForgotPasswordResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
    };
