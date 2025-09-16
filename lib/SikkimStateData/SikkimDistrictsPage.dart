import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class SikkimDistrictsPage extends StatefulWidget {
  @override
  _SikkimDistrictsPageState createState() => _SikkimDistrictsPageState();
}

class _SikkimDistrictsPageState extends State<SikkimDistrictsPage> {
  // 🔹 Original Districts List
  final List<Map<String, String>> allDistricts = [
    {
      "name": "Gangtok (गंगटोक)",
      "description":
      "Capital city of Sikkim. सिक्किम की राजधानी। Famous for monasteries, MG Marg, and scenic beauty. मठ, एमजी मार्ग और सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/SikkimDistrictsImages/gangtok.jpeg",
    },
    {
      "name": "Mangan (मंगन)",
      "description":
      "Headquarters of North Sikkim. उत्तरी सिक्किम का मुख्यालय। Famous for Gurudongmar Lake and Lachung. गुरुडोंगमार झील और लाचुंग के लिए मशहूर।",
      "image": "assets/SikkimDistrictsImages/mangan.jpeg",
    },
    {
      "name": "Namchi (नामची)",
      "description":
      "Headquarters of South Sikkim. दक्षिण सिक्किम का मुख्यालय। Famous for Char Dham, Samdruptse and giant statues. चार धाम, समद्रुप्त्से और विशाल मूर्तियों के लिए प्रसिद्ध।",
      "image": "assets/SikkimDistrictsImages/namchi.jpeg",
    },
    {
      "name": "Gyalshing (ग्यालशिंग)",
      "description":
      "Headquarters of West Sikkim. पश्चिम सिक्किम का मुख्यालय। Famous for Pemayangtse Monastery and Pelling Skywalk. पेमायंग्त्से मठ और पेलिंग स्काईवॉक के लिए मशहूर।",
      "image": "assets/SikkimDistrictsImages/gyezing.jpeg",
    },
    {
      "name": "Soreng (सोरेंग)",
      "description":
      "District in West Sikkim. पश्चिम सिक्किम का जिला। Known for scenic valleys and eco-tourism. सुंदर घाटियों और इको-टूरिज्म के लिए प्रसिद्ध।",
      "image": "assets/SikkimDistrictsImages/soreng.jpeg",
    },
    {
      "name": "Rangpo (रंगपो)",
      "description":
      "Entry point to Sikkim from West Bengal. पश्चिम बंगाल से सिक्किम का प्रवेश द्वार। Famous for rivers and trade hub. नदियों और व्यापार केंद्र के लिए प्रसिद्ध।",
      "image": "assets/SikkimDistrictsImages/soreng.jpeg",
    },
  ];

  // 🔹 Filtered Districts List (default = all)
  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;
  }

  // 🔹 Search Function
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
      appBar: AppBar(title: const Text("Sikkim Districts (सिक्किम के जिले)")),
      body: Column(
        children: [
          // 🔹 Search Bar
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

          // 🔹 Districts List
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
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      district["name"]!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
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
