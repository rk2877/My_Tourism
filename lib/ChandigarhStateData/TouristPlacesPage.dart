import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final List<Map<String, String>> places = [
    {
      "name": "Rock Garden (रॉक गार्डन)",
      "image": "assets/images/rock_garden.jpg",
      "description": "रॉक गार्डन चंडीगढ़ का प्रसिद्ध पर्यटक स्थल है, जिसे नेक चंद ने बनाया। यह जगह टूटी हुई टाइल्स, सिरेमिक और अन्य रीसायकल सामग्री से बनाई गई है।\n\nRock Garden is a famous tourist spot in Chandigarh, created by Nek Chand using broken tiles, ceramics, and other recycled materials."
    },
    {
      "name": "Sukhna Lake (सुखना झील)",
      "image": "assets/images/sukhna_lake.jpg",
      "description": "सुखना झील एक सुंदर कृत्रिम झील है जो पिकनिक और बोटिंग के लिए आदर्श स्थान है।\n\nSukhna Lake is a beautiful man-made lake, perfect for picnics and boating."
    },
    {
      "name": "Rose Garden (रोज गार्डन)",
      "image": "assets/images/rose_garden.jpg",
      "description": "रोज गार्डन में विभिन्न प्रजातियों के गुलाब पाए जाते हैं और यह पर्यटकों के लिए एक सुंदर स्थान है।\n\nRose Garden houses various species of roses and is a beautiful spot for visitors."
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                      imagePath: place["image"]!,
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
