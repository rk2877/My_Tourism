import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class RajasthanDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Jaipur (जयपुर)",
      "image": "assets/images/jaipur.jpg",
      "description": "Pink City of India. गुलाबी नगरी, अपने महलों और किलों के लिए प्रसिद्ध।"
    },
    {
      "name": "Jodhpur (जोधपुर)",
      "image": "assets/images/jodhpur.jpg",
      "description": "Blue City of India. नीली नगरी, अपने मेहरानगढ़ किले के लिए मशहूर।"
    },
    {
      "name": "Udaipur (उदयपुर)",
      "image": "assets/images/udaipur.jpg",
      "description": "City of Lakes. झीलों का शहर, राजसी महलों और झीलों के लिए प्रसिद्ध।"
    },
    {
      "name": "Jaisalmer (जैसलमेर)",
      "image": "assets/images/jaisalmer.jpg",
      "description": "Golden City. स्वर्ण नगरी, थार मरुस्थल के बीच बसा।"
    },
    {
      "name": "Bikaner (बीकानेर)",
      "image": "assets/images/bikaner.jpg",
      "description": "Camel Country. ऊंटों का देश, करणी माता मंदिर के लिए प्रसिद्ध।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rajasthan Districts (राजस्थान जिले)")),
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
