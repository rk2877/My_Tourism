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
    "Puducherry (पुडुचेरी)": [
      {
        "name": "Promenade Beach (प्रोमेनेड बीच)",
        "image": "assets/images/promenade_beach.jpg",
        "description":
        "A beautiful beach along the Bay of Bengal.\n\n"
            "बंगाल की खाड़ी के किनारे एक सुंदर समुद्र तट।"
      },
      {
        "name": "Aurobindo Ashram (औरोबिंदो आश्रम)",
        "image": "assets/images/ashram.jpg",
        "description":
        "Famous spiritual ashram founded by Sri Aurobindo.\n\n"
            "श्री औरोबिंदो द्वारा स्थापित प्रसिद्ध आध्यात्मिक आश्रम।"
      },
      {
        "name": "French Quarter (फ्रेंच क्वार्टर)",
        "image": "assets/images/french_quarter.jpg",
        "description":
        "Historic French-style streets with colorful buildings.\n\n"
            "रंगीन इमारतों के साथ ऐतिहासिक फ्रेंच शैली की सड़कें।"
      },
      {
        "name": "Botanical Garden (बॉटनिकल गार्डन)",
        "image": "assets/images/botanical_garden.jpg",
        "description":
        "Beautiful garden with exotic plants.\n\n"
            "अनोखे पौधों के साथ सुंदर उद्यान।"
      },
      {
        "name": "Chunnambar Backwater (चुन्नम्बर बैकवॉटर)",
        "image": "assets/images/chunnambar.jpg",
        "description":
        "Relaxing boat rides and scenic views.\n\n"
            "आरामदायक नाव की सवारी और सुंदर दृश्य।"
      },
    ],
    "Karaikal (करैकाल)": [
      {
        "name": "Karaikal Beach (करैकाल बीच)",
        "image": "assets/images/karaikal_beach.jpg",
        "description":
        "Serene beach ideal for sunset views.\n\n"
            "सूर्यास्त के लिए आदर्श शांत समुद्र तट।"
      },
      {
        "name": "Karaikal Ammaiyar Temple (करैकाल अम्मैयार मंदिर)",
        "image": "assets/images/karaikal_temple.jpg",
        "description":
        "Historic temple dedicated to Karaikal Ammaiyar.\n\n"
            "करैकाल अम्मैयार को समर्पित ऐतिहासिक मंदिर।"
      },
      {
        "name": "Harbor Area (हार्बर एरिया)",
        "image": "assets/images/karaikal_harbor.jpg",
        "description":
        "Scenic harbor and fishing area.\n\n"
            "सुंदर बंदरगाह और मछली पकड़ने का क्षेत्र।"
      },
      {
        "name": "Thirunallar Temple (थिरुनल्लार मंदिर)",
        "image": "assets/images/thirunallar_temple.jpg",
        "description":
        "Famous temple dedicated to Lord Shani.\n\n"
            "भगवान शनि को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Velankanni Church (वेल्लांकन्नी चर्च)",
        "image": "assets/images/velankanni_church.jpg",
        "description":
        "Historic church visited by many pilgrims.\n\n"
            "कई तीर्थयात्रियों द्वारा देखी जाने वाली ऐतिहासिक चर्च।"
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
