import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class LadakhDistrictsPage extends StatefulWidget {
  @override
  _LadakhDistrictsPageState createState() => _LadakhDistrictsPageState();
}

class _LadakhDistrictsPageState extends State<LadakhDistrictsPage> {
  // ---- Ladakh के जिलों की लिस्ट ----
  final List<Map<String, String>> districts = [
    {
      "name": "Leh (लेह)",
      "image": "assets/LadakhDistrictsImages/leh.jpeg",
      "description":
      "Leh is the largest town in Ladakh, famous for monasteries and mountain views. "
          "लेह, लद्दाख का सबसे बड़ा शहर है, जो मठों और पहाड़ी दृश्यों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kargil (कारगिल)",
      "image": "assets/LadakhDistrictsImages/kargil.jpeg",
      "description":
      "Kargil is known for its beautiful landscapes and historic war sites. "
          "कारगिल अपने सुंदर परिदृश्यों और ऐतिहासिक युद्ध स्थलों के लिए प्रसिद्ध है।"
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
        title: const Text("Ladakh Districts (लद्दाख के जिले)"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
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