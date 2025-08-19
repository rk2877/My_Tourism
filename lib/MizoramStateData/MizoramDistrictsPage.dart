import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class MizoramDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Aizawl (आइजोल)",
      "description": "Aizawl is the capital city of Mizoram, famous for its scenic beauty and cultural heritage. आइजोल मिजोरम की राजधानी है, जो अपनी प्राकृतिक सुंदरता और सांस्कृतिक विरासत के लिए प्रसिद्ध है।",
      "image": "assets/images/aizawl.jpg",
    },
    {
      "name": "Lunglei (लुंगलई)",
      "description": "Lunglei is known for its beautiful landscapes and churches. लुंगलई अपनी खूबसूरत प्राकृतिक दृश्यों और चर्चों के लिए मशहूर है।",
      "image": "assets/images/lunglei.jpg",
    },
    {
      "name": "Champhai (चम्फाई)",
      "description": "Champhai is called the ‘Rice Bowl of Mizoram’. चम्फाई को मिजोरम का 'धान का कटोरा' कहा जाता है।",
      "image": "assets/images/champhai.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mizoram Districts (मिजोरम के ज़िले)")),
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
