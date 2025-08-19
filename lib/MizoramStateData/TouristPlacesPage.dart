import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> places = {
    "Aizawl (आइजोल)": [
      {
        "name": "Durtlang Hills (दुर्तलंग हिल्स)",
        "description": "Offers panoramic views of Aizawl city. आइजोल शहर का शानदार दृश्य देखने की जगह।",
        "image": "assets/images/durtlang.jpg",
      },
      {
        "name": "Mizoram State Museum (मिजोरम राज्य संग्रहालय)",
        "description": "Showcases Mizo culture and history. मिजो संस्कृति और इतिहास का प्रदर्शन।",
        "image": "assets/images/museum.jpg",
      },
      {
        "name": "Reiek (रियेक)",
        "description": "Beautiful hill for trekking. ट्रेकिंग के लिए सुंदर पहाड़ी।",
        "image": "assets/images/reiek.jpg",
      },
      {
        "name": "Solomon's Temple (सोलोमन का मंदिर)",
        "description": "A grand church in Aizawl. आइजोल में भव्य चर्च।",
        "image": "assets/images/solomon.jpg",
      },
      {
        "name": "KV Paradise (केवी पैराडाइस)",
        "description": "Memorial dedicated to love. प्रेम को समर्पित स्मारक।",
        "image": "assets/images/kvparadise.jpg",
      },
    ],
    "Lunglei (लुंगलई)": [
      {
        "name": "Saikuti Hall (सैकुटी हॉल)",
        "description": "Cultural hub of Lunglei. लुंगलई का सांस्कृतिक केंद्र।",
        "image": "assets/images/saikuti.jpg",
      },
      {
        "name": "Khawnglung Wildlife Sanctuary (खावंगलुंग वन्यजीव अभयारण्य)",
        "description": "Home to rich flora and fauna. समृद्ध वनस्पति और जीवों का घर।",
        "image": "assets/images/khawnglung.jpg",
      },
      {
        "name": "Thuamluaia Mual (थुआमलुआइया मुआल)",
        "description": "Open-air stadium for events. आयोजनों के लिए ओपन-एयर स्टेडियम।",
        "image": "assets/images/stadium.jpg",
      },
      {
        "name": "Serkawn (सेरकाउन)",
        "description": "Known for educational institutions. शैक्षणिक संस्थानों के लिए प्रसिद्ध।",
        "image": "assets/images/serkawn.jpg",
      },
      {
        "name": "Lunglei View Point (लुंगलई व्यू प्वाइंट)",
        "description": "Beautiful sunset view. सुंदर सूर्यास्त दृश्य।",
        "image": "assets/images/viewpoint.jpg",
      },
    ],
    "Champhai (चम्फाई)": [
      {
        "name": "Rih Dil (रिह दिल)",
        "description": "A sacred lake for the Mizos. मिजो लोगों के लिए पवित्र झील।",
        "image": "assets/images/rihdil.jpg",
      },
      {
        "name": "Lengteng Wildlife Sanctuary (लेंगटेंग वन्यजीव अभयारण्य)",
        "description": "Rich biodiversity spot. समृद्ध जैव विविधता का स्थान।",
        "image": "assets/images/lengteng.jpg",
      },
      {
        "name": "Murlen National Park (मुरलेन राष्ट्रीय उद्यान)",
        "description": "Dense forests and wildlife. घने जंगल और वन्यजीव।",
        "image": "assets/images/murlen.jpg",
      },
      {
        "name": "Thasiama Seno Neihna (थसियामा सेनो नेहना)",
        "description": "Legendary cliff site. पौराणिक चट्टान स्थल।",
        "image": "assets/images/thasiama.jpg",
      },
      {
        "name": "Champhai Vineyards (चम्फाई अंगूर के बागान)",
        "description": "Beautiful vineyards with a view. सुंदर अंगूर के बागान।",
        "image": "assets/images/vineyards.jpg",
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
              subtitle: Text(place["description"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      placeName: place["name"]!,
                      placeDescription: place["description"]!,
                      placeImage: place["image"]!,
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
