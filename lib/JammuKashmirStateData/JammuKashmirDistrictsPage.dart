import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'TouristPlacesPage.dart';

class JammuKashmirDistrictsPage extends StatefulWidget {
  @override
  _JammuKashmirDistrictsPageState createState() =>
      _JammuKashmirDistrictsPageState();
}

class _JammuKashmirDistrictsPageState
    extends State<JammuKashmirDistrictsPage> {
  final List<Map<String, String>> allDistricts = [
    {
      "name": "Anantnag (अनंतनाग)",
      "image": "assets/JammuKashmirDistrictsImages/anantnag.jpeg",
      "description":
      "प्रसिद्ध धार्मिक स्थल और पर्यटन केंद्र। Known for Amarnath Yatra and Martand Sun Temple."
    },
    {
      "name": "Bandipora (बांदीपोरा)",
      "image": "assets/JammuKashmirDistrictsImages/bandipora.jpeg",
      "description":
      "वूलर झील के लिए प्रसिद्ध। Known for scenic beauty and trekking spots."
    },
    {
      "name": "Baramulla (बारामुला)",
      "image": "assets/JammuKashmirDistrictsImages/baramulla.jpeg",
      "description":
      "प्राकृतिक सुंदरता और धार्मिक स्थल। Known for Gulmarg and river Jhelum."
    },
    {
      "name": "Budgam (बडगाम)",
      "image": "assets/JammuKashmirDistrictsImages/budgam.jpeg",
      "description":
      "यूसमर्ग और धार्मिक स्थल। Famous for Doodhpathri and shrines."
    },
    {
      "name": "Ganderbal (गांदरबल)",
      "image": "assets/JammuKashmirDistrictsImages/ganderbal.jpeg",
      "description":
      "प्रसिद्ध सोनमर्ग और गंगाबल झील। Famous for Amarnath route."
    },
    {
      "name": "Kulgam (कुलगाम)",
      "image": "assets/JammuKashmirDistrictsImages/kulgam.jpeg",
      "description":
      "झरनों और हरियाली के लिए प्रसिद्ध। Known as rice bowl of Kashmir."
    },
    {
      "name": "Kupwara (कुपवाड़ा)",
      "image": "assets/JammuKashmirDistrictsImages/kupwara.jpeg",
      "description":
      "हरियाली और प्राकृतिक सुंदरता। Known for Bungus Valley and Lolab Valley."
    },
    {
      "name": "Pulwama (पुलवामा)",
      "image": "assets/JammuKashmirDistrictsImages/pulwama.jpeg",
      "description":
      "केसर उत्पादन के लिए प्रसिद्ध। Known as Anand of Kashmir."
    },
    {
      "name": "Shopian (शोपियां)",
      "image": "assets/JammuKashmirDistrictsImages/shopian.jpeg",
      "description":
      "सेब उत्पादन के लिए प्रसिद्ध। Known as Apple town of Kashmir."
    },
    {
      "name": "Srinagar (श्रीनगर)",
      "image": "assets/JammuKashmirDistrictsImages/srinagar.jpeg",
      "description":
      "कश्मीर की ग्रीष्मकालीन राजधानी। Famous for Dal Lake and Mughal Gardens."
    },
    {
      "name": "Doda (डोडा)",
      "image": "assets/JammuKashmirDistrictsImages/doda.jpeg",
      "description": "पहाड़ी क्षेत्र और सुंदर नजारे। Known for Bhaderwah Valley."
    },
    {
      "name": "Jammu (जम्मू)",
      "image": "assets/JammuKashmirDistrictsImages/jammu.jpeg",
      "description":
      "जम्मू-कश्मीर की शीतकालीन राजधानी। Famous for Vaishno Devi temple."
    },
    {
      "name": "Kathua (कठुआ)",
      "image": "assets/JammuKashmirDistrictsImages/kathua.jpeg",
      "description":
      "विविध संस्कृति और धार्मिक स्थल। Known as city of Sufis."
    },
    {
      "name": "Kishtwar (किश्तवार)",
      "image": "assets/JammuKashmirDistrictsImages/kishtwar.jpeg",
      "description":
      "ऊँचे पहाड़ और देवदार के जंगल। Known for saffron and sapphire mines."
    },
    {
      "name": "Poonch (पुंछ)",
      "image": "assets/JammuKashmirDistrictsImages/poonch.jpeg",
      "description": "सुंदर घाटियां और ऐतिहासिक स्थल। Known as mini Kashmir."
    },
    {
      "name": "Rajouri (राजौरी)",
      "image": "assets/JammuKashmirDistrictsImages/rajouri.jpeg",
      "description": "प्राकृतिक सुंदरता और संस्कृति। Known as land of kings."
    },
    {
      "name": "Ramban (रामबन)",
      "image": "assets/JammuKashmirDistrictsImages/ramban.jpeg",
      "description": "झेलम नदी के किनारे बसा हुआ। Gateway to Kashmir valley."
    },
    {
      "name": "Reasi (रियासी)",
      "image": "assets/JammuKashmirDistrictsImages/reasi.jpeg",
      "description":
      "माता वैष्णो देवी का जिला। Famous for pilgrimage tourism."
    },
    {
      "name": "Samba (सांबा)",
      "image": "assets/JammuKashmirDistrictsImages/samba.jpeg",
      "description": "लोक नृत्य और संस्कृति। Known for Mansar Lake."
    },
    {
      "name": "Udhampur (उधमपुर)",
      "image": "assets/JammuKashmirDistrictsImages/udhampur.jpeg",
      "description":
      "रणनीतिक दृष्टि से महत्वपूर्ण जिला। Northern Command HQ."
    },
  ];

  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;

    // ✅ Status bar color
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
          "Jammu & Kashmir Districts (जम्मू और कश्मीर)",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          // 🔍 Search box
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

          // 📋 List of districts
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
    );
  }
}
