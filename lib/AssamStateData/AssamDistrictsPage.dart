import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class District {
  final String name;
  final String imagePath;
  final String description;

  District(this.name, this.imagePath, this.description);
}

class AssamDistrictsPage extends StatelessWidget {
  final List<District> districts = [
    District(
      "Guwahati (गुवाहाटी)",
      "assets/districts/guwahati.jpg",
      "Guwahati, the largest city of Assam, is famous for the Kamakhya Temple and the Brahmaputra River. "
          "गुवाहाटी, असम का सबसे बड़ा शहर है, जो कामाख्या मंदिर और ब्रह्मपुत्र नदी के लिए प्रसिद्ध है।",
    ),
    District(
      "Kaziranga (काज़ीरंगा)",
      "assets/districts/kaziranga.jpg",
      "Kaziranga is a UNESCO World Heritage Site, home to the one-horned rhinoceros. "
          "काज़ीरंगा यूनेस्को विश्व धरोहर स्थल है, जो एक सींग वाले गैंडे के लिए प्रसिद्ध है।",
    ),
    District(
      "Jorhat (जोरहाट)",
      "assets/districts/jorhat.jpg",
      "Jorhat is known as the Tea Capital of the World and is famous for its tea gardens. "
          "जोरहाट को दुनिया की चाय राजधानी कहा जाता है और यह अपनी चाय बागानों के लिए प्रसिद्ध है।",
    ),
    District(
      "Tezpur (तेज़पुर)",
      "assets/districts/tezpur.jpg",
      "Tezpur is known for its ancient temples, gardens, and scenic beauty. "
          "तेज़पुर अपने प्राचीन मंदिरों, बागानों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
    ),
    District(
      "Silchar (सिलचर)",
      "assets/districts/silchar.jpg",
      "Silchar is known for its cultural heritage and scenic landscapes. "
          "सिलचर अपनी सांस्कृतिक विरासत और सुंदर दृश्यों के लिए प्रसिद्ध है।",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Assam Districts (असम जिले)")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                district.imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(district.name),
              subtitle: Text(
                district.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: district.name,
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
