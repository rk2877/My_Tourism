import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class KarnatakaDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Bengaluru Urban (बेंगलुरु शहरी)",
      "description": "Capital city known for technology hub and vibrant culture. राजधानी शहर, जो तकनीकी केंद्र और जीवंत संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/images/bengaluru_urban.jpg",
    },
    {
      "name": "Mysuru (मैसूरु)",
      "description": "Famous for Mysore Palace and Dussehra festival. मैसूर पैलेस और दशहरा उत्सव के लिए प्रसिद्ध।",
      "image": "assets/images/mysuru.jpg",
    },
    {
      "name": "Hampi (हम्पी)",
      "description": "UNESCO heritage site with ancient temples and ruins. प्राचीन मंदिरों और खंडहरों वाला यूनेस्को धरोहर स्थल।",
      "image": "assets/images/hampi.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Karnataka Districts (कर्नाटक जिले)")),
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
