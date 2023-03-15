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
  @POST('/user/create-account')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<UserApiResponse> createAccount(@Body() CreateAccountInput user);

  /// Function to call /auth/login POST route with LoginInput as body.
  @POST('/user/login')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<UserApiResponse> loginUser(@Body() LoginInput user);
}
