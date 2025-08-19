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

  Map<String, List<Map<String, String>>> get placesByDistrict => {
    "New Delhi (नई दिल्ली)": [
      {
        "name": "India Gate (इंडिया गेट)",
        "image": "assets/images/india_gate.jpg",
        "description":
        "War memorial built in honor of soldiers; surrounded by lawns and fountains.\n\n"
            "सैनिकों के सम्मान में बना युद्ध स्मारक; चारों ओर लॉन और फव्वारे हैं।"
      },
      {
        "name": "Red Fort (लाल किला)",
        "image": "assets/images/red_fort.jpg",
        "description":
        "Historic Mughal fort known for its massive walls and architecture.\n\n"
            "इतिहासिक मुगल किला जो अपनी विशाल दीवारों और वास्तुकला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Qutub Minar (कुतुब मीनार)",
        "image": "assets/images/qutub_minar.jpg",
        "description":
        "Tallest brick minaret in India; UNESCO World Heritage site.\n\n"
            "भारत की सबसे ऊँची ईंटों की मीनार; यूनेस्को विश्व धरोहर स्थल।"
      },
      {
        "name": "Lotus Temple (लोटस टेम्पल)",
        "image": "assets/images/lotus_temple.jpg",
        "description":
        "Bahá'í House of Worship shaped like a lotus flower; serene environment.\n\n"
            "बहाई पूजा स्थल जो कमल के फूल के आकार का है; शांत वातावरण।"
      },
      {
        "name": "Humayun's Tomb (हुमायूं का मकबरा)",
        "image": "assets/images/humayun_tomb.jpg",
        "description":
        "Mughal tomb with beautiful gardens; precursor to Taj Mahal architecture.\n\n"
            "सुंदर बागों वाला मुगल मकबरा; ताज महल वास्तुकला का पूर्ववर्ती।"
      },
    ],
    "North Delhi (उत्तरी दिल्ली)": [
      {
        "name": "Chandni Chowk (चांदनी चौक)",
        "image": "assets/images/chandni_chowk.jpg",
        "description":
        "Historic market with narrow lanes and street food delights.\n\n"
            "ऐतिहासिक बाजार, संकरी गलियां और स्वादिष्ट स्ट्रीट फूड के लिए प्रसिद्ध।"
      },
      {
        "name": "Rashtrapati Bhavan (राष्ट्रपति भवन)",
        "image": "assets/images/rashtrapati_bhavan.jpg",
        "description":
        "Presidential residence with grand architecture and Mughal Gardens.\n\n"
            "भव्य वास्तुकला और मुगल गार्डन वाला राष्ट्रपति भवन।"
      },
      {
        "name": "St. James' Church (सेंट जेम्स चर्च)",
        "image": "assets/images/st_james_church.jpg",
        "description":
        "Historic church with colonial architecture; peaceful place to visit.\n\n"
            "ऐतिहासिक चर्च, उपनिवेशीय वास्तुकला के साथ; शांत जगह।"
      },
      {
        "name": "Rani Bagh (रानी बाग)",
        "image": "assets/images/rani_bagh.jpg",
        "description":
        "Famous zoo and garden area; ideal for family outings.\n\n"
            "प्रसिद्ध चिड़ियाघर और बाग क्षेत्र; परिवार के साथ घूमने के लिए आदर्श।"
      },
      {
        "name": "Majnu Ka Tilla (मजनू का टिल्ला)",
        "image": "assets/images/majnu_ka_tilla.jpg",
        "description":
        "Tibetan colony with vibrant streets, cafes and handicrafts.\n\n"
            "तिब्बती कॉलोनी, जीवंत सड़कें, कैफे और हस्तशिल्प के लिए प्रसिद्ध।"
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
