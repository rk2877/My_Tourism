import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class ChhattisgarhDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Raipur (रायपुर)",
      "image": "assets/images/raipur.jpg",
      "description": "Raipur is the capital of Chhattisgarh, famous for its steel market and cultural heritage. रायपुर छत्तीसगढ़ की राजधानी है, जो अपने इस्पात बाजार और सांस्कृतिक धरोहर के लिए प्रसिद्ध है।"
    },
    {
      "name": "Bilaspur (बिलासपुर)",
      "image": "assets/images/bilaspur.jpg",
      "description": "Bilaspur is known for its Kosa silk and historical places. बिलासपुर अपने कोसा सिल्क और ऐतिहासिक स्थलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Bastar (बस्तर)",
      "image": "assets/images/bastar.jpg",
      "description": "Bastar is famous for its tribal culture and waterfalls. बस्तर अपनी जनजातीय संस्कृति और झरनों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Korba (कोरबा)",
      "image": "assets/images/korba.jpg",
      "description": "Korba is the power hub of Chhattisgarh. कोरबा छत्तीसगढ़ का पावर हब है।"
    },
    {
      "name": "Durg (दुर्ग)",
      "image": "assets/images/durg.jpg",
      "description": "Durg is known for its temples and educational institutions. दुर्ग अपने मंदिरों और शैक्षणिक संस्थानों के लिए प्रसिद्ध है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chhattisgarh Districts (छत्तीसगढ़ जिले)")),
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
