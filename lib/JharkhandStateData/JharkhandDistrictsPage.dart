import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class JharkhandDistrictsPage extends StatefulWidget {
  @override
  _JharkhandDistrictsPageState createState() => _JharkhandDistrictsPageState();
}

class _JharkhandDistrictsPageState extends State<JharkhandDistrictsPage> {
  final List<Map<String, String>> districts = [

    {
      "name": "Bokaro (बोकारो)",
      "image": "assets/JharkhandDistrictsImages/bokaro.jpeg",
      "description":
      "Bokaro is known as the Steel City of India. "
          "बोकारो भारत का स्टील सिटी कहलाता है।"
    },
    {
      "name": "Chatra (चतरा)",
      "image": "assets/JharkhandDistrictsImages/chatra.jpeg",
      "description":
      "Chatra is known for natural beauty and temples. "
          "चतरा अपनी प्राकृतिक सुंदरता और मंदिरों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Deoghar (देवघर)",
      "image": "assets/JharkhandDistrictsImages/deoghar.jpeg",
      "description":
      "Deoghar is a holy city known for Baba Baidyanath Dham. "
          "देवघर बाबा बैद्यनाथ धाम के लिए प्रसिद्ध है।"
    },
    {
      "name": "Dhanbad (धनबाद)",
      "image": "assets/JharkhandDistrictsImages/dhanbad.jpeg",
      "description":
      "Dhanbad is famous for coal mines and industries. "
          "धनबाद कोयला खानों और उद्योगों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Dumka (दुमका)",
      "image": "assets/JharkhandDistrictsImages/dumka.jpeg",
      "description":
      "Dumka is known as the sub-capital of Jharkhand. "
          "दुमका झारखंड की उपराजधानी के रूप में जाना जाता है।"
    },
    {
      "name": "East Singhbhum (पूर्वी सिंहभूम)",
      "image": "assets/JharkhandDistrictsImages/east_singhbhum.jpeg",
      "description":
      "East Singhbhum is known for industries and natural beauty. "
          "पूर्वी सिंहभूम उद्योगों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
    },
    {
      "name": "Garhwa (गढ़वा)",
      "image": "assets/JharkhandDistrictsImages/garhwa.jpeg",
      "description":
      "Garhwa is famous for temples and rivers. "
          "गढ़वा मंदिरों और नदियों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Giridih (गिरिडीह)",
      "image": "assets/JharkhandDistrictsImages/giridih.jpeg",
      "description":
      "Giridih is known for mica mines and Parasnath hills. "
          "गिरिडीह अभ्रक खानों और पारसनाथ पहाड़ियों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Godda (गोड्डा)",
      "image": "assets/JharkhandDistrictsImages/godda.jpeg",
      "description":
      "Godda is known for coal mining and agriculture. "
          "गोड्डा कोयला खनन और कृषि के लिए प्रसिद्ध है।"
    },
    {
      "name": "Gumla (गुमला)",
      "image": "assets/JharkhandDistrictsImages/gumla.jpeg",
      "description":
      "Gumla is known for tribal culture and hills. "
          "गुमला आदिवासी संस्कृति और पहाड़ियों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Hazaribagh (हजारीबाग)",
      "image": "assets/JharkhandDistrictsImages/hazaribagh.jpeg",
      "description":
      "Hazaribagh is famous for national park and hills. "
          "हजारीबाग राष्ट्रीय उद्यान और पहाड़ियों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Jamtara (जामताड़ा)",
      "image": "assets/JharkhandDistrictsImages/jamshedpur.jpeg",
      "description":
      "Jamshedpur is an industrial city founded by Jamshedji Tata. "
          "जमशेदपुर जमशेदजी टाटा द्वारा स्थापित औद्योगिक शहर है।"
    },
    {
      "name": "Khunti (खूँटी)",
      "image": "assets/JharkhandDistrictsImages/khunti.jpeg",
      "description":
      "Khunti is the birthplace of Birsa Munda. "
          "खूँटी बिरसा मुंडा की जन्मभूमि है।"
    },
    {
      "name": "Koderma (कोडरमा)",
      "image": "assets/JharkhandDistrictsImages/koderma.jpeg",
      "description":
      "Koderma is famous for mica production. "
          "कोडरमा अभ्रक उत्पादन के लिए प्रसिद्ध है।"
    },
    {
      "name": "Latehar (लातेहार)",
      "image": "assets/JharkhandDistrictsImages/latehar.jpeg",
      "description":
      "Latehar is known for forests and waterfalls. "
          "लातेहार जंगलों और झरनों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Lohardaga (लोहरदगा)",
      "image": "assets/JharkhandDistrictsImages/lohardaga.jpeg",
      "description":
      "Lohardaga is known for bauxite mines. "
          "लोहरदगा बॉक्साइट खानों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Pakur (पाकुड़)",
      "image": "assets/JharkhandDistrictsImages/pakur.jpeg",
      "description":
      "Pakur is famous for stone mining. "
          "पाकुड़ पत्थर खनन के लिए प्रसिद्ध है।"
    },
    {
      "name": "Palamu (पलामू)",
      "image": "assets/JharkhandDistrictsImages/palamu.jpeg",
      "description":
      "Palamu is famous for tiger reserve and fort. "
          "पलामू टाइगर रिजर्व और किले के लिए प्रसिद्ध है।"
    },
    {
      "name": "Ramgarh (रामगढ़)",
      "image": "assets/JharkhandDistrictsImages/ramgarh.jpeg",
      "description":
      "Ramgarh is known for coal mines and industries. "
          "रामगढ़ कोयला खानों और उद्योगों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Ranchi (रांची)",
      "image": "assets/JharkhandDistrictsImages/ranchi.jpeg",
      "description":
      "Ranchi is the capital city, famous for waterfalls and greenery. "
          "रांची झारखंड की राजधानी है, जो झरनों और हरियाली के लिए प्रसिद्ध है।"
    },
    {
      "name": "Sahebganj (साहेबगंज)",
      "image": "assets/JharkhandDistrictsImages/sahebganj.jpeg",
      "description":
      "Sahebganj is known for Rajmahal hills and Ganga river. "
          "साहेबगंज राजमहल पहाड़ियों और गंगा नदी के लिए प्रसिद्ध है।"
    },
    {
      "name": "Saraikela Kharsawan (सरायकेला-खरसावां)",
      "image": "assets/JharkhandDistrictsImages/saraikela_kharsawan.jpeg",
      "description":
      "Saraikela Kharsawan is famous for Chhau dance. "
          "सरायकेला-खरसावां छऊ नृत्य के लिए प्रसिद्ध है।"
    },
    {
      "name": "Simdega (सिमडेगा)",
      "image": "assets/JharkhandDistrictsImages/simdega.jpeg",
      "description":
      "Simdega is known for hockey players and natural beauty. "
          "सिमडेगा हॉकी खिलाड़ियों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
    },
    {
      "name": "West Singhbhum (पश्चिम सिंहभूम)",
      "image": "assets/JharkhandDistrictsImages/west_singhbhum.jpeg",
      "description":
      "West Singhbhum is famous for iron ore mines and forests. "
          "पश्चिम सिंहभूम लौह अयस्क खानों और जंगलों के लिए प्रसिद्ध है।"
    },
  ];

  List<Map<String, String>> filteredDistricts = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredDistricts = districts; // शुरुआत में सभी दिखेंगे
  }

  void _filterDistricts(String query) {
    final results = districts.where((d) {
      final name = d["name"]!.toLowerCase();
      final desc = d["description"]!.toLowerCase();
      return name.contains(query.toLowerCase()) ||
          desc.contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredDistricts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Jharkhand Districts (झारखंड जिले)")),
      body: Column(
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search District / जिला खोजें...",
                prefixIcon: const Icon(Icons.search),
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
                final d = filteredDistricts[index];
                return Card(
                  margin: const EdgeInsets.all(10),
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