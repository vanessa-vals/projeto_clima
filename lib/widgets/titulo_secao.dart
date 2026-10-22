import 'package:flutter/material.dart';



class TituloSecao extends StatelessWidget {
  final String titulo;

  const TituloSecao({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Text(
        titulo,
        style: const TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(68, 138, 255, 1),
        ),
      ),
    );
  }
}