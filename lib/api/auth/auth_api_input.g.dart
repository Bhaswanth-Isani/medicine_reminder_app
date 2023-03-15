// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAccountInput _$$_CreateAccountInputFromJson(
        Map<String, dynamic> json) =>
    _$_CreateAccountInput(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_CreateAccountInputToJson(
        _$_CreateAccountInput instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };

_$_LoginInput _$$_LoginInputFromJson(Map<String, dynamic> json) =>
    _$_LoginInput(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_LoginInputToJson(_$_LoginInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$_SendOTPInput _$$_SendOTPInputFromJson(Map<String, dynamic> json) =>
    _$_SendOTPInput(
      email: json['email'] as String,
      isRegister: json['isRegister'] as bool,
    );

Map<String, dynamic> _$$_SendOTPInputToJson(_$_SendOTPInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'isRegister': instance.isRegister,
    };

_$_ForgotPasswordInput _$$_ForgotPasswordInputFromJson(
        Map<String, dynamic> json) =>
    _$_ForgotPasswordInput(
      email: json['email'] as String,
      newPassword: json['newPassword'] as String,
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$$_ForgotPasswordInputToJson(
        _$_ForgotPasswordInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'newPassword': instance.newPassword,
      'otp': instance.otp,
    };
