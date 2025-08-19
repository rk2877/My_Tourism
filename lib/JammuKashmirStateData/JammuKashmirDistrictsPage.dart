import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class JammuKashmirDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Srinagar (श्रीनगर)",
      "image": "assets/images/srinagar.jpg",
      "description":
      "Srinagar is the summer capital, famous for Dal Lake and houseboats. "
          "श्रीनगर ग्रीष्मकालीन राजधानी है, जो डल झील और हाउसबोट्स के लिए प्रसिद्ध है।"
    },
    {
      "name": "Jammu (जम्मू)",
      "image": "assets/images/jammu.jpg",
      "description":
      "Jammu is the winter capital, known for temples and gardens. "
          "जम्मू शीतकालीन राजधानी है, जो मंदिरों और बागों के लिए प्रसिद्ध है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Jammu & Kashmir Districts (जम्मू और कश्मीर)")),
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
