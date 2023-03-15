import 'package:isar/isar.dart';
import 'package:medicine_reminder_app/core/infrastructure/helpers/fast_hash_function.dart';

part 'admin_isar.g.dart';

@collection
class AdminIsar {
  late String id;

  Id get isarId => fastHash(id);

  late String username;

  @Index(unique: true)
  late String email;

  late String token;
}
