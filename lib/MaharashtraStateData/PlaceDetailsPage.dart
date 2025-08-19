import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String placeName;
  final String description;

  PlaceDetailsPage({required this.placeName, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(placeName)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          description,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
