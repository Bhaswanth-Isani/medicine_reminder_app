import 'package:dio/dio.dart' hide Headers;
import 'package:medicine_reminder_app/api/medicine/medicine_api_input.dart';
import 'package:medicine_reminder_app/api/medicine/medicine_api_response.dart';
import 'package:retrofit/http.dart';

part 'medicine_api_client.g.dart';

@RestApi()
abstract class MedicineApiClient {
  factory MedicineApiClient(Dio dio, {required String baseUrl}) =
      _MedicineApiClient;

  @POST('/medicine/get-medicine')
  Future<GetMedicineResponse> getMedicine(
    @Body() GetMedicineInput medicine, {
    @Header('Content-Type') String contentType = 'application/json',
  });

  @POST('/medicine/create-medicine')
  Future<CreateMedicineResponse> createMedicine(
    @Body() CreateMedicineInput medicine,
    @Header('Authorization') String token, {
    @Header('Content-Type') String contentType = 'application/json',
  });

  @GET('/medicine/')
  Future<GetReminderResponse> getReminder({
    @Header('Content-Type') String contentType = 'application/json',
  });
}
