import 'package:flutter/material.dart';
import 'package:my_mobile_app/src/modules/history/controller/history_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final historyController = Provider.of<HistoryController>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Histórico de Endereços')),
      body: Observer(
        builder: (_) {
          return FutureBuilder(
            future: historyController.loadHistory(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                itemCount: historyController.addresses.length,
                itemBuilder: (context, index) {
                  final address = historyController.addresses[index];
                  return ListTile(
                    title: Text(address
                        .street), // Altere conforme o que tiver na sua model
                    subtitle: Text(address
                        .city), // Altere conforme o que tiver na sua model
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
