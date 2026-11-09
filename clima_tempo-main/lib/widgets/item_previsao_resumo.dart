import 'package:flutter/material.dart';

class ItemPrevisaoResumo extends StatelessWidget {
  final String minima;
  final IconData icone;
  final String maxima;

  const ItemPrevisaoResumo({
    super.key,
    required this.minima,
    required this.icone,
    required this.maxima,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(minima, style: TextStyle(color: Colors.blue)),
        Icon(icone, size: 28),
        Text(maxima, style: TextStyle(color: Colors.deepOrange)),
      ],
    );
  }
}