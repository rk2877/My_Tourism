import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String name;
  final String description;
  final String image;

  const PlaceDetailsPage({
    super.key,
    required this.name,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Image.network(image, height: 220, fit: BoxFit.cover),
          const SizedBox(height: 12),
          Text(name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(description, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
