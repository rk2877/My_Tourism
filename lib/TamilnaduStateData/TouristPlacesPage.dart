import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> places = {
    "Chennai (चेन्नई)": [
      {"name": "Marina Beach (मरीना बीच)", "image": "assets/images/marina.jpg", "description": "Longest urban beach in India. भारत का सबसे लंबा शहरी समुद्र तट।"},
      {"name": "Fort St. George (फोर्ट सेंट जॉर्ज)", "image": "assets/images/fortstgeorge.jpg", "description": "First English fortress in India. भारत में पहला अंग्रेजी किला।"},
      {"name": "Kapaleeshwarar Temple (कपलीश्वर मंदिर)", "image": "assets/images/kapaleeshwarar.jpg", "description": "Famous Shiva temple. प्रसिद्ध शिव मंदिर।"},
      {"name": "Valluvar Kottam (वल्लुवर कोट्टम)", "image": "assets/images/valluvar.jpg", "description": "Memorial for Tamil poet Thiruvalluvar. तमिल कवि तिरुवल्लुवर का स्मारक।"},
      {"name": "Government Museum (सरकारी संग्रहालय)", "image": "assets/images/museum.jpg", "description": "Oldest museum in India. भारत का सबसे पुराना संग्रहालय।"},
    ],
    "Madurai (मदुरै)": [
      {"name": "Meenakshi Temple (मीनाक्षी मंदिर)", "image": "assets/images/meenakshi.jpg", "description": "Famous Hindu temple. प्रसिद्ध हिंदू मंदिर।"},
      {"name": "Thirumalai Nayakkar Palace (तिरुमलाई नायक महल)", "image": "assets/images/palace.jpg", "description": "Historic 17th century palace. 17वीं सदी का ऐतिहासिक महल।"},
      {"name": "Gandhi Memorial Museum (गांधी स्मारक संग्रहालय)", "image": "assets/images/gandhimuseum.jpg", "description": "Museum dedicated to Mahatma Gandhi. महात्मा गांधी को समर्पित संग्रहालय।"},
      {"name": "Azhagar Kovil (अझगर कोविल)", "image": "assets/images/azhagar.jpg", "description": "Famous Vishnu temple. प्रसिद्ध विष्णु मंदिर।"},
      {"name": "Pazhamudhir Solai (पझमुदिर सोलई)", "image": "assets/images/pazhamudir.jpg", "description": "Hill temple dedicated to Murugan. मुरुगन को समर्पित पहाड़ी मंदिर।"},
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
                      placeDescription: place["description"]!,
                      imagePath: place["image"]!,
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
