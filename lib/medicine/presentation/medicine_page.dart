import 'package:auto_route/auto_route.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:medicine_reminder_app/auth/application/auth_repository.dart';
import 'package:medicine_reminder_app/core/presentation/custom_text_field.dart';
import 'package:medicine_reminder_app/core/presentation/router.dart';

class MedicinePage extends ConsumerWidget {
  const MedicinePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicine'),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            context.replaceRoute(const LoginRoute());
            ref.read(authRepositoryProvider.notifier).signOut();
          },
          icon: const Icon(FeatherIcons.logOut),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<dynamic>(
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom + 24,
                  right: 24,
                  left: 24,
                  top: 24,
                ),
                child: const AddMedicineForm(),
              );
            },
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
          );
        },
        child: const Icon(FeatherIcons.database),
      ),
    );
  }
}

class AddMedicineForm extends HookWidget {
  const AddMedicineForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final numberController = useTextEditingController();
    final time = useState<List<DateTime>>([]);

    return Form(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              label: 'NAME',
              controller: nameController,
              validator: (value) {
                if (value == null || value.length < 3) {
                  return 'Enter a valid medicine name';
                }
                return null;
              },
              isLoading: false,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              label: 'NUMBER',
              controller: numberController,
              textInputType: TextInputType.number,
              validator: (value) {
                if (value == null || int.parse(value) < 3) {
                  return 'Enter a valid medicine name';
                }
                return null;
              },
              isLoading: false,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 34,
              child: time.value.isEmpty
                  ? TimePicker(time: time)
                  : ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 6);
                      },
                      itemBuilder: (context, index) {
                        return time.value.length - 1 == index
                            ? Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TimeShower(time: time, index: index),
                                  const SizedBox(width: 6),
                                  TimePicker(time: time)
                                ],
                              )
                            : TimeShower(time: time, index: index);
                      },
                      itemCount: time.value.length,
                      scrollDirection: Axis.horizontal,
                    ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Add Medicine'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TimeShower extends StatelessWidget {
  const TimeShower({
    super.key,
    required this.time,
    required this.index,
  });

  final ValueNotifier<List<DateTime>> time;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        time.value = [...(time.value..removeAt(index))];
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          DateFormat.Hm().format(time.value[index]),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class TimePicker extends StatelessWidget {
  const TimePicker({
    super.key,
    required this.time,
  });

  final ValueNotifier<List<DateTime>> time;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        ).then((value) {
          final currentTime = DateTime.now();
          final requiredTime = currentTime
              .subtract(
                Duration(
                  hours: currentTime.hour,
                  minutes: currentTime.minute,
                  seconds: currentTime.second,
                  milliseconds: currentTime.millisecond,
                  microseconds: currentTime.microsecond,
                ),
              )
              .add(
                Duration(
                  hours: value?.hour ?? 0,
                  minutes: value?.minute ?? 0,
                ),
              );
          time.value =
              value != null ? [...time.value, requiredTime] : time.value;
        });
      },
      icon: const Icon(FeatherIcons.plus),
      label: const Text('Add'),
    );
  }
}
