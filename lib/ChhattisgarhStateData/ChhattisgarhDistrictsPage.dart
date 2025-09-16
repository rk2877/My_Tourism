import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';
import 'package:flutter/services.dart';

class ChhattisgarhDistrictsPage extends StatefulWidget {
  @override
  _ChhattisgarhDistrictsPageState createState() =>
      _ChhattisgarhDistrictsPageState();
}

class _ChhattisgarhDistrictsPageState
    extends State<ChhattisgarhDistrictsPage> {
  final List<Map<String, String>> allDistricts = [
    {"name": "Balod (बालोद)", "description": "Balod is known for ancient temples and natural beauty. बालोद प्राचीन मंदिरों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/balod.jpeg"},
    {"name": "Baloda Bazar (बलौदा बाजार)", "description": "Baloda Bazar is known as the Cement Hub of Chhattisgarh. बलौदा बाजार छत्तीसगढ़ का सीमेंट हब कहलाता है।", "image": "assets/ChhattisgarhDistrictsImages/balodabazar.jpeg"},
    {"name": "Balrampur (बलरामपुर)", "description": "Balrampur is known for forests and agriculture. बलरामपुर अपने जंगलों और कृषि के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/balrampur.jpeg"},
    {"name": "Bastar (बस्तर)", "description": "Bastar is famous for its tribal culture, waterfalls, and Chitrakote Falls. बस्तर अपनी जनजातीय संस्कृति और चित्रकोट जलप्रपात के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/bastar.jpeg"},
    {"name": "Bemetara (बेमेतरा)", "description": "Bemetara is known for agriculture and temples. बेमेतरा कृषि और मंदिरों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/bemetara.jpeg"},
    {"name": "Bijapur (बीजापुर)", "description": "Bijapur is rich in forests and tribal culture. बीजापुर अपने जंगलों और जनजातीय संस्कृति के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/bijapur.jpeg"},
    {"name": "Bilaspur (बिलासपुर)", "description": "Bilaspur is famous for Kanan Pendari Zoo and educational institutions. बिलासपुर कानन पेंडारी जू और शैक्षणिक संस्थानों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/bilaspur.jpeg"},
    {"name": "Dantewada (दंतेवाड़ा)", "description": "Dantewada is famous for Danteshwari Temple and tribal traditions. दंतेवाड़ा दंतेश्वरी मंदिर और जनजातीय परंपराओं के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/dantewada.jpeg"},
    {"name": "Dhamtari (धमतरी)", "description": "Dhamtari is known for Gangrel Dam and forests. धमतरी गंगरेल डैम और जंगलों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/dhamtari.jpeg"},
    {"name": "Durg (दुर्ग)", "description": "Durg is an industrial city, known for Bhilai Steel Plant. दुर्ग एक औद्योगिक शहर है, जो भिलाई स्टील प्लांट के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/durg.jpeg"},
    {"name": "Gariaband (गरियाबंद)", "description": "Gariaband is famous for Rajim Kumbh and temples. गरियाबंद राजिम कुंभ और मंदिरों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/gariaband.jpeg"},
    {"name": "Gaurela-Pendra-Marwahi (गौरेला-पेंड्रा-मरवाही)", "description": "This is the newest district, known for forests and natural beauty. यह नया जिला है, जो जंगलों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/gpm.jpeg"},
    {"name": "Janjgir-Champa (जांजगीर-चांपा)", "description": "Janjgir-Champa is known for Vishnu Mandir and thermal power plants. जांजगीर-चांपा विष्णु मंदिर और थर्मल पावर प्लांट के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/janjgir.jpeg"},
    {"name": "Jashpur (जशपुर)", "description": "Jashpur is known for hills, forests, and Christian missionary heritage. जशपुर अपनी पहाड़ियों, जंगलों और मिशनरी विरासत के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/jashpur.jpeg"},
    {"name": "Kabirdham (कबीरधाम)", "description": "Kabirdham is famous for Bhoramdeo Temple. कबीरधाम भोरमदेव मंदिर के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/kabirdham.jpeg"},
    {"name": "Kanker (कांकेर)", "description": "Kanker is surrounded by forests and waterfalls, famous for tribal art. कांकेर अपने जंगलों, जलप्रपातों और जनजातीय कला के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/kanker.jpeg"},
    {"name": "Kondagaon (कोंडागांव)", "description": "Kondagaon is known for bell metal craft and lush green forests. कोंडागांव अपनी कांस्य शिल्पकला और हरे-भरे जंगलों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/kondagaon.jpeg"},
    {"name": "Khairagarh-Chhuikhadan-Gandai (खैरागढ़-छुईखदान-गांदाई)", "description": "Khairagarh-Chhuikhadan-Gandai is known for its cultural heritage.", "image": "assets/ChhattisgarhDistrictsImages/khairagarh_chhuikhadan_gandai.jpeg"},
    {"name": "Korba (कोरबा)", "description": "Korba is known as the Power Capital, famous for coal mines and power plants. कोरबा को छत्तीसगढ़ की पावर कैपिटल कहा जाता है।", "image": "assets/ChhattisgarhDistrictsImages/korba.jpeg"},
    {"name": "Koriya (कोरिया)", "description": "Koriya is famous for Amrit Dhara Waterfall and lush greenery. कोरिया अमृत धारा जलप्रपात और हरे-भरे परिदृश्यों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/koriya.jpeg"},
    {"name": "Mahasamund (महासमुंद)", "description": "Mahasamund is famous for Sirpur archaeological site. महासमुंद सिरपुर पुरातात्विक स्थल के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/mahasamund.jpeg"},
    {"name": "Manendragarh-Chirmiri-Bharatpur (मनेन्द्रगढ़-चिरमीरी-भरतपुर)", "description": "Manendragarh-Chirmiri-Bharatpur is known for coal mining regions.", "image": "assets/ChhattisgarhDistrictsImages/manendragarh_chirmiri_bharatpur.jpeg"},
    {"name": "Mohla-Manpur-Ambagarh Chowki (मोहरा-मांपुर-अम्बागढ़ चौकी)", "description": "Mohla-Manpur-Ambagarh Chowki is known for scenic beauty.", "image": "assets/ChhattisgarhDistrictsImages/mohla_manpur_ambagarh_chowki.jpeg"},
    {"name": "Mungeli (मुंगेली)", "description": "Mungeli is known for Khudia Dam and temples. मुंगेली खुड़िया डैम और मंदिरों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/mungeli.jpeg"},
    {"name": "Narayanpur (नारायणपुर)", "description": "Narayanpur is famous for its natural beauty and tribal handicrafts. नारायणपुर अपनी प्राकृतिक सुंदरता और जनजातीय हस्तशिल्प के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/narayanpur.jpeg"},
    {"name": "Raigarh (रायगढ़)", "description": "Raigarh is known as the cultural capital of Chhattisgarh, famous for Kathak dance. रायगढ़ छत्तीसगढ़ की सांस्कृतिक राजधानी है।", "image": "assets/ChhattisgarhDistrictsImages/raigarh.jpeg"},
    {"name": "Raipur (रायपुर)", "description": "Raipur is the capital city, known for its rich culture and industrial importance. रायपुर छत्तीसगढ़ की राजधानी है।", "image": "assets/ChhattisgarhDistrictsImages/raipur.jpeg"},
    {"name": "Rajnandgaon (राजनांदगांव)", "description": "Rajnandgaon is known for temples and historical sites. राजनांदगांव अपने मंदिरों और ऐतिहासिक स्थलों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/rajnandgaon.jpeg"},
    {"name": "Sakti (सक्ती)", "description": "Sakti is known for its scenic beauty and rural culture.", "image": "assets/ChhattisgarhDistrictsImages/sakti.jpeg"},
    {"name": "Sarangarh-Bilaigarh (सरंगड़-बिलाईगढ़)", "description": "Sarangarh-Bilaigarh is known for historical sites and temples.", "image": "assets/ChhattisgarhDistrictsImages/sarangarh.png"},
    {"name": "Sukma (सुकमा)", "description": "Sukma is rich in forests and tribal heritage. सुकमा अपने जंगलों और जनजातीय विरासत के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/sukma.jpeg"},
    {"name": "Surajpur (सूरजपुर)", "description": "Surajpur is known for its scenic landscapes and temples. सूरजपुर अपने सुंदर परिदृश्यों और मंदिरों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/surajpur.jpeg"},
    {"name": "Surguja (सरगुजा)", "description": "Surguja is known for its ancient temples and hilly terrain. सरगुजा अपने प्राचीन मंदिरों और पहाड़ी इलाकों के लिए प्रसिद्ध है।", "image": "assets/ChhattisgarhDistrictsImages/surguja.jpeg"},
  ];

  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;

    // Status bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.teal,
      statusBarIconBrightness: Brightness.light,
    ));
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
        title: Text(
          "Chhattisgarh Districts (छत्तीसगढ़ जिले)",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: _filterDistricts,
                decoration: InputDecoration(
                  hintText: "Search district...",
                  prefixIcon: Icon(Icons.search),
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
      ),
    );
  }
}
