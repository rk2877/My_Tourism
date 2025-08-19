import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> placesData = {
    "Hyderabad (हैदराबाद)": [
      {
        "name": "Charminar (चारमीनार)",
        "description": "Charminar is the iconic monument of Hyderabad. चारमीनार हैदराबाद का प्रतीक चिन्ह है।",
        "image": "assets/images/charminar.jpg",
      },
      {
        "name": "Golconda Fort (गोलकोंडा किला)",
        "description": "Famous for its history and architecture. इतिहास और वास्तुकला के लिए प्रसिद्ध।",
        "image": "assets/images/golconda.jpg",
      },
      {
        "name": "Hussain Sagar Lake (हुसैन सागर झील)",
        "description": "A beautiful lake with a Buddha statue. बुद्ध प्रतिमा वाली सुंदर झील।",
        "image": "assets/images/hussainsagar.jpg",
      },
      {
        "name": "Ramoji Film City (रामोजी फिल्म सिटी)",
        "description": "One of the largest film studios in the world. दुनिया के सबसे बड़े फिल्म स्टूडियो में से एक।",
        "image": "assets/images/ramoji.jpg",
      },
      {
        "name": "Salar Jung Museum (सलार जंग संग्रहालय)",
        "description": "A museum with rare artifacts. दुर्लभ वस्तुओं वाला संग्रहालय।",
        "image": "assets/images/salarjung.jpg",
      },
    ],
    "Warangal (वारंगल)": [
      {
        "name": "Warangal Fort (वारंगल किला)",
        "description": "Ancient fort with great history. महान इतिहास वाला प्राचीन किला।",
        "image": "assets/images/warangalf.jpg",
      },
      {
        "name": "Thousand Pillar Temple (हजार स्तंभ मंदिर)",
        "description": "Famous Kakatiya temple. प्रसिद्ध काकतीय मंदिर।",
        "image": "assets/images/thousandpillar.jpg",
      },
      {
        "name": "Pakhal Lake (पखाल झील)",
        "description": "Scenic man-made lake. सुंदर कृत्रिम झील।",
        "image": "assets/images/pakhal.jpg",
      },
      {
        "name": "Bhadrakali Temple (भद्रकाली मंदिर)",
        "description": "Ancient temple of Goddess Bhadrakali. देवी भद्रकाली का प्राचीन मंदिर।",
        "image": "assets/images/bhadrakali.jpg",
      },
      {
        "name": "Eturnagaram Wildlife Sanctuary (एटूरनागारम वन्यजीव अभयारण्य)",
        "description": "Famous for wildlife and nature. वन्यजीव और प्रकृति के लिए प्रसिद्ध।",
        "image": "assets/images/eturnagaram.jpg",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final places = placesData[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("$districtName Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
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
