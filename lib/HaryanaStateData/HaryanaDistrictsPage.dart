import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

// ✅ District Model Class
class District {
  final String name;
  final String imagePath;
  final String description;

  const District(this.name, this.imagePath, this.description);
}

class HaryanaDistrictsPage extends StatefulWidget {
  const HaryanaDistrictsPage({super.key});

  @override
  State<HaryanaDistrictsPage> createState() => _HaryanaDistrictsPageState();
}

class _HaryanaDistrictsPageState extends State<HaryanaDistrictsPage> {
  final List<District> allDistricts = const [
    District(
      "Ambala (अम्बाला)",
      "assets/HaryanaDistrictsImages/ambala.jpeg",
      "Ambala is known for its military cantonment, cloth market, and historical significance. "
          "अम्बाला अपने सैन्य छावनी, कपड़ा बाजार और ऐतिहासिक महत्व के लिए प्रसिद्ध है।",
    ),
    District(
      "Bhiwani (भिवानी)",
      "assets/HaryanaDistrictsImages/bhiwani.jpeg",
      "Bhiwani is known as 'Chhota Kashi' and is famous for temples and boxing champions. "
          "भिवानी 'छोटा काशी' और बॉक्सिंग चैंपियनों के लिए प्रसिद्ध है।",
    ),
    District(
      "Charkhi Dadri (चरखी दादरी)",
      "assets/HaryanaDistrictsImages/charkhi_dadri.jpeg",
      "Charkhi Dadri is one of the newest districts, known for cultural heritage. "
          "चरखी दादरी एक नया जिला है, जो सांस्कृतिक विरासत के लिए प्रसिद्ध है।",
    ),
    District(
      "Faridabad (फरीदाबाद)",
      "assets/HaryanaDistrictsImages/faridabad.jpeg",
      "Faridabad is a major industrial city, part of the National Capital Region (NCR). "
          "फरीदाबाद एक प्रमुख औद्योगिक शहर है, जो एनसीआर का हिस्सा है।",
    ),
    District(
      "Fatehabad (फतेहाबाद)",
      "assets/HaryanaDistrictsImages/fatehabad.jpeg",
      "Fatehabad is famous for its archaeological sites and agriculture. "
          "फतेहाबाद अपने पुरातात्विक स्थलों और कृषि के लिए प्रसिद्ध है।",
    ),
    District(
      "Gurugram (गुरुग्राम)",
      "assets/HaryanaDistrictsImages/gurugram.jpeg",
      "Gurugram is a leading IT and corporate hub of India, also called Millennium City. "
          "गुरुग्राम भारत का अग्रणी आईटी और कॉर्पोरेट केंद्र है।",
    ),
    District(
      "Hisar (हिसार)",
      "assets/HaryanaDistrictsImages/hisar.jpeg",
      "Hisar is known as the 'Steel City' and for agriculture research institutes. "
          "हिसार 'स्टील सिटी' और कृषि अनुसंधान संस्थानों के लिए प्रसिद्ध है।",
    ),
    District(
      "Jhajjar (झज्जर)",
      "assets/HaryanaDistrictsImages/jhajjar.jpeg",
      "Jhajjar is known for its proximity to Delhi and historical importance. "
          "झज्जर दिल्ली के निकटता और ऐतिहासिक महत्व के लिए प्रसिद्ध है।",
    ),
    District(
      "Jind (जींद)",
      "assets/HaryanaDistrictsImages/jind.jpeg",
      "Jind is one of the oldest districts, rich in history and culture. "
          "जींद हरियाणा के सबसे पुराने जिलों में से एक है।",
    ),
    District(
      "Kaithal (कैथल)",
      "assets/HaryanaDistrictsImages/kaithal.jpeg",
      "Kaithal is associated with ancient Mahabharata history. "
          "कैथल महाभारत के इतिहास से जुड़ा हुआ है।",
    ),
    District(
      "Karnal (करनाल)",
      "assets/HaryanaDistrictsImages/karnal.jpeg",
      "Karnal is known as the 'Rice Bowl of India'. "
          "करनाल को 'भारत का चावल का कटोरा' कहा जाता है।",
    ),
    District(
      "Kurukshetra (कुरुक्षेत्र)",
      "assets/HaryanaDistrictsImages/kurukshetra.jpeg",
      "Kurukshetra is the holy land of Mahabharata where Lord Krishna gave the Bhagavad Gita. "
          "कुरुक्षेत्र वह पवित्र भूमि है जहां भगवान कृष्ण ने गीता का उपदेश दिया।",
    ),
    District(
      "Mahendragarh (महेंद्रगढ़)",
      "assets/HaryanaDistrictsImages/mahendragarh.jpeg",
      "Mahendragarh is known for its historical sites and fort. "
          "महेंद्रगढ़ अपने ऐतिहासिक स्थलों और किले के लिए प्रसिद्ध है।",
    ),
    District(
      "Nuh (नूंह)",
      "assets/HaryanaDistrictsImages/nuh.jpeg",
      "Nuh (Mewat) is known for its unique Meo culture and heritage. "
          "नूंह (मेवात) अपनी विशिष्ट मेव संस्कृति और विरासत के लिए प्रसिद्ध है।",
    ),
    District(
      "Palwal (पलवल)",
      "assets/HaryanaDistrictsImages/palwal.jpeg",
      "Palwal is historically associated with the Mahabharata. "
          "पलवल महाभारत से ऐतिहासिक रूप से जुड़ा हुआ है।",
    ),
    District(
      "Panchkula (पंचकुला)",
      "assets/HaryanaDistrictsImages/panchkula.jpeg",
      "Panchkula is known for Morni Hills and its planned city structure. "
          "पंचकुला मोरनी हिल्स और योजनाबद्ध शहर के लिए प्रसिद्ध है।",
    ),
    District(
      "Panipat (पानीपत)",
      "assets/HaryanaDistrictsImages/panipat.jpeg",
      "Panipat is historically famous for three major battles. "
          "पानीपत अपने तीन ऐतिहासिक युद्धों के लिए प्रसिद्ध है।",
    ),
    District(
      "Rewari (रेवाड़ी)",
      "assets/HaryanaDistrictsImages/rewari.jpeg",
      "Rewari is known for brass works and industrial area. "
          "रेवाड़ी पीतल के काम और औद्योगिक क्षेत्र के लिए प्रसिद्ध है।",
    ),
    District(
      "Rohtak (रोहतक)",
      "assets/HaryanaDistrictsImages/rohtak.jpeg",
      "Rohtak is an education hub and historical city. "
          "रोहतक एक शिक्षा केंद्र और ऐतिहासिक शहर है।",
    ),
    District(
      "Sirsa (सिरसा)",
      "assets/HaryanaDistrictsImages/sirsa.jpeg",
      "Sirsa is known for agriculture and religious diversity. "
          "सिरसा कृषि और धार्मिक विविधता के लिए प्रसिद्ध है।",
    ),
    District(
      "Sonipat (सोनीपत)",
      "assets/HaryanaDistrictsImages/sonipat.jpeg",
      "Sonipat is part of NCR and known for industries and education. "
          "सोनीपत एनसीआर का हिस्सा है और शिक्षा व उद्योगों के लिए प्रसिद्ध है।",
    ),
    District(
      "Yamunanagar (यमुनानगर)",
      "assets/HaryanaDistrictsImages/yamunanagar.jpeg",
      "Yamunanagar is famous for timber industries and paper mills. "
          "यमुनानगर लकड़ी उद्योग और पेपर मिलों के लिए प्रसिद्ध है।",
    ),
  ];

  List<District> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;
  }

  void filterSearch(String query) {
    final results = allDistricts.where((d) {
      return d.name.toLowerCase().contains(query.toLowerCase()) ||
          d.description.toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredDistricts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Haryana Districts (हरियाणा जिले)"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterSearch,
              decoration: InputDecoration(
                hintText: "Search District...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredDistricts.length,
        itemBuilder: (context, index) {
          final d = filteredDistricts[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                d.imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(d.name),
              subtitle: Text(
                d.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: d.name,
                      districtImage: d.imagePath,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
