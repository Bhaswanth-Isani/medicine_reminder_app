import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:medicine_reminder_app/api/medicine/medicine_api_client.dart';
import 'package:medicine_reminder_app/api/medicine/medicine_api_response.dart';
import 'package:medicine_reminder_app/auth/auth.dart';
import 'package:medicine_reminder_app/core/core.dart';
import 'package:medicine_reminder_app/theme/patrio_dark_theme.dart';

class RemindersPage extends StatelessWidget {
  const RemindersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PatrioLayout(
      mobileLayout: const RemindersWidget(),
      tabletLayout: const RemindersPage(),
      desktopLayout: const RemindersPage(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Medicine'),
        backgroundColor: PatrioDarkTheme.scaffoldBackgroundColor,
      ),
    );
  }
}

class RemindersWidget extends HookConsumerWidget {
  const RemindersWidget({super.key});

  Future<List<Reminder>> getReminder(
    WidgetRef ref,
  ) async {
    final response = await MedicineApiClient(
      ref.read(dioClientProvider),
      baseUrl: dotenv.env['PROD_URL']!,
    ).getReminder();

    return response.reminders!;
  }

  int numOfWeeks(int year) {
    final dec28 = DateTime(year, 12, 28);
    final dayOfDec28 = int.parse(DateFormat('D').format(dec28));

    return ((dayOfDec28 - dec28.weekday + 10) / 7).floor();
  }

  int weekNumber(DateTime date) {
    final dayOfYear = int.parse(DateFormat('D').format(date));
    var woy = ((dayOfYear - date.weekday + 10) / 7).floor();
    if (woy < 1) {
      woy = numOfWeeks(date.year - 1);
    } else if (woy > numOfWeeks(date.year)) {
      woy = 1;
    }

    return woy;
  }

  bool getTick(List<Reminder> reminders, String day, int compartment) {
    var tick = false;

    final date = DateTime.now();

    for (var i = 0; i < reminders.length; i++) {
      final reminder = reminders.elementAt(i);
      final reminderDate = DateTime.parse(reminder.time);
      if (compartment == reminder.compartment &&
          !tick &&
          weekNumber(date) == weekNumber(reminderDate)) {
        tick = DateFormat('EEEE').format(reminderDate) == day;
      }
    }

    return tick;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reminders = useState<List<Reminder>>([]);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Table(
            children: [
              const TableRow(
                children: [
                  Text(
                    'Day',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '1',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '3',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    'Monday',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Monday', 1) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Monday', 2) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Monday', 3) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    'Tuesday',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Tuesday', 1) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Tuesday', 2) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Tuesday', 3) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    'Wednesday',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Wednesday', 1) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Wednesday', 2) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Wednesday', 3) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    'Thursday',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Thursday', 1) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Thursday', 2) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Thursday', 3) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    'Friday',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Friday', 1) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Friday', 2) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Friday', 3) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    'Saturday',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Saturday', 1) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Saturday', 2) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Saturday', 3) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    'Sunday',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Sunday', 1) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Sunday', 2) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    getTick(reminders.value, 'Sunday', 3) ? 'T' : '',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          AuthButton(
            label: 'Get List',
            isLoading: false,
            onPressed: () async => reminders.value = await getReminder(ref),
          ),
        ],
      ),
    );
  }
}
