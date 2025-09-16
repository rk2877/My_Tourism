import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class NagalandDistrictsPage extends StatefulWidget {
  @override
  _NagalandDistrictsPageState createState() => _NagalandDistrictsPageState();
}

class _NagalandDistrictsPageState extends State<NagalandDistrictsPage> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, String>> filteredDistricts = [];

  final List<Map<String, String>> districts = [
    {
      "name": "Kohima (कोहिमा)",
      "description":
      "Kohima is the capital city of Nagaland, known for its scenic beauty and historical significance. कोहिमा नागालैंड की राजधानी है, जो अपनी सुंदरता और ऐतिहासिक महत्व के लिए प्रसिद्ध है।",
      "image": "assets/NagalandDistrictsImages/kohima.jpeg",
    },
    {
      "name": "Dimapur (दीमापुर)",
      "description":
      "Dimapur is the largest city in Nagaland and an important commercial hub. दीमापुर नागालैंड का सबसे बड़ा शहर और एक प्रमुख वाणिज्यिक केंद्र है।",
      "image": "assets/NagalandDistrictsImages/dimapur.jpeg",
    },
    {
      "name": "Mokokchung (मोकोकचुंग)",
      "description":
      "Mokokchung is known as the cultural capital of Nagaland. मोकोकचुंग नागालैंड की सांस्कृतिक राजधानी के रूप में प्रसिद्ध है।",
      "image": "assets/NagalandDistrictsImages/mokokchung.jpeg",
    },
    {
      "name": "Mon (मोन)",
      "description":
      "Mon is home to the Konyak Nagas, known for their unique culture and traditions. मोन कोन्याक नागाओं का घर है, जो अपनी अनोखी संस्कृति और परंपराओं के लिए प्रसिद्ध हैं।",
      "image": "assets/NagalandDistrictsImages/mon.jpeg",
    },
    {
      "name": "Wokha (वोखा)",
      "description":
      "Wokha is famous for its orange orchards and scenic hills. वोखा अपने संतरे के बगीचों और खूबसूरत पहाड़ियों के लिए मशहूर है।",
      "image": "assets/NagalandDistrictsImages/wokha.jpeg",
    },
    {
      "name": "Zunheboto (जुन्हेबोटो)",
      "description":
      "Zunheboto is known for its vibrant festivals and the Sumi tribe. जुन्हेबोटो अपने रंगीन त्योहारों और सुमी जनजाति के लिए प्रसिद्ध है।",
      "image": "assets/NagalandDistrictsImages/zünheboto.jpeg",
    },
    {
      "name": "Tuensang (तुएनसांग)",
      "description":
      "Tuensang is one of the largest districts of Nagaland and rich in tribal culture. तुएनसांग नागालैंड के सबसे बड़े जिलों में से एक है और जनजातीय संस्कृति से भरपूर है।",
      "image": "assets/NagalandDistrictsImages/tuensang.jpeg",
    },
    {
      "name": "Phek (फेक)",
      "description":
      "Phek is known for its natural beauty and beautiful lakes. फेक अपनी प्राकृतिक सुंदरता और खूबसूरत झीलों के लिए मशहूर है।",
      "image": "assets/NagalandDistrictsImages/phek.jpeg",
    },
    {
      "name": "Kiphire (किफ़िरे)",
      "description":
      "Kiphire is famous for Saramati Peak, the highest peak in Nagaland. किफ़िरे सारामती पर्वत के लिए प्रसिद्ध है, जो नागालैंड की सबसे ऊँची चोटी है।",
      "image": "assets/NagalandDistrictsImages/kiphire.jpeg",
    },
    {
      "name": "Longleng (लोंगलेन्ग)",
      "description":
      "Longleng is home to the Phom tribe, known for their unique culture. लोंगलेन्ग फोम जनजाति का घर है, जो अपनी अनोखी संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/NagalandDistrictsImages/longleng.jpeg",
    },
    {
      "name": "Peren (पेरेन)",
      "description":
      "Peren is rich in biodiversity and cultural heritage. पेरेन जैव विविधता और सांस्कृतिक विरासत से भरपूर है।",
      "image": "assets/NagalandDistrictsImages/peren.jpeg",
    },
    {
      "name": "Noklak (नोकलाक)",
      "description":
      "Noklak is the newest district, known for the Khiamniungan tribe. नोकलाक नया जिला है, जो ख्यामनिउंगन जनजाति के लिए प्रसिद्ध है।",
      "image": "assets/NagalandDistrictsImages/noklak.jpeg",
    },
    {
      "name": "Tseminyu (त्सेमिन्यु)",
      "description":
      "Tseminyu is known for the Rengma tribe and their cultural richness. त्सेमिन्यु रेंगमा जनजाति और उनकी सांस्कृतिक धरोहर के लिए मशहूर है।",
      "image": "assets/NagalandDistrictsImages/tseminyü.jpeg",
    },
    {
      "name": "Niuland (नियूलैंड)",
      "description":
      "Niuland is a newly formed district, known for its agricultural importance. नियूलैंड नया जिला है, जो अपनी कृषि महत्व के लिए प्रसिद्ध है।",
      "image": "assets/NagalandDistrictsImages/niuland.jpeg",
    },
    {
      "name": "Chümoukedima (चुमौकेडिमा)",
      "description":
      "Chümoukedima is famous for its waterfalls and scenic landscapes. चुमौकेडिमा अपने झरनों और खूबसूरत प्राकृतिक दृश्यों के लिए प्रसिद्ध है।",
      "image": "assets/NagalandDistrictsImages/chümoukedima.jpeg",
    },
    {
      "name": "Shamator (शामाटोर)",
      "description":
      "Shamator is home to the Yimkhiung and Tikhir tribes. शामाटोर यिमखिउंग और टिकिर जनजातियों का घर है।",
      "image": "assets/NagalandDistrictsImages/shamator.jpeg",
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
      appBar: AppBar(title: Text("Nagaland Districts (नागालैंड के ज़िले)")),
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
