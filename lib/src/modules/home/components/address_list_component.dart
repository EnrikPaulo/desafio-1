import 'package:flutter/material.dart';
import 'package:my_mobile_app/src/modules/home/model/address_model.dart';

class AddressListComponent extends StatelessWidget {
  final List<AddressModel> addresses;

  const AddressListComponent({super.key, required this.addresses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: addresses.length,
      itemBuilder: (context, index) {
        final address = addresses[index];
        return ListTile(
          title: Text(address.street),
          subtitle: Text(address.city),
          onTap: () {
            // Implementar ação ao clicar no endereço
          },
        );
      },
    );
  }
}
