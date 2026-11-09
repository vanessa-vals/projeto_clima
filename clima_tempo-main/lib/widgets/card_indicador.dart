import 'package:flutter/material.dart';

class CardIndicador extends StatelessWidget {
  final IconData icone;
  final String valor;
  final String nome;

  const CardIndicador({
    super.key,
    required this.icone,
    required this.valor,
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icone, size: 32, color: Colors.teal),
          SizedBox(height: 8),
          Text(
            valor,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(nome),
        ],
      ),
    );
  }
}