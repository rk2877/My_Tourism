import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class KarnatakaDistrictsPage extends StatefulWidget {
  @override
  _KarnatakaDistrictsPageState createState() => _KarnatakaDistrictsPageState();
}

class _KarnatakaDistrictsPageState extends State<KarnatakaDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Bagalkot (बागलकोट)",
      "image": "assets/KarnatakaDistrictsImages/bagalkot.jpeg",
      "description": "Famous for Badami caves and heritage. बादामी गुफाओं और धरोहर के लिए प्रसिद्ध।",
    },
    {
      "name": "Ballari (बल्लारी)",
      "image": "assets/KarnatakaDistrictsImages/ballari.jpeg",
      "description": "Mining hub and historic forts. खनन केंद्र और ऐतिहासिक किले।",
    },
    {
      "name": "Belagavi (बेलगावी)",
      "image": "assets/KarnatakaDistrictsImages/belagavi.jpeg",
      "description": "Cultural and industrial hub of north Karnataka. उत्तर कर्नाटक का सांस्कृतिक और औद्योगिक केंद्र।",
    },
    {
      "name": "Bengaluru Rural (बेंगलुरु ग्रामीण)",
      "image": "assets/KarnatakaDistrictsImages/bengaluru_rural.jpeg",
      "description": "Known for agriculture and rural landscapes. कृषि और ग्रामीण परिदृश्य के लिए प्रसिद्ध।",
    },
    {
      "name": "Bengaluru Urban (बेंगलुरु शहरी)",
      "image": "assets/KarnatakaDistrictsImages/bengaluru_urban.jpeg",
      "description": "Capital city, IT hub, and vibrant culture. राजधानी शहर, आईटी केंद्र और जीवंत संस्कृति।",
    },
    {
      "name": "Bidar (बिदर)",
      "image": "assets/KarnatakaDistrictsImages/bidar.jpeg",
      "description": "Known for Bidar fort and Islamic art. बिदर किला और इस्लामी कला के लिए प्रसिद्ध।",
    },
    {
      "name": "Chamarajanagar (चामराजनगर)",
      "image": "assets/KarnatakaDistrictsImages/chamarajanagar.jpeg",
      "description": "Rich in wildlife sanctuaries and forests. वन्यजीव अभयारण्य और जंगलों से समृद्ध।",
    },
    {
      "name": "Chikkaballapur (चिक्कबल्लापुर)",
      "image": "assets/KarnatakaDistrictsImages/chikkaballapur.jpeg",
      "description": "Known for Nandi Hills and silk industry. नंदी हिल्स और रेशम उद्योग के लिए प्रसिद्ध।",
    },
    {
      "name": "Chikkamagaluru (चिक्कमगलुरु)",
      "image": "assets/KarnatakaDistrictsImages/chikkamagaluru.jpeg",
      "description": "Coffee land of Karnataka. कर्नाटक की कॉफी भूमि।",
    },
    {
      "name": "Chitradurga (चित्रदुर्ग)",
      "image": "assets/KarnatakaDistrictsImages/chitradurga.jpeg",
      "description": "Famous for Chitradurga fort. चित्रदुर्ग किले के लिए प्रसिद्ध।",
    },
    {
      "name": "Dakshina Kannada (दक्षिण कन्नड़)",
      "image": "assets/KarnatakaDistrictsImages/dakshina_kannada.jpeg",
      "description": "Famous for Mangaluru and coastal culture. मंगलुरु और तटीय संस्कृति के लिए प्रसिद्ध।",
    },
    {
      "name": "Davangere (दावणगेरे)",
      "image": "assets/KarnatakaDistrictsImages/davangere.jpeg",
      "description": "Known for education and Davangere benne dosa. शिक्षा और दावणगेरे बेनने डोसा के लिए प्रसिद्ध।",
    },
    {
      "name": "Dharwad (धारवाड़)",
      "image": "assets/KarnatakaDistrictsImages/dharwad.jpeg",
      "description": "Educational city with rich culture. शैक्षणिक और सांस्कृतिक शहर।",
    },
    {
      "name": "Gadag (गदग)",
      "image": "assets/KarnatakaDistrictsImages/gadag.jpeg",
      "description": "Known for historic temples and art. ऐतिहासिक मंदिरों और कला के लिए प्रसिद्ध।",
    },
    {
      "name": "Hassan (हासन)",
      "image": "assets/KarnatakaDistrictsImages/hassan.jpeg",
      "description": "Known for Hoysala temples and Shravanabelagola. होयसला मंदिरों और श्रवणबेलगोला के लिए प्रसिद्ध।",
    },
    {
      "name": "Haveri (हावेरी)",
      "image": "assets/KarnatakaDistrictsImages/haveri.jpeg",
      "description": "Land of rich culture and history. समृद्ध संस्कृति और इतिहास की भूमि।",
    },
    {
      "name": "Kalaburagi (कलाबुरगी)",
      "image": "assets/KarnatakaDistrictsImages/kalaburagi.jpeg",
      "description": "Famous for Gulbarga fort and heritage. गुलबर्गा किले और धरोहर के लिए प्रसिद्ध।",
    },
    {
      "name": "Kodagu (कोडगु)",
      "image": "assets/KarnatakaDistrictsImages/kodagu.jpeg",
      "description": "Coffee plantations and scenic hills. कॉफी बागान और खूबसूरत पहाड़ियाँ।",
    },
    {
      "name": "Kolar (कोलार)",
      "image": "assets/KarnatakaDistrictsImages/kolar.jpeg",
      "description": "Known for Kolar gold fields. कोलार गोल्ड फील्ड्स के लिए प्रसिद्ध।",
    },
    {
      "name": "Koppal (कोप्पल)",
      "image": "assets/KarnatakaDistrictsImages/koppal.jpeg",
      "description": "Historic city near Hampi ruins. हम्पी खंडहरों के पास का ऐतिहासिक शहर।",
    },
    {
      "name": "Mandya (मांड्या)",
      "image": "assets/KarnatakaDistrictsImages/mandya.jpeg",
      "description": "Land of sugarcane and Cauvery River. गन्ने और कावेरी नदी की भूमि।",
    },
    {
      "name": "Mysuru (मिसूरु)",
      "image": "assets/KarnatakaDistrictsImages/mysuru.jpeg",
      "description": "Famous for Mysore Palace and Dasara festival. मैसूर पैलेस और दशहरा उत्सव के लिए प्रसिद्ध।",
    },
    {
      "name": "Raichur (रायचूर)",
      "image": "assets/KarnatakaDistrictsImages/raichur.jpeg",
      "description": "Known for forts and Tungabhadra river. किलों और तुंगभद्रा नदी के लिए प्रसिद्ध।",
    },
    {
      "name": "Ramanagara (रामनगर)",
      "image": "assets/KarnatakaDistrictsImages/ramanagara.jpeg",
      "description": "Known for rocky hills and silk industry. चट्टानी पहाड़ियों और रेशम उद्योग के लिए प्रसिद्ध।",
    },
    {
      "name": "Shivamogga (शिवमोग्गा)",
      "image": "assets/KarnatakaDistrictsImages/shivamogga.jpeg",
      "description": "Gateway to Malnad, rich in nature. मलनाड का द्वार, प्रकृति से भरपूर।",
    },
    {
      "name": "Tumakuru (तुमकुरु)",
      "image": "assets/KarnatakaDistrictsImages/tumakuru.jpeg",
      "description": "Industrial city and educational hub. औद्योगिक शहर और शैक्षिक केंद्र।",
    },
    {
      "name": "Udupi (उडुपी)",
      "image": "assets/KarnatakaDistrictsImages/udupi.jpeg",
      "description": "Known for temples and Udupi cuisine. मंदिरों और उडुपी व्यंजनों के लिए प्रसिद्ध।",
    },
    {
      "name": "Uttara Kannada (उत्तर कन्नड़)",
      "image": "assets/KarnatakaDistrictsImages/uttara_kannada.jpeg",
      "description": "Rich in beaches, forests, and forts. समुद्र तटों, जंगलों और किलों से समृद्ध।",
    },
    {
      "name": "Vijayapura (विजयपुरा)",
      "image": "assets/KarnatakaDistrictsImages/vijayapura.jpeg",
      "description": "Known for Gol Gumbaz and Islamic architecture. गोल गुम्बज और इस्लामी वास्तुकला के लिए प्रसिद्ध।",
    },
    {
      "name": "Yadgir (यादगिर)",
      "image": "assets/KarnatakaDistrictsImages/yadgir.jpeg",
      "description": "Known for forts and historical heritage. किलों और ऐतिहासिक धरोहर के लिए प्रसिद्ध।",
    },
  ];

  List<Map<String, String>> filteredDistricts = [];
  String query = "";

  @override
  void initState() {
    super.initState();
    filteredDistricts = districts;
  }

  void updateSearch(String enteredText) {
    setState(() {
      query = enteredText.toLowerCase();
      filteredDistricts = districts.where((d) {
        final name = d["name"]!.toLowerCase();
        final desc = d["description"]!.toLowerCase();
        return name.contains(query) || desc.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Karnataka Districts (कर्नाटक जिले)")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search District (जिला खोजें)",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: updateSearch,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredDistricts.length,
              itemBuilder: (context, index) {
                final d = filteredDistricts[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: Image.asset(
                      d["image"]!,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(d["name"]!),
                    subtitle: Text(
                      d["description"]!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TouristPlacesPage(
                            districtName: d["name"]!,
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
