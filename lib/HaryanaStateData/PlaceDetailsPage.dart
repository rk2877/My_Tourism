import 'package:flutter/material.dart';

class HaryanaPlaceDetailsPage extends StatelessWidget {
  final String placeName;
  final String placeDescription;
  final String placeImage;

  HaryanaPlaceDetailsPage({
    required this.placeName,
    required this.placeDescription,
    required this.placeImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(placeName)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(placeImage, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                placeDescription,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
