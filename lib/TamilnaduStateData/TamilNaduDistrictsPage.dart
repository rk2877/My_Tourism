import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class TamilNaduDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Chennai (चेन्नई)",
      "description": "Chennai is the capital city of Tamil Nadu. चेन्नई तमिलनाडु की राजधानी है।",
      "image": "assets/images/chennai.jpg",
    },
    {
      "name": "Madurai (मदुरै)",
      "description": "Madurai is famous for Meenakshi Temple. मदुरै मीनाक्षी मंदिर के लिए प्रसिद्ध है।",
      "image": "assets/images/madurai.jpg",
    },
    {
      "name": "Coimbatore (कोयंबटूर)",
      "description": "Coimbatore is known as Manchester of South India. कोयंबटूर को दक्षिण भारत का मैनचेस्टर कहा जाता है।",
      "image": "assets/images/coimbatore.jpg",
    },
    {
      "name": "Tiruchirappalli (तिरुचिरापल्ली)",
      "description": "Famous for Rockfort Temple. रॉकफोर्ट मंदिर के लिए प्रसिद्ध।",
      "image": "assets/images/tiruchirappalli.jpg",
    },
    {
      "name": "Kanyakumari (कन्याकुमारी)",
      "description": "Southernmost tip of India. भारत का सबसे दक्षिणी छोर।",
      "image": "assets/images/kanyakumari.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tamil Nadu Districts (तमिलनाडु जिले)")),
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
