import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> places = {
    "Bengaluru Urban (बेंगलुरु शहरी)": [
      {
        "name": "Lalbagh Botanical Garden (लालबाग बॉटनिकल गार्डन)",
        "description": "Beautiful garden with exotic plants and flowers. विदेशी पौधों और फूलों वाला सुंदर उद्यान।",
        "image": "assets/images/lalbagh.jpg",
      },
      {
        "name": "Bangalore Palace (बैंगलोर पैलेस)",
        "description": "Historic palace inspired by England's Windsor Castle. इंग्लैंड के विंडसर कैसल से प्रेरित ऐतिहासिक महल।",
        "image": "assets/images/bangalore_palace.jpg",
      },
      {
        "name": "Cubbon Park (कब्बन पार्क)",
        "description": "Large green park in city center. शहर के केंद्र में बड़ा हरा-भरा पार्क।",
        "image": "assets/images/cubbon_park.jpg",
      },
      {
        "name": "ISKCON Temple (इस्कॉन मंदिर)",
        "description": "Famous temple dedicated to Lord Krishna. भगवान कृष्ण को समर्पित प्रसिद्ध मंदिर।",
        "image": "assets/images/iskcon.jpg",
      },
      {
        "name": "Vidhana Soudha (विधान सौधा)",
        "description": "Seat of the state legislature of Karnataka. कर्नाटक की राज्य विधानसभा का भवन।",
        "image": "assets/images/vidhana_soudha.jpg",
      },
    ],
    "Mysuru (मैसूरु)": [
      {
        "name": "Mysore Palace (मैसूर पैलेस)",
        "description": "Magnificent royal residence of Wadiyar dynasty. वाडियार वंश का भव्य शाही निवास।",
        "image": "assets/images/mysore_palace.jpg",
      },
      {
        "name": "Chamundi Hills (चामुंडी हिल्स)",
        "description": "Hilltop temple dedicated to Goddess Chamundeshwari. देवी चामुंडेश्वरी को समर्पित पहाड़ी मंदिर।",
        "image": "assets/images/chamundi_hills.jpg",
      },
      {
        "name": "Brindavan Gardens (ब्रिंदावन गार्डन)",
        "description": "Famous for musical fountain and flowers. संगीतमय फव्वारे और फूलों के लिए प्रसिद्ध।",
        "image": "assets/images/brindavan_gardens.jpg",
      },
      {
        "name": "St. Philomena's Church (सेंट फिलोमेना चर्च)",
        "description": "Neo-Gothic style church built in 1936. 1936 में बना नियो-गॉथिक शैली का चर्च।",
        "image": "assets/images/st_philomena.jpg",
      },
      {
        "name": "Mysore Zoo (मैसूर चिड़ियाघर)",
        "description": "One of the oldest and most popular zoos in India. भारत के सबसे पुराने और लोकप्रिय चिड़ियाघरों में से एक।",
        "image": "assets/images/mysore_zoo.jpg",
      },
    ],
    "Hampi (हम्पी)": [
      {
        "name": "Virupaksha Temple (विरुपाक्ष मंदिर)",
        "description": "Ancient temple dedicated to Lord Shiva. भगवान शिव को समर्पित प्राचीन मंदिर।",
        "image": "assets/images/virupaksha_temple.jpg",
      },
      {
        "name": "Vittala Temple (विट्टल मंदिर)",
        "description": "Known for its stone chariot and musical pillars. पत्थर के रथ और संगीतमय स्तंभों के लिए प्रसिद्ध।",
        "image": "assets/images/vittala_temple.jpg",
      },
      {
        "name": "Hampi Bazaar (हम्पी बाजार)",
        "description": "Historic market street near Virupaksha temple. विरुपाक्ष मंदिर के पास ऐतिहासिक बाजार।",
        "image": "assets/images/hampi_bazaar.jpg",
      },
      {
        "name": "Lotus Mahal (कमल महल)",
        "description": "Beautiful palace with Indo-Islamic architecture. इंडो-इस्लामिक वास्तुकला वाला सुंदर महल।",
        "image": "assets/images/lotus_mahal.jpg",
      },
      {
        "name": "Elephant Stables (हाथीशाला)",
        "description": "Large structure to house royal elephants. शाही हाथियों को रखने के लिए बना विशाल ढांचा।",
        "image": "assets/images/elephant_stables.jpg",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final districtPlaces = places[districtName] ?? [];
    return Scaffold(
      appBar: AppBar(title: Text("$districtName - Tourist Places (पर्यटन स्थल)")),
      body: ListView.builder(
        itemCount: districtPlaces.length,
        itemBuilder: (context, index) {
          final place = districtPlaces[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                place["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(place["name"]!),
              subtitle: Text(place["description"]!),
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
