import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlace {
  final String name;
  final String imagePath;
  final String description;

  TouristPlace(this.name, this.imagePath, this.description);
}

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final List<TouristPlace> places = [
    TouristPlace(
      "RK Beach (आरके बीच)",
      "assets/places/rk_beach.jpg",
      "RK Beach is a popular tourist spot in Visakhapatnam, famous for its sunrise view. "
          "आरके बीच, विशाखापट्टनम का एक प्रसिद्ध पर्यटन स्थल है, जो अपने सूर्योदय के दृश्य के लिए मशहूर है।",
    ),
    TouristPlace(
      "Kailasagiri (कैलासगिरी)",
      "assets/places/kailasagiri.jpg",
      "Kailasagiri is a hilltop park with panoramic views of the city and sea. "
          "कैलासगिरी एक पहाड़ी पार्क है जहाँ से शहर और समुद्र का सुंदर दृश्य दिखाई देता है।",
    ),
    TouristPlace(
      "Submarine Museum (पनडुब्बी संग्रहालय)",
      "assets/places/submarine.jpg",
      "India's first submarine museum located on RK Beach. "
          "भारत का पहला पनडुब्बी संग्रहालय जो आरके बीच पर स्थित है।",
    ),
    TouristPlace(
      "Araku Valley (अराकू घाटी)",
      "assets/places/araku_valley.jpg",
      "Araku Valley is known for its coffee plantations and scenic beauty. "
          "अराकू घाटी अपनी कॉफी बागानों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
    ),
    TouristPlace(
      "Borra Caves (बोरा गुफाएँ)",
      "assets/places/borra_caves.jpg",
      "Borra Caves are ancient limestone caves with fascinating formations. "
          "बोरा गुफाएँ प्राचीन चूना पत्थर की गुफाएँ हैं जिनमें अद्भुत आकृतियाँ हैं।",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(districtName)),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                place.imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(place.name),
              subtitle: Text(
                place.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      placeName: place.name,
                      imagePath: place.imagePath,
                      description: place.description,
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
