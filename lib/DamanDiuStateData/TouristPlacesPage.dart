import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;
  final String districtImage;

  const TouristPlacesPage({
    Key? key,
    required this.districtName,
    required this.districtImage,
  }) : super(key: key);

  // 5+ places per district, bilingual names + descriptions
  Map<String, List<Map<String, String>>> get placesByDistrict => {
    "Daman (दमन)": [
      {
        "name": "Devka Beach (देवका बीच)",
        "image": "assets/images/devka_beach.jpg",
        "description":
        "A popular seafront ideal for evening walks and sunsets. "
            "Devka Beach has long promenades and casual shacks.\n\n"
            "शाम की सैर और सूर्यास्त के लिए लोकप्रिय समुद्र तट। "
            "देवका बीच पर लंबा प्रोमेनेड और छोटे रेस्टो-शैक मिलते हैं।"
      },
      {
        "name": "Jampore Beach (जम्पोर बीच)",
        "image": "assets/images/jampore_beach.jpg",
        "description":
        "Calm waters and wide sandy stretch; great for family outings. "
            "Water activities available in season.\n\n"
            "शांत पानी और चौड़ा रेतीला किनारा; परिवार के साथ घूमने के लिए उत्कृष्ट। "
            "सीजन में वॉटर एक्टिविटीज भी होती हैं।"
      },
      {
        "name": "Moti Daman Fort (मोती दमन किला)",
        "image": "assets/images/moti_daman_fort.jpg",
        "description":
        "16th-century Portuguese fort with massive walls, churches and heritage buildings.\n\n"
            "16वीं सदी का पुर्तगाली किला, मजबूत दीवारें, चर्च और विरासत भवनों के साथ।"
      },
      {
        "name": "St. Jerome Fort / Nani Daman Fort (सेंट जेरोम किला / नानी दमन)",
        "image": "assets/images/st_jerome_fort.jpg",
        "description":
        "Riverside fortification facing the Daman Ganga; scenic gateway façade.\n\n"
            "दमन गंगा नदी के किनारे स्थित किला; आकर्षक दरवाज़ेनुमा मुखौटा।"
      },
      {
        "name": "Dominican Monastery Ruins (डोमिनिकन मठ के खंडहर)",
        "image": "assets/images/dominican_monastery.jpg",
        "description":
        "Atmospheric ruins of a 16th-century monastery inside Moti Daman fort area.\n\n"
            "मोती दमन के भीतर 16वीं सदी के मठ के रोचक खंडहर।"
      },
    ],
    "Diu (दिउ)": [
      {
        "name": "Diu Fort (दिउ किला)",
        "image": "assets/images/diu_fort.jpg",
        "description":
        "Iconic sea-facing Portuguese fort with bastions and lighthouse.\n\n"
            "समुद्र की ओर मुख किए प्रतिष्ठित पुर्तगाली किला, बुर्ज और लाइटहाउस सहित।"
      },
      {
        "name": "Naida Caves (नैडा गुफाएँ)",
        "image": "assets/images/naida_caves.jpg",
        "description":
        "Honey-combed caves with natural light shafts—great for photography.\n\n"
            "प्राकृतिक रोशनी की किरणों वाली सुरंगनुमा गुफाएँ—फोटोग्राफी के लिए बढ़िया।"
      },
      {
        "name": "Nagoa Beach (नागोआ बीच)",
        "image": "assets/images/nagoa_beach.jpg",
        "description":
        "Curved bay, clean waters and palm-lined shore; popular for water sports.\n\n"
            "खूबसूरत खाड़ी, स्वच्छ जल और पाम से सजी तटरेखा; वॉटर स्पोर्ट्स के लिए प्रसिद्ध।"
      },
      {
        "name": "St. Paul's Church (सेंट पॉल्स चर्च)",
        "image": "assets/images/st_pauls_church.jpg",
        "description":
        "Baroque architecture with ornate façade—one of the best in India.\n\n"
            "बैरोक शैली का भव्य चर्च, अलंकृत मुखौटे के लिए प्रसिद्ध—भारत के श्रेष्ठ उदाहरणों में से एक।"
      },
      {
        "name": "Gangeshwar Mahadev Temple (गंगेश्वर महादेव मंदिर)",
        "image": "assets/images/gangeshwar_temple.jpg",
        "description":
        "Sea-washed Shivlingas on the rocks; a unique tidal temple experience.\n\n"
            "समुद्री ज्वार से सराबोर चट्टानों पर शिवलिंग—अनोखा समुद्री मंदिर अनुभव।"
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final places = placesByDistrict[districtName] ?? [];
    return Scaffold(
      appBar: AppBar(title: Text("$districtName - Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final p = places[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(p["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(p["name"]!),
              subtitle: Text(
                p["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      name: p["name"]!,
                      image: p["image"]!,
                      description: p["description"]!,
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
