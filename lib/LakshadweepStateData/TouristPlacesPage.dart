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
    "Agatti (अगत्ती)": [
      {
        "name": "Agatti Beach (अगत्ती बीच)",
        "image": "assets/images/agatti_beach.jpg",
        "description":
        "A pristine beach with clear turquoise waters.\n\n"
            "एक सुंदर समुद्र तट, जिसमें साफ़ फ़िरोज़ी पानी है।"
      },
      {
        "name": "Agatti Island Lagoon (अगत्ती द्वीप लैगून)",
        "image": "assets/images/agatti_lagoon.jpg",
        "description":
        "Famous for snorkeling and marine life.\n\n"
            "स्नॉर्कलिंग और समुद्री जीवन के लिए प्रसिद्ध।"
      },
      {
        "name": "Agatti Scuba Diving (अगत्ती स्कूबा डाइविंग)",
        "image": "assets/images/agatti_scuba.jpg",
        "description":
        "Explore underwater coral reefs and fishes.\n\n"
            "जल के नीचे मूंगे की चट्टानों और मछलियों का अन्वेषण करें।"
      },
      {
        "name": "Parali Beach (पराली बीच)",
        "image": "assets/images/parali_beach.jpg",
        "description":
        "A serene beach ideal for sunset views.\n\n"
            "सूर्यास्त के लिए आदर्श एक शांत समुद्र तट।"
      },
      {
        "name": "Agatti Island Lighthouse (अगत्ती द्वीप लाइटहाउस)",
        "image": "assets/images/agatti_lighthouse.jpg",
        "description":
        "Historic lighthouse providing panoramic views.\n\n"
            "ऐतिहासिक लाइटहाउस, जो चौड़े दृश्य प्रदान करता है।"
      },
    ],
    "Kavaratti (कावरत्ती)": [
      {
        "name": "Kavaratti Beach (कावरत्ती बीच)",
        "image": "assets/images/kavaratti_beach.jpg",
        "description":
        "Beautiful white sandy beach with clear waters.\n\n"
            "साफ़ पानी और सुंदर सफेद रेत वाला समुद्र तट।"
      },
      {
        "name": "Lakshadweep Aquarium (लक्षद्वीप एक्वेरियम)",
        "image": "assets/images/lakshadweep_aquarium.jpg",
        "description":
        "Showcasing local marine life and coral species.\n\n"
            "स्थानीय समुद्री जीवन और मूंगे की प्रजातियों को प्रदर्शित करता है।"
      },
      {
        "name": "Ujra Mosque (उजरा मस्जिद)",
        "image": "assets/images/ujra_mosque.jpg",
        "description":
        "Historic mosque known for architecture.\n\n"
            "स्थापत्य कला के लिए प्रसिद्ध ऐतिहासिक मस्जिद।"
      },
      {
        "name": "Kavaratti Lighthouse (कावरत्ती लाइटहाउस)",
        "image": "assets/images/kavaratti_lighthouse.jpg",
        "description":
        "Scenic views from the lighthouse tower.\n\n"
            "लाइटहाउस से सुंदर दृश्य।"
      },
      {
        "name": "Marine Walk (मरीन वॉक)",
        "image": "assets/images/marine_walk.jpg",
        "description":
        "Walk along clear waters and observe marine life.\n\n"
            "साफ़ पानी के किनारे चलें और समुद्री जीवन देखें।"
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
