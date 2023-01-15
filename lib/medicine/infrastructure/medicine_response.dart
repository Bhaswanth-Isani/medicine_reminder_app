import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/medicine/domain/medicine.dart';

part 'medicine_response.freezed.dart';
part 'medicine_response.g.dart';

@freezed
class MedicineResponse with _$MedicineResponse {
  const factory MedicineResponse({
    required bool success,
    required String? error,
    required Medicine? medicine,
  }) = _MedicineResponse;

  factory MedicineResponse.fromJson(Map<String, Object?> json) =>
      _$MedicineResponseFromJson(json);
}
