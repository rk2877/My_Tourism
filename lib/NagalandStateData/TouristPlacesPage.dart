import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> places = {
    "Kohima (कोहिमा)": [
      {
        "name": "Kohima War Cemetery (कोहिमा युद्ध स्मारक)",
        "description": "A memorial honoring soldiers of World War II. द्वितीय विश्व युद्ध के सैनिकों की स्मृति में बनाया गया स्मारक।",
        "image": "assets/images/kohima_war.jpg",
      },
      {
        "name": "State Museum (राज्य संग्रहालय)",
        "description": "Showcases Nagaland's history and culture. नागालैंड के इतिहास और संस्कृति का प्रदर्शन करता है।",
        "image": "assets/images/state_museum.jpg",
      },
      {
        "name": "Dzükou Valley (दजुकू घाटी)",
        "description": "A stunning valley with seasonal flowers. मौसमी फूलों से सजी एक अद्भुत घाटी।",
        "image": "assets/images/dzukou.jpg",
      },
      {
        "name": "Japfu Peak (जाप्फू चोटी)",
        "description": "Second highest peak in Nagaland. नागालैंड की दूसरी सबसे ऊंची चोटी।",
        "image": "assets/images/japfu.jpg",
      },
      {
        "name": "Naga Heritage Village (नगा हेरिटेज विलेज)",
        "description": "Hosts the Hornbill Festival annually. प्रतिवर्ष हॉर्नबिल महोत्सव का आयोजन करता है।",
        "image": "assets/images/naga_village.jpg",
      },
    ],
    "Dimapur (दीमापुर)": [
      {
        "name": "Kachari Ruins (कछारी खंडहर)",
        "description": "Ancient ruins from the Dimasa kingdom. दीमासा साम्राज्य के प्राचीन खंडहर।",
        "image": "assets/images/kachari.jpg",
      },
      {
        "name": "Diezephe Craft Village (डिज़ेफे क्राफ्ट विलेज)",
        "description": "Famous for handicrafts and handlooms. हस्तशिल्प और हथकरघा के लिए प्रसिद्ध।",
        "image": "assets/images/diezephe.jpg",
      },
      {
        "name": "Triple Falls (ट्रिपल फॉल्स)",
        "description": "Three waterfalls in one location. एक ही स्थान पर तीन झरने।",
        "image": "assets/images/triple_falls.jpg",
      },
      {
        "name": "Nagaland Zoological Park (नागालैंड प्राणि उद्यान)",
        "description": "Home to various wildlife species. विभिन्न वन्यजीव प्रजातियों का घर।",
        "image": "assets/images/zoo.jpg",
      },
      {
        "name": "Rangapahar Reserve Forest (रंगापहर आरक्षित वन)",
        "description": "Protected forest with rich biodiversity. समृद्ध जैव विविधता वाला संरक्षित वन।",
        "image": "assets/images/rangapahar.jpg",
      },
    ],
    "Mokokchung (मोकोकचुंग)": [
      {
        "name": "Longkhum Village (लोंगखुम गाँव)",
        "description": "Known for panoramic views. सुंदर नज़ारों के लिए प्रसिद्ध।",
        "image": "assets/images/longkhum.jpg",
      },
      {
        "name": "Mokokchung Village (मोकोकचुंग गाँव)",
        "description": "Cultural hub of the Ao tribe. आओ जनजाति का सांस्कृतिक केंद्र।",
        "image": "assets/images/mokokchung_village.jpg",
      },
      {
        "name": "Chuchuyimlang Village (चुचुयिमलांग गाँव)",
        "description": "Hosts Moatsu Festival. मोत्सु महोत्सव का आयोजन करता है।",
        "image": "assets/images/chuchuyimlang.jpg",
      },
      {
        "name": "Ungma Village (उंगमा गाँव)",
        "description": "One of the oldest Ao villages. आओ जनजाति का सबसे पुराना गाँव।",
        "image": "assets/images/ungma.jpg",
      },
      {
        "name": "Langpangkong Caves (लंगपांगकोंग गुफाएं)",
        "description": "Historical caves of significance. ऐतिहासिक महत्व की गुफाएं।",
        "image": "assets/images/langpangkong.jpg",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final districtPlaces = places[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text(districtName)),
      body: ListView.builder(
        itemCount: districtPlaces.length,
        itemBuilder: (context, index) {
          final place = districtPlaces[index];
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
