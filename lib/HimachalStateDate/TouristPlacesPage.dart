import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> places = {
    "Shimla (शिमला)": [
      {
        "name": "Mall Road (मॉल रोड)",
        "description": "Popular shopping street with colonial charm. उपनिवेश कालीन आकर्षण वाली मशहूर शॉपिंग स्ट्रीट।",
        "image": "assets/images/mallroad.jpg",
      },
      {
        "name": "Jakhoo Temple (जाखू मंदिर)",
        "description": "Famous Hanuman temple on a hilltop. पहाड़ी पर स्थित प्रसिद्ध हनुमान मंदिर।",
        "image": "assets/images/jakhoo.jpg",
      },
      {
        "name": "Christ Church (क्राइस्ट चर्च)",
        "description": "Second oldest church in North India. उत्तर भारत का दूसरा सबसे पुराना चर्च।",
        "image": "assets/images/christchurch.jpg",
      },
      {
        "name": "The Ridge (द रिज)",
        "description": "Open space with panoramic mountain views. पहाड़ों के शानदार नज़ारों वाला खुला मैदान।",
        "image": "assets/images/ridge.jpg",
      },
      {
        "name": "Kufri (कुफरी)",
        "description": "Small hill station for skiing and snow fun. स्कीइंग और बर्फीले मज़े के लिए मशहूर छोटा हिल स्टेशन।",
        "image": "assets/images/kufri.jpg",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final districtPlaces = places[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("$districtName - Tourist Places")),
      body: ListView.builder(
        itemCount: districtPlaces.length,
        itemBuilder: (context, index) {
          final place = districtPlaces[index];
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
                      description: place["description"]!,
                      image: place["image"]!,
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
