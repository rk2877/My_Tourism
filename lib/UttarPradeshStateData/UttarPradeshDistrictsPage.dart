import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class UttarPradeshDistrictsPage extends StatefulWidget {
  @override
  _UttarPradeshDistrictsPageState createState() =>
      _UttarPradeshDistrictsPageState();
}

class _UttarPradeshDistrictsPageState extends State<UttarPradeshDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Agra (आगरा)",
      "description": "Famous for the Taj Mahal and Mughal heritage. ताज महल और मुग़ल विरासत के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/agra.jpeg",
    },
    {
      "name": "Aligarh (अलीगढ़)",
      "description": "Known for Aligarh Muslim University and lock industry. अलीगढ़ मुस्लिम यूनिवर्सिटी और ताला उद्योग के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/aligarh.jpeg",
    },
    {
      "name": "Prayagraj (प्रयागराज)",
      "description": "Famous for Sangam and Kumbh Mela. संगम और कुंभ मेला के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/prayagraj.jpeg",
    },
    {
      "name": "Ambedkar Nagar (अम्बेडकर नगर)",
      "description": "Known for cultural festivals and temples. सांस्कृतिक उत्सव और मंदिरों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/ambedkarnagar.jpeg",
    },
    {
      "name": "Amethi (अमेठी)",
      "description": "Famous for political heritage and scenic villages. राजनीतिक विरासत और सुंदर गाँवों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/amethi.jpeg",
    },
    {
      "name": "Amroha (अमरौहा)",
      "description": "Known for mango orchards and historical monuments. आम के बाग और ऐतिहासिक स्मारकों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/amroha.jpeg",
    },
    {
      "name": "Auraiya (औरैया)",
      "description": "Industrial district with fertile land. औद्योगिक जिला और उपजाऊ भूमि के लिए जाना जाता है।",
      "image": "assets/UttarPradeshDistrictsImages/auraiya.jpeg",
    },
    {
      "name": "Azamgarh (आजमगढ़)",
      "description": "Famous for educational institutions and handloom work. शैक्षणिक संस्थान और हथकरघा के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/azamgarh.jpeg",
    },
    {
      "name": "Baghpat (बागपत)",
      "description": "Agricultural district with cultural heritage. कृषि और सांस्कृतिक विरासत के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/baghpat.jpeg",
    },
    {
      "name": "Bahraich (बहराइच)",
      "description": "Famous for Ghats and temples along Ghaghara river. घाघरा नदी के किनारे घाट और मंदिरों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/bahraich.jpeg",
    },
    {
      "name": "Ballia (बलिया)",
      "description": "Known for freedom movement heritage and rivers. स्वतंत्रता संग्राम की विरासत और नदियों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/ballia.jpeg",
    },
    {
      "name": "Balrampur (बलरामपुर)",
      "description": "Famous for sugar mills and historical sites. शुगर मिल और ऐतिहासिक स्थलों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/balrampur.jpeg",
    },
    {
      "name": "Banda (बांदा)",
      "description": "Known for forts and natural beauty. किलों और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/banda.jpeg",
    },
    {
      "name": "Barabanki (बाराबंकी)",
      "description": "Famous for religious sites and cultural festivals. धार्मिक स्थल और सांस्कृतिक उत्सव के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/barabanki.jpeg",
    },
    {
      "name": "Bareilly (बरेली)",
      "description": "Known for textiles and Ramleela tradition. वस्त्र उद्योग और रामलीला परंपरा के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/bareilly.jpeg",
    },
    {
      "name": "Basti (बस्ती)",
      "description": "Famous for religious heritage and fairs. धार्मिक विरासत और मेले के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/basti.jpeg",
    },
    {
      "name": "Bhadohi (भदोही)",
      "description": "Known as carpet city of India. भारत का कारपेट शहर के रूप में जाना जाता है।",
      "image": "assets/UttarPradeshDistrictsImages/bhadohi.jpeg",
    },
    {
      "name": "Bijnor (बिजनौर)",
      "description": "Famous for sugarcane and rivers. गन्ना और नदियों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/bijnor.jpeg",
    },
    {
      "name": "Budaun (बदायूँ)",
      "description": "Known for historical significance and agriculture. ऐतिहासिक महत्व और कृषि के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/budaun.jpeg",
    },
    {
      "name": "Bulandshahr (बुलंदशहर)",
      "description": "Known for historical architecture and agriculture. ऐतिहासिक वास्तुकला और कृषि के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/bulandshahr.jpeg",
    },
    {
      "name": "Chandauli (चंदौली)",
      "description": "Known for agriculture and historical temples. कृषि और ऐतिहासिक मंदिरों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/chandauli.jpeg",
    },
    {
      "name": "Chitrakoot (चित्रकूट)",
      "description": "Famous for pilgrimage and Ramayana heritage. तीर्थस्थल और रामायणिक विरासत के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/chitrakoot.jpeg",
    },
    {
      "name": "Deoria (देवरिया)",
      "description": "Known for cultural festivals and temples. सांस्कृतिक उत्सव और मंदिरों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/deoria.jpeg",
    },
    {
      "name": "Etah (एटा)",
      "description": "Famous for historical monuments and agriculture. ऐतिहासिक स्मारक और कृषि के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/etah.jpeg",
    },
    {
      "name": "Etawah (इटावा)",
      "description": "Known for wildlife sanctuary and agriculture. वन्यजीव अभयारण्य और कृषि के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/etawah.jpeg",
    },
    {
      "name": "Ayodhya (अयोध्या)",
      "description": "Famous for historical monuments and religious sites. ऐतिहासिक स्मारक और धार्मिक स्थलों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/faizabad.jpeg",
    },
    {
      "name": "Farrukhabad (फ़र्रुख़ाबाद)",
      "description": "Famous for handloom and historical heritage. हथकरघा और ऐतिहासिक विरासत के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/farrukhabad.jpeg",
    },
    {
      "name": "Fatehpur (फतेहपुर)",
      "description": "Known for temples and Ghats along Ganga. गंगा के किनारे मंदिर और घाटों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/fatehpur.jpeg",
    },
    {
      "name": "Firozabad (फ़िरोज़ाबाद)",
      "description": "Famous for glass industry and bangles. कांच उद्योग और चूड़ियों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/firozabad.jpeg",
    },
    {
      "name": "Gautam Buddha Nagar (गौतम बुद्ध नगर)",
      "description": "Known for Noida city, IT hub and modern infrastructure. नोएडा शहर और आईटी हब के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/gautam_buddha_nagar.jpeg",
    },
    {
      "name": "Ghaziabad (गाज़ियाबाद)",
      "description": "Industrial hub and part of NCR. औद्योगिक क्षेत्र और एनसीआर का हिस्सा।",
      "image": "assets/UttarPradeshDistrictsImages/ghaziabad.jpeg",
    },
    {
      "name": "Ghazipur (गाजीपुर)",
      "description": "Famous for opium factory and historical heritage. अफ़ीम फैक्ट्री और ऐतिहासिक धरोहर के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/ghazipur.jpeg",
    },
    {
      "name": "Gonda (गोंडा)",
      "description": "Known for temples and cultural fairs. मंदिरों और सांस्कृतिक मेलों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/gonda.jpeg",
    },
    {
      "name": "Gorakhpur (गोरखपुर)",
      "description": "Famous for Gorakhnath temple and religious tourism. गोरखनाथ मंदिर और धार्मिक पर्यटन के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/gorakhpur.jpeg",
    },
    {
      "name": "Hamirpur (हमीरपुर)",
      "description": "Known for forts and scenic views. किलों और सुंदर दृश्यों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/hamirpur.jpeg",
    },
    {
      "name": "Hapur (हापुड़)",
      "description": "Famous for paper industry and agriculture. पेपर उद्योग और कृषि के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/hapur.jpeg",
    },
    {
      "name": "Hardoi (हरदोई)",
      "description": "Known for natural beauty and religious spots. प्राकृतिक सौंदर्य और धार्मिक स्थलों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/hardoi.jpeg",
    },
    {
      "name": "Hathras (हाथरस)",
      "description": "Famous for industrial activities and culture. औद्योगिक गतिविधियों और संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/hathras.jpeg",
    },
    {
      "name": "Jalaun (जालौन)",
      "description": "Known for forts and historical temples. किलों और ऐतिहासिक मंदिरों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/jalaun.jpeg",
    },
    {
      "name": "Jaunpur (जौनपुर)",
      "description": "Famous for Shahi Bridge and Islamic architecture. शाही पुल और इस्लामी वास्तुकला के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/jaunpur.jpeg",
    },
    {
      "name": "Jhansi (झांसी)",
      "description": "Rani Laxmibai’s fort and historical significance. रानी लक्ष्मीबाई का किला और ऐतिहासिक महत्व।",
      "image": "assets/UttarPradeshDistrictsImages/jhansi.jpeg",
    },
    {
      "name": "Kannauj (कन्नौज)",
      "description": "Perfume capital of India. भारत की इत्र राजधानी।",
      "image": "assets/UttarPradeshDistrictsImages/kannauj.jpeg",
    },
    {
      "name": "Kanpur Dehat (कानपुर देहात)",
      "description": "Agricultural region with rural heritage. कृषि क्षेत्र और ग्रामीण विरासत के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/kanpur_dehat.jpeg",
    },
    {
      "name": "Kanpur Nagar (कानपुर नगर)",
      "description": "Major industrial and educational hub. बड़ा औद्योगिक और शैक्षणिक केंद्र।",
      "image": "assets/UttarPradeshDistrictsImages/kanpur_nagar.jpeg",
    },
    {
      "name": "Kasganj (कासगंज)",
      "description": "Known for religious sites and festivals. धार्मिक स्थल और उत्सव के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/kasganj.jpeg",
    },
    {
      "name": "Kaushambi (कौशांबी)",
      "description": "Buddhist heritage and ancient ruins. बौद्ध धरोहर और प्राचीन खंडहरों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/kaushambi.jpeg",
    },
    {
      "name": "Kushinagar (कुशीनगर)",
      "description": "Important Buddhist pilgrimage site. महत्वपूर्ण बौद्ध तीर्थस्थल।",
      "image": "assets/UttarPradeshDistrictsImages/kushinagar.jpeg",
    },
    {
      "name": "Lakhimpur Kheri (लखीमपुर खीरी)",
      "description": "Known for Dudhwa National Park. दुधवा नेशनल पार्क के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/lakhimpur.jpeg",
    },
    {
      "name": "Lalitpur (ललितपुर)",
      "description": "Famous for temples and natural beauty. मंदिरों और प्राकृतिक सौंदर्य के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/lalitpur.jpeg",
    },
    {
      "name": "Lucknow (लखनऊ)",
      "description": "Capital of UP, famous for Nawabi culture. उत्तर प्रदेश की राजधानी, नवाबी संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/lucknow.jpeg",
    },
    {
      "name": "Maharajganj (महराजगंज)",
      "description": "Border district with Nepal, natural beauty. नेपाल सीमा वाला जिला, प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/maharajganj.jpeg",
    },
    {
      "name": "Mahoba (महोबा)",
      "description": "Known for forts and Bundelkhand heritage. किलों और बुंदेलखंड की विरासत के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/mahoba.jpeg",
    },
    {
      "name": "Mainpuri (मैनपुरी)",
      "description": "Rich in art and culture. कला और संस्कृति में समृद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/mainpuri.jpeg",
    },
    {
      "name": "Mathura (मथुरा)",
      "description": "Birthplace of Lord Krishna. भगवान कृष्ण की जन्मभूमि।",
      "image": "assets/UttarPradeshDistrictsImages/mathura.jpeg",
    },
    {
      "name": "Mau (मऊ)",
      "description": "Known for textile industry and culture. वस्त्र उद्योग और संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/mau.jpeg",
    },
    {
      "name": "Meerut (मेरठ)",
      "description": "Historic city of 1857 revolt. 1857 के विद्रोह का ऐतिहासिक शहर।",
      "image": "assets/UttarPradeshDistrictsImages/meerut.jpeg",
    },
    {
      "name": "Mirzapur (मिर्जापुर)",
      "description": "Famous for Vindhyachal temple and carpets. विंध्याचल मंदिर और कालीन के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/mirzapur.jpeg",
    },
    {
      "name": "Moradabad (मुरादाबाद)",
      "description": "Brass city of India. भारत का पीतल नगरी।",
      "image": "assets/UttarPradeshDistrictsImages/moradabad.jpeg",
    },
    {
      "name": "Muzaffarnagar (मुज़फ़्फ़रनगर)",
      "description": "Known for sugar industry and agriculture. शुगर उद्योग और कृषि के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/muzaffarnagar.jpeg",
    },
    {
      "name": "Pilibhit (पीलीभीत)",
      "description": "Tiger reserve and forests. टाइगर रिजर्व और जंगलों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/pilibhit.jpeg",
    },
    {
      "name": "Pratapgarh (प्रतापगढ़)",
      "description": "Famous for Amla production. आंवला उत्पादन के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/pratapgarh.jpeg",
    },
    {
      "name": "Raebareli (रायबरेली)",
      "description": "Known for political heritage and industries. राजनीतिक विरासत और उद्योगों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/raebareli.jpeg",
    },
    {
      "name": "Rampur (रामपुर)",
      "description": "Famous for Raza Library and mangoes. रज़ा लाइब्रेरी और आम के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/rampur.jpeg",
    },
    {
      "name": "Saharanpur (सहारनपुर)",
      "description": "Known for wood carving and agriculture. लकड़ी की नक्काशी और कृषि के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/saharanpur.jpeg",
    },
    {
      "name": "Sambhal (संभल)",
      "description": "Famous for handicrafts and history. हस्तशिल्प और इतिहास के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/sambhal.jpeg",
    },
    {
      "name": "Sant Kabir Nagar (संत कबीर नगर)",
      "description": "Named after saint Kabir, spiritual importance. संत कबीर के नाम पर, आध्यात्मिक महत्व।",
      "image": "assets/UttarPradeshDistrictsImages/santkabirnagar.jpeg",
    },
    {
      "name": "Shahjahanpur (शाहजहाँपुर)",
      "description": "Historical city of freedom fighters. स्वतंत्रता सेनानियों का ऐतिहासिक शहर।",
      "image": "assets/UttarPradeshDistrictsImages/shahjahanpur.jpeg",
    },
    {
      "name": "Shamli (शामली)",
      "description": "Sugarcane and green fields. गन्ना और हरी-भरी खेतों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/shamli.jpeg",
    },
    {
      "name": "Shrawasti (श्रावस्ती)",
      "description": "Buddhist pilgrimage and ancient history. बौद्ध तीर्थ और प्राचीन इतिहास के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/shravasti.jpeg",
    },
    {
      "name": "Siddharthnagar (सिद्धार्थनगर)",
      "description": "Birthplace of Gautam Buddha (Kapilvastu). गौतम बुद्ध (कपिलवस्तु) की जन्मस्थली।",
      "image": "assets/UttarPradeshDistrictsImages/siddharthnagar.jpeg",
    },
    {
      "name": "Sitapur (सीतापुर)",
      "description": "Famous for Naimisharanya pilgrimage. नैमिषारण्य तीर्थ के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/sitapur.jpeg",
    },
    {
      "name": "Sonbhadra (सोनभद्र)",
      "description": "Known for power plants and minerals. पावर प्लांट और खनिजों के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/sonbhadra.jpeg",
    },
    {
      "name": "Sultanpur (सुल्तानपुर)",
      "description": "Known for agriculture and culture. कृषि और संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/sultanpur.jpeg",
    },
    {
      "name": "Unnao (उन्नाव)",
      "description": "Famous for leather industry. चमड़ा उद्योग के लिए प्रसिद्ध।",
      "image": "assets/UttarPradeshDistrictsImages/unnao.jpeg",
    },
    {
      "name": "Varanasi (वाराणसी)",
      "description": "World’s oldest living city, Kashi Vishwanath temple. विश्व का सबसे पुराना जीवित शहर, काशी विश्वनाथ मंदिर।",
      "image": "assets/UttarPradeshDistrictsImages/varanasi.jpeg",
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

  // ---------- UI ----------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Uttar Pradesh Districts (उत्तर प्रदेश के जिले)"),
      ),
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