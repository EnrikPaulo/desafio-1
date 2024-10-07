import 'package:my_mobile_app/src/modules/home/repository/address_repository.dart';
import 'package:my_mobile_app/src/modules/home/model/address_model.dart';

class AddressService {
  final AddressRepository _repository = AddressRepository();

  Future<List<AddressModel>> getAddresses() async {
    return await _repository.fetchAddresses();
  }
}
