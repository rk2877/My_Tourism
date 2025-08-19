import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class BiharDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Patna (पटना)",
      "image": "assets/images/patna.jpg",
      "description": "Patna is the capital city of Bihar, known for its historical sites like Golghar and Patna Sahib Gurudwara. पटना बिहार की राजधानी है, जो गोलघर और पटना साहिब गुरुद्वारा जैसे ऐतिहासिक स्थलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Gaya (गया)",
      "image": "assets/images/gaya.jpg",
      "description": "Gaya is a famous pilgrimage city, especially known for Bodh Gaya where Lord Buddha attained enlightenment. गया एक प्रसिद्ध तीर्थ स्थल है, विशेष रूप से बोधगया के लिए जहाँ भगवान बुद्ध ने ज्ञान प्राप्त किया।"
    },
    {
      "name": "Bhagalpur (भागलपुर)",
      "image": "assets/images/bhagalpur.jpg",
      "description": "Bhagalpur is famous for its silk industry, especially Tussar silk. भागलपुर अपने रेशम उद्योग, विशेष रूप से तसर रेशम के लिए प्रसिद्ध है।"
    },
    {
      "name": "Muzaffarpur (मुज़फ़्फ़रपुर)",
      "image": "assets/images/muzaffarpur.jpg",
      "description": "Muzaffarpur is known as the 'Lychee Kingdom' of India. मुज़फ़्फ़रपुर को भारत का 'लीची का साम्राज्य' कहा जाता है।"
    },
    {
      "name": "Nalanda (नालंदा)",
      "image": "assets/images/nalanda.jpg",
      "description": "Nalanda is famous for the ancient Nalanda University, a center of learning in ancient India. नालंदा प्राचीन नालंदा विश्वविद्यालय के लिए प्रसिद्ध है, जो प्राचीन भारत का शिक्षा केंद्र था।"
    },
    {
      "name": "Araria (अररिया)",
      "image": "assets/images/araria.jpg",
      "description": "Araria is located in the northeastern part of Bihar, known for agriculture and natural beauty. अररिया बिहार के उत्तर-पूर्वी भाग में स्थित है और खेती तथा प्राकृतिक सुंदरता के लिए जानी जाती है।"
    },
    {
      "name": "Arwal (अरवल)",
      "image": "assets/images/arwal.jpg",
      "description": "Arwal is one of the smallest districts of Bihar, known for its rural culture. अरवल बिहार के सबसे छोटे जिलों में से एक है, जो ग्रामीण संस्कृति के लिए प्रसिद्ध है।"
    },
    {
      "name": "Aurangabad (औरंगाबाद)",
      "image": "assets/images/aurangabad.jpg",
      "description": "Aurangabad is known for Deo Sun Temple and its cultural heritage. औरंगाबाद देव सूर्य मंदिर और अपनी सांस्कृतिक धरोहर के लिए प्रसिद्ध है।"
    },
    {
      "name": "Banka (बांका)",
      "image": "assets/images/banka.jpg",
      "description": "Banka is known for Mandar Hill and religious importance. बांका मंदार हिल और धार्मिक महत्व के लिए प्रसिद्ध है।"
    },
    {
      "name": "Begusarai (बेगूसराय)",
      "image": "assets/images/begusarai.jpg",
      "description": "Begusarai is called the 'Industrial Capital of Bihar'. बेगूसराय को 'बिहार की औद्योगिक राजधानी' कहा जाता है।"
    },
    {
      "name": "Bhojpur (भोजपुर)",
      "image": "assets/images/bhojpur.jpg",
      "description": "Bhojpur is famous for Veer Kunwar Singh, a freedom fighter of 1857. भोजपुर 1857 के स्वतंत्रता सेनानी वीर कुंवर सिंह के लिए प्रसिद्ध है।"
    },
    {
      "name": "Buxar (बक्सर)",
      "image": "assets/images/buxar.jpg",
      "description": "Buxar is historically known for the Battle of Buxar in 1764. बक्सर 1764 की बक्सर की लड़ाई के लिए ऐतिहासिक रूप से प्रसिद्ध है।"
    },
    {
      "name": "Darbhanga (दरभंगा)",
      "image": "assets/images/darbhanga.jpg",
      "description": "Darbhanga is known for its Mithila culture and Darbhanga Raj Palace. दरभंगा अपनी मिथिला संस्कृति और दरभंगा राज महल के लिए प्रसिद्ध है।"
    },
    {
      "name": "East Champaran (पूर्वी चंपारण)",
      "image": "assets/images/east_champaran.jpg",
      "description": "East Champaran is linked to Mahatma Gandhi's Champaran Satyagraha. पूर्वी चंपारण महात्मा गांधी के चंपारण सत्याग्रह से जुड़ा हुआ है।"
    },
    {
      "name": "West Champaran (पश्चिम चंपारण)",
      "image": "assets/images/west_champaran.jpg",
      "description": "West Champaran is famous for Valmiki National Park. पश्चिम चंपारण वाल्मीकि राष्ट्रीय उद्यान के लिए प्रसिद्ध है।"
    },
    {
      "name": "Jamui (जमुई)",
      "image": "assets/images/jamui.jpg",
      "description": "Jamui is known for historical and religious sites. जमुई ऐतिहासिक और धार्मिक स्थलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Jehanabad (जहानाबाद)",
      "image": "assets/images/jehanabad.jpg",
      "description": "Jehanabad is known for its agricultural economy. जहानाबाद अपनी कृषि अर्थव्यवस्था के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kaimur (कैमूर)",
      "image": "assets/images/kaimur.jpg",
      "description": "Kaimur is famous for Kaimur Hills and waterfalls. कैमूर कैमूर पहाड़ियों और झरनों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Katihar (कटिहार)",
      "image": "assets/images/katihar.jpg",
      "description": "Katihar is known for its railway junction and agriculture. कटिहार अपने रेलवे जंक्शन और कृषि के लिए प्रसिद्ध है।"
    },
    {
      "name": "Khagaria (खगड़िया)",
      "image": "assets/images/khagaria.jpg",
      "description": "Khagaria is an important agricultural district. खगड़िया एक महत्वपूर्ण कृषि जिला है।"
    },
    {
      "name": "Kishanganj (किशनगंज)",
      "image": "assets/images/kishanganj.jpg",
      "description": "Kishanganj is known for tea gardens and religious diversity. किशनगंज चाय बागानों और धार्मिक विविधता के लिए प्रसिद्ध है।"
    },
    {
      "name": "Lakhisarai (लखीसराय)",
      "image": "assets/images/lakhisarai.jpg",
      "description": "Lakhisarai is known for historical sites and temples. लखीसराय ऐतिहासिक स्थलों और मंदिरों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Madhepura (मधेपुरा)",
      "image": "assets/images/madhepura.jpg",
      "description": "Madhepura is known for farming and rural life. मधेपुरा खेती और ग्रामीण जीवन के लिए प्रसिद्ध है।"
    },
    {
      "name": "Madhubani (मधुबनी)",
      "image": "assets/images/madhubani.jpg",
      "description": "Madhubani is famous for Madhubani paintings. मधुबनी मधुबनी पेंटिंग्स के लिए प्रसिद्ध है।"
    },
    {
      "name": "Munger (मुंगेर)",
      "image": "assets/images/munger.jpg",
      "description": "Munger is famous for ancient fort and Bihar School of Yoga. मुंगेर प्राचीन किले और बिहार स्कूल ऑफ योगा के लिए प्रसिद्ध है।"
    },
    {
      "name": "Nawada (नवादा)",
      "image": "assets/images/nawada.jpg",
      "description": "Nawada is known for Kakolat waterfall. नवादा ककोलत झरने के लिए प्रसिद्ध है।"
    },
    {
      "name": "Purnia (पूर्णिया)",
      "image": "assets/images/purnia.jpg",
      "description": "Purnia is an important agricultural and trade hub. पूर्णिया एक महत्वपूर्ण कृषि और व्यापार केंद्र है।"
    },
    {
      "name": "Rohtas (रोहतास)",
      "image": "assets/images/rohtas.jpg",
      "description": "Rohtas is famous for Rohtasgarh Fort. रोहतास रोहतासगढ़ किले के लिए प्रसिद्ध है।"
    },
    {
      "name": "Saharsa (सहरसा)",
      "image": "assets/images/saharsa.jpg",
      "description": "Saharsa is known for fertile lands and agriculture. सहरसा उपजाऊ भूमि और कृषि के लिए प्रसिद्ध है।"
    },
    {
      "name": "Samastipur (समस्तीपुर)",
      "image": "assets/images/samastipur.jpg",
      "description": "Samastipur is known for its railway division. समस्तीपुर अपने रेलवे डिवीजन के लिए प्रसिद्ध है।"
    },
    {
      "name": "Saran (सारण)",
      "image": "assets/images/saran.jpg",
      "description": "Saran is known for Chhapra city and historical importance. सारण छपरा शहर और ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
    },
    {
      "name": "Sheikhpura (शेखपुरा)",
      "image": "assets/images/sheikhpura.jpg",
      "description": "Sheikhpura is known for Arghauti Dam and natural beauty. शेखपुरा अर्घौती बांध और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
    },
    {
      "name": "Sheohar (शिवहर)",
      "image": "assets/images/sheohar.jpg",
      "description": "Sheohar is one of the smallest districts, mainly rural. शिवहर सबसे छोटे जिलों में से एक है, मुख्यतः ग्रामीण।"
    },
    {
      "name": "Sitamarhi (सीतामढ़ी)",
      "image": "assets/images/sitamarhi.jpg",
      "description": "Sitamarhi is believed to be the birthplace of Goddess Sita. सीतामढ़ी माता सीता का जन्मस्थान माना जाता है।"
    },
    {
      "name": "Siwan (सीवान)",
      "image": "assets/images/siwan.jpg",
      "description": "Siwan is known for political leaders and historical importance. सीवान राजनीतिक नेताओं और ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
    },
    {
      "name": "Supaul (सुपौल)",
      "image": "assets/images/supaul.jpg",
      "description": "Supaul is part of the Mithilanchal region. सुपौल मिथिलांचल क्षेत्र का हिस्सा है।"
    },
    {
      "name": "Vaishali (वैशाली)",
      "image": "assets/images/vaishali.jpg",
      "description": "Vaishali is an ancient city, important in Buddhist history. वैशाली एक प्राचीन शहर है, जो बौद्ध इतिहास में महत्वपूर्ण है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bihar District")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(district["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(district["name"]!),
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
    );
  }
}