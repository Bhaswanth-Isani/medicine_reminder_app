import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_api_input.freezed.dart';
part 'medicine_api_input.g.dart';

@freezed
class CreateMedicineInput with _$CreateMedicineInput {
  const factory CreateMedicineInput({
    required String name,
    required int compartment,
    required int number,
    required List<String> time,
  }) = _CreateMedicineInput;

  factory CreateMedicineInput.fromJson(Map<String, dynamic> json) =>
      _$CreateMedicineInputFromJson(json);
}

@freezed
class GetMedicineInput with _$GetMedicineInput {
  const factory GetMedicineInput({
    required String id,
  }) = _GetMedicineInput;

  factory GetMedicineInput.fromJson(Map<String, dynamic> json) =>
      _$GetMedicineInputFromJson(json);
}
