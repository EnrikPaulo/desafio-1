import 'package:mobx/mobx.dart';
import 'package:my_mobile_app/src/modules/home/model/address_model.dart';
import 'package:my_mobile_app/src/modules/home/storage/local_storage.dart';

part 'history_controller.g.dart';

// ignore: library_private_types_in_public_api
class HistoryController = _HistoryControllerBase with _$HistoryController;

abstract class _HistoryControllerBase with Store {
  final LocalStorage _localStorage = LocalStorage();

  @observable
  List<AddressModel> addresses = [];

  @action
  Future<void> loadHistory() async {
    addresses = await _localStorage.getAddresses();
  }

  @action
  Future<void> addToHistory(AddressModel address) async {
    addresses.add(address);
    await _localStorage.saveAddress(address);
  }
}
