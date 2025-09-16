import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class MaharashtraDistrictsPage extends StatefulWidget {
  @override
  _MaharashtraDistrictsPageState createState() =>
      _MaharashtraDistrictsPageState();
}

class _MaharashtraDistrictsPageState extends State<MaharashtraDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Mumbai (मुंबई)",
      "image": "assets/MaharashtraDistrictsImages/mumbai_city.jpeg",
      "description": "मुंबई महाराष्ट्र की राजधानी और भारत की वित्तीय नगरी है। Mumbai is the capital of Maharashtra and the financial hub of India."
    },
    {
      "name": "Pune (पुणे)",
      "image": "assets/MaharashtraDistrictsImages/pune.jpeg",
      "description": "पुणे शिक्षा और आईटी हब के रूप में जाना जाता है। Pune is known as the education and IT hub."
    },
    {
      "name": "Nagpur (नागपुर)",
      "image": "assets/MaharashtraDistrictsImages/nagpur.jpeg",
      "description": "नागपुर को संतरे का शहर कहा जाता है। Nagpur is called the Orange City."
    },
    {
      "name": "Thane (ठाणे)",
      "image": "assets/MaharashtraDistrictsImages/thane.jpeg",
      "description": "ठाणे झीलों का शहर कहा जाता है। Thane is known as the City of Lakes."
    },
    {
      "name": "Nashik (नासिक)",
      "image": "assets/MaharashtraDistrictsImages/nashik.jpeg",
      "description": "नासिक कुंभ मेला और अंगूर उत्पादन के लिए प्रसिद्ध है। Nashik is famous for Kumbh Mela and vineyards."
    },
    {
      "name": "Aurangabad (औरंगाबाद)",
      "image": "assets/MaharashtraDistrictsImages/aurangabad.jpeg",
      "description": "यह अजंता-एलोरा की गुफाओं के लिए प्रसिद्ध है। Aurangabad is known for Ajanta-Ellora caves."
    },
    {
      "name": "Solapur (सोलापुर)",
      "image": "assets/MaharashtraDistrictsImages/solapur.jpeg",
      "description": "सोलापुर अपने वस्त्र उद्योग के लिए प्रसिद्ध है। Solapur is known for textile industries."
    },
    {
      "name": "Amravati (अमरावती)",
      "image": "assets/MaharashtraDistrictsImages/amravati.jpeg",
      "description": "विदर्भ का प्रमुख शहर। Amravati is an important city of Vidarbha."
    },
    {
      "name": "Kolhapur (कोल्हापुर)",
      "image": "assets/MaharashtraDistrictsImages/kolhapur.jpeg",
      "description": "कोल्हापुर महालक्ष्मी मंदिर और चप्पलों के लिए प्रसिद्ध है। Kolhapur is famous for Mahalakshmi temple and Kolhapuri chappals."
    },
    {
      "name": "Satara (सातारा)",
      "image": "assets/MaharashtraDistrictsImages/satara.jpeg",
      "description": "सातारा किलों और झरनों के लिए जाना जाता है। Satara is famous for forts and waterfalls."
    },
    {
      "name": "Sangli (सांगली)",
      "image": "assets/MaharashtraDistrictsImages/sangli.jpeg",
      "description": "सांगली को टर्बो पॉवर और अंगूर की खेती के लिए जाना जाता है। Sangli is known for turmeric and vineyards."
    },
    {
      "name": "Jalgaon (जलगाँव)",
      "image": "assets/MaharashtraDistrictsImages/jalgaon.jpeg",
      "description": "जलगाँव केले की खेती के लिए प्रसिद्ध है। Jalgaon is known as the Banana City."
    },
    {
      "name": "Latur (लातूर)",
      "image": "assets/MaharashtraDistrictsImages/latur.jpeg",
      "description": "लातूर अपने शैक्षणिक संस्थानों के लिए प्रसिद्ध है। Latur is known for educational institutions."
    },
    {
      "name": "Chandrapur (चंद्रपुर)",
      "image": "assets/MaharashtraDistrictsImages/chandrapur.jpeg",
      "description": "यह ताडोबा राष्ट्रीय उद्यान के लिए प्रसिद्ध है। Chandrapur is known for Tadoba National Park."
    },
    {
      "name": "Parbhani (परभणी)",
      "image": "assets/MaharashtraDistrictsImages/parbhani.jpeg",
      "description": "परभणी कृषि विज्ञान के लिए जाना जाता है। Parbhani is famous for agricultural research."
    },
    {
      "name": "Akola (अकोला)",
      "image": "assets/MaharashtraDistrictsImages/akola.jpeg",
      "description": "अकोला कपास उत्पादन के लिए प्रसिद्ध है। Akola is known for cotton production."
    },
    {
      "name": "Beed (बीड)",
      "image": "assets/MaharashtraDistrictsImages/beed.jpeg",
      "description": "बीड ऐतिहासिक और सांस्कृतिक धरोहर के लिए प्रसिद्ध है। Beed is known for cultural heritage."
    },
    {
      "name": "Bhandara (भंडारा)",
      "image": "assets/MaharashtraDistrictsImages/bhandara.jpeg",
      "description": "भंडारा को चावल का कटोरा कहा जाता है। Bhandara is known as the rice bowl."
    },
    {
      "name": "Gondia (गोंदिया)",
      "image": "assets/MaharashtraDistrictsImages/gondia.jpeg",
      "description": "गोंदिया को धान की नगरी कहा जाता है। Gondia is called the Rice City."
    },
    {
      "name": "Yavatmal (यवतमाल)",
      "image": "assets/MaharashtraDistrictsImages/yavatmal.jpeg",
      "description": "यवतमाल कपास के लिए प्रसिद्ध है। Yavatmal is famous for cotton."
    },
    {
      "name": "Wardha (वर्धा)",
      "image": "assets/MaharashtraDistrictsImages/wardha.jpeg",
      "description": "वर्धा महात्मा गांधी के सेवाग्राम आश्रम के लिए प्रसिद्ध है। Wardha is famous for Sevagram Ashram."
    },
    {
      "name": "Dhule (धुले)",
      "image": "assets/MaharashtraDistrictsImages/dhule.jpeg",
      "description": "धुले कपास और मूंगफली उत्पादन के लिए प्रसिद्ध है। Dhule is known for cotton and peanuts."
    },
    {
      "name": "Nanded (नांदेड)",
      "image": "assets/MaharashtraDistrictsImages/nanded.jpeg",
      "description": "नांदेड गुरुद्वारा तख्त हजूर साहिब के लिए प्रसिद्ध है। Nanded is famous for Takht Hazur Sahib Gurudwara."
    },
    {
      "name": "Osmanabad (उस्मानाबाद)",
      "image": "assets/MaharashtraDistrictsImages/osmanabad.jpeg",
      "description": "उस्मानाबाद अपने प्राचीन मंदिरों के लिए प्रसिद्ध है। Osmanabad is known for ancient temples."
    },
    {
      "name": "Hingoli (हिंगोली)",
      "image": "assets/MaharashtraDistrictsImages/hingoli.jpeg",
      "description": "हिंगोली धार्मिक स्थलों के लिए प्रसिद्ध है। Hingoli is known for religious places."
    },
    {
      "name": "Raigad (रायगड)",
      "image": "assets/MaharashtraDistrictsImages/raigad.jpeg",
      "description": "रायगड छत्रपति शिवाजी महाराज की राजधानी रही है। Raigad was the capital of Chhatrapati Shivaji Maharaj."
    },
    {
      "name": "Ratnagiri (रत्नागिरी)",
      "image": "assets/MaharashtraDistrictsImages/ratnagiri.jpeg",
      "description": "रत्नागिरी आम्र फल के लिए प्रसिद्ध है। Ratnagiri is famous for Alphonso mangoes."
    },
    {
      "name": "Sindhudurg (सिंधुदुर्ग)",
      "image": "assets/MaharashtraDistrictsImages/sindhudurg.jpeg",
      "description": "सिंधुदुर्ग किले और समुद्र तटों के लिए प्रसिद्ध है। Sindhudurg is known for forts and beaches."
    },
    {
      "name": "Palghar (पालघर)",
      "image": "assets/MaharashtraDistrictsImages/palghar.jpeg",
      "description": "पालघर मछली पालन और औद्योगिक क्षेत्र के लिए प्रसिद्ध है। Palghar is known for fisheries and industries."
    },
    {
      "name": "Ahmednagar (अहमदनगर)",
      "image": "assets/MaharashtraDistrictsImages/ahmednagar.jpeg",
      "description": "अहमदनगर शुगर उद्योग और ऐतिहासिक स्थलों के लिए प्रसिद्ध है। Ahmednagar is known for sugar industry and forts."
    },
    {
      "name": "Gadchiroli (गडचिरोली)",
      "image": "assets/MaharashtraDistrictsImages/gadchiroli.jpeg",
      "description": "गडचिरोली घने जंगलों के लिए प्रसिद्ध है। Gadchiroli is famous for dense forests."
    },
    {
      "name": "Washim (वाशीम)",
      "image": "assets/MaharashtraDistrictsImages/washim.jpeg",
      "description": "वाशीम विदर्भ का ऐतिहासिक जिला है। Washim is a historical district in Vidarbha."
    },
    {
      "name": "Jalna (जालना)",
      "image": "assets/MaharashtraDistrictsImages/jalna.jpeg",
      "description": "जालना स्टील उद्योग और बीज उत्पादन के लिए प्रसिद्ध है। Jalna is known for steel industry and seed production."
    },
  ];


  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = districts;
  }

  void _filterDistricts(String query) {
    setState(() {
      filteredDistricts = districts
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
        title: const Text("Maharashtra Districts (महाराष्ट्र के जिले)"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              onChanged: _filterDistricts,
              decoration: InputDecoration(
                hintText: "Search District...",
                prefixIcon: Icon(Icons.search),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
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
                  child: ListTile(
                    leading: Image.asset(
                      district["image"]!,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(district["name"]!),
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
                          builder: (context) =>
                              TouristPlacesPage(districtName: district["name"]!),
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