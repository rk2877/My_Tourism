import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class NagalandDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Kohima (कोहिमा)",
      "description": "Kohima is the capital city of Nagaland, known for its scenic beauty and historical significance. कोहिमा नागालैंड की राजधानी है, जो अपनी सुंदरता और ऐतिहासिक महत्व के लिए प्रसिद्ध है।",
      "image": "assets/images/kohima.jpg",
    },
    {
      "name": "Dimapur (दीमापुर)",
      "description": "Dimapur is the largest city in Nagaland and an important commercial hub. दीमापुर नागालैंड का सबसे बड़ा शहर और एक प्रमुख वाणिज्यिक केंद्र है।",
      "image": "assets/images/dimapur.jpg",
    },
    {
      "name": "Mokokchung (मोकोकचुंग)",
      "description": "Mokokchung is known as the cultural capital of Nagaland. मोकोकचुंग नागालैंड की सांस्कृतिक राजधानी के रूप में प्रसिद्ध है।",
      "image": "assets/images/mokokchung.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nagaland (नागालैंड) Districts")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(district["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(district["name"]!),
              subtitle: Text(district["description"]!, maxLines: 2, overflow: TextOverflow.ellipsis),
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
