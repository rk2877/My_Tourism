import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class DelhiDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "New Delhi (नई दिल्ली)",
      "image": "assets/images/new_delhi.jpg",
      "description":
      "New Delhi is the capital city of India, known for government buildings and historical monuments. "
          "नई दिल्ली भारत की राजधानी है, जो सरकारी भवनों और ऐतिहासिक स्मारकों के लिए प्रसिद्ध है।"
    },
    {
      "name": "North Delhi (उत्तरी दिल्ली)",
      "image": "assets/images/north_delhi.jpg",
      "description":
      "North Delhi is known for markets, temples, and cultural heritage. "
          "उत्तरी दिल्ली अपने बाजारों, मंदिरों और सांस्कृतिक विरासत के लिए जाना जाता है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Delhi Districts (दिल्ली जिले)")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final d = districts[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(d["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(d["name"]!),
              subtitle: Text(
                d["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: d["name"]!,
                      districtImage: d["image"]!,
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
