import 'package:flutter/material.dart';

class InfoClima extends StatelessWidget {
  final IconData icone;
  final String valor;
  final Color cor;

  const InfoClima({
    super.key,
    required this.icone,
    required this.valor,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icone, size: 28, color: cor),
        SizedBox(height: 4),
        Text(valor),
      ],
    );
  }
}