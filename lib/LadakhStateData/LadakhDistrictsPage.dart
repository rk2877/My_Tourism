import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class LadakhDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Leh (लेह)",
      "image": "assets/images/leh.jpg",
      "description":
      "Leh is the largest town in Ladakh, famous for monasteries and mountain views. "
          "लेह, लद्दाख का सबसे बड़ा शहर है, जो मठों और पहाड़ी दृश्यों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kargil (कारगिल)",
      "image": "assets/images/kargil.jpg",
      "description":
      "Kargil is known for its beautiful landscapes and historic war sites. "
          "कारगिल अपने सुंदर परिदृश्यों और ऐतिहासिक युद्ध स्थलों के लिए प्रसिद्ध है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ladakh Districts (लद्दाख)")),
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
