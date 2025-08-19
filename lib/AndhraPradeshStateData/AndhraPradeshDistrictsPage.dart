import 'package:flutter/material.dart';
import 'touristplacespage.dart';

class District {
  final String name;
  final String imagePath;
  final String description;

  District(this.name, this.imagePath, this.description);
}

class AndhraPradeshDistrictsPage extends StatelessWidget {
  final List<District> districts = [
    District(
      "Visakhapatnam (विशाखापट्टनम)",
      "assets/districts/visakhapatnam.jpg",
      "Visakhapatnam, known as the Jewel of the East Coast, is famous for its beaches, hills, and cultural heritage. "
          "विशाखापट्टनम, जिसे पूर्वी तट का रत्न कहा जाता है, अपने समुद्र तटों, पहाड़ियों और सांस्कृतिक विरासत के लिए प्रसिद्ध है।",
    ),
    District(
      "Vijayawada (विजयवाड़ा)",
      "assets/districts/vijayawada.jpg",
      "Vijayawada, situated on the banks of the Krishna River, is known for the Kanaka Durga Temple and Prakasam Barrage. "
          "विजयवाड़ा, कृष्णा नदी के किनारे स्थित, कनक दुर्गा मंदिर और प्रकाशम बैराज के लिए प्रसिद्ध है।",
    ),
    District(
      "Guntur (गुंटूर)",
      "assets/districts/guntur.jpg",
      "Guntur is famous for its chili market, historical Amaravati, and rich cultural heritage. "
          "गुंटूर अपने मिर्च बाजार, ऐतिहासिक अमरावती और समृद्ध सांस्कृतिक विरासत के लिए प्रसिद्ध है।",
    ),
    District(
      "Tirupati (तिरुपति)",
      "assets/districts/tirupati.jpg",
      "Tirupati is one of the most visited pilgrimage cities in India, home to the famous Lord Venkateswara Temple. "
          "तिरुपति भारत के सबसे अधिक देखे जाने वाले तीर्थ शहरों में से एक है, जो प्रसिद्ध भगवान वेंकटेश्वर मंदिर का घर है।",
    ),
    District(
      "Kurnool (कुर्नूल)",
      "assets/districts/kurnool.jpg",
      "Kurnool is known as the Gateway to Rayalaseema and is rich in history, with sites like Belum Caves and Oravakallu Rock Garden. "
          "कुर्नूल, रायलसीमा का प्रवेश द्वार कहलाता है और बेलम गुफाओं तथा ओरवकल्लू रॉक गार्डन जैसी ऐतिहासिक जगहों के लिए प्रसिद्ध है।",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Andhra Pradesh Districts")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                district.imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(district.name),
              subtitle: Text(
                district.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: district.name,
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
