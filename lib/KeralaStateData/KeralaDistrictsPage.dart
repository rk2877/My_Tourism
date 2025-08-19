import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class KeralaDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Thiruvananthapuram (तिरुवनंतपुरम)",
      "description": "Capital city of Kerala, famous for Padmanabhaswamy Temple. केरल की राजधानी, पद्मनाभस्वामी मंदिर के लिए प्रसिद्ध।",
      "image": "assets/images/thiruvananthapuram.jpg",
    },
    {
      "name": "Kochi (कोच्चि)",
      "description": "Known as Queen of the Arabian Sea, famous for backwaters. अरब सागर की रानी, बैकवाटर के लिए प्रसिद्ध।",
      "image": "assets/images/kochi.jpg",
    },
    {
      "name": "Kozhikode (कोझिकोड)",
      "description": "Historic city famous for spices and beaches. मसालों और समुद्र तटों के लिए प्रसिद्ध ऐतिहासिक शहर।",
      "image": "assets/images/kozhikode.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kerala Districts (केरल के जिले)")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(district["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(district["name"]!),
              subtitle: Text(district["description"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => KeralaTouristPlacesPage(
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
