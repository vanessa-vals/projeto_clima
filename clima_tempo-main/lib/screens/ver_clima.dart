import 'package:flutter/material.dart';

import '../models/clima.dart';
import '../widgets/card_alerta.dart';
import '../widgets/card_indicador.dart';
import '../widgets/imagem_cidade.dart';
import '../widgets/item_previsao_resumo.dart';
import '../widgets/titulo_secao.dart';
import 'previsao_semana.dart';

class VerClimaScreen extends StatelessWidget {
  final Clima clima;

  const VerClimaScreen({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    final proximosDias = clima.previsao.take(3).toList();

    return Scaffold(
      appBar: AppBar(title: Text(clima.nome)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TituloSecao(titulo: 'Condição do tempo'),
          const SizedBox(height: 8),
          ImagemCidade(
            url: clima.imagemUrl,
            temperatura: '${clima.temperatura}°C',
            icone: clima.icone,
          ),
          const SizedBox(height: 8),
          Center(child: Text('Sensação térmica de ${clima.sensacaoTermica}°C')),
          const Divider(),
          const TituloSecao(titulo: 'Alertas'),
          if (clima.alertas.isEmpty)
            const ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text('Nenhum alerta no momento'),
            )
          else
            ...clima.alertas.map(
              (alerta) => CardAlerta(
                icone: alerta.icone,
                titulo: alerta.titulo,
                descricao: alerta.descricao,
              ),
            ),
          const Divider(),
          const TituloSecao(titulo: 'Previsão da semana'),
          const SizedBox(height: 8),
          Card(
            elevation: 2,
            child: InkWell(
              key: const ValueKey('weeklyForecast'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PrevisaoSemanaScreen(clima: clima),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: proximosDias
                      .map(
                        (dia) => Expanded(
                          child: ItemPrevisaoResumo(
                            minima: '${dia.minima}°C',
                            icone: dia.icone,
                            maxima: '${dia.maxima}°C',
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          const Divider(),
          const TituloSecao(titulo: 'Indicadores'),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: clima.indicadores
                .map(
                  (indicador) => CardIndicador(
                    icone: indicador.icone,
                    valor: indicador.valor,
                    nome: indicador.nome,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
