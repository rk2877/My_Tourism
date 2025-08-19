import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> touristPlaces = {
    "Raipur (रायपुर)": [
      {
        "name": "Mahant Ghasidas Memorial Museum (महंत घासीदास स्मारक संग्रहालय)",
        "image": "assets/images/museum.jpg",
        "description": "This museum displays artifacts of Chhattisgarh's history. यह संग्रहालय छत्तीसगढ़ के इतिहास की कलाकृतियों को प्रदर्शित करता है।"
      },
      {
        "name": "Nandan Van Zoo (नंदन वन चिड़ियाघर)",
        "image": "assets/images/nandanvan.jpg",
        "description": "A large zoo and safari park. एक बड़ा चिड़ियाघर और सफारी पार्क।"
      },
      {
        "name": "Dudhadhari Monastery (दूधाधारी मठ)",
        "image": "assets/images/dudhadhari.jpg",
        "description": "Historic monastery built in the 17th century. 17वीं सदी में बना ऐतिहासिक मठ।"
      },
      {
        "name": "Purkhouti Muktangan (पुरखौती मुक्तांगन)",
        "image": "assets/images/purkhouti.jpg",
        "description": "An open-air museum showcasing tribal culture. एक खुला संग्रहालय जो जनजातीय संस्कृति को दर्शाता है।"
      },
      {
        "name": "Energy Park (ऊर्जा पार्क)",
        "image": "assets/images/energypark.jpg",
        "description": "A park dedicated to renewable energy education. नवीकरणीय ऊर्जा शिक्षा के लिए समर्पित पार्क।"
      },
    ],
    // बाकी जिलों के लिए भी लिस्ट इसी तरह बनाई जा सकती है
  };

  @override
  Widget build(BuildContext context) {
    final places = touristPlaces[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("Tourist Places in $districtName")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(place["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(place["name"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      placeName: place["name"]!,
                      imagePath: place["image"]!,
                      description: place["description"]!,
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
