import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class TamilNaduDistrictsPage extends StatefulWidget {
  @override
  _TamilNaduDistrictsPageState createState() => _TamilNaduDistrictsPageState();
}

class _TamilNaduDistrictsPageState extends State<TamilNaduDistrictsPage> {
  final List<Map<String, String>> allDistricts = [
    {"name": "Ariyalur (अरियालुर)", "description": "Known for cement industries. सीमेंट उद्योगों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/ariyalur.jpeg"},
    {"name": "Chengalpattu (चेंगलपट्टु)", "description": "Famous for IT hubs and Mahabalipuram. आईटी हब और महाबलीपुरम के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/chengalpattu.jpeg"},
    {"name": "Chennai (चेन्नई)", "description": "Capital city of Tamil Nadu. तमिलनाडु की राजधानी।", "image": "assets/TamilNaduDistrictsImages/chennai.jpeg"},
    {"name": "Coimbatore (कोयंबटूर)", "description": "Manchester of South India. दक्षिण भारत का मैनचेस्टर।", "image": "assets/TamilNaduDistrictsImages/coimbatore.jpeg"},
    {"name": "Cuddalore (कड्डलोर)", "description": "Known for Silver Beach and temples. सिल्वर बीच और मंदिरों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/cuddalore.jpeg"},
    {"name": "Dharmapuri (धर्मपुरी)", "description": "Famous for Hogenakkal Falls. होगेनक्कल जलप्रपात के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/dharmapuri.jpeg"},
    {"name": "Dindigul (डिंडीगुल)", "description": "Famous for Dindigul Fort and biryani. डिंडीगुल किला और बिरयानी के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/dindigul.jpeg"},
    {"name": "Erode (ईरोड)", "description": "Textile city of Tamil Nadu. तमिलनाडु का टेक्सटाइल शहर।", "image": "assets/TamilNaduDistrictsImages/erode.jpeg"},
    {"name": "Kallakurichi (कल्लाकुरिची)", "description": "Known for agriculture. कृषि के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/kallakurichi.jpeg"},
    {"name": "Kanchipuram (कांचीपुरम)", "description": "Famous for silk sarees and temples. रेशमी साड़ियों और मंदिरों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/kanchipuram.jpeg"},
    {"name": "Kanyakumari (कन्याकुमारी)", "description": "Southernmost tip of India. भारत का सबसे दक्षिणी छोर।", "image": "assets/TamilNaduDistrictsImages/kanyakumari.jpeg"},
    {"name": "Karur (करूर)", "description": "Famous for textile and temples. टेक्सटाइल और मंदिरों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/karur.jpeg"},
    {"name": "Krishnagiri (कृष्णगिरि)", "description": "Known for mangoes. आमों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/krishnagiri.jpeg"},
    {"name": "Madurai (मदुरै)", "description": "Meenakshi Amman Temple city. मीनाक्षी अम्मन मंदिर का शहर।", "image": "assets/TamilNaduDistrictsImages/madurai.jpeg"},
    {"name": "Nagapattinam (नागपट्टिनम)", "description": "Famous coastal town. प्रसिद्ध तटीय नगर।", "image": "assets/TamilNaduDistrictsImages/nagapattinam.jpeg"},
    {"name": "Namakkal (नमक्कल)", "description": "Known for poultry farms. पोल्ट्री फार्म्स के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/namakkal.jpeg"},
    {"name": "Nilgiris (नीलगिरी)", "description": "Famous hill station Ooty. ऊटी हिल स्टेशन के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/nilgiris.jpeg"},
    {"name": "Perambalur (पेराम्बलूर)", "description": "Known for historical temples. ऐतिहासिक मंदिरों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/perambalur.jpeg"},
    {"name": "Pudukkottai (पुदुकोट्टई)", "description": "Rich in heritage and temples. विरासत और मंदिरों में समृद्ध।", "image": "assets/TamilNaduDistrictsImages/pudukkottai.jpeg"},
    {"name": "Ramanathapuram (रामनाथपुरम)", "description": "Famous for Rameswaram Temple. रामेश्वरम मंदिर के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/ramanathapuram.jpeg"},
    {"name": "Ranipet (रानीपेट)", "description": "Known for industries and tanneries. उद्योगों और चमड़े की टेनरियों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/ranipet.jpeg"},
    {"name": "Salem (सेलम)", "description": "Steel city of Tamil Nadu. तमिलनाडु का स्टील शहर।", "image": "assets/TamilNaduDistrictsImages/salem.jpeg"},
    {"name": "Sivagangai (सिवगंगई)", "description": "Known for heritage sites. विरासत स्थलों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/sivagangai.jpeg"},
    {"name": "Tenkasi (तेनकासी)", "description": "Famous for Courtallam Waterfalls. कुट्टालम झरनों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/tenkasi.jpeg"},
    {"name": "Thanjavur (तंजावुर)", "description": "Brihadeeswara Temple city. बृहदीश्वर मंदिर का शहर।", "image": "assets/TamilNaduDistrictsImages/thanjavur.jpeg"},
    {"name": "Theni (थेनी)", "description": "Gateway to Western Ghats. पश्चिमी घाट का प्रवेश द्वार।", "image": "assets/TamilNaduDistrictsImages/theni.jpeg"},
    {"name": "Thoothukudi (तूतीकोरिन)", "description": "Known as Pearl City. मोती नगरी के नाम से प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/thoothukudi.jpeg"},
    {"name": "Tiruchirappalli (तिरुचिरापल्ली)", "description": "Rockfort Temple city. रॉकफोर्ट मंदिर का शहर।", "image": "assets/TamilNaduDistrictsImages/tiruchirappalli.jpeg"},
    {"name": "Tirunelveli (तिरुनेलवेली)", "description": "Famous for Nellaiappar Temple. नेल्लैअप्पर मंदिर के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/tirunelveli.jpeg"},
    {"name": "Tirupathur (तिरुपत्तूर)", "description": "Known for sandalwood. चंदन की लकड़ी के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/tirupathur.jpeg"},
    {"name": "Tiruppur (तिरुप्पुर)", "description": "Textile export hub. वस्त्र निर्यात केंद्र।", "image": "assets/TamilNaduDistrictsImages/tiruppur.jpeg"},
    {"name": "Tiruvallur (तिरुवल्लुर)", "description": "Industrial and residential hub near Chennai. चेन्नई के पास औद्योगिक और आवासीय क्षेत्र।", "image": "assets/TamilNaduDistrictsImages/tiruvallur.jpeg"},
    {"name": "Tiruvannamalai (तिरुवन्नामलै)", "description": "Famous for Arunachaleswarar Temple. अरुणाचलेश्वरर मंदिर के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/tiruvannamalai.jpeg"},
    {"name": "Tiruvarur (तिरुवारुर)", "description": "Famous for temples and Carnatic music. मंदिरों और कर्नाटक संगीत के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/tiruvarur.jpeg"},
    {"name": "Vellore (वेल्लोर)", "description": "Vellore Fort and Christian Medical College. वेल्लोर किला और क्रिश्चियन मेडिकल कॉलेज।", "image": "assets/TamilNaduDistrictsImages/vellore.jpeg"},
    {"name": "Viluppuram (विलुप्पुरम)", "description": "Largest district in Tamil Nadu. तमिलनाडु का सबसे बड़ा जिला।", "image": "assets/TamilNaduDistrictsImages/viluppuram.jpeg"},
    {"name": "Virudhunagar (वीरुधुनगर)", "description": "Known for fireworks industries. पटाखों के उद्योगों के लिए प्रसिद्ध।", "image": "assets/TamilNaduDistrictsImages/virudhunagar.jpeg"},
  ];
  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;
  }

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
      appBar: AppBar(title: const Text("Tamil Nadu Districts (तमिलनाडु जिले)")),
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