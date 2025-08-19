import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class AndamanNicobarDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "South Andaman (दक्षिण अंडमान)",
      "image": "assets/images/south_andaman.jpg",
    },
    {
      "name": "North and Middle Andaman (उत्तर और मध्य अंडमान)",
      "image": "assets/images/north_middle_andaman.jpg",
    },
    {
      "name": "Nicobar (निकोबार)",
      "image": "assets/images/nicobar.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Andaman and Nicobar Districts")),
      backgroundColor: Colors.red,
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                district["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
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
