import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class ChandigarhDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Chandigarh (चंडीगढ़)",
      "image": "assets/images/chandigarh.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chandigarh District")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(district["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(district["name"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
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
