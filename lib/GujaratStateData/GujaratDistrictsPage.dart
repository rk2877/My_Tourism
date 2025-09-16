import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class GujaratDistrictsPage extends StatefulWidget {
  @override
  _GujaratDistrictsPageState createState() => _GujaratDistrictsPageState();
}

class _GujaratDistrictsPageState extends State<GujaratDistrictsPage> {
  late List<Map<String, String>> filteredDistricts;

  final List<Map<String, String>> allDistricts = [
    {"name": "Ahmedabad (अहमदाबाद)",
      "description": "Ahmedabad is known for Sabarmati Ashram and textile industry. अहमदाबाद साबरमती आश्रम और वस्त्र उद्योग के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/ahmedabad.jpeg"},
    {"name": "Amreli (अमरेली)",
      "description": "Amreli is famous for Gir National Park and historic temples. अमरेली गिर राष्ट्रीय उद्यान और ऐतिहासिक मंदिरों के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/amreli.jpeg"},
    {"name": "Anand (आणंद)",
      "description": "Anand is known as Milk Capital of India and home to Amul Dairy. आणंद भारत की दूध राजधानी है, अमूल डेयरी के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/anand.jpeg"},
    {"name": "Aravalli (अरावली)",
      "description": "Aravalli is known for scenic beauty and tribal culture. अरावली अपनी प्राकृतिक सुंदरता और जनजातीय संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/aravalli.jpeg"},
    {"name": "Banaskantha (बनासकांठा)",
      "description": "Banaskantha is famous for Ambaji Temple and desert landscape. बनासकांठा अंबाजी मंदिर और रेगिस्तानी दृश्यों के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/banaskantha.jpeg"},
    {"name": "Bharuch (भरुच)",
      "description": "Bharuch is an ancient port city on Narmada River. भरुच नर्मदा नदी के किनारे स्थित एक प्राचीन बंदरगाह शहर है।",
      "image": "assets/GujaratDistrictsImages/bharuch.jpeg"},
    {"name": "Bhavnagar (भावनगर)",
      "description": "Bhavnagar is known for Palitana Jain Temples and Gaurishankar Lake. भावनगर पालीताणा जैन मंदिर और गौरिशंकर झील के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/bhavnagar.jpeg"},
    {"name": "Botad (बोटाद)",
      "description": "Botad is a small district known for temples and rural culture. बोटाद अपने मंदिरों और ग्रामीण संस्कृति के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/botad.jpeg"},
    {"name": "Chhota Udaipur (छोटा उदयपुर)",
      "description": "Chhota Udaipur is rich in tribal culture and heritage. छोटा उदयपुर जनजातीय संस्कृति और धरोहर से समृद्ध है।",
      "image": "assets/GujaratDistrictsImages/chhota_udaipur.jpeg"},
    {"name": "Dahod (दाहोद)",
      "description": "Dahod is famous as birthplace of Emperor Aurangzeb. दाहोद सम्राट औरंगजेब के जन्मस्थान के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/dahod.jpeg"},
    {"name": "Dang (डांग)",
      "description": "Dang is known for dense forests and tribal lifestyle. डांग अपने घने जंगलों और जनजातीय जीवन शैली के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/dang.jpeg"},
    {"name": "Devbhoomi Dwarka (देवभूमि द्वारका)",
      "description": "Dwarka is a famous pilgrimage city associated with Lord Krishna. द्वारका भगवान कृष्ण से संबंधित एक प्रसिद्ध तीर्थस्थल है।",
      "image": "assets/GujaratDistrictsImages/devbhoomi_dwarka.jpeg"},
    {"name": "Gandhinagar (गांधीनगर)",
      "description": "Gandhinagar is the capital city of Gujarat, known for Akshardham Temple. गांधीनगर गुजरात की राजधानी है, अक्षरधाम मंदिर के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/gandhinagar.jpeg"},
    {"name": "Gir Somnath (गिर सोमनाथ)",
      "description": "Gir Somnath is home to Somnath Temple and Gir Lion Sanctuary. गिर सोमनाथ सोमनाथ मंदिर और गिर शेर अभयारण्य के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/gir_somnath.jpeg"},
    {"name": "Jamnagar (जामनगर)",
      "description": "Jamnagar is famous for oil refineries and marine life. जामनगर तेल शोधनालय और समुद्री जीवन के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/jamnagar.jpeg"},
    {"name": "Junagadh (जूनागढ़)",
      "description": "Junagadh is known for Uparkot Fort and Mount Girnar. जूनागढ़ उपरकोट किला और गिरनार पर्वत के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/junagadh.jpeg"},
    {"name": "Kheda (खेड़ा)",
      "description": "Kheda is historically significant for Kheda Satyagraha led by Gandhi. खेड़ा गांधीजी के खेड़ा सत्याग्रह के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/kheda.jpeg"},
    {"name": "Kutch (कच्छ)",
      "description": "Kutch is famous for Rann of Kutch, White Desert Festival and crafts. कच्छ रण ऑफ कच्छ, सफेद रेगिस्तान उत्सव और शिल्प के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/kutch.jpeg"},
    {"name": "Mahisagar (महिसागर)",
      "description": "Mahisagar is known for historical temples and natural beauty. महिसागर ऐतिहासिक मंदिरों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/mahisagar.jpeg"},
    {"name": "Mehsana (मेहसाणा)",
      "description": "Mehsana is known for dairy and Sun Temple at Modhera. मेहसाणा डेयरी और मोढेरा के सूर्य मंदिर के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/mehsana.jpeg"},
    {"name": "Morbi (मोरबी)",
      "description": "Morbi is famous for ceramic industry and heritage bridges. मोरबी सिरेमिक उद्योग और ऐतिहासिक पुलों के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/morbi.jpeg"},
    {"name": "Narmada (नर्मदा)",
      "description": "Narmada district is home to Statue of Unity at Kevadia. नर्मदा जिले में केवड़िया में स्टैच्यू ऑफ यूनिटी स्थित है।",
      "image": "assets/GujaratDistrictsImages/narmada.jpeg"},
    {"name": "Navsari (नवसारी)",
      "description": "Navsari is historically significant for Parsi community. नवसारी पारसी समुदाय के लिए ऐतिहासिक रूप से महत्वपूर्ण है।",
      "image": "assets/GujaratDistrictsImages/navsari.jpeg"},
    {"name": "Panchmahal (पंचमहल)",
      "description": "Panchmahal is famous for Champaner-Pavagadh Archaeological Park. पंचमहल चंपानेर-पावगढ़ पुरातात्विक उद्यान के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/panchmahal.jpeg"},
    {"name": "Patan (पाटण)",
      "description": "Patan is famous for Rani ki Vav, a UNESCO World Heritage site. पाटण रानी की वाव, यूनेस्को विश्व धरोहर स्थल के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/patan.jpeg"},
    {"name": "Porbandar (पोरबंदर)",
      "description": "Porbandar is the birthplace of Mahatma Gandhi. पोरबंदर महात्मा गांधी का जन्मस्थान है।",
      "image": "assets/GujaratDistrictsImages/porbandar.jpeg"},
    {"name": "Rajkot (राजकोट)",
      "description": "Rajkot is an industrial hub, famous for handicrafts and heritage. राजकोट औद्योगिक केंद्र और हस्तशिल्प के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/rajkot.jpeg"},
    {"name": "Sabarkantha (साबरकांठा)",
      "description": "Sabarkantha is known for Polo Forest and tribal heritage. साबरकांठा पोलो फॉरेस्ट और जनजातीय धरोहर के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/sabarkantha.jpeg"},
    {"name": "Surendranagar (सुरेंद्रनगर)",
      "description": "Surendranagar is famous for cotton and salt industries. सुरेंद्रनगर कपास और नमक उद्योग के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/surendranagar.jpeg"},
    {"name": "Tapi (तापी)",
      "description": "Tapi is known for Tapi River and tribal areas. तापी तापी नदी और जनजातीय क्षेत्रों के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/tapi.jpeg"},
    {"name": "Valsad (वलसाड)",
      "description": "Valsad is famous for Alphonso mangoes and coastal areas. वलसाड हापुस आम और तटीय क्षेत्रों के लिए प्रसिद्ध है।",
      "image": "assets/GujaratDistrictsImages/valsad.jpeg"},
  ];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;
  }

  void filterSearch(String query) {
    final results = allDistricts.where((district) {
      final q = query.toLowerCase();
      return district["name"]!.toLowerCase().contains(q) ||
          district["description"]!.toLowerCase().contains(q);
    }).toList();

    setState(() {
      filteredDistricts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gujarat Districts (गुजरात जिले)"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterSearch,
              decoration: InputDecoration(
                hintText: "Search District...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredDistricts.length,
        itemBuilder: (context, index) {
          final district = filteredDistricts[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  district["image"]!,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
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
    );
  }
}
