import 'package:flutter/material.dart';
import 'widgets/titulo_secao.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeatherApp',
      home: const Scaffold(
        body: _TelaClima(),
      ),
    );
  } 
}

class _TelaClima extends StatelessWidget {
  const _TelaClima();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        // a) Cidade atual
        const TituloSecao(titulo: 'Cidade atual'),
        const Text(
          'Santo André - SP',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          'Quinta-feira, 15 de outubro',
          style: TextStyle(fontSize: 16),
        ),
        const Divider(),

        // b) Temperatura
        const TituloSecao(titulo: 'Temperatura'),
        const Text(
          '26°C',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
        ),
        const Text(
          'Sensação térmica: 28°C',
          style: TextStyle(fontSize: 16),
        ),
        const Divider(),

        // c) Condição do tempo
        const TituloSecao(titulo: 'Condição do tempo'),
        Image.network(
          'https://picsum.photos/seed/picsum/200/300',
          height: 200,
          fit: BoxFit.cover,
        ),
        const Divider(),

        // d) Detalhes
        const TituloSecao(titulo: 'Detalhes'),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.water_drop, color: Colors.blue, size: 32),
            Icon(Icons.air, color: Colors.teal, size: 32),
            Icon(Icons.umbrella, color: Colors.indigo, size: 32),
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('65%'),
            Text('12 km/h'),
            Text('30%'),
          ],
        ),
        const Divider(),

        // e) Atualização
        const TituloSecao(titulo: 'Atualização'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Atualizar'),
        ),
      ],
    );
  }
}