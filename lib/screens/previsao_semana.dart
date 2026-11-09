import 'package:flutter/material.dart';

import '../widgets/titulo_secao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  const PrevisaoSemanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Previsão da semana')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TituloSecao(titulo: 'Faixa de temperatura'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.lightBlue.shade100,
                  child: const Center(child: Text('18°C')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.orange.shade200,
                  child: const Center(child: Text('26°C')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.red.shade200,
                  child: const Center(child: Text('31°C')),
                ),
              ),
            ],
          ),
          const Divider(),
          const TituloSecao(titulo: 'Resumo do dia'),
          Container(
            height: 200,
            color: Colors.blueGrey.shade50,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amber.shade100,
                    child: const Center(child: Text('Manhã: 20°C')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.deepOrange.shade100,
                    child: const Center(child: Text('Tarde: 29°C')),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          const TituloSecao(titulo: 'Próximos dias'),
          const _LinhaPrevisao(
            dia: 'Sexta',
            icone: Icons.wb_sunny,
            minima: '19°C',
            maxima: '30°C',
          ),
          const _LinhaPrevisao(
            dia: 'Sábado',
            icone: Icons.cloud,
            minima: '18°C',
            maxima: '27°C',
          ),
          const _LinhaPrevisao(
            dia: 'Domingo',
            icone: Icons.umbrella,
            minima: '17°C',
            maxima: '24°C',
          ),
          const _LinhaPrevisao(
            dia: 'Segunda',
            icone: Icons.cloud,
            minima: '18°C',
            maxima: '26°C',
          ),
          const _LinhaPrevisao(
            dia: 'Terça',
            icone: Icons.wb_sunny,
            minima: '20°C',
            maxima: '31°C',
          ),
        ],
      ),
    );
  }
}

class _LinhaPrevisao extends StatelessWidget {
  final String dia;
  final IconData icone;
  final String minima;
  final String maxima;

  const _LinhaPrevisao({
    required this.dia,
    required this.icone,
    required this.minima,
    required this.maxima,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(flex: 2, child: Text(dia)),
          Icon(icone, size: 28),
          Expanded(child: Text(minima, textAlign: TextAlign.center)),
          Expanded(child: Text(maxima, textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}
