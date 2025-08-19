import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String name;
  final String image;
  final String description;

  const PlaceDetailsPage({
    Key? key,
    required this.name,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                description,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
