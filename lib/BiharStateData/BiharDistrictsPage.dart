import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class BiharDistrictsPage extends StatefulWidget {
  @override
  _BiharDistrictsPageState createState() => _BiharDistrictsPageState();
}

class _BiharDistrictsPageState extends State<BiharDistrictsPage> {
  // 🔹 सभी जिलों की लिस्ट
  final List<Map<String, String>> allDistricts = [
    {
      "name": "Araria (अररिया)",
      "description": "Araria is known for agriculture and natural beauty. अररिया कृषि और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/araria.jpeg",
    },
    {
      "name": "Arwal (अरवल)",
      "description": "Arwal is one of the smallest districts of Bihar. अरवल बिहार के सबसे छोटे जिलों में से एक है।",
      "image": "assets/BiharDistrictsImages/arwal.jpeg",
    },
    {
      "name": "Aurangabad (औरंगाबाद)",
      "description": "Aurangabad is known for Deo Sun Temple. औरंगाबाद देव सूर्य मंदिर के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/aurangabad.jpeg",
    },
    {
      "name": "Banka (बांका)",
      "description": "Banka is known for Mandar Hill. बांका मंदार हिल के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/banka.jpeg",
    },
    {
      "name": "Begusarai (बेगूसराय)",
      "description": "Begusarai is called the Industrial Capital of Bihar. बेगूसराय बिहार की औद्योगिक राजधानी है।",
      "image": "assets/BiharDistrictsImages/begusarai.jpeg",
    },
    {
      "name": "Bhagalpur (भागलपुर)",
      "description": "Bhagalpur is famous for silk industry. भागलपुर रेशम उद्योग के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/bhagalpur.jpeg",
    },
    {
      "name": "Bhojpur (भोजपुर)",
      "description": "Bhojpur is famous for Veer Kunwar Singh. भोजपुर वीर कुंवर सिंह के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/bhojpur.jpeg",
    },
    {
      "name": "Buxar (बक्सर)",
      "description": "Buxar is known for the Battle of Buxar (1764). बक्सर 1764 की बक्सर की लड़ाई के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/buxar.jpeg",
    },
    {
      "name": "Darbhanga (दरभंगा)",
      "description": "Darbhanga is known for Mithila culture. दरभंगा मिथिला संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/darbhanga.jpeg",
    },
    {
      "name": "East Champaran (पूर्वी चंपारण)",
      "description": "Known for Champaran Satyagraha. चंपारण सत्याग्रह के लिए प्रसिद्ध।",
      "image": "assets/BiharDistrictsImages/east_champaran.jpeg",
    },
    {
      "name": "West Champaran (पश्चिम चंपारण)",
      "description": "Famous for Valmiki National Park. वाल्मीकि राष्ट्रीय उद्यान के लिए प्रसिद्ध।",
      "image": "assets/BiharDistrictsImages/west_champaran.jpeg",
    },
    {
      "name": "Gaya ji (गया जी)",
      "description": "Famous for Bodh Gaya, Mahabodhi Temple, and historical significance. बोधगया, महाबोधि मंदिर और ऐतिहासिक महत्व के लिए प्रसिद्ध।",
      "image": "assets/BiharDistrictsImages/gaya.jpeg",
    },

    {
      "name": "Gopalganj (गोपालगंज)",
      "description": "Known for rich agriculture. गोपालगंज कृषि उत्पादन के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/gopalganj.jpeg",
    },
    {
      "name": "Jamui (जमुई)",
      "description": "Jamui has historical and religious importance. जमुई ऐतिहासिक महत्व के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/jamui.jpeg",
    },
    {
      "name": "Jehanabad (जहानाबाद)",
      "description": "Jehanabad is known for agriculture. जहानाबाद कृषि के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/jehanabad.jpeg",
    },
    {
      "name": "Kaimur (कैमूर)",
      "description": "Kaimur is famous for hills and waterfalls. कैमूर पहाड़ियों और झरनों के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/kaimur.jpeg",
    },
    {
      "name": "Katihar (कटिहार)",
      "description": "Katihar is a major railway junction. कटिहार रेलवे जंक्शन के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/katihar.jpeg",
    },
    {
      "name": "Khagaria (खगड़िया)",
      "description": "Khagaria is an important farming district. खगड़िया कृषि जिला है।",
      "image": "assets/BiharDistrictsImages/khagaria.jpeg",
    },
    {
      "name": "Kishanganj (किशनगंज)",
      "description": "Kishanganj is famous for tea gardens. किशनगंज चाय बागानों के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/kishanganj.jpeg",
    },
    {
      "name": "Lakhisarai (लखीसराय)",
      "description": "Lakhisarai is famous for temples. लखीसराय मंदिरों के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/lakhisarai.jpeg",
    },
    {
      "name": "Madhepura (मधेपुरा)",
      "description": "Madhepura is known for rural culture. मधेपुरा ग्रामीण संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/madhepura.jpeg",
    },
    {
      "name": "Madhubani (मधुबनी)",
      "description": "Madhubani is famous for paintings. मधुबनी पेंटिंग्स के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/madhubani.jpeg",
    },
    {
      "name": "Munger (मुंगेर)",
      "description": "Munger is known for Yoga School. मुंगेर योग स्कूल के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/munger.jpeg",
    },
    {
      "name": "Muzaffarpur (मुज़फ़्फ़रपुर)",
      "description": "Muzaffarpur is the Lychee Kingdom. मुज़फ़्फ़रपुर लीची के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/muzaffarpur.jpeg",
    },
    {
      "name": "Nalanda (नालंदा)",
      "description": "Nalanda is famous for ancient university. नालंदा प्राचीन विश्वविद्यालय के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/nalanda.jpeg",
    },
    {
      "name": "Nawada (नवादा)",
      "description": "Nawada is known for Kakolat waterfall. नवादा ककोलत झरने के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/nawada.jpeg",
    },
    {
      "name": "Patna (पटना)",
      "description": "Patna is the capital of Bihar. पटना बिहार की राजधानी है।",
      "image": "assets/BiharDistrictsImages/patna.jpeg",
    },
    {
      "name": "Purnia (पूर्णिया)",
      "description": "Purnia is a trade hub. पूर्णिया व्यापारिक केंद्र है।",
      "image": "assets/BiharDistrictsImages/purnia.jpeg",
    },
    {
      "name": "Rohtas (रोहतास)",
      "description": "Rohtas is famous for Rohtasgarh Fort. रोहतासगढ़ किले के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/rohtas.jpeg",
    },
    {
      "name": "Saharsa (सहरसा)",
      "description": "Saharsa is known for fertile lands. सहरसा उपजाऊ भूमि के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/saharsa.jpeg",
    },
    {
      "name": "Samastipur (समस्तीपुर)",
      "description": "Samastipur is known for railway division. समस्तीपुर रेलवे डिवीजन के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/samastipur.jpeg",
    },
    {
      "name": "Saran (सारण)",
      "description": "Saran is known for Chhapra city. सारण छपरा शहर के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/saran.jpeg",
    },
    {
      "name": "Sheikhpura (शेखपुरा)",
      "description": "Sheikhpura is famous for Arghauti Dam. शेखपुरा अर्घौती बांध के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/sheikhpura.jpeg",
    },
    {
      "name": "Sheohar (शिवहर)",
      "description": "Sheohar is one of the smallest districts. शिवहर सबसे छोटा जिला है।",
      "image": "assets/BiharDistrictsImages/sheohar.jpeg",
    },
    {
      "name": "Sitamarhi (सीतामढ़ी)",
      "description": "Sitamarhi is believed to be birthplace of Sita. सीतामढ़ी माता सीता का जन्मस्थान है।",
      "image": "assets/BiharDistrictsImages/sitamarhi.jpeg",
    },
    {
      "name": "Siwan (सीवान)",
      "description": "Siwan is known for historical leaders. सीवान ऐतिहासिक महत्व के लिए प्रसिद्ध है।",
      "image": "assets/BiharDistrictsImages/siwan.jpeg",
    },
    {
      "name": "Supaul (सुपौल)",
      "description": "Supaul is part of Mithilanchal region. सुपौल मिथिलांचल क्षेत्र का हिस्सा है।",
      "image": "assets/BiharDistrictsImages/supaul.jpeg",
    },
    {
      "name": "Vaishali (वैशाली)",
      "description": "Vaishali is an ancient Buddhist site. वैशाली प्राचीन बौद्ध स्थल है।",
      "image": "assets/BiharDistrictsImages/vaishali.jpeg",
    },
  ];

  // 🔹 Filtered List
  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;
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
        title: Text("Bihar Districts (बिहार जिले)",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search district...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: _filterDistricts,
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