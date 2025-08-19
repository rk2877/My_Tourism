import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class HaryanaTouristPlacesPage extends StatelessWidget {
  final String districtName;

  HaryanaTouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> touristPlaces = {
    "Gurugram (गुरुग्राम)": [
      {
        "name": "Kingdom of Dreams (किंगडम ऑफ ड्रीम्स)",
        "description": "A grand cultural and entertainment destination. यह एक भव्य सांस्कृतिक और मनोरंजन स्थल है।",
        "image": "assets/images/kingdomofdreams.jpg",
      },
      {
        "name": "Leisure Valley Park (लीजर वैली पार्क)",
        "description": "A green park in Gurugram. गुरुग्राम का हरा-भरा पार्क।",
        "image": "assets/images/leisurevalley.jpg",
      },
    ],
    "Faridabad (फरीदाबाद)": [
      {
        "name": "Surajkund Mela (सूरजकुंड मेला)",
        "description": "Famous craft fair. प्रसिद्ध हस्तशिल्प मेला।",
        "image": "assets/images/surajkund.jpg",
      },
      {
        "name": "Raja Nahar Singh Palace (राजा नाहर सिंह पैलेस)",
        "description": "A historical fort. एक ऐतिहासिक किला।",
        "image": "assets/images/rajanaharsingh.jpg",
      },
    ],
    "Panipat (पानीपत)": [
      {
        "name": "Panipat Museum (पानीपत संग्रहालय)",
        "description": "Museum of historic wars. ऐतिहासिक युद्धों का संग्रहालय।",
        "image": "assets/images/panipatmuseum.jpg",
      },
      {
        "name": "Kabuli Bagh Mosque (काबुली बाग मस्जिद)",
        "description": "Historic mosque. ऐतिहासिक मस्जिद।",
        "image": "assets/images/kabulibagh.jpg",
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
              leading: Image.asset(place["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(place["name"]!),
              subtitle: Text(place["description"]!, maxLines: 2, overflow: TextOverflow.ellipsis),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HaryanaPlaceDetailsPage(
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
