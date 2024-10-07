import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
            title), // O construtor 'Text' não precisa ser const aqui, pois 'title' é uma variável
      ),
      body: const Center(
        child: Text(
          'Bem-vindo à Home Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
