import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> placesData = {
    "Mumbai (मुंबई)": [
      {
        "name": "Gateway of India (गेटवे ऑफ इंडिया)",
        "image": "assets/images/gateway.jpg",
        "description": "गेटवे ऑफ इंडिया मुंबई का प्रमुख स्मारक है। Gateway of India is a major landmark of Mumbai."
      },
      {
        "name": "Marine Drive (मरीन ड्राइव)",
        "image": "assets/images/marine_drive.jpg",
        "description": "मरीन ड्राइव एक सुंदर समुद्र तट सड़क है। Marine Drive is a beautiful seaside road."
      },
      {
        "name": "Elephanta Caves (एलिफेंटा गुफाएं)",
        "image": "assets/images/elephanta.jpg",
        "description": "एलिफेंटा गुफाएं यूनेस्को वर्ल्ड हेरिटेज साइट हैं। Elephanta Caves are UNESCO World Heritage Sites."
      },
      {
        "name": "Chhatrapati Shivaji Terminus (छत्रपति शिवाजी टर्मिनस)",
        "image": "assets/images/cst.jpg",
        "description": "ऐतिहासिक रेलवे स्टेशन। Historical railway station."
      },
      {
        "name": "Juhu Beach (जुहू बीच)",
        "image": "assets/images/juhu.jpg",
        "description": "लोकप्रिय समुद्र तट। Popular beach."
      },
    ],
    // आप बाकी जिलों के लिए भी 5-5 जगहें इसी तरह जोड़ सकते हैं
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
              leading: Image.asset(place["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(place["name"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      placeName: place["name"]!,
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
