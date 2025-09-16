import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';
import 'package:flutter/services.dart';

class AndhraPradeshDistrictsPage extends StatefulWidget {
  @override
  _AndhraPradeshDistrictsPageState createState() =>
      _AndhraPradeshDistrictsPageState();
}

class _AndhraPradeshDistrictsPageState
    extends State<AndhraPradeshDistrictsPage> {
  final List<Map<String, String>> allDistricts = [

    {
      "name": "Alluri Sitharama Raju (अल्लूरी सीताराम राजू)",
      "image": "assets/AndhraPradeshDistrictsImages/alluri_sitarama_raju.jpeg",
      "description":
      "This district is named after freedom fighter Alluri Sitarama Raju. "
          "यह जिला स्वतंत्रता सेनानी अल्लूरी सीताराम राजू के नाम पर है।",
    },
    {
      "name": "Anakapalli (अनकापल्ली)",
      "image": "assets/AndhraPradeshDistrictsImages/anakapalli.jpeg",
      "description":
      "Anakapalli is famous for jaggery market and culture. "
          "अनकापल्ली अपने गुड़ बाजार और संस्कृति के लिए प्रसिद्ध है।",
    },
    {
      "name": "Anantapur (अनंतपुर)",
      "image": "assets/AndhraPradeshDistrictsImages/anantapur.jpeg",
      "description":
      "Anantapur is famous for Lepakshi Temple and silk industry. "
          "अनंतपुर लेपाक्षी मंदिर और रेशम उद्योग के लिए प्रसिद्ध है।",
    },
    {
      "name": "Bapatla (बापटल)",
      "image": "assets/AndhraPradeshDistrictsImages/bapatla.jpeg",
      "description":
      "Bapatla is a coastal district famous for beaches and Guntur variety chilies. "
          "बापटल तटीय जिला है जो समुद्र तटों और गुंटूर की मिर्च के लिए प्रसिद्ध है।",
    },
    {
      "name": "Chittoor (चित्तूर)",
      "image": "assets/AndhraPradeshDistrictsImages/chittoor.jpeg",
      "description":
      "Chittoor is known for Tirupati Balaji Temple and mango orchards. "
          "चित्तूर तिरुपति बालाजी मंदिर और आम के बागों के लिए प्रसिद्ध है।",
    },
    {
      "name": "East Godavari (पूर्वी गोदावरी)",
      "image": "assets/AndhraPradeshDistrictsImages/east_godavari.jpeg",
      "description":
      "East Godavari is known as the rice bowl of Andhra Pradesh and has scenic Konaseema. "
          "पूर्वी गोदावरी आंध्र प्रदेश का धान का कटोरा कहलाता है और कोनसीमा के सौंदर्य के लिए प्रसिद्ध है।",
    },
    {
      "name": "Eluru (एलुरु)",
      "image": "assets/AndhraPradeshDistrictsImages/eluru.jpeg",
      "description":
      "Eluru is known for carpets, heritage, and natural beauty. "
          "एलुरु कालीन, धरोहर और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
    },
    {
      "name": "Guntur (गुंटूर)",
      "image": "assets/AndhraPradeshDistrictsImages/guntur.jpeg",
      "description":
      "Guntur is famous for chilies, Amaravati heritage, and rich culture. "
          "गुंटूर मिर्च, अमरावती की धरोहर और समृद्ध संस्कृति के लिए प्रसिद्ध है।",
    },
    {
      "name": "Kakinada (काकीनाडा)",
      "image": "assets/AndhraPradeshDistrictsImages/kakinada.jpeg",
      "description":
      "Kakinada is a port city famous for its industries and sweets. "
          "काकीनाडा एक बंदरगाह शहर है जो अपनी उद्योग और मिठाइयों के लिए प्रसिद्ध है।",
    },
    {
      "name": "Konaseema (कोनसीमा)",
      "image": "assets/AndhraPradeshDistrictsImages/konaseema.jpeg",
      "description":
      "Konaseema is known for coconut plantations and scenic beauty. "
          "कोनसीमा नारियल बागानों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
    },
    {
      "name": "Krishna (कृष्णा)",
      "image": "assets/AndhraPradeshDistrictsImages/krishna.jpeg",
      "description":
      "Krishna district is famous for Vijayawada city, Kanaka Durga Temple, and Prakasam Barrage. "
          "कृष्णा जिला विजयवाड़ा शहर, कनक दुर्गा मंदिर और प्रकाशम बैराज के लिए प्रसिद्ध है।",
    },
    {
      "name": "Kurnool (कुर्नूल)",
      "image": "assets/AndhraPradeshDistrictsImages/kurnool.jpeg",
      "description":
      "Kurnool is the gateway to Rayalaseema with historic caves and rock gardens. "
          "कुर्नूल रायलसीमा का प्रवेश द्वार है और ऐतिहासिक गुफाओं व रॉक गार्डन के लिए प्रसिद्ध है।",
    },
    {
      "name": "Manyam Parvathipuram (परवतिपुरम मन्यम)",
      "image": "assets/AndhraPradeshDistrictsImages/manyam_parvathipuram.jpeg",
      "description":
      "Manyam Parvathipuram is known for tribal culture and forests. "
          "परवतिपुरम मन्यम जनजातीय संस्कृति और जंगलों के लिए प्रसिद्ध है।",
    },
    {
      "name": "Nandyal (नंद्याल)",
      "image": "assets/AndhraPradeshDistrictsImages/nandyal.jpeg",
      "description":
      "Nandyal is known for agriculture and scenic caves. "
          "नंद्याल कृषि और गुफाओं के लिए प्रसिद्ध है।",
    },
    {
      "name": "Nellore (नेल्लोर)",
      "image": "assets/AndhraPradeshDistrictsImages/nellore.jpeg",
      "description":
      "Nellore is famous for agriculture, aquaculture, and Ranganatha Temple. "
          "नेल्लोर कृषि, मत्स्य पालन और रंगनाथ मंदिर के लिए प्रसिद्ध है।",
    },
    {
      "name": "NTR (एनटीआर जिला)",
      "image": "assets/AndhraPradeshDistrictsImages/ntr.jpeg",
      "description":
      "This district is named after actor and politician N.T. Rama Rao. "
          "यह जिला अभिनेता और राजनेता एन.टी. रामाराव के नाम पर है।",
    },
    {
      "name": "Palnadu (पलनाडु)",
      "image": "assets/AndhraPradeshDistrictsImages/palnadu.jpeg",
      "description":
      "Palnadu is known for its history and cultural traditions. "
          "पलनाडु अपने इतिहास और सांस्कृतिक परंपराओं के लिए प्रसिद्ध है।",
    },
    {
      "name": "Prakasam (प्रकाशम)",
      "image": "assets/AndhraPradeshDistrictsImages/prakasam.jpeg",
      "description":
      "Prakasam is known for Ongole cattle and Kothapatnam beach. "
          "प्रकाशम ओंगोल गायों और कोठापटनम समुद्र तट के लिए प्रसिद्ध है।",
    },
    {
      "name": "Sri Sathya Sai (श्री सत्य साईं)",
      "image": "assets/AndhraPradeshDistrictsImages/sri_sathya_sai.jpeg",
      "description":
      "This district is named after Sri Sathya Sai Baba and is known for Puttaparthi. "
          "यह जिला श्री सत्य साई बाबा के नाम पर है और पुट्टपर्थी के लिए प्रसिद्ध है।",
    },
    {
      "name": "Srikakulam (श्रीकाकुलम)",
      "image": "assets/AndhraPradeshDistrictsImages/srikakulam.jpeg",
      "description":
      "Srikakulam is the northernmost district known for Arasavalli Sun Temple. "
          "श्रीकाकुलम उत्तरी जिला है और अरासवली सूर्य मंदिर के लिए प्रसिद्ध है।",
    },
    {
      "name": "Tirupati (तिरुपति)",
      "image": "assets/AndhraPradeshDistrictsImages/tirupati.jpeg",
      "description":
      "Tirupati is world-famous for Sri Venkateswara Temple. "
          "तिरुपति श्री वेंकटेश्वर मंदिर के लिए विश्व प्रसिद्ध है।",
    },
    {
      "name": "Visakhapatnam (विशाखापट्टनम)",
      "image": "assets/AndhraPradeshDistrictsImages/visakhapatnam.jpeg",
      "description":
      "Visakhapatnam is a coastal city known for beaches, Kailasagiri, and shipyard. "
          "विशाखापट्टनम अपने समुद्र तटों, कैलासगिरी और शिपयार्ड के लिए प्रसिद्ध है।",
    },
    {
      "name": "Vizianagaram (विजयनगरम)",
      "image": "assets/AndhraPradeshDistrictsImages/vizianagaram.jpeg",
      "description":
      "Vizianagaram is known for its historical forts and music heritage. "
          "विजयनगरम अपने ऐतिहासिक किलों और संगीत विरासत के लिए प्रसिद्ध है।",
    },
    {
      "name": "West Godavari (पश्चिमी गोदावरी)",
      "image": "assets/AndhraPradeshDistrictsImages/west_godavari.jpeg",
      "description":
      "West Godavari is famous for fertile lands, agriculture, and scenic beauty. "
          "पश्चिमी गोदावरी उपजाऊ भूमि, कृषि और सुंदरता के लिए प्रसिद्ध है।",
    },
    {
      "name": "YSR Kadapa (वाईएसआर कडप्पा)",
      "image": "assets/AndhraPradeshDistrictsImages/kadapa.jpeg",
      "description":
      "Kadapa is known for Gandikota Fort and Belum Caves. "
          "कडप्पा गंडिकोटा किला और बेलम गुफाओं के लिए प्रसिद्ध है।",
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
          "Andhra Pradesh Districts (आंध्र प्रदेश जिले)",
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
