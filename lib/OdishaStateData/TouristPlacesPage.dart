import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> places = {
    "Bhubaneswar (भुवनेश्वर)": [
      {
        "name": "Lingaraj Temple (लिंगराज मंदिर)",
        "description": "लिंगराज मंदिर 11वीं शताब्दी का मंदिर है, जो भगवान शिव को समर्पित है।\nThe Lingaraj Temple is an 11th-century temple dedicated to Lord Shiva.",
      },
      {
        "name": "Nandankanan Zoo (नंदनकानन जू)",
        "description": "यह एक प्रसिद्ध चिड़ियाघर और बोटैनिकल गार्डन है।\nIt is a famous zoo and botanical garden.",
      },
      {
        "name": "Udayagiri Caves (उदयगिरी गुफाएँ)",
        "description": "ये प्राचीन जैन गुफाएँ हैं।\nThese are ancient Jain caves.",
      },
      {
        "name": "Khandagiri Caves (खंडगिरी गुफाएँ)",
        "description": "ये ऐतिहासिक गुफाएँ जैन धर्म से जुड़ी हैं।\nThese caves are historically associated with Jainism.",
      },
      {
        "name": "Dhauli Hills (धौली पहाड़ियाँ)",
        "description": "यहाँ अशोक स्तंभ और शांति स्तूप स्थित है।\nThis place has Ashokan pillars and a peace pagoda.",
      },
    ],
    "Puri (पुरी)": [
      {
        "name": "Jagannath Temple (जगन्नाथ मंदिर)",
        "description": "जगन्नाथ मंदिर हिंदुओं का एक प्रमुख तीर्थ स्थान है।\nJagannath Temple is one of the major Hindu pilgrimage sites.",
      },
      {
        "name": "Puri Beach (पुरी बीच)",
        "description": "पुरी बीच एक लोकप्रिय पर्यटक स्थल है।\nPuri Beach is a popular tourist spot.",
      },
      {
        "name": "Konark Sun Temple (कोणार्क सूर्य मंदिर)",
        "description": "यह यूनेस्को विश्व धरोहर स्थल है।\nIt is a UNESCO World Heritage Site.",
      },
      {
        "name": "Chilika Lake (चिलिका झील)",
        "description": "यह भारत की सबसे बड़ी खारे पानी की झील है।\nIt is India's largest brackish water lagoon.",
      },
      {
        "name": "Gundicha Temple (गुंडिचा मंदिर)",
        "description": "गुंडिचा मंदिर रथ यात्रा के लिए प्रसिद्ध है।\nGundicha Temple is famous for Rath Yatra.",
      },
    ],
    "Cuttack (कटक)": [
      {
        "name": "Barabati Fort (बाराबती किला)",
        "description": "यह ऐतिहासिक किला 14वीं शताब्दी का है।\nThis historic fort dates back to the 14th century.",
      },
      {
        "name": "Netaji Birth Place Museum (नेताजी जन्म स्थान संग्रहालय)",
        "description": "यहाँ नेताजी सुभाष चंद्र बोस का जन्म हुआ था।\nThis is the birthplace of Netaji Subhas Chandra Bose.",
      },
      {
        "name": "Mahanadi Barrage (महानदी बैराज)",
        "description": "यह एक लोकप्रिय पिकनिक स्थल है।\nThis is a popular picnic spot.",
      },
      {
        "name": "Qadam-I-Rasool (कदम-ए-रसूल)",
        "description": "यह धार्मिक स्थल मुस्लिम समुदाय के लिए महत्वपूर्ण है।\nThis is an important religious site for the Muslim community.",
      },
      {
        "name": "Deer Park (डीयर पार्क)",
        "description": "यहाँ हिरण और अन्य जानवर देखे जा सकते हैं।\nYou can see deer and other animals here.",
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
              title: Text(place["name"]!),
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
