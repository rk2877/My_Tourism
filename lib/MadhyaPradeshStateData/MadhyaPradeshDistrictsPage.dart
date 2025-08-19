import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class MadhyaPradeshDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Bhopal (भोपाल)",
      "image": "assets/images/bhopal.jpg",
      "description": "Bhopal is the capital city of Madhya Pradesh, known as the City of Lakes. भोपाल मध्य प्रदेश की राजधानी है, जिसे झीलों का शहर कहा जाता है।"
    },
    {
      "name": "Indore (इंदौर)",
      "image": "assets/images/indore.jpg",
      "description": "Indore is the largest city and a commercial hub. इंदौर मध्य प्रदेश का सबसे बड़ा शहर और व्यापारिक केंद्र है।"
    },
    {
      "name": "Gwalior (ग्वालियर)",
      "image": "assets/images/gwalior.jpg",
      "description": "Gwalior is famous for its historic fort and palaces. ग्वालियर अपने ऐतिहासिक किले और महलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Jabalpur (जबलपुर)",
      "image": "assets/images/jabalpur.jpg",
      "description": "Jabalpur is known for Marble Rocks and Dhuandhar Falls. जबलपुर मार्बल रॉक्स और धुआंधार फॉल्स के लिए मशहूर है।"
    },
    {
      "name": "Ujjain (उज्जैन)",
      "image": "assets/images/ujjain.jpg",
      "description": "Ujjain is a major pilgrimage city, famous for Mahakaleshwar Temple. उज्जैन महाकालेश्वर मंदिर के लिए प्रसिद्ध एक प्रमुख तीर्थ स्थल है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Madhya Pradesh Districts (मध्य प्रदेश जिले)")),
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
