import 'package:dio/dio.dart' hide Headers;
import 'package:medicine_reminder_app/api/auth/auth_api_input.dart';
import 'package:medicine_reminder_app/api/auth/auth_api_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_client.g.dart';

/// Collection of multiple Auth API routes such as
/// - create-account
/// - login
/// - send-otp
@RestApi()
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {required String baseUrl}) = _AuthApiClient;

  /// Function to call /auth/create-account POST route with CreateAccountInput
  /// as body.
  @POST('/auth/create-account')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<UserApiResponse> createAccount(@Body() CreateAccountInput user);

  /// Function to call /auth/login POST route with LoginInput as body.
  @POST('/auth/login')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<UserApiResponse> loginUser(@Body() LoginInput user);

  /// Function to call /auth/send-otp GET route with SendOtpInput as body
  @GET('/auth/send-otp')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<SendOTPResponse> sendOTPToEmail(@Body() SendOTPInput data);

  /// Function to call /auth/forgot-password PATCH route with ForgotPasswordInput
  /// as body
  @PATCH('/auth/forgot-password')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ForgotPasswordResponse> forgotPassword(
    @Body() ForgotPasswordInput password,
  );
}
