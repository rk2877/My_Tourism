import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class WestBengalDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Kolkata (कोलकाता)",
      "image": "assets/images/kolkata.jpg",
      "description": "Kolkata is known as the 'City of Joy' and is famous for its colonial architecture, cultural festivals, and vibrant lifestyle. कोलकाता को 'आनंद का शहर' कहा जाता है और यह अपनी औपनिवेशिक वास्तुकला, सांस्कृतिक त्योहारों और जीवंत जीवनशैली के लिए प्रसिद्ध है।"
    },
    {
      "name": "Darjeeling (दार्जिलिंग)",
      "image": "assets/images/darjeeling.jpg",
      "description": "Darjeeling is a hill station famous for its tea gardens, toy train, and scenic views of the Himalayas. दार्जिलिंग अपने चाय बागानों, टॉय ट्रेन और हिमालय के सुंदर दृश्यों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Howrah (हावड़ा)",
      "image": "assets/images/howrah.jpg",
      "description": "Howrah is known for the iconic Howrah Bridge and its industrial significance. हावड़ा अपने प्रसिद्ध हावड़ा ब्रिज और औद्योगिक महत्व के लिए जाना जाता है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("West Bengal Districts (पश्चिम बंगाल जिले)")),
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
                      districtImage: district["image"]!,
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
