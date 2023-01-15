import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/auth/domain/user.dart';

part 'medicine.freezed.dart';
part 'medicine.g.dart';

@freezed
class Medicine with _$Medicine {
  const factory Medicine({
    required String? id,
    required String name,
    required int compartment,
    required int number,
    required List<DateTime> time,
    required User? user,
    required String userID,
  }) = _Medicine;

  factory Medicine.fromJson(Map<String, Object?> json) =>
      _$MedicineFromJson(json);
}
