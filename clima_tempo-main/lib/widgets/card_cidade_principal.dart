import 'package:flutter/material.dart';

import 'info_clima.dart';

class CardCidadePrincipal extends StatelessWidget {
  final String nome;
  final String temperatura;
  final String minima;
  final String maxima;
  final IconData icone;
  final String umidade;
  final String vento;
  final String chuva;
  final VoidCallback onTap;

  const CardCidadePrincipal({
    super.key,
    required this.nome,
    required this.temperatura,
    required this.minima,
    required this.maxima,
    required this.icone,
    required this.umidade,
    required this.vento,
    required this.chuva,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.lightBlue.shade100,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      nome,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Mín $minima   Máx $maxima'),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(icone, size: 48, color: Colors.orange),
                  ),
                  SizedBox(width: 24),
                  Text(
                    temperatura,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade800,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InfoClima(
                    icone: Icons.water_drop,
                    valor: umidade,
                    cor: Colors.blue,
                  ),
                  InfoClima(
                    icone: Icons.air,
                    valor: vento,
                    cor: Colors.grey.shade700,
                  ),
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