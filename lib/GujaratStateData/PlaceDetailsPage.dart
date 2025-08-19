import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String placeName;
  final String description;
  final String imagePath;

  PlaceDetailsPage({
    required this.placeName,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(placeName)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, width: double.infinity, height: 250, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.all(16.0),
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
