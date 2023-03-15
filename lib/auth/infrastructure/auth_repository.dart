import 'package:medicine_reminder_app/auth/infrastructure/auth_local_repository.dart';
import 'package:medicine_reminder_app/auth/infrastructure/auth_server_repository.dart';

class AuthRepository {
  AuthRepository({
    required this.server,
    required this.local,
  });

  final BaseAuthServerRepository server;
  final BaseAuthLocalRepository local;
}
