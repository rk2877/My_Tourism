import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String placeName;
  final String placeDesc;
  final String placeImage;

  PlaceDetailsPage({
    required this.placeName,
    required this.placeDesc,
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
                placeDesc,
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
