import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  // Example data (can be extended per district)
  final Map<String, List<Map<String, String>>> places = {
    "South Andaman (दक्षिण अंडमान)": [
      {
        "name": "Cellular Jail (सेल्युलर जेल)",
        "description": "सेल्युलर जेल भारत की स्वतंत्रता संग्राम का प्रतीक है। "
            "यहां स्वतंत्रता सेनानियों को ब्रिटिश शासन के दौरान कैद किया गया था। "
            "It is a historical monument representing India's freedom struggle."
      },
      {
        "name": "Ross Island (रॉस द्वीप)",
        "description": "रॉस द्वीप अपनी सुंदरता और ऐतिहासिक महत्व के लिए प्रसिद्ध है। "
            "यह ब्रिटिश शासन के समय प्रशासनिक केंद्र था। "
            "Known for its scenic beauty and historic ruins."
      },
    ],
    "North and Middle Andaman (उत्तर और मध्य अंडमान)": [
      {
        "name": "Rangat (रंगत)",
        "description": "रंगत एक शांत और प्राकृतिक जगह है, जो बीच और मैंग्रोव के लिए प्रसिद्ध है। "
            "A peaceful place known for beaches and mangroves."
      },
    ],
    "Nicobar (निकोबार)": [
      {
        "name": "Campbell Bay National Park (कैम्पबेल बे राष्ट्रीय उद्यान)",
        "description": "यह राष्ट्रीय उद्यान जैव विविधता से भरपूर है। "
            "It is rich in biodiversity and natural beauty."
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final districtPlaces = places[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("Tourist Places - $districtName")),
      backgroundColor: Colors.green,
      body: ListView.builder(
        itemCount: districtPlaces.length,
        itemBuilder: (context, index) {
          final place = districtPlaces[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(place["name"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      name: place["name"]!,
                      description: place["description"]!,
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
