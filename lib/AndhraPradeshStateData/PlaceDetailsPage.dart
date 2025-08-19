import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String placeName;
  final String imagePath;
  final String description;

  PlaceDetailsPage({
    required this.placeName,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(placeName)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
