import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:medicine_reminder_app/auth/auth.dart';
import 'package:medicine_reminder_app/core/core.dart';
import 'package:medicine_reminder_app/dashboard/application/form/medicine_form_controller.dart';
import 'package:medicine_reminder_app/dashboard/application/medicine_controller.dart';
import 'package:medicine_reminder_app/dashboard/presentation/widgets/medicine_test_form_field.dart';
import 'package:medicine_reminder_app/theme/patrio_dark_theme.dart';

class MedicineForm extends StatelessWidget {
  const MedicineForm({super.key});

  @override
  Widget build(BuildContext context) {
    return PatrioLayout(
      mobileLayout: const CreateMedicineForm(),
      tabletLayout: const CreateMedicineForm(),
      desktopLayout: const CreateMedicineForm(),
      appBar: AppBar(
        backgroundColor: PatrioDarkTheme.scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text('Create Medicine'),
      ),
    );
  }
}

class CreateMedicineForm extends ConsumerWidget {
  const CreateMedicineForm({super.key});

  Future<void> onSubmit(WidgetRef ref, BuildContext context) async {
    final medicineFormState = ref.read(medicineFormControllerProvider);

    ref.read(medicineFormControllerProvider.notifier).onSubmit();
    if (medicineFormState.name != '' &&
        medicineFormState.compartment != 0 &&
        medicineFormState.number > 0 &&
        medicineFormState.time.isNotEmpty) {
      await ref.read(medicineControllerProvider.notifier).createMedicine(
            name: medicineFormState.name,
            compartment: medicineFormState.compartment,
            number: medicineFormState.number,
            time: medicineFormState.time,
            token: 'Bearer ${ref.read(authControllerProvider).admin!.token}',
          );

      if (ref.read(medicineControllerProvider).successOrFailure != null &&
          ref.read(medicineControllerProvider).successOrFailure!.isRight()) {
        context.pop();
        ref.read(medicineFormControllerProvider.notifier).reset();
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final medicineFormState = ref.watch(medicineFormControllerProvider);
    final isLoading = ref
        .watch(medicineControllerProvider.select((value) => value.isLoading));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        autovalidateMode: medicineFormState.showErrors
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MedicineTestFormField(
              isLoading: isLoading,
              initialValue: ref.read(medicineFormControllerProvider).name,
              onChanged:
                  ref.read(medicineFormControllerProvider.notifier).updateName,
              isNumber: false,
              label: 'Name',
            ),
            const SizedBox(height: 16),
            MedicineTestFormField(
              isLoading: isLoading,
              initialValue:
                  ref.read(medicineFormControllerProvider).number.toString(),
              onChanged: (value) => ref
                  .read(medicineFormControllerProvider.notifier)
                  .updateNumber(int.parse(value)),
              isNumber: true,
              label: 'Number of Tablets',
            ),
            const SizedBox(height: 16),
            DropdownButton(
              hint: const Text('Compartment Number'),
              icon: const Icon(FeatherIcons.chevronDown),
              underline: Container(
                height: 2,
                color: PatrioDarkTheme.dividerColor,
              ),
              items: [
                DropdownMenuItem(
                  value: 1,
                  child: Text(
                    'ONE',
                    style: GoogleFonts.poppins(),
                  ),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text(
                    'TWO',
                    style: GoogleFonts.poppins(),
                  ),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text(
                    'THREE',
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ],
              value: medicineFormState.compartment,
              onChanged: ref
                  .read(medicineFormControllerProvider.notifier)
                  .updateCompartment,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [
                ...medicineFormState.time.map(
                  (e) => Chip(
                    label: Text(
                      DateFormat('hh:mm a').format(e),
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onDeleted: () => ref
                        .read(medicineFormControllerProvider.notifier)
                        .removeTime(e),
                    deleteIcon: const Icon(FeatherIcons.x),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );

                    if (time != null) {
                      ref.read(medicineFormControllerProvider.notifier).addTime(
                            DateTime.now()
                                .copyWith(hour: time.hour, minute: time.minute),
                          );
                    }
                  },
                  icon: const Icon(FeatherIcons.plus),
                ),
                const SizedBox(height: 48),
                AuthButton(
                  label: 'Create Medicine',
                  isLoading: isLoading,
                  onPressed: () => onSubmit(ref, context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
