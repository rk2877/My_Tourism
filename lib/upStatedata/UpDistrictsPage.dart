import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class UPDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Agra",
      "image": "assets/images/agra.jpg",
    },
    {
      "name": "Lucknow",
      "image": "assets/images/lucknow.jpg",
    },
    {
      "name": "Varanasi",
      "image": "assets/images/varanasi.jpg",
    },
    {
      "name": "Prayagraj",
      "image": "assets/images/prayagraj.jpg",
    },
    {
      "name": "Kanpur",
      "image": "assets/images/kanpur.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uttar Pradesh Districts")),
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
