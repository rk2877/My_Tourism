import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> placesData = {
    "Bhopal (भोपाल)": [
      {
        "name": "Upper Lake (ऊपरी झील)",
        "image": "assets/images/upper_lake.jpg",
        "description": "Upper Lake is the largest artificial lake in India. ऊपरी झील भारत की सबसे बड़ी कृत्रिम झील है।"
      },
      {
        "name": "Taj-ul-Masajid (ताज-उल-मस्जिद)",
        "image": "assets/images/taj_ul_masajid.jpg",
        "description": "One of the largest mosques in Asia. एशिया की सबसे बड़ी मस्जिदों में से एक।"
      },
      {
        "name": "Van Vihar National Park (वन विहार राष्ट्रीय उद्यान)",
        "image": "assets/images/van_vihar.jpg",
        "description": "A zoological park with wildlife in natural habitat. एक वन्यजीव पार्क जहां जानवर प्राकृतिक माहौल में रहते हैं।"
      },
      {
        "name": "Bharat Bhavan (भारत भवन)",
        "image": "assets/images/bharat_bhavan.jpg",
        "description": "A multi-arts complex. एक बहु-कलात्मक परिसर।"
      },
      {
        "name": "Shaukat Mahal (शौकत महल)",
        "image": "assets/images/shaukat_mahal.jpg",
        "description": "A blend of Indo-Islamic and European architecture. इंडो-इस्लामिक और यूरोपीय वास्तुकला का संगम।"
      },
    ],
    // इसी तरह बाकी जिलों के लिए भी 5-5 प्लेसेस जोड़ें...
  };

  @override
  Widget build(BuildContext context) {
    final places = placesData[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("$districtName - Tourist Places")),
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
