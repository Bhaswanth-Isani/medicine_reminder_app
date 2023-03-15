import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/core/core.dart';

part 'auth_api_response.freezed.dart';
part 'auth_api_response.g.dart';

/// Response type for both create-account and login API routes in AuthApiClient.
@freezed
class UserApiResponse with _$UserApiResponse {
  const factory UserApiResponse({
    required bool success,
    required User? user,
    required String? token,
    required String? error,
  }) = _UserApiResponse;

  factory UserApiResponse.fromJson(Map<String, dynamic> json) =>
      _$UserApiResponseFromJson(json);
}

/// Response type for send-otp API route in AuthApiClient.
@freezed
class SendOTPResponse with _$SendOTPResponse {
  const factory SendOTPResponse({
    required bool success,
    @OTPConverter() required OTP? otp,
    required String? error,
  }) = _SendOTPResponse;

  factory SendOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$SendOTPResponseFromJson(json);
}

/// Response type for forgot-password API route in AuthApiClient.
@freezed
class ForgotPasswordResponse with _$ForgotPasswordResponse {
  const factory ForgotPasswordResponse({
    required bool success,
    required String? error,
  }) = _ForgotPasswordResponse;

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);
}
