import 'package:isar/isar.dart';
import 'package:medicine_reminder_app/auth/domain/user.dart';
import 'package:medicine_reminder_app/auth/infrastructure/auth_local_client.dart';

part 'medicine_local_repository.g.dart';

@collection
class MedicineLocalRepository {
  Id id = Isar.autoIncrement;
  late String name;
  late int compartment;
  late int number;
  late List<DateTime> time;
  late String userID;

  final user = IsarLink<AuthLocalClient>();
}
