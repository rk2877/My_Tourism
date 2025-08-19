import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String placeName;
  final String description;
  final String image;

  PlaceDetailsPage({
    required this.placeName,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(placeName)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, fit: BoxFit.cover, width: double.infinity),
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
