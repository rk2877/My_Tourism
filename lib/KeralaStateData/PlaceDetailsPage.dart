import 'package:flutter/material.dart';

class KeralaPlaceDetailsPage extends StatelessWidget {
  final String placeName;
  final String placeDescription;
  final String placeImage;

  KeralaPlaceDetailsPage({
    required this.placeName,
    required this.placeDescription,
    required this.placeImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(placeName)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(placeImage, height: 200, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              placeName,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              placeDescription,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
