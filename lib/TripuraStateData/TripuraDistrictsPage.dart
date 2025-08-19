import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class TripuraDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "West Tripura (पश्चिम त्रिपुरा)",
      "description": "West Tripura is the most developed district and home to Agartala, the state capital. पश्चिम त्रिपुरा सबसे विकसित जिला है और अगरतला, राज्य की राजधानी, यहाँ स्थित है।",
      "image": "assets/images/west_tripura.jpg",
    },
    {
      "name": "North Tripura (उत्तर त्रिपुरा)",
      "description": "North Tripura is known for its natural beauty and tea gardens. उत्तर त्रिपुरा अपनी प्राकृतिक सुंदरता और चाय के बागानों के लिए प्रसिद्ध है।",
      "image": "assets/images/north_tripura.jpg",
    },
    {
      "name": "South Tripura (दक्षिण त्रिपुरा)",
      "description": "South Tripura offers rich cultural heritage and historical sites. दक्षिण त्रिपुरा अपनी समृद्ध सांस्कृतिक विरासत और ऐतिहासिक स्थलों के लिए जाना जाता है।",
      "image": "assets/images/south_tripura.jpg",
    },
    {
      "name": "Dhalai (धलाई)",
      "description": "Dhalai district is surrounded by hills and dense forests. धलाई जिला पहाड़ियों और घने जंगलों से घिरा हुआ है।",
      "image": "assets/images/dhalai.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tripura Districts (त्रिपुरा जिले)")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(district["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(district["name"]!),
              subtitle: Text(district["description"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: district["name"]!,
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
