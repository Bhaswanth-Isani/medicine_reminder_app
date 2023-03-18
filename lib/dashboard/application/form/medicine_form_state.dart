import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_form_state.freezed.dart';

@freezed
class MedicineFormState with _$MedicineFormState {
  const factory MedicineFormState({
    required String name,
    required int compartment,
    required int number,
    required List<DateTime> time,
    required bool showErrors,
  }) = _MedicineFormState;

  factory MedicineFormState.initial() => const MedicineFormState(
        name: '',
        compartment: 1,
        number: 0,
        time: [],
        showErrors: false,
      );
}
