import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';
import 'package:flutter/services.dart';

class AndamanNicobarDistrictsPage extends StatefulWidget {
  @override
  _AndamanNicobarDistrictsPageState createState() =>
      _AndamanNicobarDistrictsPageState();
}

class _AndamanNicobarDistrictsPageState
    extends State<AndamanNicobarDistrictsPage> {
  final List<Map<String, String>> allDistricts = [
    {
      "name": "South Andaman (दक्षिण अंडमान)",
      "description":
      "Famous for Port Blair, Cellular Jail, and beautiful beaches. पोर्ट ब्लेयर, सेल्युलर जेल और सुंदर समुद्र तटों के लिए प्रसिद्ध।",
      "image": "assets/AndamanNicobarDistrictsImages/south_andaman.jpeg",
    },
    {
      "name": "North and Middle Andaman (उत्तर और मध्य अंडमान)",
      "description":
      "Known for lush forests, wildlife, and serene islands. हरियाली वाले जंगलों, वन्य जीवन और शांत द्वीपों के लिए प्रसिद्ध।",
      "image": "assets/AndamanNicobarDistrictsImages/north_and_middle_andaman.jpeg",
    },
    {
      "name": "Nicobar (निकोबार)",
      "description":
      "Famous for tribal culture, coconut palms, and natural beauty. जनजातीय संस्कृति, नारियल के पेड़ और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/AndamanNicobarDistrictsImages/nicobar.jpeg",
    },
  ];

  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;

    // Status bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.deepPurple,
      statusBarIconBrightness: Brightness.light,
    ));
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
      appBar: AppBar(
        title: Text(
          "Andaman & Nicobar Districts (अंडमान और निकोबार जिले)",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: _filterDistricts,
                decoration: InputDecoration(
                  hintText: "Search district...",
                  prefixIcon: Icon(Icons.search),
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
                    margin: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                    child: ListTile(
                      leading: Image.asset(
                        district["image"]!,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        district["name"]!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        district["description"]!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 18),
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
      ),
    );
  }
}
