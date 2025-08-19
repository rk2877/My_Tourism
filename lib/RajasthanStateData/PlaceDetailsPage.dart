import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String name;
  final String description;
  final String image;

  PlaceDetailsPage({required this.name, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(image, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
