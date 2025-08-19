import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class OdishaDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Bhubaneswar (भुवनेश्वर)",
      "description": "भुवनेश्वर ओडिशा की राजधानी है, जिसे 'मंदिरों का शहर' कहा जाता है। यह समृद्ध सांस्कृतिक और ऐतिहासिक विरासत के लिए प्रसिद्ध है।\nBhubaneswar, the capital of Odisha, is known as the 'City of Temples' and is famous for its rich cultural and historical heritage.",
      "image": "assets/images/bhubaneswar.jpg",
    },
    {
      "name": "Puri (पुरी)",
      "description": "पुरी एक प्रसिद्ध धार्मिक शहर है, जहां जगन्नाथ मंदिर स्थित है। यह समुद्र तटों के लिए भी प्रसिद्ध है।\nPuri is a famous religious city known for the Jagannath Temple and its beautiful beaches.",
      "image": "assets/images/puri.jpg",
    },
    {
      "name": "Cuttack (कटक)",
      "description": "कटक को 'ओडिशा का व्यावसायिक शहर' कहा जाता है और यह सिल्वर फिलिग्री कार्य के लिए प्रसिद्ध है।\nCuttack is known as the 'Commercial City of Odisha' and is famous for silver filigree work.",
      "image": "assets/images/cuttack.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Odisha Districts (ओडिशा के जिले)")),
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
