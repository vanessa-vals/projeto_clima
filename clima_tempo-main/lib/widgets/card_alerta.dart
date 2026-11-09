import 'package:flutter/material.dart';

class CardAlerta extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String descricao;

  const CardAlerta({
    super.key,
    required this.icone,
    required this.titulo,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(icone, color: Colors.deepOrange),
        title: Text(titulo),
        subtitle: Text(descricao),
      ),
    );
  }
}