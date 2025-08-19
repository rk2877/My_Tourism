import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class ManipurDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Imphal West (इंफाल वेस्ट)",
      "description": "Imphal West is the cultural and political hub of Manipur. इंफाल वेस्ट मणिपुर का सांस्कृतिक और राजनीतिक केंद्र है।",
      "image": "assets/images/imphal_west.jpg",
    },
    {
      "name": "Imphal East (इंफाल ईस्ट)",
      "description": "Known for its scenic landscapes and historical sites. यह अपने खूबसूरत दृश्यों और ऐतिहासिक स्थलों के लिए प्रसिद्ध है।",
      "image": "assets/images/imphal_east.jpg",
    },
    {
      "name": "Bishnupur (बिष्णुपुर)",
      "description": "Famous for ancient temples and rich traditions. यह अपने प्राचीन मंदिरों और समृद्ध परंपराओं के लिए प्रसिद्ध है।",
      "image": "assets/images/bishnupur.jpg",
    },
    {
      "name": "Churachandpur (चुराचांदपुर)",
      "description": "A beautiful hilly district with vibrant tribal culture. एक खूबसूरत पहाड़ी जिला जिसकी जनजातीय संस्कृति जीवंत है।",
      "image": "assets/images/churachandpur.jpg",
    },
    {
      "name": "Thoubal (थौबल)",
      "description": "Known for its paddy fields and traditional handloom. यह अपने धान के खेतों और पारंपरिक हथकरघा के लिए प्रसिद्ध है।",
      "image": "assets/images/thoubal.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manipur (मणिपुर) Districts")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                district["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
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
