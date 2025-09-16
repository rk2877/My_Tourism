import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class ChandigarhDistrictsPage extends StatefulWidget {
  @override
  _ChandigarhDistrictsPageState createState() => _ChandigarhDistrictsPageState();
}

class _ChandigarhDistrictsPageState extends State<ChandigarhDistrictsPage> {
  // District list
  final List<Map<String, String>> allDistricts = [
    {
      "name": "Chandigarh (चंडीगढ़)",
      "description":
      "Union Territory and capital of both Punjab and Haryana. केंद्र शासित प्रदेश और पंजाब व हरियाणा की राजधानी।",
      "image": "assets/PunjabDistrictsImages/chandigarh.jpeg",
    },
  ];

  // Filtered list for search
  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;
  }

  void _filterDistricts(String query) {
    setState(() {
      filteredDistricts = allDistricts
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
      appBar: AppBar(title: Text("Chandigarh District")),
      body: Column(
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search district...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: _filterDistricts,
            ),
          ),

          // 📋 District List
          Expanded(
            child: ListView.builder(
              itemCount: filteredDistricts.length,
              itemBuilder: (context, index) {
                final district = filteredDistricts[index];
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
          ),
        ],
      ),
    );
  }
}
