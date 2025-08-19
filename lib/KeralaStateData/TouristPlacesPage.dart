import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class KeralaTouristPlacesPage extends StatelessWidget {
  final String districtName;

  KeralaTouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> touristPlaces = {
    "Thiruvananthapuram (तिरुवनंतपुरम)": [
      {
        "name": "Padmanabhaswamy Temple (पद्मनाभस्वामी मंदिर)",
        "description": "A famous Hindu temple known for its architecture. अपनी वास्तुकला के लिए प्रसिद्ध एक प्रसिद्ध हिंदू मंदिर।",
        "image": "assets/images/padmanabhaswamy.jpg",
      },
      {
        "name": "Kovalam Beach (कोवलम बीच)",
        "description": "One of the most famous beaches in Kerala. केरल के सबसे प्रसिद्ध समुद्र तटों में से एक।",
        "image": "assets/images/kovalam.jpg",
      },
    ],
    "Kochi (कोच्चि)": [
      {
        "name": "Fort Kochi (फोर्ट कोच्चि)",
        "description": "Known for colonial architecture and Chinese fishing nets. औपनिवेशिक वास्तुकला और चीनी मछली पकड़ने के जाल के लिए प्रसिद्ध।",
        "image": "assets/images/fortkochi.jpg",
      },
      {
        "name": "Marine Drive (मरीन ड्राइव)",
        "description": "Beautiful promenade overlooking the backwaters. बैकवाटर के नज़ारों वाला सुंदर पथ।",
        "image": "assets/images/marinedrive.jpg",
      },
    ],
    "Kozhikode (कोझिकोड)": [
      {
        "name": "Kozhikode Beach (कोझिकोड बीच)",
        "description": "Popular beach known for sunsets. सूर्यास्त के लिए प्रसिद्ध लोकप्रिय समुद्र तट।",
        "image": "assets/images/kozhikodebeach.jpg",
      },
      {
        "name": "Beypore (बेयपोर)",
        "description": "Historic port famous for shipbuilding. जहाज निर्माण के लिए प्रसिद्ध ऐतिहासिक बंदरगाह।",
        "image": "assets/images/beypore.jpg",
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
              subtitle: Text(place["description"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => KeralaPlaceDetailsPage(
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
