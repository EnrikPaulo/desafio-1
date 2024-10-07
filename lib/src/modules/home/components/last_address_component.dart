import 'package:flutter/material.dart';
import 'package:my_mobile_app/src/modules/home/model/address_model.dart';

class LastAddressComponent extends StatelessWidget {
  final AddressModel address;

  const LastAddressComponent({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Último Endereço'),
      subtitle: Text('${address.street}, ${address.city}'),
    );
  }
}
