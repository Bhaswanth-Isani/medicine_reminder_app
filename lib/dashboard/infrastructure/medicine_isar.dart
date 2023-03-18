import 'package:isar/isar.dart';
import 'package:medicine_reminder_app/core/core.dart';

part 'medicine_isar.g.dart';

@collection
class MedicineIsar {
  late String id;

  Id get isarId => fastHash(id);

  late String name;

  late int compartment;

  late int number;

  late List<DateTime> time;

  late String userID;
}
