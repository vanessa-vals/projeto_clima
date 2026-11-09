import 'package:flutter/material.dart';

import '../models/clima.dart';
import '../widgets/card_cidade.dart';
import '../widgets/card_cidade_principal.dart';
import 'ver_clima.dart';

class TelaInicialScreen extends StatelessWidget {
  const TelaInicialScreen({super.key});

  static const cidades = <Clima>[
    Clima(
      nome: 'São Paulo',
      temperatura: 24,
      minima: 18,
      maxima: 27,
      sensacaoTermica: 26,
      umidade: 68,
      vento: 12,
      chuva: 40,
      icone: Icons.cloud,
      imagemUrl: 'https://commons.wikimedia.org/wiki/Special:FilePath/Bairro_dos_jardins_em_são_paulo_(1)_(cropped).jpg?width=600',
      alertas: [
        AlertaClima(
          icone: Icons.thunderstorm,
          titulo: 'Chuva forte',
          descricao: 'Previsto para hoje, a partir das 18h',
        ),
        AlertaClima(
          icone: Icons.air,
          titulo: 'Vento forte',
          descricao: 'Rajadas de até 50 km/h a partir das 20h',
        ),
      ],
      indicadores: [
        IndicadorClima(icone: Icons.wb_sunny, valor: '6', nome: 'Índice UV'),
        IndicadorClima(icone: Icons.speed, valor: '1013 hPa', nome: 'Pressão'),
        IndicadorClima(
          icone: Icons.visibility,
          valor: '10 km',
          nome: 'Visibilidade',
        ),
        IndicadorClima(
          icone: Icons.wb_twilight,
          valor: '05:48',
          nome: 'Nascer do sol',
        ),
      ],
      previsao: [
        PrevisaoDia(
          dia: 'Quarta',
          minima: 18,
          maxima: 27,
          temperaturaManha: 19,
          temperaturaTarde: 27,
          icone: Icons.cloud,
        ),
        PrevisaoDia(
          dia: 'Quinta',
          minima: 17,
          maxima: 24,
          temperaturaManha: 18,
          temperaturaTarde: 24,
          icone: Icons.umbrella,
        ),
        PrevisaoDia(
          dia: 'Sexta',
          minima: 16,
          maxima: 26,
          temperaturaManha: 17,
          temperaturaTarde: 26,
          icone: Icons.wb_sunny,
        ),
        PrevisaoDia(
          dia: 'Sábado',
          minima: 17,
          maxima: 29,
          temperaturaManha: 19,
          temperaturaTarde: 29,
          icone: Icons.wb_sunny,
        ),
        PrevisaoDia(
          dia: 'Domingo',
          minima: 18,
          maxima: 28,
          temperaturaManha: 20,
          temperaturaTarde: 28,
          icone: Icons.cloud,
        ),
      ],
    ),
    Clima(
      nome: 'Rio de Janeiro',
      temperatura: 29,
      minima: 23,
      maxima: 32,
      sensacaoTermica: 36,
      umidade: 74,
      vento: 15,
      chuva: 20,
      icone: Icons.wb_sunny,
      imagemUrl: 'https://commons.wikimedia.org/wiki/Special:FilePath/Cristo_Redentor_-_Rio_de_Janeiro,_Brasil.jpg?width=600',
      alertas: [
        AlertaClima(
          icone: Icons.wb_sunny,
          titulo: 'Calor intenso',
          descricao: 'Sensação térmica de até 36°C entre 12h e 16h',
        ),
        AlertaClima(
          icone: Icons.waves,
          titulo: 'Mar agitado',
          descricao: 'Ondas de até 2 metros nas praias da Zona Sul',
        ),
      ],
      indicadores: [
        IndicadorClima(icone: Icons.wb_sunny, valor: '9', nome: 'Índice UV'),
        IndicadorClima(icone: Icons.speed, valor: '1011 hPa', nome: 'Pressão'),
        IndicadorClima(
          icone: Icons.visibility,
          valor: '12 km',
          nome: 'Visibilidade',
        ),
        IndicadorClima(
          icone: Icons.wb_twilight,
          valor: '05:15',
          nome: 'Nascer do sol',
        ),
      ],
      previsao: [
        PrevisaoDia(
          dia: 'Quarta',
          minima: 23,
          maxima: 32,
          temperaturaManha: 25,
          temperaturaTarde: 32,
          icone: Icons.wb_sunny,
        ),
        PrevisaoDia(
          dia: 'Quinta',
          minima: 23,
          maxima: 33,
          temperaturaManha: 26,
          temperaturaTarde: 33,
          icone: Icons.wb_sunny,
        ),
        PrevisaoDia(
          dia: 'Sexta',
          minima: 22,
          maxima: 30,
          temperaturaManha: 24,
          temperaturaTarde: 30,
          icone: Icons.cloud,
        ),
        PrevisaoDia(
          dia: 'Sábado',
          minima: 21,
          maxima: 28,
          temperaturaManha: 23,
          temperaturaTarde: 28,
          icone: Icons.umbrella,
        ),
        PrevisaoDia(
          dia: 'Domingo',
          minima: 22,
          maxima: 29,
          temperaturaManha: 24,
          temperaturaTarde: 29,
          icone: Icons.cloud,
        ),
      ],
    ),
    Clima(
      nome: 'Curitiba',
      temperatura: 17,
      minima: 12,
      maxima: 21,
      sensacaoTermica: 16,
      umidade: 82,
      vento: 10,
      chuva: 70,
      icone: Icons.umbrella,
      imagemUrl: 'https://commons.wikimedia.org/wiki/Special:FilePath/Jardim_Botânico_de_Curitiba.jpg?width=600',
      alertas: [
        AlertaClima(
          icone: Icons.umbrella,
          titulo: 'Chuva contínua',
          descricao: 'Chuva fraca a moderada durante todo o dia',
        ),
        AlertaClima(
          icone: Icons.ac_unit,
          titulo: 'Frente fria',
          descricao: 'Queda de temperatura prevista para a noite',
        ),
      ],
      indicadores: [
        IndicadorClima(icone: Icons.wb_sunny, valor: '2', nome: 'Índice UV'),
        IndicadorClima(icone: Icons.speed, valor: '1017 hPa', nome: 'Pressão'),
        IndicadorClima(
          icone: Icons.visibility,
          valor: '6 km',
          nome: 'Visibilidade',
        ),
        IndicadorClima(
          icone: Icons.wb_twilight,
          valor: '06:02',
          nome: 'Nascer do sol',
        ),
      ],
      previsao: [
        PrevisaoDia(
          dia: 'Quarta',
          minima: 12,
          maxima: 21,
          temperaturaManha: 13,
          temperaturaTarde: 20,
          icone: Icons.umbrella,
        ),
        PrevisaoDia(
          dia: 'Quinta',
          minima: 10,
          maxima: 18,
          temperaturaManha: 12,
          temperaturaTarde: 17,
          icone: Icons.cloud,
        ),
        PrevisaoDia(
          dia: 'Sexta',
          minima: 9,
          maxima: 20,
          temperaturaManha: 11,
          temperaturaTarde: 19,
          icone: Icons.wb_sunny,
        ),
        PrevisaoDia(
          dia: 'Sábado',
          minima: 10,
          maxima: 23,
          temperaturaManha: 13,
          temperaturaTarde: 22,
          icone: Icons.wb_sunny,
        ),
        PrevisaoDia(
          dia: 'Domingo',
          minima: 12,
          maxima: 22,
          temperaturaManha: 14,
          temperaturaTarde: 21,
          icone: Icons.cloud,
        ),
      ],
    ),
    Clima(
      nome: 'Salvador',
      temperatura: 30,
      minima: 25,
      maxima: 32,
      sensacaoTermica: 33,
      umidade: 78,
      vento: 18,
      chuva: 15,
      icone: Icons.wb_sunny,
      imagemUrl: 'https://commons.wikimedia.org/wiki/Special:FilePath/Pelourinho,_Salvador.jpg?width=600',
      alertas: [
        AlertaClima(
          icone: Icons.wb_sunny,
          titulo: 'UV muito alto',
          descricao: 'Use protetor solar entre 10h e 15h',
        ),
        AlertaClima(
          icone: Icons.air,
          titulo: 'Vento moderado',
          descricao: 'Rajadas de até 35 km/h à tarde',
        ),
      ],
      indicadores: [
        IndicadorClima(icone: Icons.wb_sunny, valor: '10', nome: 'Índice UV'),
        IndicadorClima(icone: Icons.speed, valor: '1010 hPa', nome: 'Pressão'),
        IndicadorClima(
          icone: Icons.visibility,
          valor: '14 km',
          nome: 'Visibilidade',
        ),
        IndicadorClima(
          icone: Icons.wb_twilight,
          valor: '05:21',
          nome: 'Nascer do sol',
        ),
      ],
      previsao: [
        PrevisaoDia(
          dia: 'Quarta',
          minima: 25,
          maxima: 32,
          temperaturaManha: 26,
          temperaturaTarde: 31,
          icone: Icons.wb_sunny,
        ),
        PrevisaoDia(
          dia: 'Quinta',
          minima: 25,
          maxima: 31,
          temperaturaManha: 26,
          temperaturaTarde: 30,
          icone: Icons.cloud,
        ),
        PrevisaoDia(
          dia: 'Sexta',
          minima: 24,
          maxima: 32,
          temperaturaManha: 26,
          temperaturaTarde: 32,
          icone: Icons.wb_sunny,
        ),
        PrevisaoDia(
          dia: 'Sábado',
          minima: 25,
          maxima: 33,
          temperaturaManha: 27,
          temperaturaTarde: 33,
          icone: Icons.wb_sunny,
        ),
        PrevisaoDia(
          dia: 'Domingo',
          minima: 24,
          maxima: 30,
          temperaturaManha: 25,
          temperaturaTarde: 29,
          icone: Icons.umbrella,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final cidadePrincipal = cidades.first;

    return Scaffold(
      appBar: AppBar(title: const Text('ClimaApp')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CardCidadePrincipal(
            nome: cidadePrincipal.nome,
            temperatura: '${cidadePrincipal.temperatura}°C',
            minima: '${cidadePrincipal.minima}°C',
            maxima: '${cidadePrincipal.maxima}°C',
            icone: cidadePrincipal.icone,
            umidade: '${cidadePrincipal.umidade}%',
            vento: '${cidadePrincipal.vento} km/h',
            chuva: '${cidadePrincipal.chuva}%',
            onTap: () => _abrirClima(context, cidadePrincipal),
          ),
          const SizedBox(height: 16),
          const Center(child: Text('Toque na cidade para ver mais')),
          const SizedBox(height: 8),
          ...cidades
              .skip(1)
              .map(
                (clima) => CardCidade(
                  nome: clima.nome,
                  temperatura: '${clima.temperatura}°C',
                  minima: '${clima.minima}°C',
                  maxima: '${clima.maxima}°C',
                  umidade: '${clima.umidade}%',
                  vento: '${clima.vento} km/h',
                  chuva: '${clima.chuva}%',
                  onTap: () => _abrirClima(context, clima),
                ),
              ),
        ],
      ),
    );
  }
}

void _abrirClima(BuildContext context, Clima clima) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => VerClimaScreen(clima: clima)),
  );
}
