import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/core/domain/infrastructure_failure.dart';
import 'package:medicine_reminder_app/dashboard/infrastructure/medicine_isar.dart';

part 'medicine_state.freezed.dart';

@freezed
class MedicineState with _$MedicineState {
  const factory MedicineState({
    required bool isLoading,
    required List<MedicineIsar>? medicines,
    required Either<InfrastructureFailure, Unit>? successOrFailure,
  }) = _MedicineState;

  factory MedicineState.initial() => const MedicineState(
        isLoading: false,
        medicines: null,
        successOrFailure: null,
      );
}
