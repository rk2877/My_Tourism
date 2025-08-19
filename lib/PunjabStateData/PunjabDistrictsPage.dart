import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class PunjabDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Amritsar (अमृतसर)",
      "description":
      "Home to the Golden Temple and rich Sikh heritage. स्वर्ण मंदिर और सिख विरासत के लिए प्रसिद्ध।",
      "image": "assets/images/amritsar.jpg",
    },
    {
      "name": "Ludhiana (लुधियाना)",
      "description":
      "Punjab's industrial hub with parks and museums. पंजाब का औद्योगिक केंद्र, पार्क और संग्रहालयों के लिए प्रसिद्ध।",
      "image": "assets/images/ludhiana.jpg",
    },
    {
      "name": "Jalandhar (जालंधर)",
      "description":
      "Historic city known for temples and sports goods. मंदिरों और खेल सामान के लिए मशहूर ऐतिहासिक शहर।",
      "image": "assets/images/jalandhar.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Punjab Districts (पंजाब के ज़िले)")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: const EdgeInsets.all(8),
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
              trailing: const Icon(Icons.arrow_forward_ios),
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
