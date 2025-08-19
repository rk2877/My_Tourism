import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class PuducherryDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Puducherry (पुडुचेरी)",
      "image": "assets/images/puducherry.jpg",
      "description":
      "Puducherry is famous for French architecture, beaches, and spiritual ashrams. "
          "पुडुचेरी अपनी फ्रेंच वास्तुकला, समुद्र तटों और आध्यात्मिक आश्रमों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Karaikal (करैकाल)",
      "image": "assets/images/karaikal.jpg",
      "description":
      "Karaikal is known for temples and serene beaches. "
          "करैकाल अपने मंदिरों और शांत समुद्र तटों के लिए प्रसिद्ध है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Puducherry Districts (पुडुचेरी)")),
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
