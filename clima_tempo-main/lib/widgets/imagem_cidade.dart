import 'package:flutter/material.dart';

class ImagemCidade extends StatelessWidget {
  final String url;
  final String temperatura;
  final IconData icone;

  const ImagemCidade({
    super.key,
    required this.url,
    required this.temperatura,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                url,
                fit: BoxFit.cover,
                errorBuilder: (context, erro, stackTrace) {
                  return Container(color: Colors.lightBlue.shade200);
                },
              ),
            ),
            Positioned.fill(child: Container(color: Colors.black26)),
            Positioned(
              left: 16,
              bottom: 16,
              child: Text(
                temperatura,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Icon(icone, color: Colors.white, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}