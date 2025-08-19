import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class SikkimDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Gangtok (गंगटोक)",
      "description":
      "Capital city of Sikkim. सिक्किम की राजधानी। Famous for monasteries, MG Marg, and scenic beauty. मठ, एमजी मार्ग और सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/images/gangtok.jpg",
    },
    {
      "name": "Pelling (पेलिंग)",
      "description":
      "Known for views of Kanchenjunga. कंचनजंगा के दृश्यों के लिए प्रसिद्ध। Famous for Pemayangtse Monastery and Skywalk. पेमायंग्त्से मठ और स्काईवॉक के लिए मशहूर।",
      "image": "assets/images/pelling.jpg",
    },
    {
      "name": "Namchi (नामची)",
      "description":
      "Famous for Char Dham and giant statues. चार धाम और विशाल मूर्तियों के लिए प्रसिद्ध।",
      "image": "assets/images/namchi.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sikkim Districts (सिक्किम के जिले)")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(district["image"]!,
                  width: 60, height: 60, fit: BoxFit.cover),
              title: Text(district["name"]!),
              subtitle: Text(
                district["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
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
