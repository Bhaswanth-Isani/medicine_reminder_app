import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/core/core.dart';
import 'package:medicine_reminder_app/dashboard/application/medicine_state.dart';
import 'package:medicine_reminder_app/dashboard/infrastructure/medicine_local_repository.dart';
import 'package:medicine_reminder_app/dashboard/infrastructure/medicine_repository.dart';
import 'package:medicine_reminder_app/dashboard/infrastructure/medicine_server_repository.dart';

final medicineControllerProvider =
    StateNotifierProvider<MedicineController, MedicineState>((ref) {
  final medicineRepository = MedicineRepository(
    server: ref.read(medicineServerRepositoryProvider),
    local: ref.read(medicineLocalRepositoryProvider),
  );

  return MedicineController(medicineRepository);
});

class MedicineController extends StateNotifier<MedicineState> {
  MedicineController(this._medicineRepository)
      : super(MedicineState.initial()) {
    getMedicine();
  }

  final MedicineRepository _medicineRepository;

  void getMedicine() {
    _medicineRepository.local.getMedicines().fold(
          (failure) => state =
              state.copyWith(medicines: null, successOrFailure: left(failure)),
          (medicines) => state = state.copyWith(
            medicines: medicines,
            successOrFailure: right(unit),
          ),
        );
  }

  Future<void> getMedicineFromServer({required String id}) async {
    state = state.copyWith(
      isLoading: true,
      successOrFailure: null,
    );

    final getMedicineResponse =
        await _medicineRepository.server.getMedicine(id: id);

    getMedicineResponse.fold(
      (l) =>
          state = state.copyWith(isLoading: false, successOrFailure: left(l)),
      (response) {
        final medicines = response.medicine ?? [];

        if (response.error == null) {
          state = state.copyWith(
            isLoading: false,
            medicines: null,
            successOrFailure: right(unit),
          );

          for (var i = 0; i < medicines.length; i++) {
            final medicine = medicines.elementAt(i);

            _medicineRepository.local.saveMedicine(medicine).fold(
                  (l) => state = state.copyWith(
                    isLoading: false,
                    successOrFailure: left(l),
                  ),
                  (r) => state = state.copyWith(
                    isLoading: false,
                    medicines: [...?state.medicines, r],
                    successOrFailure: right(unit),
                  ),
                );
          }
        } else {
          state = state.copyWith(
            isLoading: false,
            successOrFailure:
                left(const CoreInfrastructureFailure.serverError()),
          );
        }
      },
    );
  }

  Future<void> createMedicine({
    required String name,
    required int compartment,
    required int number,
    required List<DateTime> time,
    required String token,
  }) async {
    state = state.copyWith(
      isLoading: true,
      medicines: null,
      successOrFailure: null,
    );

    final createMedicineResponse =
        await _medicineRepository.server.createMedicine(
      name: name,
      compartment: compartment,
      number: number,
      time: time,
      token: token,
    );

    createMedicineResponse.fold(
      (l) =>
          state = state.copyWith(isLoading: false, successOrFailure: left(l)),
      (r) {
        if (r.error == null) {
          _medicineRepository.local.saveMedicine(r.medicine!).fold(
                (l) => state =
                    state.copyWith(isLoading: false, successOrFailure: left(l)),
                (r) => state = state.copyWith(
                  isLoading: false,
                  medicines: [...?state.medicines, r],
                  successOrFailure: right(unit),
                ),
              );
        } else {
          state = state.copyWith(
            isLoading: false,
            successOrFailure:
                left(const CoreInfrastructureFailure.serverError()),
          );
        }
      },
    );
  }

  void reset() {
    state = MedicineState.initial();
  }
}
