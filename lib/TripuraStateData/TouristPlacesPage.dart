import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> places = {
    "West Tripura (पश्चिम त्रिपुरा)": [
      {
        "name": "Ujjayanta Palace (उज्जयंत पैलेस)",
        "description": "A royal palace in Agartala known for its Mughal-style gardens. अगरतला में स्थित एक शाही महल जो मुगल शैली के बागानों के लिए प्रसिद्ध है।",
        "image": "assets/images/ujjayanta_palace.jpg",
      },
      {
        "name": "Neermahal (नीरमहल)",
        "description": "A water palace in the middle of Rudrasagar Lake. रुद्रसागर झील के बीच में स्थित एक जल महल।",
        "image": "assets/images/neermahal.jpg",
      },
      {
        "name": "Heritage Park (हेरिटेज पार्क)",
        "description": "Showcasing Tripura's culture and architecture. त्रिपुरा की संस्कृति और वास्तुकला का प्रदर्शन करता है।",
        "image": "assets/images/heritage_park.jpg",
      },
      {
        "name": "Sepahijala Wildlife Sanctuary (सिपाहीजला वाइल्डलाइफ सेंचुरी)",
        "description": "A sanctuary with diverse flora and fauna. विभिन्न प्रकार के वनस्पति और जीवों वाला अभयारण्य।",
        "image": "assets/images/sepahijala.jpg",
      },
      {
        "name": "Bhubaneshwari Temple (भुवनेश्वरी मंदिर)",
        "description": "Famous temple located near Udaipur. उदयपुर के पास स्थित प्रसिद्ध मंदिर।",
        "image": "assets/images/bhubaneshwari_temple.jpg",
      },
    ],
    // बाक़ी जिलों के लिए भी इसी तरह सूची जोड़ सकते हैं
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
