import 'package:flutter/material.dart';

import '../models/clima.dart';
import '../widgets/item_previsao_dia.dart';
import '../widgets/titulo_secao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  final Clima clima;

  const PrevisaoSemanaScreen({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    final menorTemperatura = clima.previsao.isEmpty
        ? clima.minima
        : clima.previsao
              .map((dia) => dia.minima)
              .reduce((a, b) => a < b ? a : b);
    final maiorTemperatura = clima.previsao.isEmpty
        ? clima.maxima
        : clima.previsao
              .map((dia) => dia.maxima)
              .reduce((a, b) => a > b ? a : b);
    final resumoDoDia = clima.previsao.isEmpty ? null : clima.previsao.first;

    return Scaffold(
      appBar: AppBar(title: Text('Previsão - ${clima.nome}')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TituloSecao(titulo: 'Faixa de temperatura'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.lightBlue.shade200,
                  child: Center(child: Text('$menorTemperatura°C')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.amber.shade300,
                  child: Center(child: Text('${clima.temperatura}°C')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.deepOrange.shade300,
                  child: Center(child: Text('$maiorTemperatura°C')),
                ),
              ),
            ],
          ),
          const Divider(),
          const TituloSecao(titulo: 'Resumo do dia'),
          if (resumoDoDia != null)
            Container(
              height: 200,
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.lightGreen.shade200,
                      child: Center(
                        child: Text('Manhã: ${resumoDoDia.temperaturaManha}°C'),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.orange.shade200,
                      child: Center(
                        child: Text('Tarde: ${resumoDoDia.temperaturaTarde}°C'),
                      ),
                    ),
                  ),
                ],
              ),
            )
          else
            const ListTile(title: Text('Sem dados para hoje')),
          const Divider(),
          const TituloSecao(titulo: 'Próximos dias'),
          ...clima.previsao.map(
            (dia) => ItemPrevisaoDia(
              dia: dia.dia,
              icone: dia.icone,
              minima: '${dia.minima}°C',
              maxima: '${dia.maxima}°C',
            ),
          ),
        ],
      ),
    );
  }
}
