import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class MizoramDistrictsPage extends StatefulWidget {
  @override
  _MizoramDistrictsPageState createState() => _MizoramDistrictsPageState();
}

class _MizoramDistrictsPageState extends State<MizoramDistrictsPage> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, String>> filteredDistricts = [];

  final List<Map<String, String>> districts = [
    {
      "name": "Aizawl (आइजोल)",
      "description":
      "Aizawl is the capital city of Mizoram, famous for its scenic beauty and cultural heritage. आइजोल मिजोरम की राजधानी है, जो अपनी प्राकृतिक सुंदरता और सांस्कृतिक विरासत के लिए प्रसिद्ध है।",
      "image": "assets/MizoramDistrictsImages/aizawl.jpeg",
    },
    {
      "name": "Lunglei (लुंगलई)",
      "description":
      "Lunglei is known for its beautiful landscapes and churches. लुंगलई अपनी खूबसूरत प्राकृतिक दृश्यों और चर्चों के लिए मशहूर है।",
      "image": "assets/MizoramDistrictsImages/lunglei.jpeg",
    },
    {
      "name": "Champhai (चम्फाई)",
      "description":
      "Champhai is called the ‘Rice Bowl of Mizoram’. चम्फाई को मिजोरम का 'धान का कटोरा' कहा जाता है।",
      "image": "assets/MizoramDistrictsImages/champhai.jpeg",
    },
    {
      "name": "Serchhip (सर्चीप)",
      "description":
      "Serchhip is famous for Vantawng Falls, one of the highest waterfalls in Mizoram. सर्चीप वंतावंग जलप्रपात के लिए प्रसिद्ध है।",
      "image": "assets/MizoramDistrictsImages/serchhip.jpeg",
    },
    {
      "name": "Kolasib (कोलासिब)",
      "description":
      "Kolasib is known for Tamdil Lake and its greenery. कोलासिब तामदिल झील और हरियाली के लिए प्रसिद्ध है।",
      "image": "assets/MizoramDistrictsImages/kolasib.jpeg",
    },
    {
      "name": "Mamit (मामित)",
      "description":
      "Mamit is known for its wildlife sanctuary and forests. मामित अपने वन्यजीव अभयारण्य और जंगलों के लिए प्रसिद्ध है।",
      "image": "assets/MizoramDistrictsImages/mamit.jpeg",
    },
    {
      "name": "Lawngtlai (लॉंगतलाई)",
      "description":
      "Lawngtlai is famous for its cultural diversity and Chakma community. लॉंगतलाई अपनी सांस्कृतिक विविधता और चकमा समुदाय के लिए प्रसिद्ध है।",
      "image": "assets/MizoramDistrictsImages/lawngtlai.jpeg",
    },
    {
      "name": "Saiha (सायहा)",
      "description":
      "Saiha is known for Palak Lake and natural beauty. सायहा पालक झील और प्राकृतिक सुंदरता के लिए मशहूर है।",
      "image": "assets/MizoramDistrictsImages/sainik_farm.jpeg",
    },
    {
      "name": "Saitual (सैतुअल)",
      "description":
      "Saitual is a newly formed district known for its rural charm. सैतुअल एक नया जिला है, जो अपने ग्रामीण आकर्षण के लिए प्रसिद्ध है।",
      "image": "assets/MizoramDistrictsImages/sânkima.jpeg",
    },
    {
      "name": "Khawzawl (खावज़ॉल)",
      "description":
      "Khawzawl is known for peaceful lifestyle and natural surroundings. खावज़ॉल अपनी शांत जीवनशैली और प्राकृतिक परिवेश के लिए प्रसिद्ध है।",
      "image": "assets/MizoramDistrictsImages/khawzawl.jpeg",
    },
    {
      "name": "Hnahthial (ह्नाहथियाल)",
      "description":
      "Hnahthial is famous for its hills and green environment. ह्नाहथियाल अपनी पहाड़ियों और हरे-भरे वातावरण के लिए प्रसिद्ध है।",
      "image": "assets/MizoramDistrictsImages/tlangnuam.jpeg",
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
      appBar: AppBar(title: Text("Mizoram Districts (मिजोरम के ज़िले)")),
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
