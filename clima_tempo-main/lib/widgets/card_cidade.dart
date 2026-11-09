import 'package:flutter/material.dart';

import 'info_clima.dart';

class CardCidade extends StatelessWidget {
  final String nome;
  final String temperatura;
  final String minima;
  final String maxima;
  final String umidade;
  final String vento;
  final String chuva;
  final VoidCallback onTap;

  const CardCidade({
    super.key,
    required this.nome,
    required this.temperatura,
    required this.minima,
    required this.maxima,
    required this.umidade,
    required this.vento,
    required this.chuva,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      nome,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    temperatura,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade800,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(child: Text('Mín $minima   Máx $maxima')),
                  InfoClima(
                    icone: Icons.water_drop,
                    valor: umidade,
                    cor: const Color.fromARGB(255, 56, 73, 87),
                  ),
                  SizedBox(width: 16),
                  InfoClima(
                    icone: Icons.air,
                    valor: vento,
                    cor: Colors.grey.shade700,
                  ),
                  SizedBox(width: 16),
                  InfoClima(
                    icone: Icons.umbrella,
                    valor: chuva,
                    cor: Colors.indigo,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}