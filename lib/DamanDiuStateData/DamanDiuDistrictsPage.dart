import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class DamanDiuDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Dadra & Nagar Haveli (दादरा और नगर हवेली)",
      "image": "assets/images/dnh_diu.jpg",
      "description":
      "Known for lush greenery, tribal culture, and Dudhani Lake. "
          "दादरा और नगर हवेली अपनी हरियाली, आदिवासी संस्कृति और दूधनी झील के लिए प्रसिद्ध है।"
    },
    {
      "name": "Daman (दमन)",
      "image": "assets/DamanDiuDistrictsImages/daman.jpeg",
      "description":
      "Daman is a coastal district known for serene beaches and Portuguese-era forts. "
          "दमन एक समुद्री जिला है जो शांत समुद्र तटों और पुर्तगाली दौर के किलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Diu (दिउ)",
      "image": "assets/DamanDiuDistrictsImages/diu.jpeg",
      "description":
      "Diu is an island famed for its fort, caves and beautiful beaches. "
          "दिउ एक द्वीप है जो अपने किले, गुफाओं और खूबसूरत समुद्र तटों के लिए प्रसिद्ध है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Dadra & Nagar Haveli and Daman & Diu Districts (दादरा और नगर हवेली और दमन-दिउ जिले)")
      ),
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
