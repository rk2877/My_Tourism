import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class GujaratDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Ahmedabad (अहमदाबाद)",
      "description": "Ahmedabad is the largest city in Gujarat. अहमदाबाद गुजरात का सबसे बड़ा शहर है।",
      "image": "assets/images/ahmedabad.jpg",
    },
    {
      "name": "Surat (सूरत)",
      "description": "Surat is famous for diamond and textile industries. सूरत हीरा और वस्त्र उद्योग के लिए प्रसिद्ध है।",
      "image": "assets/images/surat.jpg",
    },
    {
      "name": "Vadodara (वडोदरा)",
      "description": "Vadodara is known for Laxmi Vilas Palace. वडोदरा लक्ष्मी विलास पैलेस के लिए प्रसिद्ध है।",
      "image": "assets/images/vadodara.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gujarat Districts (गुजरात के जिले)")),
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
