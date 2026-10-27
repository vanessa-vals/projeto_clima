import 'package:flutter/material.dart';

import 'screens/clima_atual.dart';
import 'screens/previsao_semana.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Clima tempo Senac', home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clima tempo Senac')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ClimaAtualScreen()),
            ),
            child: const Text('Clima atual'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const PrevisaoSemanaScreen()),
            ),
            child: const Text('Previsão da semana'),
          ),
        ],
      ),
    );
  }
}
