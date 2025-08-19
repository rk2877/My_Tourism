import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class ArunachalDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Itanagar (ईटानगर)",
      "description": "Itanagar is the capital of Arunachal Pradesh, known for its scenic beauty and historical Ita Fort. "
          "ईटानगर अरुणाचल प्रदेश की राजधानी है, जो अपनी प्राकृतिक सुंदरता और ऐतिहासिक ईटा किले के लिए प्रसिद्ध है।",
      "image": "assets/images/itanagar.jpg",
    },
    {
      "name": "Tawang (तवांग)",
      "description": "Tawang is famous for its 400-year-old monastery and breathtaking mountain views. "
          "तवांग अपने 400 साल पुराने मठ और अद्भुत पर्वतीय दृश्यों के लिए प्रसिद्ध है।",
      "image": "assets/images/tawang.jpg",
    },
    {
      "name": "Ziro (जीरो)",
      "description": "Ziro Valley is a UNESCO World Heritage Site known for its Apatani tribal culture. "
          "जीरो घाटी यूनेस्को विश्व धरोहर स्थल है, जो अपातानी जनजातीय संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/images/ziro.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arunachal Pradesh (अरुणाचल प्रदेश) Districts")),
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
              subtitle: Text(
                district["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
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
