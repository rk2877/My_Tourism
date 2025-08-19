import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> touristPlaces = {
    "Gangtok (गंगटोक)": [
      {
        "name": "MG Marg (एमजी मार्ग)",
        "description":
        "Famous shopping street. प्रसिद्ध खरीदारी सड़क। Beautiful at night with lights. रात में रोशनी के साथ बेहद सुंदर।",
        "image": "assets/images/mg_marg.jpg",
      },
      {
        "name": "Rumtek Monastery (रुमटेक मठ)",
        "description":
        "One of the largest monasteries in Sikkim. सिक्किम के सबसे बड़े मठों में से एक।",
        "image": "assets/images/rumtek.jpg",
      },
    ],
    "Pelling (पेलिंग)": [
      {
        "name": "Pemayangtse Monastery (पेमायंग्त्से मठ)",
        "description":
        "Famous Buddhist monastery. प्रसिद्ध बौद्ध मठ।",
        "image": "assets/images/pemayangtse.jpg",
      },
      {
        "name": "Pelling Skywalk (पेलिंग स्काईवॉक)",
        "description":
        "Glass bridge with mountain views. पहाड़ों के दृश्यों के साथ कांच का पुल।",
        "image": "assets/images/skywalk.jpg",
      },
    ],
    "Namchi (नामची)": [
      {
        "name": "Char Dham (चार धाम)",
        "description":
        "Hindu pilgrimage site. हिंदू तीर्थ स्थल।",
        "image": "assets/images/char_dham.jpg",
      },
      {
        "name": "Samdruptse Statue (समद्रुप्त्से प्रतिमा)",
        "description":
        "Tall statue of Guru Padmasambhava. गुरु पद्मसम्भव की ऊंची प्रतिमा।",
        "image": "assets/images/samdruptse.jpg",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final places = touristPlaces[districtName] ?? [];
    return Scaffold(
      appBar: AppBar(title: Text("$districtName - Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(place["image"]!,
                  width: 60, height: 60, fit: BoxFit.cover),
              title: Text(place["name"]!),
              subtitle: Text(
                place["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      name: place["name"]!,
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
