import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class TelanganaDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Hyderabad (हैदराबाद)",
      "description": "Hyderabad, the capital of Telangana, is known for Charminar, Golconda Fort, and its rich history. हैदराबाद, तेलंगाना की राजधानी, चारमीनार, गोलकोंडा किला और समृद्ध इतिहास के लिए प्रसिद्ध है।",
      "image": "assets/images/hyderabad.jpg",
    },
    {
      "name": "Warangal (वारंगल)",
      "description": "Warangal is famous for its Kakatiya architecture and beautiful lakes. वारंगल अपने काकतीय वास्तुकला और सुंदर झीलों के लिए प्रसिद्ध है।",
      "image": "assets/images/warangal.jpg",
    },
    {
      "name": "Nizamabad (निजामाबाद)",
      "description": "Nizamabad is known for its fort, temples, and historical significance. निजामाबाद अपने किले, मंदिरों और ऐतिहासिक महत्व के लिए जाना जाता है।",
      "image": "assets/images/nizamabad.jpg",
    },
    {
      "name": "Karimnagar (करीमनगर)",
      "description": "Karimnagar is known for Elgandal Fort and beautiful river views. करीमनगर एल्गंडल किला और सुंदर नदी दृश्यों के लिए प्रसिद्ध है।",
      "image": "assets/images/karimnagar.jpg",
    },
    {
      "name": "Khammam (खम्मम)",
      "description": "Khammam is known for its fort and rich cultural heritage. खम्मम अपने किले और समृद्ध सांस्कृतिक विरासत के लिए प्रसिद्ध है।",
      "image": "assets/images/khammam.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Telangana Districts (तेलंगाना जिले)")),
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
