import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class MeghalayaDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "East Khasi Hills (ईस्ट खासी हिल्स)",
      "description":
      "Known for Shillong, the Scotland of the East. शिलांग के लिए प्रसिद्ध, जिसे 'पूर्व का स्कॉटलैंड' कहा जाता है।",
      "image": "assets/images/east_khasi_hills.jpg",
    },
    {
      "name": "West Khasi Hills (वेस्ट खासी हिल्स)",
      "description":
      "Famous for Nongkhnum Island. नोंगख्नुम द्वीप के लिए प्रसिद्ध।",
      "image": "assets/images/west_khasi_hills.jpg",
    },
    {
      "name": "Ri-Bhoi (री-भोई)",
      "description":
      "Gateway to Meghalaya with scenic beauty. मेघालय का प्रवेश द्वार, सुंदर प्राकृतिक दृश्यों के साथ।",
      "image": "assets/images/ri_bhoi.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meghalaya Districts (मेघालय के जिले)")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(district["image"]!,
                  width: 60, height: 60, fit: BoxFit.cover),
              title: Text(district["name"]!,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(district["description"]!),
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
