import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class PuducherryDistrictsPage extends StatefulWidget {
  @override
  _PuducherryDistrictsPageState createState() =>
      _PuducherryDistrictsPageState();
}

class _PuducherryDistrictsPageState extends State<PuducherryDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Puducherry (पुडुचेरी)",
      "image": "assets/PuducherryDistrictsImage/puducherry.jpeg",
      "description": "Puducherry is famous for French architecture, beaches, and spiritual ashrams. "
          "पुडुचेरी अपनी फ्रेंच वास्तुकला, समुद्र तटों और आध्यात्मिक आश्रमों के लिए प्रसिद्ध है।"
    },
    { "name": "Karaikal (करैकाल)", "image":
    "assets/PuducherryDistrictsImage/karaikal.jpeg",
      "description": "Karaikal is known for temples and serene beaches. " "करैकाल अपने मंदिरों और शांत समुद्र तटों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Mahe (माहे)",
      "image": "assets/PuducherryDistrictsImage/mahe.jpeg",
      "description": "Mahe is a small district known for its scenic beauty, riverside views, and cultural blend. " "माहे एक छोटा जिला है जो अपनी प्राकृतिक सुंदरता, नदी किनारे के नज़ारों और सांस्कृतिक मिश्रण के लिए जाना जाता है।"
    },
    {
      "name": "Yanam (यन्नम)",
      "image": "assets/PuducherryDistrictsImage/yanam.jpeg",
      "description": "Yanam is famous for its colonial heritage, temples, and peaceful lifestyle. "
          "यन्नम अपनी औपनिवेशिक धरोहर, मंदिरों और शांत जीवनशैली के लिए प्रसिद्ध है।"
    },
  ];

  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = districts;
  }

  void _filterDistricts(String query) {
    setState(() {
      filteredDistricts = districts
          .where((district) =>
      district["name"]!.toLowerCase().contains(query.toLowerCase()) ||
          district["description"]!
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Puducherry Districts (पुडुचेरी के जिले)"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterDistricts,
              decoration: InputDecoration(
                hintText: "Search District...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredDistricts.length,
              itemBuilder: (context, index) {
                final district = filteredDistricts[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: Image.asset(
                      district["image"]!,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(district["name"]!),
                    subtitle: Text(
                      district["description"]!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TouristPlacesPage(
                            districtName: district["name"]!,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
