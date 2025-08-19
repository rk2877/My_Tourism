import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class JharkhandDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {"name": "Ranchi", "image": "assets/images/ranchi.jpg"},
    {"name": "Jamshedpur", "image": "assets/images/jamshedpur.jpg"},
    {"name": "Dhanbad", "image": "assets/images/dhanbad.jpg"},
    {"name": "Hazaribagh", "image": "assets/images/hazaribagh.jpg"},
    {"name": "Deoghar", "image": "assets/images/deoghar.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jharkhand Districts")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                district["image"]!,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(district["name"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => JharkhandTouristPlacesPage(
                      districtName: district["name"]!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
