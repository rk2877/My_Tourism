import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class HimachalDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Shimla (शिमला)",
      "description": "Capital city of Himachal Pradesh, famous for colonial architecture and Mall Road. हिमाचल प्रदेश की राजधानी, अपने औपनिवेशिक वास्तुकला और मॉल रोड के लिए प्रसिद्ध।",
      "image": "assets/images/shimla.jpg",
    },
    {
      "name": "Manali (मनाली)",
      "description": "Popular hill station known for adventure sports and snow. लोकप्रिय हिल स्टेशन जो एडवेंचर स्पोर्ट्स और बर्फ के लिए मशहूर है।",
      "image": "assets/images/manali.jpg",
    },
    {
      "name": "Dharamshala (धर्मशाला)",
      "description": "Known for Tibetan culture and Dalai Lama's residence. तिब्बती संस्कृति और दलाई लामा के निवास के लिए प्रसिद्ध।",
      "image": "assets/images/dharamshala.jpg",
    },
    {
      "name": "Kullu (कुल्लू)",
      "description": "Famous for Kullu Dussehra festival and river rafting. कुल्लू दशहरा और रिवर राफ्टिंग के लिए मशहूर।",
      "image": "assets/images/kullu.jpg",
    },
    {
      "name": "Kangra (कांगड़ा)",
      "description": "Known for Kangra Fort and tea gardens. कांगड़ा किला और चाय बागानों के लिए प्रसिद्ध।",
      "image": "assets/images/kangra.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Himachal Pradesh Districts (जिले)")),
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
              subtitle: Text(district["description"]!, maxLines: 2, overflow: TextOverflow.ellipsis),
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
