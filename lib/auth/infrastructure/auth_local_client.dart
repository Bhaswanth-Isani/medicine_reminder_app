import 'package:isar/isar.dart';
import 'package:medicine_reminder_app/medicine/infrastructure/medicine_local_client.dart';

part 'auth_local_client.g.dart';

@collection
class AuthLocalClient {
  Id id = 0;
  late String email;
  late String name;
  late String token;

  final medicines = IsarLinks<MedicineLocalClient>();
}
