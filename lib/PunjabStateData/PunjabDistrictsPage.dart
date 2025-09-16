import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class PunjabDistrictsPage extends StatefulWidget {
  @override
  _PunjabDistrictsPageState createState() => _PunjabDistrictsPageState();
}

class _PunjabDistrictsPageState extends State<PunjabDistrictsPage> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = "";

  final List<Map<String, String>> districts = [
    {
      "name": "Amritsar (अमृतसर)",
      "description": "Home to the Golden Temple and rich Sikh heritage. स्वर्ण मंदिर और सिख विरासत के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/amritsar.jpeg",
    },
    {
      "name": "Ludhiana (लुधियाना)",
      "description": "Punjab's industrial hub with parks and museums. पंजाब का औद्योगिक केंद्र, पार्क और संग्रहालयों के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/ludhiana.jpeg",
    },
    {
      "name": "Jalandhar (जालंधर)",
      "description": "Historic city known for temples and sports goods. मंदिरों और खेल सामान के लिए मशहूर ऐतिहासिक शहर।",
      "image": "assets/PunjabDistrictsImages/jalandhar.jpeg",
    },
    {
      "name": "Patiala (पटियाला)",
      "description": "Known for royal palaces and heritage. शाही महलों और विरासत के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/patiala.jpeg",
    },
    {
      "name": "Bathinda (बठिंडा)",
      "description": "Famous for forts, lakes, and thermal plants. किलों, झीलों और थर्मल प्लांट के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/bathinda.jpeg",
    },
    {
      "name": "Mohali (मोहाली)",
      "description": "Hub for cricket stadium and IT industries. क्रिकेट स्टेडियम और आईटी उद्योगों के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/mohali.jpeg",
    },
    {
      "name": "Pathankot (पठानकोट)",
      "description": "Gateway to Himachal and Jammu with historic forts. हिमाचल और जम्मू का प्रवेश द्वार, ऐतिहासिक किलों के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/pathankot.jpeg",
    },
    {
      "name": "Hoshiarpur (होशियारपुर)",
      "description": "Known as the land of saints with rich culture. संतों की भूमि और समृद्ध संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/hoshiarpur.jpeg",
    },
    {
      "name": "Moga (मोगा)",
      "description": "Agricultural hub with historical gurdwaras. कृषि केंद्र और ऐतिहासिक गुरुद्वारों के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/moga.jpeg",
    },
    {
      "name": "Firozpur (फिरोजपुर)",
      "description": "Border district with historic war memorials. सीमावर्ती जिला, ऐतिहासिक युद्ध स्मारकों के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/firozpur.jpeg",
    },
    {
      "name": "Sangrur (संगरूर)",
      "description": "Known for old forts and royal heritage. पुराने किलों और शाही विरासत के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/sangrur.jpeg",
    },
    {
      "name": "Kapurthala (कपूरथला)",
      "description": "Famous for French-style palaces and architecture. फ्रेंच शैली के महलों और वास्तुकला के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/kapurthala.jpeg",
    },
    {
      "name": "Barnala (बरनाला)",
      "description": "Small district with agriculture and textile industries. कृषि और वस्त्र उद्योगों के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/barnala.jpeg",
    },
    {
      "name": "Fatehgarh Sahib (फतेहगढ़ साहिब)",
      "description": "Known for Sikh history and gurudwaras. सिख इतिहास और गुरुद्वारों के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/fatehgarh_sahib.jpeg",
    },
    {
      "name": "Rupnagar (रूपनगर / रोपड़)",
      "description": "Historic city with archaeological importance. ऐतिहासिक शहर और पुरातात्विक महत्व के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/rupnagar.jpeg",
    },
    {
      "name": "Tarn Taran (तरन तारन)",
      "description": "Known for its huge gurdwaras and Sikh pilgrimage. विशाल गुरुद्वारों और सिख तीर्थ के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/tarn_taran.jpeg",
    },
    {
      "name": "Mansa (मंसा)",
      "description": "Agriculture-rich district with cultural heritage. कृषि प्रधान जिला और सांस्कृतिक विरासत के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/mansa.jpeg",
    },
    {
      "name": "Faridkot (फरीदकोट)",
      "description": "Famous for forts, gardens, and shrines. किलों, बागानों और दरगाहों के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/faridkot.jpeg",
    },
    {
      "name": "Muktsar Sahib (श्री मुक्तसर साहिब)",
      "description": "Important Sikh religious center. प्रमुख सिख धार्मिक केंद्र।",
      "image": "assets/PunjabDistrictsImages/muktsar.jpeg",
    },
    {
      "name": "Gurdaspur (गुरदासपुर)",
      "description": "Border district with historic sites. सीमावर्ती जिला और ऐतिहासिक स्थलों के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/gurdaspur.jpeg",
    },
    {
      "name": "Shaheed Bhagat Singh Nagar (शहीद भगत सिंह नगर / नवांशहर)",
      "description": "Named after Bhagat Singh, known for culture and history. भगत सिंह के नाम पर, संस्कृति और इतिहास के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/sas_nagar.jpeg",
    },
    {
      "name": "Fazilka (फाजिल्का)",
      "description": "Border district with cotton production. सीमावर्ती जिला और कपास उत्पादन के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/fazilka.jpeg",
    },
    {
      "name": "Malerkotla (मालेरकोटला)",
      "description": "Punjab's newest district, known for communal harmony. पंजाब का नया जिला, सांप्रदायिक सौहार्द्र के लिए प्रसिद्ध।",
      "image": "assets/PunjabDistrictsImages/malerkotla.jpeg",
    },
  ];


  @override
  Widget build(BuildContext context) {
    final filteredDistricts = districts.where((d) {
      final name = d["name"]!.toLowerCase();
      final query = searchQuery.toLowerCase();
      return name.contains(query);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Punjab Districts (पंजाब के ज़िले)"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search District...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
        ),
      ),
      body: ListView.builder(
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
    );
  }
}
