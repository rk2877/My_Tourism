import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_tourism_app/AndamanNicobarStateData/AndamanNicobarDistrictsPage.dart';
import 'package:my_tourism_app/ChandigarhStateData/ChandigarhDistrictsPage.dart';
import 'package:my_tourism_app/DamanDiuStateData/DamanDiuDistrictsPage.dart';
import 'package:my_tourism_app/DelhiStateData/DelhiDistrictsPage.dart';
import 'package:my_tourism_app/GujaratStateData/GujaratDistrictsPage.dart';
import 'package:my_tourism_app/HaryanaStateData/HaryanaDistrictsPage.dart';
import 'package:my_tourism_app/HimachalStateDate/HimachalDistrictsPage.dart';
import 'package:my_tourism_app/JammuKashmirStateData/JammuKashmirDistrictsPage.dart';
import 'package:my_tourism_app/KarnatakaStateData/KarnatakaDistrictsPage.dart';
import 'package:my_tourism_app/KeralaStateData/KeralaDistrictsPage.dart';
import 'package:my_tourism_app/LadakhStateData/LadakhDistrictsPage.dart';
import 'package:my_tourism_app/LakshadweepStateData/LakshadweepDistrictsPage.dart';
import 'package:my_tourism_app/MadhyaPradeshStateData/MadhyaPradeshDistrictsPage.dart';
import 'package:my_tourism_app/MaharashtraStateData/MaharashtraDistrictsPage.dart';
import 'package:my_tourism_app/ManipurSatateData/ManipurDistrictsPage.dart';
import 'package:my_tourism_app/MeghalayaStateData/MeghalayaDistrictsPage.dart';
import 'package:my_tourism_app/MizoramStateData/MizoramDistrictsPage.dart';
import 'package:my_tourism_app/NagalandStateData/NagalandDistrictsPage.dart';
import 'package:my_tourism_app/OdishaStateData/OdishaDistrictsPage.dart';
import 'package:my_tourism_app/PuducherryStateData/PuducherryDistrictsPage.dart';
import 'package:my_tourism_app/PunjabStateData/PunjabDistrictsPage.dart';
import 'package:my_tourism_app/RajasthanStateData/RajasthanDistrictsPage.dart';
import 'package:my_tourism_app/SikkimStateData/SikkimDistrictsPage.dart';
import 'package:my_tourism_app/TamilnaduStateData/TamilNaduDistrictsPage.dart';
import 'package:my_tourism_app/TelanganaStateData/TelanganaDistrictsPage.dart';
import 'package:my_tourism_app/TripuraStateData/TripuraDistrictsPage.dart';
import 'package:my_tourism_app/UttarPradeshStateData/UttarPradeshDistrictsPage.dart';
import 'package:my_tourism_app/WestBengalStateData/WestBengalDistrictsPage.dart';
import 'login_page.dart';
import 'biharStateData/BiharDistrictsPage.dart';
import 'jharkhandStateData/JharkhandDistrictsPage.dart';
import 'AndhraPradeshStateData/AndhraPradeshDistrictsPage.dart';
import 'ArunachalPradeshStateData/ArunachalDistrictsPage.dart';
import 'AssamStateData/AssamDistrictsPage.dart';
import 'ChhattisgarhStateData/ChhattisgarhDistrictsPage.dart';
import 'GoaStateData/GoaDistrictsPage.dart';

