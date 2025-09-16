import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class OdishaDistrictsPage extends StatefulWidget {
  @override
  _OdishaDistrictsPageState createState() => _OdishaDistrictsPageState();
}

class _OdishaDistrictsPageState extends State<OdishaDistrictsPage> {
  final List<Map<String, String>> districts = [

    {
      "name": "Angul (अंगुल)",
      "description":
      "अंगुल जिला अपने औद्योगिक केंद्रों और नाल्को (NALCO) संयंत्र के लिए प्रसिद्ध है।\nAngul district is known for its industrial hubs and the NALCO plant.",
      "image": "assets/OdishaDistrictsImages/angul.jpeg",
    },
    {
      "name": "Balangir (बलांगीर)",
      "description":
      "बलांगीर जिला अपनी सांस्कृतिक धरोहर और लोक कला के लिए प्रसिद्ध है।\nBalangir district is famous for its cultural heritage and folk art.",
      "image": "assets/OdishaDistrictsImages/balangir.jpeg",
    },
    {
      "name": "Balasore (बालासोर)",
      "description":
      "बालेश्वर समुद्र तटों और इंटीग्रेटेड टेस्ट रेंज (ITR) के लिए प्रसिद्ध है।\nBalasore is known for its beaches and the Integrated Test Range (ITR).",
      "image": "assets/OdishaDistrictsImages/balasore.jpeg",
    },
    {
      "name": "Bargarh (बरगढ़)",
      "description":
      "बरगढ़ जिला धान उत्पादन और संस्कृतियों के लिए प्रसिद्ध है।\nBargarh is known as the 'Rice Bowl of Odisha' and for cultural festivals.",
      "image": "assets/OdishaDistrictsImages/bargarh.jpeg",
    },
    {
      "name": "Bhadrak (भद्रक)",
      "description":
      "भद्रक जिला ऐतिहासिक मंदिरों और व्यापार के लिए प्रसिद्ध है।\nBhadrak district is famous for its historic temples and trade activities.",
      "image": "assets/OdishaDistrictsImages/bhadrak.jpeg",
    },
    {
      "name": "Boudh (बौध)",
      "description":
      "बौध जिला अपनी धार्मिक धरोहर और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।\nBoudh is known for its religious heritage and natural beauty.",
      "image": "assets/OdishaDistrictsImages/boudh.jpeg",
    },
    {
      "name": "Cuttack (कटक)",
      "description":
      "कटक को 'ओडिशा का व्यावसायिक शहर' कहा जाता है और यह सिल्वर फिलिग्री कार्य के लिए प्रसिद्ध है।\nCuttack is known as the 'Commercial City of Odisha' and is famous for silver filigree work.",
      "image": "assets/OdishaDistrictsImages/cuttack.jpeg",
    },
    {
      "name": "Deogarh (देवगढ़)",
      "description":
      "देवगढ़ जिला प्राकृतिक सुंदरता और जलप्रपातों के लिए प्रसिद्ध है।\nDeogarh is famous for its natural beauty and waterfalls.",
      "image": "assets/OdishaDistrictsImages/deogarh.jpeg",
    },
    {
      "name": "Dhenkanal (ढेंकानाल)",
      "description":
      "ढेंकानाल जिला अपने महलों और हाथी अभयारण्य के लिए प्रसिद्ध है।\nDhenkanal is famous for its palaces and elephant sanctuary.",
      "image": "assets/OdishaDistrictsImages/dhenkanal.jpeg",
    },
    {
      "name": "Gajapati (गजपति)",
      "description":
      "गजपति जिला अपनी जनजातीय संस्कृति और पहाड़ी दृश्यों के लिए प्रसिद्ध है।\nGajapati is known for its tribal culture and scenic hills.",
      "image": "assets/OdishaDistrictsImages/gajapati.jpeg",
    },
    {
      "name": "Ganjam (गंजाम)",
      "description":
      "गंजाम जिला बर्घम और गहिरमठ मंदिर के लिए प्रसिद्ध है।\nGanjam is known for Berhampur city and Gahirmatha temple.",
      "image": "assets/OdishaDistrictsImages/ganjam.jpeg",
    },
    {
      "name": "Jagatsinghpur (जगतसिंहपुर)",
      "description":
      "जगतसिंहपुर जिला परादीप बंदरगाह और औद्योगिक क्षेत्रों के लिए प्रसिद्ध है।\nJagatsinghpur is known for Paradip port and industries.",
      "image": "assets/OdishaDistrictsImages/jagatsinghpur.jpeg",
    },
    {
      "name": "Jajpur (जाजपुर)",
      "description":
      "जाजपुर जिला बिरजा मंदिर और लौह इस्पात उद्योग के लिए प्रसिद्ध है।\nJajpur is famous for Biraja temple and iron & steel industries.",
      "image": "assets/OdishaDistrictsImages/jajpur.jpeg",
    },
    {
      "name": "Jharsuguda (झारसुगुड़ा)",
      "description":
      "झारसुगुड़ा जिला एक प्रमुख औद्योगिक और खनन क्षेत्र है।\nJharsuguda is an important industrial and mining hub.",
      "image": "assets/OdishaDistrictsImages/jharsuguda.jpeg",
    },
    {
      "name": "Kalahandi (कालाहांडी)",
      "description":
      "कालाहांडी जिला अपनी हरित वादियों और मंदिरों के लिए प्रसिद्ध है।\nKalahandi is known for its green valleys and temples.",
      "image": "assets/OdishaDistrictsImages/kalahandi.jpeg",
    },
    {
      "name": "Kandhamal (कंधमाल)",
      "description":
      "कंधमाल जिला अपने पहाड़ों, मसालों और जनजातीय संस्कृति के लिए प्रसिद्ध है।\nKandhamal is known for its hills, spices, and tribal culture.",
      "image": "assets/OdishaDistrictsImages/kandhamal.jpeg",
    },
    {
      "name": "Kendrapara (केन्द्रपाड़ा)",
      "description":
      "केन्द्रपाड़ा जिला गहिरमठ कछुआ अभयारण्य के लिए प्रसिद्ध है।\nKendrapara is famous for the Gahirmatha turtle sanctuary.",
      "image": "assets/OdishaDistrictsImages/kendrapara.jpeg",
    },
    {
      "name": "Kendujhar (केन्द्रुज्हर)",
      "description":
      "केन्द्रुज्हर जिला खनिज संपदा और झरनों के लिए प्रसिद्ध है।\nKendujhar is rich in minerals and famous for waterfalls.",
      "image": "assets/OdishaDistrictsImages/kendujhar.jpeg",
    },
    {
      "name": "Khordha (खोरधा)",
      "description":
      "खोरधा जिला भुवनेश्वर को सम्मिलित करता है और यह आईटी और शिक्षा केंद्र है।\nKhordha includes Bhubaneswar and is a hub for IT and education.",
      "image": "assets/OdishaDistrictsImages/khordha.jpeg",
    },
    {
      "name": "Koraput (कोरापुट)",
      "description":
      "कोरापुट जिला कॉफी उत्पादन और सुंदर घाटियों के लिए प्रसिद्ध है।\nKoraput is famous for coffee production and scenic valleys.",
      "image": "assets/OdishaDistrictsImages/koraput.jpeg",
    },
    {
      "name": "Malkangiri (मलकानगिरी)",
      "description":
      "मलकानगिरी जिला अपनी जनजातीय संस्कृति और प्राकृतिक संसाधनों के लिए प्रसिद्ध है।\nMalkangiri is known for its tribal culture and natural resources.",
      "image": "assets/OdishaDistrictsImages/malkangiri.jpeg",
    },
    {
      "name": "Mayurbhanj (मयूरभंज)",
      "description":
      "मयूरभंज जिला सिमलिपाल राष्ट्रीय उद्यान के लिए प्रसिद्ध है।\nMayurbhanj is famous for Simlipal National Park.",
      "image": "assets/OdishaDistrictsImages/mayurbhanj.jpeg",
    },
    {
      "name": "Nabarangpur (नबरंगपुर)",
      "description":
      "नबरंगपुर जिला कृषि उत्पादन और जनजातीय संस्कृति के लिए प्रसिद्ध है।\nNabarangpur is known for agriculture and tribal culture.",
      "image": "assets/OdishaDistrictsImages/nabarangpur.jpeg",
    },
    {
      "name": "Nayagarh (नयागढ़)",
      "description":
      "नयागढ़ जिला मंदिरों और प्राकृतिक दृश्यों के लिए प्रसिद्ध है।\nNayagarh is known for temples and natural beauty.",
      "image": "assets/OdishaDistrictsImages/nayagarh.jpeg",
    },
    {
      "name": "Nuapada (नुआपाड़ा)",
      "description":
      "नुआपाड़ा जिला अपनी सीमावर्ती संस्कृति और ग्रामीण जीवन के लिए प्रसिद्ध है।\nNuapada is known for border culture and rural life.",
      "image": "assets/OdishaDistrictsImages/nuapada.jpeg",
    },
    {
      "name": "Puri (पुरी)",
      "description":
      "पुरी जगन्नाथ मंदिर और समुद्र तटों के लिए विश्व प्रसिद्ध है।\nPuri is world-famous for Jagannath Temple and its beaches.",
      "image": "assets/OdishaDistrictsImages/puri.jpeg",
    },
    {
      "name": "Rayagada (रायगढ़ा)",
      "description":
      "रायगढ़ा जिला अपने जनजातीय समुदाय और खनिज संपदा के लिए प्रसिद्ध है।\nRayagada is known for tribal communities and mineral wealth.",
      "image": "assets/OdishaDistrictsImages/rayagada.jpeg",
    },
    {
      "name": "Sambalpur (संबलपुर)",
      "description":
      "संबलपुर जिला हीराकुंड बाँध और संबलपुरी साड़ियों के लिए प्रसिद्ध है।\nSambalpur is famous for Hirakud Dam and Sambalpuri sarees.",
      "image": "assets/OdishaDistrictsImages/sambalpur.jpeg",
    },
    {
      "name": "Subarnapur (सुभर्णपुर)",
      "description":
      "सोनपुर जिला को 'सुबर्णपुर' कहा जाता है और यह मंदिरों के लिए प्रसिद्ध है।\nSonepur, also called Subarnapur, is famous for its temples.",
      "image": "assets/OdishaDistrictsImages/subarnapur.jpeg",
    },
    {
      "name": "Sundargarh (सुंदरगढ़)",
      "description":
      "सुंदरगढ़ जिला राउरकेला स्टील प्लांट और औद्योगिक गतिविधियों के लिए प्रसिद्ध है।\nSundargarh is famous for Rourkela Steel Plant and industries.",
      "image": "assets/OdishaDistrictsImages/sundargarh.jpeg",
    },
  ];

  List<Map<String, String>> filteredDistricts = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredDistricts = districts; // शुरुआत में सारे जिले दिखेंगे
  }

  void filterSearch(String query) {
    final results = districts.where((district) {
      final districtName = district["name"]!.toLowerCase();
      final input = query.toLowerCase();
      return districtName.contains(input);
    }).toList();

    setState(() {
      filteredDistricts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Odisha Districts (ओडिशा के जिले)")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: filterSearch,
              decoration: InputDecoration(
                hintText: "Search District (जिला खोजें)...",
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