import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:medicine_reminder_app/auth/application/application.dart';
import 'package:medicine_reminder_app/core/core.dart';
import 'package:medicine_reminder_app/dashboard/application/medicine_controller.dart';
import 'package:medicine_reminder_app/router/router.dart';
import 'package:medicine_reminder_app/theme/theme.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PatrioLayout(
      mobileLayout: const MedicineList(),
      tabletLayout: const MedicineList(),
      desktopLayout: const MedicineList(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Medicines'),
        backgroundColor: PatrioDarkTheme.scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => ref
                .read(medicineControllerProvider.notifier)
                .getMedicineFromServer(
                  id: ref.read(authControllerProvider).admin!.id,
                ),
            icon: const Icon(FeatherIcons.refreshCw),
          ),
          IconButton(
            onPressed: () => const RemindersRoute().push(context),
            icon: const Icon(FeatherIcons.list),
          ),
          IconButton(
            onPressed: () =>
                ref.read(authControllerProvider.notifier).signOut(),
            icon: const Icon(FeatherIcons.logOut),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => const MedicineFormRoute().push(context),
        child: const Icon(FeatherIcons.plus),
      ),
    );
  }
}

class MedicineList extends ConsumerWidget {
  const MedicineList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final medicineState = ref.watch(medicineControllerProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.separated(
        itemBuilder: (ctx, index) {
          final medicine = (medicineState.medicines ?? [])[index];

          return Container(
            margin: const EdgeInsets.only(top: 24),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xffc6c9ff),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/${index < 3 ? index + 1 : 2}.png',
                  height: 64,
                ),
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      medicine.name,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff514696),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: Wrap(
                        spacing: 8,
                        children: medicine.time
                            .map(
                              (e) => Chip(
                                label: Text(
                                  DateFormat('hh:mm a').format(e),
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 3),
                Container(
                  width: 50,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          medicine.number.toString(),
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Left',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox(height: 16);
        },
        itemCount: medicineState.medicines?.length ?? 0,
      ),
    );
  }
}
