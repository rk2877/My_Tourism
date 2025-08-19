import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class LakshadweepDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Agatti (अगत्ती)",
      "image": "assets/images/agatti.jpg",
      "description":
      "Agatti is a beautiful island known for its lagoons and coral reefs. "
          "अगत्ती एक सुंदर द्वीप है, जो अपनी लैगून और मूंगे की चट्टानों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kavaratti (कावरत्ती)",
      "image": "assets/images/kavaratti.jpg",
      "description":
      "Kavaratti is the capital of Lakshadweep, famous for its mosque and lagoons. "
          "कावरत्ती, लक्षद्वीप की राजधानी है, जो अपनी मस्जिद और लैगून के लिए प्रसिद्ध है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lakshadweep Districts (लक्षद्वीप)")),
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
