import 'package:my_mobile_app/src/modules/home/model/address_model.dart';
import 'package:dio/dio.dart';

class AddressRepository {
  final Dio _dio = Dio();

  Future<List<AddressModel>> fetchAddresses() async {
    final response = await _dio
        .get('https://viacep.com.br/ws/01001000/json/'); // Exemplo de endpoint
    final addresses = (response.data as List)
        .map((json) => AddressModel.fromJson(json))
        .toList();
    return addresses;
  }
}
