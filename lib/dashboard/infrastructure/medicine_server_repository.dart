import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/api/medicine/medicine_api_client.dart';
import 'package:medicine_reminder_app/api/medicine/medicine_api_input.dart';
import 'package:medicine_reminder_app/api/medicine/medicine_api_response.dart';
import 'package:medicine_reminder_app/core/core.dart';

final medicineServerRepositoryProvider =
    Provider<MedicineServerRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  final medicineApiClient =
      MedicineApiClient(dio, baseUrl: dotenv.env['PROD_URL']!);

  return MedicineServerRepository(medicineApiClient);
});

class MedicineServerRepository {
  MedicineServerRepository(this.medicineApiClient);

  final MedicineApiClient medicineApiClient;

  Future<Either<InfrastructureFailure, GetMedicineResponse>> getMedicine({
    required String id,
  }) async {
    if (id == '') {
      return left(const CoreInfrastructureFailure.invalidData());
    } else {
      final getMedicineInput = GetMedicineInput(id: id);

      try {
        final getMedicineResponse =
            await medicineApiClient.getMedicine(getMedicineInput);

        return right(getMedicineResponse);
      } on DioError catch (_) {
        return left(const CoreInfrastructureFailure.serverError());
      }
    }
  }

  Future<Either<InfrastructureFailure, CreateMedicineResponse>> createMedicine({
    required String name,
    required int compartment,
    required int number,
    required List<DateTime> time,
    required String token,
  }) async {
    if (name.trim() == '' || time.isEmpty || number == 0) {
      return left(const CoreInfrastructureFailure.invalidData());
    } else {
      final createMedicineInput = CreateMedicineInput(
        name: name,
        compartment: compartment,
        number: number,
        time: time.map((e) => e.toIso8601String()).toList(),
      );

      try {
        final createMedicineResponse =
            await medicineApiClient.createMedicine(createMedicineInput, token);

        return right(createMedicineResponse);
      } on DioError catch (_) {
        return left(const CoreInfrastructureFailure.serverError());
      }
    }
  }
}
