import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class MeghalayaDistrictsPage extends StatefulWidget {
  @override
  _MeghalayaDistrictsPageState createState() => _MeghalayaDistrictsPageState();
}

class _MeghalayaDistrictsPageState extends State<MeghalayaDistrictsPage> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, String>> filteredDistricts = [];

  final List<Map<String, String>> districts = [
    {
      "name": "East Khasi Hills (ईस्ट खासी हिल्स)",
      "description":
      "Known for Shillong, the Scotland of the East. शिलांग के लिए प्रसिद्ध, जिसे 'पूर्व का स्कॉटलैंड' कहा जाता है।",
      "image": "assets/MeghalayaDistrictsImages/east_khasi_hills.jpeg",
    },
    {
      "name": "West Khasi Hills (वेस्ट खासी हिल्स)",
      "description": "Famous for Nongkhnum Island. नोंगख्नुम द्वीप के लिए प्रसिद्ध।",
      "image": "assets/MeghalayaDistrictsImages/west_khasi_hills.jpeg",
    },
    {
      "name": "South West Khasi Hills (साउथ वेस्ट खासी हिल्स)",
      "description":
      "Known for its natural beauty and cultural heritage. प्राकृतिक सुंदरता और सांस्कृतिक धरोहर के लिए प्रसिद्ध।",
      "image": "assets/MeghalayaDistrictsImages/south_west_khasi_hills.jpeg",
    },
    {
      "name": "Ri-Bhoi (री-भोई)",
      "description":
      "Gateway to Meghalaya with scenic beauty. मेघालय का प्रवेश द्वार, सुंदर प्राकृतिक दृश्यों के साथ।",
      "image": "assets/MeghalayaDistrictsImages/ri_bhoi.jpeg",
    },
    {
      "name": "West Jaintia Hills (वेस्ट जयंतिया हिल्स)",
      "description": "Known for Jowai and its unique culture. जोवाई और इसकी अनूठी संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/MeghalayaDistrictsImages/west_jaintia_hills.jpeg",
    },
    {
      "name": "East Jaintia Hills (ईस्ट जयंतिया हिल्स)",
      "description": "Rich in minerals and scenic landscapes. खनिज संपदा और खूबसूरत दृश्यों से भरपूर।",
      "image": "assets/MeghalayaDistrictsImages/east_jaintia_hills.jpeg",
    },
    {
      "name": "West Garo Hills (वेस्ट गारो हिल्स)",
      "description": "Tura is the main town here. तुरा यहां का मुख्य शहर है।",
      "image": "assets/MeghalayaDistrictsImages/west_garo_hills.jpeg",
    },
    {
      "name": "East Garo Hills (ईस्ट गारो हिल्स)",
      "description": "Known for its forests and biodiversity. अपने जंगलों और जैव विविधता के लिए प्रसिद्ध।",
      "image": "assets/MeghalayaDistrictsImages/east_garo_hills.jpeg",
    },
    {
      "name": "South Garo Hills (साउथ गारो हिल्स)",
      "description": "Famous for Balpakram National Park. बलपाक्रम राष्ट्रीय उद्यान के लिए प्रसिद्ध।",
      "image": "assets/MeghalayaDistrictsImages/south_garo_hills.jpeg",
    },
    {
      "name": "North Garo Hills (नॉर्थ गारो हिल्स)",
      "description": "A newly formed district with scenic beauty. नया जिला, प्राकृतिक सुंदरता से भरपूर।",
      "image": "assets/MeghalayaDistrictsImages/north_garo_hills.jpeg",
    },
    {
      "name": "South West Garo Hills (साउथ वेस्ट गारो हिल्स)",
      "description": "Known for its cultural diversity and hills. अपनी सांस्कृतिक विविधता और पहाड़ियों के लिए प्रसिद्ध।",
      "image": "assets/MeghalayaDistrictsImages/south_west_garo_hills.jpeg",
    },
    {
      "name": "Eastern West Khasi Hills (ईस्टर्न वेस्ट खासी हिल्स)",
      "description": "Created in 2021, rich in Khasi heritage. 2021 में बना, खासी धरोहर से समृद्ध।",
      "image": "assets/MeghalayaDistrictsImages/east_khasi_hills.jpeg",
    },
  ];

  @override
  void initState() {
    super.initState();
    filteredDistricts = districts;
    searchController.addListener(_filterDistricts);
  }

  void _filterDistricts() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredDistricts = districts
          .where((district) =>
      district["name"]!.toLowerCase().contains(query) ||
          district["description"]!.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meghalaya Districts (मेघालय के जिले)")),
      body: Column(
        children: [
          // 🔎 Search Bar
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: "Search District (जिला खोजें)",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          // 📃 District List
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
                    title: Text(
                      district["name"]!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
