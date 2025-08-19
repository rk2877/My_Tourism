import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class MaharashtraDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Mumbai (मुंबई)",
      "image": "assets/images/mumbai.jpg",
      "description":
      "मुंबई महाराष्ट्र की राजधानी और भारत की वित्तीय नगरी है। Mumbai is the capital of Maharashtra and the financial hub of India."
    },
    {
      "name": "Pune (पुणे)",
      "image": "assets/images/pune.jpg",
      "description":
      "पुणे शिक्षा और आईटी हब के रूप में जाना जाता है। Pune is known as the education and IT hub."
    },
    {
      "name": "Nagpur (नागपुर)",
      "image": "assets/images/nagpur.jpg",
      "description":
      "नागपुर को संतरे का शहर कहा जाता है। Nagpur is known as the Orange City."
    },
    {
      "name": "Aurangabad (औरंगाबाद)",
      "image": "assets/images/aurangabad.jpg",
      "description":
      "औरंगाबाद अजंता-एलोरा गुफाओं के लिए प्रसिद्ध है। Aurangabad is famous for Ajanta-Ellora caves."
    },
    {
      "name": "Nashik (नासिक)",
      "image": "assets/images/nashik.jpg",
      "description":
      "नासिक कुंभ मेले और अंगूर की खेती के लिए प्रसिद्ध है। Nashik is famous for Kumbh Mela and vineyards."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Maharashtra (महाराष्ट्र) Districts")),
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
