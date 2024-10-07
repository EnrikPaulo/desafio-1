import 'package:flutter/material.dart';
import 'package:my_mobile_app/src/modules/home/page/home_page.dart';
import 'package:my_mobile_app/src/modules/initial/page/initial_page.dart'; // Importando a página inicial
import 'package:my_mobile_app/src/modules/history/controller/history_controller.dart'; // Importando o controller de histórico
import 'package:my_mobile_app/src/routes/app_routes.dart'; // Importando o arquivo de rotas
import 'package:provider/provider.dart'; // Importando o Provider

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<HistoryController>(
          create: (_) => HistoryController(), // Registrando o HistoryController
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.initial, // Definindo a rota inicial
      routes: {
        AppRoutes.home: (context) => const HomePage(
            title: 'Flutter Demo Home Page'), // Acesse a página inicial
        AppRoutes.initial: (context) =>
            const InitialPage(), // Acesse a página inicial
        // Adicione outras rotas conforme necessário
      },
    );
  }
}
