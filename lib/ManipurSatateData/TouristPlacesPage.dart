import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> placesData = {
    "Imphal West (इंफाल वेस्ट)": [
      {
        "name": "Kangla Fort (कांगला किला)",
        "description": "Historic fort and cultural heritage site. ऐतिहासिक किला और सांस्कृतिक धरोहर स्थल।"
      },
      {
        "name": "Manipur State Museum (मणिपुर राज्य संग्रहालय)",
        "description": "Showcases art, culture, and history of Manipur. मणिपुर की कला, संस्कृति और इतिहास को प्रदर्शित करता है।"
      },
      {
        "name": "Bir Tikendrajit Park (बीर तिकेन्द्रजीत पार्क)",
        "description": "A peaceful park dedicated to a freedom fighter. एक स्वतंत्रता सेनानी को समर्पित शांत पार्क।"
      },
      {
        "name": "Ima Keithel (इमा कैथल)",
        "description": "Asia's largest all-women market. एशिया का सबसे बड़ा महिला बाजार।"
      },
      {
        "name": "Shahid Minar (शहीद मीनार)",
        "description": "Memorial for brave martyrs of Manipur. मणिपुर के वीर शहीदों का स्मारक।"
      },
    ],
    "Imphal East (इंफाल ईस्ट)": [
      {
        "name": "Sanamahi Temple (सनामही मंदिर)",
        "description": "Important religious site of Manipur. मणिपुर का एक महत्वपूर्ण धार्मिक स्थल।"
      },
      {
        "name": "Polo Ground (पोलो ग्राउंड)",
        "description": "Famous for traditional polo matches. पारंपरिक पोलो मैचों के लिए प्रसिद्ध।"
      },
      {
        "name": "Cheirao Ching (चेराओ चिंग)",
        "description": "Hill offering panoramic views of Imphal. इंफाल के सुंदर नज़ारों के लिए प्रसिद्ध पहाड़ी।"
      },
      {
        "name": "Khonghampat Orchidarium (खोंगंपट ऑर्किडेरियम)",
        "description": "Home to rare orchid species. दुर्लभ आर्किड प्रजातियों का घर।"
      },
      {
        "name": "War Cemetery (युद्ध कब्रिस्तान)",
        "description": "Memorial for WWII soldiers. द्वितीय विश्व युद्ध के सैनिकों का स्मारक।"
      },
    ],
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
              title: Text(place["name"]!),
              subtitle: Text(place["description"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      name: place["name"]!,
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
