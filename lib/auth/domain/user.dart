import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/medicine/domain/medicine.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String? id,
    required String email,
    required String name,
    required String password,
    required List<Medicine>? medicine,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
