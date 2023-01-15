import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'medicine_server_client.g.dart';

@RestApi(
  baseUrl:
      'https://medicine-reminder-server-production.up.railway.app/medicine',
)
abstract class MedicineServerClient {
  factory MedicineServerClient(Dio dio, {String baseUrl}) =
      _MedicineServerClient;

  @POST('create-medicine')
  Future<String> createMedicine();
}
