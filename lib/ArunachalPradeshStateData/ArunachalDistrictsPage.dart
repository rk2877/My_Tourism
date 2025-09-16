import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class ArunachalPradeshDistrictsPage extends StatefulWidget {
  @override
  _ArunachalPradeshDistrictsPageState createState() =>
      _ArunachalPradeshDistrictsPageState();
}

class _ArunachalPradeshDistrictsPageState
    extends State<ArunachalPradeshDistrictsPage> {
  final List<Map<String, String>> allDistricts = [

    {
      "name": "Tawang (तवांग)",
      "description": "Famous for Tawang Monastery, one of the largest Buddhist monasteries in India. तवांग मठ के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/tawang.jpeg",
    },
    {
      "name": "West Kameng (पश्चिम कामेंग)",
      "description": "Known for Bomdila Monastery and apple orchards. बोंडिला मठ और सेब के बागों के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/west_kameng.jpeg",
    },
    {
      "name": "East Kameng (पूर्वी कामेंग)",
      "description": "Rich in tribal culture and natural beauty. जनजातीय संस्कृति और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/east_kameng.jpeg",
    },
    {
      "name": "Pakke-Kessang (पक्के-केसांग)",
      "description": "Known for Pakke Tiger Reserve and scenic valleys. पक्के टाइगर रिजर्व और घाटियों के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/pakke_kessang.jpeg",
    },
    {
      "name": "Kamle (कामले)",
      "description": "Known for scenic views and cultural heritage. सुंदर दृश्यों और सांस्कृतिक धरोहर के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/kamle.jpeg",
    },
    {
      "name": "Papum Pare (पपुम पारे)",
      "description": "Itanagar, the capital city, is here. ईटानगर (राजधानी) यहां स्थित है।",
      "image": "assets/ArunachalPradeshDistrictsImages/papum_pare.jpeg",
    },
    {
      "name": "Kra Daadi (क्रा दादी)",
      "description": "Famous for tribal traditions and scenic landscapes. जनजातीय परंपराओं और सुंदर दृश्यों के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/kra_daadi.jpeg",
    },
    {
      "name": "Kurung Kumey (कुरुंग कुमेय)",
      "description": "Known for forests, rivers, and tribal lifestyle. जंगलों, नदियों और जनजातीय जीवनशैली के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/kurung_kumey.jpeg",
    },
    {
      "name": "Lower Subansiri (लोअर सुबनसिरी)",
      "description": "Famous for Ziro Valley and Apatani culture. जीरो घाटी और अपातानी संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/lower_subansiri.jpeg",
    },
    {
      "name": "Upper Subansiri (अपर सुबनसिरी)",
      "description": "Rich in mountains and tribal culture. पर्वतों और जनजातीय संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/upper_subansiri.jpeg",
    },
    {
      "name": "Lepa-Rada (लेपा-राड़ा)",
      "description": "Rich in tribal traditions and scenic landscapes. जनजातीय परंपराओं और दृश्यों के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/lepa_rada.jpeg",
    },
    {
      "name": "Lower Siang (लोअर सियांग)",
      "description": "Known for agriculture and cultural festivals. कृषि और सांस्कृतिक त्योहारों के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/lower_siang.jpeg",
    },
    {
      "name": "Siang (सियांग)",
      "description": "Known for rivers, valleys, and adventure tourism. नदियों, घाटियों और एडवेंचर पर्यटन के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/siang.jpeg",
    },
    {
      "name": "Upper Siang (अपर सियांग)",
      "description": "Rich in biodiversity and tribal lifestyle. जैव विविधता और जनजातीय जीवनशैली के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/upper_siang.jpeg",
    },
    {
      "name": "West Siang (पश्चिम सियांग)",
      "description": "Known for Along town and natural beauty. आलॉन्ग नगर और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/west_siang.jpeg",
    },
    {
      "name": "Shi-Yomi (शि-योमी)",
      "description": "Famous for Mechuka Valley and scenic landscapes. मेचुका घाटी और सुंदर दृश्यों के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/shi_yomi.jpeg",
    },
    {
      "name": "Changlang (चांगलांग)",
      "description": "Famous for Namdapha National Park. नामदफा राष्ट्रीय उद्यान के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/changlang.jpeg",
    },
    {
      "name": "Tirap (तिराप)",
      "description": "Known for Nocte and Wancho tribal culture. नोक्टे और वांचो जनजातीय संस्कृति के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/tirap.jpeg",
    },
    {
      "name": "Longding (लोंगडिंग)",
      "description": "Famous for tribal heritage and scenic beauty. जनजातीय धरोहर और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/longding.jpeg",
    },
    {
      "name": "Anjaw (अंजॉ)",
      "description": "Easternmost district, known for Kibithu. भारत का सबसे पूर्वी जिला, किबिथु के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/anjaw.jpeg",
    },
    {
      "name": "Lohit (लोहित)",
      "description": "Known for Parshuram Kund. परशुराम कुंड के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/lohit.jpeg",
    },
    {
      "name": "Namsai (नमसाई)",
      "description": "Famous for Golden Pagoda Buddhist Temple. गोल्डन पगोडा बौद्ध मंदिर के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/namsai.jpeg",
    },
    {
      "name": "Dibang Valley (दिबांग घाटी)",
      "description": "Known for natural beauty and wildlife. प्राकृतिक सुंदरता और वन्यजीवों के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/dibang_valley.jpeg",
    },
    {
      "name": "Lower Dibang Valley (लोअर दिबांग घाटी)",
      "description": "Famous for tribal traditions and landscapes. जनजातीय परंपराओं और दृश्यों के लिए प्रसिद्ध।",
      "image": "assets/ArunachalPradeshDistrictsImages/lower_dibang_valley.jpeg",
    },
  ];



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
        title: Text("Arunachal Pradesh Districts (अरुणाचल प्रदेश जिले)"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
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
