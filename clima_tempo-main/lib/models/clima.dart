import 'package:flutter/material.dart';

class Clima {
  final String nome;
  final int temperatura;
  final int minima;
  final int maxima;
  final int sensacaoTermica;
  final int umidade;
  final int vento;
  final int chuva;
  final IconData icone;
  final String imagemUrl;
  final List<AlertaClima> alertas;
  final List<IndicadorClima> indicadores;
  final List<PrevisaoDia> previsao;

  const Clima({
    required this.nome,
    required this.temperatura,
    required this.minima,
    required this.maxima,
    required this.sensacaoTermica,
    required this.umidade,
    required this.vento,
    required this.chuva,
    required this.icone,
    required this.imagemUrl,
    required this.alertas,
    required this.indicadores,
    required this.previsao,
  });
}

class AlertaClima {
  final IconData icone;
  final String titulo;
  final String descricao;

  const AlertaClima({
    required this.icone,
    required this.titulo,
    required this.descricao,
  });
}

class IndicadorClima {
  final IconData icone;
  final String valor;
  final String nome;

  const IndicadorClima({
    required this.icone,
    required this.valor,
    required this.nome,
  });
}

class PrevisaoDia {
  final String dia;
  final int minima;
  final int maxima;
  final int temperaturaManha;
  final int temperaturaTarde;
  final IconData icone;

  const PrevisaoDia({
    required this.dia,
    required this.minima,
    required this.maxima,
    required this.temperaturaManha,
    required this.temperaturaTarde,
    required this.icone,
  });
}
