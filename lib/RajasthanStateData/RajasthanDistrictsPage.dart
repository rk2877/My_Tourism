import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class RajasthanDistrictsPage extends StatefulWidget {
  @override
  _RajasthanDistrictsPageState createState() => _RajasthanDistrictsPageState();
}

class _RajasthanDistrictsPageState extends State<RajasthanDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Ajmer (अजमेर)",
      "image": "assets/RajasthanDistrictsImages/ajmer.jpeg",
      "description": "Famous for Ajmer Sharif Dargah. अजमेर शरीफ दरगाह के लिए प्रसिद्ध।"
    },
    {
      "name": "Alwar (अलवर)",
      "image": "assets/RajasthanDistrictsImages/alwar.jpeg",
      "description": "Known for Sariska Tiger Reserve. सरिस्का टाइगर रिज़र्व के लिए मशहूर।"
    },
    {
      "name": "Banswara (बाँसवाड़ा)",
      "image": "assets/RajasthanDistrictsImages/banswara.jpeg",
      "description": "City of Hundred Islands. सौ द्वीपों का शहर।"
    },
    {
      "name": "Baran (बारां)",
      "image": "assets/RajasthanDistrictsImages/baran.jpeg",
      "description": "Rich in natural beauty and waterfalls. प्राकृतिक सौंदर्य और झरनों से भरपूर।"
    },
    {
      "name": "Barmer (बाड़मेर)",
      "image": "assets/RajasthanDistrictsImages/barmer.jpeg",
      "description": "Famous for desert and handicrafts. रेगिस्तान और हस्तशिल्प के लिए प्रसिद्ध।"
    },
    {
      "name": "Bharatpur (भरतपुर)",
      "image": "assets/RajasthanDistrictsImages/bharatpur.jpeg",
      "description": "Keoladeo National Park. केवलादेव राष्ट्रीय उद्यान।"
    },
    {
      "name": "Bhilwara (भीलवाड़ा)",
      "image": "assets/RajasthanDistrictsImages/bhilwara.jpeg",
      "description": "Textile city of Rajasthan. राजस्थान का वस्त्र उद्योग केंद्र।"
    },
    {
      "name": "Bikaner (बीकानेर)",
      "image": "assets/RajasthanDistrictsImages/bikaner.jpeg",
      "description": "Famous for Camel Festival. ऊँट महोत्सव के लिए प्रसिद्ध।"
    },
    {
      "name": "Bundi (बूंदी)",
      "image": "assets/RajasthanDistrictsImages/bundi.jpeg",
      "description": "Known for stepwells and forts. बावड़ियों और किलों के लिए मशहूर।"
    },
    {
      "name": "Chittorgarh (चित्तौड़गढ़)",
      "image": "assets/RajasthanDistrictsImages/chittorgarh.jpeg",
      "description": "Historic fort of bravery. वीरता के लिए प्रसिद्ध किला।"
    },
    {
      "name": "Churu (चूरू)",
      "image": "assets/RajasthanDistrictsImages/churu.jpeg",
      "description": "Gateway to Thar desert. थार मरुस्थल का प्रवेश द्वार।"
    },
    {
      "name": "Dausa (दौसा)",
      "image": "assets/RajasthanDistrictsImages/dausa.jpeg",
      "description": "Known for Abhaneri stepwell. आभानेरी बावड़ी के लिए प्रसिद्ध।"
    },
    {
      "name": "Dholpur (धौलपुर)",
      "image": "assets/RajasthanDistrictsImages/dholpur.jpeg",
      "description": "Famous for red sandstone. लाल बलुआ पत्थर के लिए प्रसिद्ध।"
    },
    {
      "name": "Dungarpur (डूंगरपुर)",
      "image": "assets/RajasthanDistrictsImages/dungarpur.jpeg",
      "description": "Known for green marble and palaces. हरे संगमरमर और महलों के लिए मशहूर।"
    },
    {
      "name": "Hanumangarh (हनुमानगढ़)",
      "image": "assets/RajasthanDistrictsImages/hanumangarh.jpeg",
      "description": "Famous for Kalibangan excavations. कालीबंगा खुदाई के लिए प्रसिद्ध।"
    },
    {
      "name": "Jaipur (जयपुर)",
      "image": "assets/RajasthanDistrictsImages/jaipur.jpeg",
      "description": "Pink City of India. गुलाबी नगरी।"
    },
    {
      "name": "Jaisalmer (जैसलमेर)",
      "image": "assets/RajasthanDistrictsImages/jaisalmer.jpeg",
      "description": "Golden City, desert forts. स्वर्ण नगरी, मरुस्थली किले।"
    },
    {
      "name": "Jalore (जालोर)",
      "image": "assets/RajasthanDistrictsImages/jalore.jpeg",
      "description": "Known for granite and fort. ग्रेनाइट और किले के लिए मशहूर।"
    },
    {
      "name": "Jhalawar (झालावाड़)",
      "image": "assets/RajasthanDistrictsImages/jhalawar.jpeg",
      "description": "Famous for rock-cut caves. गुफाओं और झरनों के लिए प्रसिद्ध।"
    },
    {
      "name": "Jhunjhunu (झुंझुनूं)",
      "image": "assets/RajasthanDistrictsImages/jhunjhunu.jpeg",
      "description": "Known for havelis and frescoes. हवेलियों और भित्तिचित्रों के लिए मशहूर।"
    },
    {
      "name": "Jodhpur (जोधपुर)",
      "image": "assets/RajasthanDistrictsImages/jodhpur.jpeg",
      "description": "Blue City, Mehrangarh Fort. नीली नगरी, मेहरानगढ़ किला।"
    },
    {
      "name": "Karauli (करौली)",
      "image": "assets/RajasthanDistrictsImages/karauli.jpeg",
      "description": "Famous for Kaila Devi temple. कैलादेवी मंदिर के लिए प्रसिद्ध।"
    },
    {
      "name": "Kota (कोटा)",
      "image": "assets/RajasthanDistrictsImages/kota.jpeg",
      "description": "Famous for education hub. शिक्षा केंद्र के लिए प्रसिद्ध।"
    },
    {
      "name": "Nagaur (नागौर)",
      "image": "assets/RajasthanDistrictsImages/nagaur.jpeg",
      "description": "Known for cattle fair. पशु मेले के लिए मशहूर।"
    },
    {
      "name": "Pali (पाली)",
      "image": "assets/RajasthanDistrictsImages/pali.jpeg",
      "description": "Known for handicrafts. हस्तशिल्प के लिए मशहूर।"
    },
    {
      "name": "Pratapgarh (प्रतापगढ़)",
      "image": "assets/RajasthanDistrictsImages/pratapgarh.jpeg",
      "description": "Famous for tribal culture. जनजातीय संस्कृति के लिए प्रसिद्ध।"
    },
    {
      "name": "Rajsamand (राजसमंद)",
      "image": "assets/RajasthanDistrictsImages/rajsamand.jpeg",
      "description": "Known for Rajsamand Lake. राजसमंद झील के लिए प्रसिद्ध।"
    },
    {
      "name": "Sawai Madhopur (सवाई माधोपुर)",
      "image": "assets/RajasthanDistrictsImages/sawai_madhopur.jpeg",
      "description": "Ranthambore National Park. रणथंभौर राष्ट्रीय उद्यान।"
    },
    {
      "name": "Sikar (सीकर)",
      "image": "assets/RajasthanDistrictsImages/sikar.jpeg",
      "description": "Famous for education and havelis. शिक्षा और हवेलियों के लिए प्रसिद्ध।"
    },
    {
      "name": "Sirohi (सिरोही)",
      "image": "assets/RajasthanDistrictsImages/sirohi.jpeg",
      "description": "Mount Abu hill station. माउंट आबू हिल स्टेशन।"
    },
    {
      "name": "Sri Ganganagar (श्रीगंगानगर)",
      "image": "assets/RajasthanDistrictsImages/sri_ganganagar.jpeg",
      "description": "Known as 'Food Basket of Rajasthan'. राजस्थान का अन्न भंडार।"
    },
    {
      "name": "Tonk (टोंक)",
      "image": "assets/RajasthanDistrictsImages/tonk.jpeg",
      "description": "Famous for mosques and heritage. मस्जिदों और विरासत के लिए प्रसिद्ध।"
    },
    {
      "name": "Udaipur (उदयपुर)",
      "image": "assets/RajasthanDistrictsImages/udaipur.jpeg",
      "description": "City of Lakes. झीलों का शहर।"
    },
    {
      "name": "Anupgarh (अनूपगढ़)",
      "description": "A new district carved out of Sri Ganganagar, known for agriculture and border location. श्रीगंगानगर से बना नया जिला, कृषि और सीमा क्षेत्र के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/anupgarh.jpeg"
    },
    {
      "name": "Balotra (बालोतरा)",
      "description": "Created from Barmer, Balotra is famous for textile industries and temples. बाड़मेर से बना जिला, वस्त्र उद्योग और मंदिरों के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/balotra.jpeg"
    },
    {
      "name": "Beawar (ब्यावर)",
      "description": "Beawar, separated from Ajmer, is an industrial hub. अजमेर से अलग होकर बना, यह औद्योगिक केंद्र है।",
      "image": "assets/RajasthanDistrictsImages/beawar.jpeg"
    },
    {
      "name": "Deeg (डीग)",
      "description": "Parted from Bharatpur, famous for palaces and gardens. भरतपुर से बना, महलों और बागों के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/deeg.jpeg"
    },
    {
      "name": "Didwana-Kuchaman (डीडवाना-कुचामन)",
      "description": "Created from Nagaur, rich in salt lakes and forts. नागौर से बना, नमक झीलों और किलों के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/didwana_kuchaman.jpeg"
    },

    {
      "name": "Gangapur City (गंगापुर सिटी)",
      "description": "Separated from Sawai Madhopur, known for trade and temples. सवाई माधोपुर से अलग, व्यापार और मंदिरों के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/gangapur_city.jpeg"
    },
    {
      "name": "Jodhpur East (जोधपुर पूर्व)",
      "description": "One of the bifurcated districts of Jodhpur. जोधपुर का पूर्वी हिस्सा नया जिला है।",
      "image": "assets/RajasthanDistrictsImages/jodhpur_rural.jpeg"
    },
    {
      "name": "Jodhpur West (जोधपुर पश्चिम)",
      "description": "Western part of Jodhpur, culturally rich. जोधपुर का पश्चिमी भाग, सांस्कृतिक धरोहर के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/jodhpur_west.jpeg"
    },
    {
      "name": "Jaipur North (जयपुर उत्तर)",
      "description": "Part of divided Jaipur, known for heritage sites. विभाजित जयपुर का उत्तरी भाग, धरोहर स्थलों के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/jaipur_north.jpeg"
    },
    {
      "name": "Jaipur South (जयपुर दक्षिण)",
      "description": "Southern part of Jaipur, rapidly developing urban area. जयपुर का दक्षिणी भाग, तेजी से विकसित होता शहरी क्षेत्र।",
      "image": "assets/RajasthanDistrictsImages/jaipur_south.jpeg"
    },
    {
      "name": "Kotputli-Behror (कोटपुतली-बहरोड़)",
      "description": "New district carved from Jaipur and Alwar, industrial hub. जयपुर और अलवर से बना, औद्योगिक क्षेत्र के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/kotputli_behror.jpeg"
    },
    {
      "name": "Khairthal-Tijara (खैरथल-तिजारा)",
      "description": "Created from Alwar, rich in agriculture and industries. अलवर से बना जिला, कृषि और उद्योगों के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/khairthal_tijara.jpeg"
    },
    {
      "name": "Neem ka Thana (नीम का थाना)",
      "description": "Separated from Sikar, famous for mining and trade. सीकर से अलग, खनन और व्यापार के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/neemkathana.jpeg"
    },
    {
      "name": "Phalodi (फालोदी)",
      "description": "Carved from Jodhpur, known as salt city. जोधपुर से बना, नमक नगरी के रूप में प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/phalodi.jpeg"
    },
    {
      "name": "Sanchore (सांचोर)",
      "description": "Created from Jalore, famous for agriculture and desert culture. जालोर से बना, कृषि और रेगिस्तानी संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/sanchore.jpeg"
    },
    {
      "name": "Salumbar (सलूम्बर)",
      "description": "Separated from Udaipur, tribal culture and hilly region. उदयपुर से अलग, जनजातीय संस्कृति और पहाड़ी क्षेत्र के लिए प्रसिद्ध।",
      "image": "assets/RajasthanDistrictsImages/salumbar.jpeg"
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
      appBar: AppBar(title: const Text("Rajasthan Districts (राजस्थान जिले)")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              onChanged: _filterDistricts,
              decoration: InputDecoration(
                hintText: "Search District...",
                prefixIcon: const Icon(Icons.search),
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
                  margin: const EdgeInsets.all(8),
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
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TouristPlacesPage(
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
