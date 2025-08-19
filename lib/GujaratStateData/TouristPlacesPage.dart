import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> places = {
    "Ahmedabad (अहमदाबाद)": [
      {
        "name": "Sabarmati Ashram (साबरमती आश्रम)",
        "description": "Historic ashram of Mahatma Gandhi. महात्मा गांधी का ऐतिहासिक आश्रम।",
        "image": "assets/images/sabarmati.jpg",
      },
      {
        "name": "Kankaria Lake (कांकड़िया झील)",
        "description": "Beautiful lake with zoo and amusement park. सुंदर झील जिसमें चिड़ियाघर और मनोरंजन पार्क है।",
        "image": "assets/images/kankaria.jpg",
      },
      {
        "name": "Sidi Saiyyed Mosque (सिद्दी सैय्यद मस्जिद)",
        "description": "Famous for stone lattice work. पत्थर की नक्काशी के लिए प्रसिद्ध।",
        "image": "assets/images/sidi.jpg",
      },
      {
        "name": "Adalaj Stepwell (अडालज बावड़ी)",
        "description": "Architectural marvel stepwell. स्थापत्य कला की अद्भुत बावड़ी।",
        "image": "assets/images/adalaj.jpg",
      },
      {
        "name": "Law Garden (लॉ गार्डन)",
        "description": "Popular for street shopping. सड़क खरीदारी के लिए लोकप्रिय।",
        "image": "assets/images/lawgarden.jpg",
      },
    ],
    "Surat (सूरत)": [
      {
        "name": "Dumas Beach (डुमस बीच)",
        "description": "Black sand beach. काले रेत का समुद्र तट।",
        "image": "assets/images/dumas.jpg",
      },
      {
        "name": "Sarthana Nature Park (सर्थाना नेचर पार्क)",
        "description": "Large zoo with many animals. बड़ा चिड़ियाघर जिसमें कई जानवर हैं।",
        "image": "assets/images/sarthana.jpg",
      },
      {
        "name": "Gopi Talav (गोपी तालाव)",
        "description": "Historic lake with park. पार्क के साथ ऐतिहासिक झील।",
        "image": "assets/images/gopitalav.jpg",
      },
      {
        "name": "Chintamani Jain Temple (चिंतामणि जैन मंदिर)",
        "description": "Beautiful Jain temple. सुंदर जैन मंदिर।",
        "image": "assets/images/chintamani.jpg",
      },
      {
        "name": "Dutch Garden (डच गार्डन)",
        "description": "Garden with European tombs. यूरोपीय कब्रों वाला बगीचा।",
        "image": "assets/images/dutchgarden.jpg",
      },
    ],
    "Vadodara (वडोदरा)": [
      {
        "name": "Laxmi Vilas Palace (लक्ष्मी विलास पैलेस)",
        "description": "Royal residence of Gaekwad family. गायकवाड़ परिवार का शाही निवास।",
        "image": "assets/images/laxmivilas.jpg",
      },
      {
        "name": "Sayaji Garden (सायाजी गार्डन)",
        "description": "Large garden with zoo and museum. चिड़ियाघर और संग्रहालय वाला बड़ा बगीचा।",
        "image": "assets/images/sayaji.jpg",
      },
      {
        "name": "EME Temple (ईएमई मंदिर)",
        "description": "Unique temple maintained by the army. सेना द्वारा संरक्षित अनोखा मंदिर।",
        "image": "assets/images/eme.jpg",
      },
      {
        "name": "Kirti Mandir (कीर्ति मंदिर)",
        "description": "Memorial for royal family. शाही परिवार का स्मारक।",
        "image": "assets/images/kirti.jpg",
      },
      {
        "name": "Ajwa Water Park (अजवा वॉटर पार्क)",
        "description": "Fun water park for families. परिवारों के लिए मजेदार वॉटर पार्क।",
        "image": "assets/images/ajwa.jpg",
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
                      description: place["description"]!,
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
