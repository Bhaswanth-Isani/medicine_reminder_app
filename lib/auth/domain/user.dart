import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/medicine/domain/medicine.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? id,
    required String email,
    String? name,
    required String password,
    List<Medicine>? medicine,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
