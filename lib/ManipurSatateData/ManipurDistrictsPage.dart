import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class ManipurDistrictsPage extends StatefulWidget {
  @override
  _ManipurDistrictsPageState createState() => _ManipurDistrictsPageState();
}

class _ManipurDistrictsPageState extends State<ManipurDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Imphal West (इंफाल वेस्ट)",
      "description": "Imphal West is the cultural and political hub of Manipur. इंफाल वेस्ट मणिपुर का सांस्कृतिक और राजनीतिक केंद्र है।",
      "image": "assets/ManipurDistrictsImages/imphal_west.jpeg",
    },
    {
      "name": "Imphal East (इंफाल ईस्ट)",
      "description": "Known for its scenic landscapes and historical sites. इंफाल ईस्ट अपने खूबसूरत दृश्यों और ऐतिहासिक स्थलों के लिए प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/imphal_east.jpeg",
    },
    {
      "name": "Bishnupur (बिष्णुपुर)",
      "description": "Famous for ancient temples and rich traditions. बिष्णुपुर अपने प्राचीन मंदिरों और समृद्ध परंपराओं के लिए प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/bishnupur.jpeg",
    },
    {
      "name": "Churachandpur (चुराचांदपुर)",
      "description": "A beautiful hilly district with vibrant tribal culture. एक खूबसूरत पहाड़ी जिला जिसकी जनजातीय संस्कृति जीवंत है।",
      "image": "assets/ManipurDistrictsImages/churachandpur.jpeg",
    },
    {
      "name": "Thoubal (थौबल)",
      "description": "Known for its paddy fields and traditional handloom. थौबल अपने धान के खेतों और पारंपरिक हथकरघा के लिए प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/thoubal.jpeg",
    },
    {
      "name": "Kakching (ककचिंग)",
      "description": "A growing district known for agriculture and trade. ककचिंग अपनी कृषि और व्यापार के लिए प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/kakching.jpeg",
    },
    {
      "name": "Ukhrul (उखरूल)",
      "description": "Land of the Tangkhul Naga tribe, famous for Shirui Lily. उखरूल तांगखुल नागा जनजाति और शिरुई लिली के लिए प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/ukhrul.jpeg",
    },
    {
      "name": "Senapati (सेंगेपति)",
      "description": "Rich in natural beauty with hills and valleys. सेनापति अपनी प्राकृतिक सुंदरता, पहाड़ियों और घाटियों के लिए प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/senapati.jpeg",
    },
    {
      "name": "Tamenglong (तामेंगलोंग)",
      "description": "Known as the land of waterfalls and forests. तामेंगलोंग झरनों और जंगलों की भूमि के रूप में प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/tamenglong.jpeg",
    },
    {
      "name": "Noney (नोनी)",
      "description": "A scenic hilly district with untouched natural beauty. नोनी एक खूबसूरत पहाड़ी जिला है जिसकी प्राकृतिक सुंदरता अछूती है।",
      "image": "assets/ManipurDistrictsImages/noney.jpeg",
    },
    {
      "name": "Pherzawl (फेरज़ावल)",
      "description": "A peaceful district with vibrant tribal culture. फेरज़ावल अपनी शांत वातावरण और जनजातीय संस्कृति के लिए जाना जाता है।",
      "image": "assets/ManipurDistrictsImages/pherzawl.jpeg",
    },
    {
      "name": "Kangpokpi (कांगपोकपी)",
      "description": "A multi-ethnic district with hills and greenery. कांगपोकपी बहु-जातीय जिला है जो अपनी हरियाली और पहाड़ियों के लिए प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/kangpokpi.jpeg",
    },
    {
      "name": "Jiribam (जीरीबाम)",
      "description": "Gateway to Manipur, known for its mixed culture. जीरीबाम मणिपुर का प्रवेश द्वार है और अपनी मिश्रित संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/jiribam.jpeg",
    },
    {
      "name": "Chandel (चंदेल)",
      "description": "Border district rich in tribal traditions. चंदेल सीमा जिला है जो जनजातीय परंपराओं से समृद्ध है।",
      "image": "assets/ManipurDistrictsImages/chandel.jpeg",
    },
    {
      "name": "Kamjong (कामजोंग)",
      "description": "Known for its rich biodiversity and hilly terrain. कामजोंग अपनी जैव विविधता और पहाड़ी भू-भाग के लिए प्रसिद्ध है।",
      "image": "assets/ManipurDistrictsImages/kamjong.jpeg",
    },
    {
      "name": "Tengnoupal (टेंग्नौपाल)",
      "description": "Strategic border district with natural beauty. टेंग्नौपाल एक रणनीतिक सीमा जिला है जो प्राकृतिक सुंदरता से भरपूर है।",
      "image": "assets/ManipurDistrictsImages/tengnoupal.jpeg",
    },
  ];

  List<Map<String, String>> filteredDistricts = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredDistricts = districts; // initially all districts दिखेंगे
  }

  void filterSearch(String query) {
    setState(() {
      filteredDistricts = districts
          .where((district) =>
      district["name"]!.toLowerCase().contains(query.toLowerCase()) ||
          district["description"]!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manipur (मणिपुर) Districts")),
      body: Column(
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: "Search District",
                hintText: "Enter district name...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onChanged: filterSearch,
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
