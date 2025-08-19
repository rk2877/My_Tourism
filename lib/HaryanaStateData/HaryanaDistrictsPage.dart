import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class HaryanaDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Gurugram (गुरुग्राम)",
      "description": "Gurugram is a major city in Haryana known for IT hubs and modern infrastructure. गुरुग्राम हरियाणा का प्रमुख शहर है, जो आईटी हब और आधुनिक संरचना के लिए प्रसिद्ध है।",
      "image": "assets/images/gurugram.jpg",
    },
    {
      "name": "Faridabad (फरीदाबाद)",
      "description": "Faridabad is an industrial city in Haryana. फरीदाबाद हरियाणा का औद्योगिक शहर है।",
      "image": "assets/images/faridabad.jpg",
    },
    {
      "name": "Panipat (पानीपत)",
      "description": "Panipat is famous for historical battles. पानीपत ऐतिहासिक युद्धों के लिए प्रसिद्ध है।",
      "image": "assets/images/panipat.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Haryana Districts (हरियाणा जिले)")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                district["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(district["name"]!),
              subtitle: Text(
                district["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HaryanaTouristPlacesPage(
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
