import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class TripuraDistrictsPage extends StatefulWidget {
  @override
  _TripuraDistrictsPageState createState() => _TripuraDistrictsPageState();
}

class _TripuraDistrictsPageState extends State<TripuraDistrictsPage> {
  final List<Map<String, String>> allDistricts = [
    {
      "name": "West Tripura (पश्चिम त्रिपुरा)",
      "description": "Famous for Agartala city, palaces, and cultural heritage. अगरतला शहर, महलों और सांस्कृतिक विरासत के लिए प्रसिद्ध।",
      "image": "assets/TripuraDistrictsImages/west_tripura.jpeg",
    },
    {
      "name": "Sepahijala (सिपाहीजला)",
      "description": "Known for Sepahijala Wildlife Sanctuary and rich biodiversity. सिपाहीजला वाइल्डलाइफ सेंचुरी और समृद्ध जैव विविधता के लिए प्रसिद्ध।",
      "image": "assets/TripuraDistrictsImages/sepahijala.jpeg",
    },
    {
      "name": "Gomati (गोमती)",
      "description": "Famous for Tripura Sundari Temple and historical sites. त्रिपुरा सुंदरी मंदिर और ऐतिहासिक स्थलों के लिए प्रसिद्ध।",
      "image": "assets/TripuraDistrictsImages/gomati.jpeg",
    },
    {
      "name": "South Tripura (दक्षिण त्रिपुरा)",
      "description": "Known for archaeological remains of Buddhist and Hindu sculptures. बौद्ध और हिन्दू मूर्तियों के अवशेषों के लिए प्रसिद्ध।",
      "image": "assets/TripuraDistrictsImages/south_tripura.jpeg",
    },
    {
      "name": "North Tripura (उत्तर त्रिपुरा)",
      "description": "Famous for Unakoti rock carvings and wildlife. उनकोटी शैलचित्र और वन्यजीवन के लिए प्रसिद्ध।",
      "image": "assets/TripuraDistrictsImages/north_tripura.jpeg",
    },
    {
      "name": "Dhalai (धलाई)",
      "description": "Known for Dumboor Lake and tribal culture. डुम्बूर झील और जनजातीय संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/TripuraDistrictsImages/dhalai.jpeg",
    },
    {
      "name": "Khowai (खोवाई)",
      "description": "Famous for Baramura Eco Park and natural beauty. बरामुरा इको पार्क और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/TripuraDistrictsImages/khowai.jpeg",
    },
    {
      "name": "Unakoti (उनाकोटी)",
      "description": "Known for ancient rock carvings, Shaivite pilgrimage site, and natural beauty. प्राचीन शिलाचित्रों, शैव तीर्थस्थल और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/TripuraDistrictsImages/unakoti.jpeg",
    },


  ];

  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;
  }

  void filterSearch(String query) {
    setState(() {
      filteredDistricts = allDistricts.where((district) {
        final name = district["name"]!.toLowerCase();
        return name.contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tripura Districts (त्रिपुरा जिले)")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search District (जिला खोजें)...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: filterSearch,
            ),
          ),
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
          ),
        ],
      ),
    );
  }
}
