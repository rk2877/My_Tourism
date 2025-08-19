import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> touristPlaces = {
    "Jaipur (जयपुर)": [
      {
        "name": "Hawa Mahal (हवा महल)",
        "image": "assets/images/hawa_mahal.jpg",
        "description": "Palace of Winds. हवा महल अपनी अनोखी खिड़कियों वाली बनावट के लिए प्रसिद्ध है।"
      },
      {
        "name": "Amber Fort (आमेर किला)",
        "image": "assets/images/amber_fort.jpg",
        "description": "Historic fort with beautiful architecture. शानदार स्थापत्य वाला ऐतिहासिक किला।"
      },
      {
        "name": "City Palace (सिटी पैलेस)",
        "image": "assets/images/city_palace.jpg",
        "description": "Royal residence with museum. राजसी महल जिसमें संग्रहालय भी है।"
      },
      {
        "name": "Jantar Mantar (जंतर मंतर)",
        "image": "assets/images/jantar_mantar.jpg",
        "description": "Astronomical observatory. खगोल विज्ञान के उपकरणों का केंद्र।"
      },
      {
        "name": "Albert Hall Museum (अल्बर्ट हॉल म्यूजियम)",
        "image": "assets/images/albert_hall.jpg",
        "description": "State museum of Rajasthan. राजस्थान का राज्य संग्रहालय।"
      },
    ],
    "Jodhpur (जोधपुर)": [
      {
        "name": "Mehrangarh Fort (मेहरानगढ़ किला)",
        "image": "assets/images/mehrangarh.jpg",
        "description": "One of the largest forts in India. भारत के सबसे बड़े किलों में से एक।"
      },
      {
        "name": "Umaid Bhawan Palace (उमैद भवन पैलेस)",
        "image": "assets/images/umaid_bhawan.jpg",
        "description": "Royal palace and luxury hotel. राजसी महल और लग्जरी होटल।"
      },
      {
        "name": "Clock Tower (घंटाघर)",
        "image": "assets/images/clock_tower.jpg",
        "description": "Famous local landmark. प्रसिद्ध स्थानीय स्मारक।"
      },
      {
        "name": "Mandore Gardens (मंडोर गार्डन)",
        "image": "assets/images/mandore_gardens.jpg",
        "description": "Historic gardens and cenotaphs. ऐतिहासिक बगीचे और छतरियां।"
      },
      {
        "name": "Rao Jodha Desert Rock Park (राव जोधा डेजर्ट रॉक पार्क)",
        "image": "assets/images/rao_jodha.jpg",
        "description": "Park showcasing desert vegetation. मरुस्थलीय वनस्पति का पार्क।"
      },
    ],
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