class StatePage extends StatelessWidget {
  final List<Map<String, dynamic>> statesAndUTs = [
    // ===== States =====
    {"name": "Andhra Pradesh (आंध्र प्रदेश)", "image": "assets/images/andhra_pradesh.jpg", "description": "Known for Tirupati temple and beaches. आंध्र प्रदेश तिरुपति मंदिर और समुद्र तटों के लिए प्रसिद्ध है।", "page": AndhraPradeshDistrictsPage()},
    {"name": "Arunachal Pradesh (अरुणाचल प्रदेश)", "image": "assets/images/arunachal_pradesh.jpg", "description": "Land of the rising sun in India. भारत में सूरज की पहली किरण का राज्य।", "page": ArunachalDistrictsPage()},
    {"name": "Assam (असम)", "image": "assets/images/assam.jpg", "description": "Famous for tea gardens and Kaziranga National Park. चाय बागानों और काज़ीरंगा राष्ट्रीय उद्यान के लिए प्रसिद्ध।", "page": AssamDistrictsPage()},
    {"name": "Bihar (बिहार)", "image": "assets/images/bihar.jpg", "description": "Land of ancient universities and heritage. प्राचीन विश्वविद्यालयों और विरासत की भूमि।", "page": BiharDistrictsPage()},
    {"name": "Chhattisgarh (छत्तीसगढ़)", "image": "assets/images/chhattisgarh.jpg", "description": "Known for tribal culture and waterfalls. जनजातीय संस्कृति और झरनों के लिए प्रसिद्ध।", "page": ChhattisgarhDistrictsPage()},
    {"name": "Goa (गोवा)", "image": "assets/images/north_goa.jpg", "description": "Popular for beaches and nightlife. समुद्र तटों और रात्रि जीवन के लिए लोकप्रिय।", "page": GoaDistrictsPage()},
    {"name": "Gujarat (गुजरात)", "image": "assets/images/gujarat.jpg", "description": "Home to Gir lions and Somnath temple. गिर के शेर और सोमनाथ मंदिर का घर।", "page": GujaratDistrictsPage()},
    {"name": "Haryana (हरियाणा)", "image": "assets/images/haryana.jpg", "description": "Known for agriculture and historical sites. कृषि और ऐतिहासिक स्थलों के लिए प्रसिद्ध।", "page": HaryanaDistrictsPage()},
    {"name": "Himachal Pradesh (हिमाचल प्रदेश)", "image": "assets/images/himachal_pradesh.jpg", "description": "Famous for hill stations and snow. हिल स्टेशन और बर्फ के लिए प्रसिद्ध।", "page": HimachalDistrictsPage()},
    {"name": "Jharkhand (झारखंड)", "image": "assets/images/jharkhand.jpg", "description": "Known for forests and waterfalls. जंगलों और झरनों के लिए प्रसिद्ध।", "page": JharkhandDistrictsPage()},
    {"name": "Karnataka (कर्नाटक)", "image": "assets/images/karnataka.jpg", "description": "Bengaluru tech hub and Mysore Palace. बेंगलुरु तकनीकी केंद्र और मैसूर पैलेस।", "page": KarnatakaDistrictsPage()},
    {"name": "Kerala (केरल)", "image": "assets/images/kerala.jpg", "description": "God's own country with backwaters. बैकवाटर्स के साथ भगवान का अपना देश।", "page": KeralaDistrictsPage()},
    {"name": "Madhya Pradesh (मध्य प्रदेश)", "image": "assets/images/madhya_pradesh.jpg", "description": "Heart of India, rich in heritage. भारत का दिल, विरासत में समृद्ध।", "page": MadhyaPradeshDistrictsPage()},
    {"name": "Maharashtra (महाराष्ट्र)", "image": "assets/images/maharashtra.jpg", "description": "Mumbai city of dreams and Ajanta caves. सपनों का शहर मुंबई और अजंता गुफाएं।", "page": MaharashtraDistrictsPage()},
    {"name": "Manipur (मणिपुर)", "image": "assets/images/manipur.jpg", "description": "Famous for Loktak Lake. लोकटक झील के लिए प्रसिद्ध।", "page": ManipurDistrictsPage()},
    {"name": "Meghalaya (मेघालय)", "image": "assets/images/meghalaya.jpg", "description": "Abode of clouds and living root bridges. बादलों का घर और जीवित जड़ के पुल।", "page": MeghalayaDistrictsPage()},
    {"name": "Mizoram (मिजोरम)", "image": "assets/images/mizoram.jpg", "description": "Known for rolling hills and bamboo dance. लहरदार पहाड़ियों और बांस नृत्य के लिए प्रसिद्ध।", "page": MizoramDistrictsPage()},
    {"name": "Nagaland (नागालैंड)", "image": "assets/images/nagaland.jpg", "description": "Land of festivals and tribal culture. त्योहारों और जनजातीय संस्कृति की भूमि।", "page": NagalandDistrictsPage()},
    {"name": "Odisha (ओडिशा)", "image": "assets/images/odisha.jpg", "description": "Jagannath temple and Sun temple. जगन्नाथ मंदिर और सूर्य मंदिर।", "page": OdishaDistrictsPage()},
    {"name": "Punjab (पंजाब)", "image": "assets/images/punjab.jpg", "description": "Golden Temple and rich culture. स्वर्ण मंदिर और समृद्ध संस्कृति।", "page": PunjabDistrictsPage()},
    {"name": "Rajasthan (राजस्थान)", "image": "assets/images/rajasthan.jpg", "description": "Desert state with forts and palaces. रेगिस्तान राज्य, किले और महलों के साथ।", "page": RajasthanDistrictsPage()},
    {"name": "Sikkim (सिक्किम)", "image": "assets/images/sikkim.jpg", "description": "Himalayan state with Kanchenjunga. हिमालयी राज्य, कंचनजंगा के साथ।", "page": SikkimDistrictsPage()},
    {"name": "Tamil Nadu (तमिलनाडु)", "image": "assets/images/tamil_nadu.jpg", "description": "Temples, beaches, and classical arts. मंदिर, समुद्र तट और शास्त्रीय कला।", "page": TamilNaduDistrictsPage()},
    {"name": "Telangana (तेलंगाना)", "image": "assets/images/telangana.jpg", "description": "Charminar and Golconda fort. चारमीनार और गोलकोंडा किला।", "page": TelanganaDistrictsPage()},
    {"name": "Tripura (त्रिपुरा)", "image": "assets/images/tripura.jpg", "description": "Palaces and heritage. महल और विरासत।", "page": TripuraDistrictsPage()},
    {"name": "Uttar Pradesh (उत्तर प्रदेश)", "image": "assets/images/uttar_pradesh.jpg", "description": "Home to Taj Mahal and spiritual cities. ताजमहल और धार्मिक शहरों का घर।", "page": UttarPradeshDistrictsPage()},
    {"name": "Uttarakhand (उत्तराखंड)", "image": "assets/images/uttarakhand.jpg", "description": "Himalayan state with pilgrimage sites. हिमालयी राज्य, तीर्थ स्थलों के साथ।", "page": UttarPradeshDistrictsPage()},
    {"name": "West Bengal (पश्चिम बंगाल)", "image": "assets/images/west_bengal.jpg", "description": "Kolkata and Sundarbans. कोलकाता और सुंदरबन।", "page": WestBengalDistrictsPage()},

    // ===== Union Territories =====
    {"name": "Andaman and Nicobar Islands (अंडमान और निकोबार द्वीपसमूह)", "image": "assets/images/andaman_nicobar.jpg", "description": "Beaches and marine life. समुद्र तट और समुद्री जीवन।", "page": AndamanNicobarDistrictsPage()},
    {"name": "Chandigarh (चंडीगढ़)", "image": "assets/images/chandigarh.jpg", "description": "Planned city with gardens. योजनाबद्ध शहर, बगीचों के साथ।", "page": ChandigarhDistrictsPage()},
    {"name": "Dadra and Nagar Haveli and Daman and Diu (दादरा और नगर हवेली और दमन और दीव)", "image": "assets/images/dnh_diu.jpg", "description": "Coastal beauty and heritage. तटीय सुंदरता और विरासत।", "page": DamanDiuDistrictsPage()},
    {"name": "Delhi (दिल्ली)", "image": "assets/images/delhi.jpg", "description": "Capital city of India. भारत की राजधानी।", "page": DelhiDistrictsPage()},
    {"name": "Jammu and Kashmir (जम्मू और कश्मीर)", "image": "assets/images/jammu_kashmir.jpg", "description": "Heaven on Earth with mountains. धरती पर स्वर्ग, पहाड़ों के साथ।", "page": JammuKashmirDistrictsPage()},
    {"name": "Ladakh (लद्दाख)", "image": "assets/images/ladakh.jpg", "description": "High-altitude deserts and monasteries. उच्च ऊंचाई के रेगिस्तान और मठ।", "page": LadakhDistrictsPage()},
    {"name": "Lakshadweep (लक्षद्वीप)", "image": "assets/images/lakshadweep.jpg", "description": "Tropical islands and coral reefs. उष्णकटिबंधीय द्वीप और प्रवाल भित्तियां।", "page": LakshadweepDistrictsPage()},
    {"name": "Puducherry (पुदुचेरी)", "image": "assets/images/puducherry.jpg", "description": "French colonial heritage. फ्रांसीसी औपनिवेशिक विरासत।", "page": PuducherryDistrictsPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("States of India"),
            backgroundColor: Colors.red,
            actions: [
              IconButton(
                icon: Icon(Icons.logout),
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => LoginPage()),
                  );
                },
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: statesAndUTs.length,
            itemBuilder: (context, index) {
              final item = statesAndUTs[index];
              return GestureDetector(
                onTap: () {
                  // Navigate to district page
                  if (item["page"] != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => item["page"]),
                    );
                  }
                },
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left: Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            item["image"] ?? "",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 16),
                        // Right: Name + Description
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["name"] ?? "",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                item["description"] ?? "",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}