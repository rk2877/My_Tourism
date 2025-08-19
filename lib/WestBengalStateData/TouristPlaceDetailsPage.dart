import 'package:flutter/material.dart';

class TouristPlaceDetailsPage extends StatelessWidget {
  final String name;
  final String image;
  final String description;

  TouristPlaceDetailsPage({
    required this.name,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.all(16.0),
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
