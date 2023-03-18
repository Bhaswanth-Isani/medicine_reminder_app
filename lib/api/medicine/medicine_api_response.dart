import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/dashboard/domain/medicine.dart';

part 'medicine_api_response.freezed.dart';
part 'medicine_api_response.g.dart';

@freezed
class CreateMedicineResponse with _$CreateMedicineResponse {
  const factory CreateMedicineResponse({
    required bool success,
    required Medicine? medicine,
    required String? error,
  }) = _CreateMedicineResponse;

  factory CreateMedicineResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateMedicineResponseFromJson(json);
}

@freezed
class GetMedicineResponse with _$GetMedicineResponse {
  const factory GetMedicineResponse({
    required bool success,
    required List<Medicine>? medicine,
    required String? error,
  }) = _GetMedicineResponse;

  factory GetMedicineResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMedicineResponseFromJson(json);
}

@freezed
class GetReminderResponse with _$GetReminderResponse {
  const factory GetReminderResponse({
    required bool success,
    required List<Reminder>? reminders,
    required String? error,
  }) = _GetReminderResponse;

  factory GetReminderResponse.fromJson(Map<String, dynamic> json) =>
      _$GetReminderResponseFromJson(json);
}

@freezed
class Reminder with _$Reminder {
  const factory Reminder({
    required String id,
    required int compartment,
    required String time,
  }) = _Reminder;

  factory Reminder.fromJson(Map<String, dynamic> json) =>
      _$ReminderFromJson(json);
}
