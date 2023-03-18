import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/dashboard/application/form/medicine_form_state.dart';

final medicineFormControllerProvider =
    StateNotifierProvider<MedicineFormController, MedicineFormState>(
  (ref) => MedicineFormController(),
);

class MedicineFormController extends StateNotifier<MedicineFormState> {
  MedicineFormController() : super(MedicineFormState.initial());

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void updateCompartment(int? compartment) {
    state = state.copyWith(compartment: compartment ?? 1);
  }

  void updateNumber(int number) {
    state = state.copyWith(number: number);
  }

  void addTime(DateTime dateTime) {
    if (!state.time.contains(dateTime)) {
      state = state.copyWith(time: [...state.time, dateTime]);
    }
  }

  void removeTime(DateTime dateTime) {
    final time = [...state.time]..remove(dateTime);

    state = state.copyWith(time: time);
  }

  void onSubmit({bool showErrors = true}) {
    state = state.copyWith(showErrors: showErrors);
  }

  void reset() {
    state = MedicineFormState.initial();
  }
}
