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

  // Dummy data for demonstration (Here you can map different districts with their own places if needed)
  final List<TouristPlace> places = [
    TouristPlace(
      "Kamakhya Temple (कामाख्या मंदिर)",
      "assets/places/kamakhya_temple.jpg",
      "Kamakhya Temple in Guwahati is one of the most important Shakti Peethas in India. "
          "गुवाहाटी का कामाख्या मंदिर भारत के सबसे महत्वपूर्ण शक्तिपीठों में से एक है।",
    ),
    TouristPlace(
      "Brahmaputra River Cruise (ब्रह्मपुत्र नदी क्रूज)",
      "assets/places/brahmaputra_cruise.jpg",
      "Enjoy a serene boat ride on the mighty Brahmaputra River. "
          "शक्तिशाली ब्रह्मपुत्र नदी पर एक शांत नाव यात्रा का आनंद लें।",
    ),
    TouristPlace(
      "Kaziranga National Park (काज़ीरंगा राष्ट्रीय उद्यान)",
      "assets/places/kaziranga_park.jpg",
      "Kaziranga is home to the world's largest population of one-horned rhinoceros. "
          "काज़ीरंगा एक सींग वाले गैंडे की दुनिया की सबसे बड़ी आबादी का घर है।",
    ),
    TouristPlace(
      "Majuli Island (माजुली द्वीप)",
      "assets/places/majuli.jpg",
      "Majuli is the world's largest river island and a hub of Assamese culture. "
          "माजुली दुनिया का सबसे बड़ा नदी द्वीप है और असमिया संस्कृति का केंद्र है।",
    ),
    TouristPlace(
      "Sivasagar (शिवसागर)",
      "assets/places/sivasagar.jpg",
      "Sivasagar is known for its Ahom dynasty monuments and historical significance. "
          "शिवसागर अपने अहोम वंश के स्मारकों और ऐतिहासिक महत्व के लिए प्रसिद्ध है।",
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
