import 'package:dio/dio.dart';
import 'package:medicine_reminder_app/auth/infrastructure/auth_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_server_client.g.dart';

@RestApi(
  baseUrl: 'https://medicine-reminder-server-production.up.railway.app/user',
)
abstract class AuthServerClient {
  factory AuthServerClient(Dio dio, {String baseUrl}) = _AuthServerClient;

  @POST('/create-account')
  Future<AuthResponse> createAccount();

  @POST('/login')
  Future<AuthResponse> login();
}
