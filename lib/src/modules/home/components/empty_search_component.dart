import 'package:flutter/material.dart';

class EmptySearchComponent extends StatelessWidget {
  const EmptySearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Nenhum endereço encontrado.',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
