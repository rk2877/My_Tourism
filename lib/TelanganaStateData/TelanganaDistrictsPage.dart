import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class TelanganaDistrictsPage extends StatefulWidget {
  @override
  _TelanganaDistrictsPageState createState() => _TelanganaDistrictsPageState();
}

class _TelanganaDistrictsPageState extends State<TelanganaDistrictsPage> {
  final List<Map<String, String>> allDistricts = [
    {
      "name": "Adilabad (आदिलाबाद)",
      "description": "Adilabad is famous for waterfalls and forest beauty. आदिलाबाद अपने झरनों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/adilabad.jpeg",
    },
    {
      "name": "Bhadradri Kothagudem (भद्राद्रि कोठागुडेम)",
      "description": "Kothagudem is famous for coal mines. कोठागुडेम कोयला खदानों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/bhadradri_kothagudem.jpeg",
    },
    {
      "name": "Hanamkonda (हनमकोंडा)",
      "description": "Hanamkonda is known for historic temples and education hub. हनमकोंडा ऐतिहासिक मंदिरों और शिक्षा केंद्र के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/warangal.jpeg",
    },
    {
      "name": "Hyderabad (हैदराबाद)",
      "description": "Hyderabad, the capital, is known for Charminar, Golconda Fort, and biryani. हैदराबाद चारमीनार, गोलकोंडा किला और बिरयानी के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/hyderabad.jpeg",
    },
    {
      "name": "Jagtial (जगत्याल)",
      "description": "Jagitial is known for its historical fort. जगत्याल अपने ऐतिहासिक किले के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/jagtial.jpeg",
    },
    {
      "name": "Jangaon (जंगांव)",
      "description": "Jangaon is known for temples. जंगांव मंदिरों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/janagaon.jpeg",
    },
    {
      "name": "Jayashankar Bhupalpally (जयशंकर भूपालपल्ली)",
      "description": "This district is rich in forests and tribal culture. यह जिला जंगलों और जनजातीय संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/jayashankar_bhupalpally.jpeg",
    },
    {
      "name": "Jogulamba Gadwal (जोगुलाम्बा गडवाल)",
      "description": "Gadwal is famous for handloom sarees. गडवाल अपनी हैंडलूम साड़ियों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/jogulamba_gadwal.jpeg",
    },
    {
      "name": "Kamareddy (कामारेड्डी)",
      "description": "Kamareddy is known for agriculture and temples. कामारेड्डी कृषि और मंदिरों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/kamareddy.jpeg",
    },
    {
      "name": "Karimnagar (करीमनगर)",
      "description": "Karimnagar is famous for Elgandal Fort. करीमनगर एल्गंडल किले के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/karimnagar.jpeg",
    },
    {
      "name": "Khammam (खम्मम)",
      "description": "Khammam is famous for Khammam Fort. खम्मम अपने किले के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/khammam.jpeg",
    },
    {
      "name": "Komaram Bheem Asifabad (कोमाराम भीम आसिफाबाद)",
      "description": "Asifabad is known for wildlife and forests. आसिफाबाद अपने जंगल और वन्य जीवन के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/kumuram_bheem_asifabad.jpeg",
    },
    {
      "name": "Mahabubabad (महबूबाबाद)",
      "description": "Mahabubabad is rich in tribal culture. महबूबाबाद आदिवासी संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/mahabubabad.jpeg",
    },
    {
      "name": "Mahbubnagar (महबूबनगर)",
      "description": "Mahbubnagar is rich in temples and history. महबूबनगर मंदिरों और इतिहास के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/mahabubnagar.jpeg",
    },
    {
      "name": "Mancherial (मंचेरियल)",
      "description": "Mancherial is known for coal mines and industries. मंचेरियल कोयला खदानों और उद्योगों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/mancherial.jpeg",
    },
    {
      "name": "Medak (मेदक)",
      "description": "Medak is known for Medak Church. मेदक अपने चर्च के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/medak.jpeg",
    },
    {
      "name": "Medchal–Malkajgiri (मेडचल–मल्काजगिरि)",
      "description": "It is part of Hyderabad metropolitan area. यह हैदराबाद महानगर क्षेत्र का हिस्सा है।",
      "image": "assets/TelanganaDistrictsImages/medchal_malkajgiri.jpeg",
    },
    {
      "name": "Mulugu (मुलुगु)",
      "description": "Mulugu is known for forests and tribal culture. मुलुगु जंगलों और आदिवासी संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/mulugu.jpeg",
    },
    {
      "name": "Nagarkurnool (नागरकुरनूल)",
      "description": "Nagarkurnool is known for greenery and forests. नागरकुरनूल अपने जंगलों और हरियाली के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/nagarkurnool.jpeg",
    },
    {
      "name": "Nalgonda (नलगोंडा)",
      "description": "Nalgonda is famous for Nagarjuna Sagar Dam. नलगोंडा नागार्जुन सागर बांध के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/nalgonda.jpeg",
    },
    {
      "name": "Narayanpet (नारायणपेट)",
      "description": "Narayanpet is known for weaving sarees. नारायणपेट अपनी साड़ियों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/narayanpet.jpeg",
    },
    {
      "name": "Nirmal (निर्मल)",
      "description": "Nirmal is popular for Nirmal paintings and crafts. निर्मल अपनी पेंटिंग्स और शिल्प कला के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/nirmal.jpeg",
    },
    {
      "name": "Nizamabad (निजामाबाद)",
      "description": "Nizamabad is known for forts and temples. निजामाबाद अपने किले और मंदिरों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/nizamabad.jpeg",
    },
    {
      "name": "Peddapalli (पेद्दपल्ली)",
      "description": "Peddapalli is known for Ramagundam power plant. पेद्दपल्ली रामागुंडम पावर प्लांट के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/peddapalli.jpeg",
    },
    {
      "name": "Rajanna Sircilla (राजन्ना सिरसिल्ला)",
      "description": "Sircilla is famous for textile industry. सिरसिल्ला अपने वस्त्र उद्योग के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/rajanna_sircilla.jpeg",
    },
    {
      "name": "Rangareddy (रंगारेड्डी)",
      "description": "Rangareddy surrounds Hyderabad city. रंगारेड्डी हैदराबाद को घेरे हुए है।",
      "image": "assets/TelanganaDistrictsImages/rangareddy.jpeg",
    },
    {
      "name": "Sangareddy (संगारेड्डी)",
      "description": "Sangareddy has historic forts and industries. संगारेड्डी अपने किले और उद्योगों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/sangareddy.jpeg",
    },
    {
      "name": "Siddipet (सिद्दीपेट)",
      "description": "Siddipet is famous for agriculture. सिद्दीपेट कृषि के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/siddipet.jpeg",
    },
    {
      "name": "Suryapet (सूर्यापेट)",
      "description": "Suryapet is a major highway town. सूर्यापेट एक महत्वपूर्ण हाइवे शहर है।",
      "image": "assets/TelanganaDistrictsImages/suryapet.jpeg",
    },
    {
      "name": "Vikarabad (विकाराबाद)",
      "description": "Vikarabad is famous for Ananthagiri Hills. विकाराबाद अनंतगिरी हिल्स के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/rangareddy.jpeg",
    },
    {
      "name": "Wanaparthy (वनपर्थी)",
      "description": "Wanaparthy is famous for palaces. वनपर्थी अपने महलों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/mancherial.jpeg",
    },
    {
      "name": "Warangal (वारंगल)",
      "description": "Warangal is known for Thousand Pillar Temple & forts. वारंगल हज़ार स्तंभ मंदिर और किलों के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/warangal.jpeg",
    },
    {
      "name": "Yadadri Bhuvanagiri (यादाद्रि भुवनगिरि)",
      "description": "Bhuvanagiri is known for Yadadri Temple. भुवनगिरि यादाद्रि मंदिर के लिए प्रसिद्ध है।",
      "image": "assets/TelanganaDistrictsImages/medchal_malkajgiri.jpeg",
    },
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
      appBar: AppBar(title: Text("Telangana Districts (तेलंगाना जिले)")),
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
                  margin: EdgeInsets.all(8),
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
                    trailing: Icon(Icons.arrow_forward_ios),
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
