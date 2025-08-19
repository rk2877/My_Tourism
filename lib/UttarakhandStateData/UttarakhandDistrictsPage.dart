import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class UttarakhandDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Dehradun (देहरादून)",
      "desc": "Capital city of Uttarakhand, famous for its pleasant climate and educational institutions. उत्तराखंड की राजधानी, अपने सुखद मौसम और शैक्षिक संस्थानों के लिए प्रसिद्ध।",
      "image": "assets/images/dehradun.jpg",
    },
    {
      "name": "Nainital (नैनीताल)",
      "desc": "Known for Naini Lake and scenic beauty. नैनी झील और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/images/nainital.jpg",
    },
    {
      "name": "Haridwar (हरिद्वार)",
      "desc": "One of the holiest cities in India, famous for Ganga Aarti. भारत के पवित्रतम शहरों में से एक, गंगा आरती के लिए प्रसिद्ध।",
      "image": "assets/images/haridwar.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uttarakhand Districts (उत्तराखंड जिले)")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(district["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(district["name"]!),
              subtitle: Text(district["desc"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: district["name"]!,
                      touristPlaces: touristData[district["name"]]!,
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

/// Sample tourist places data for each district
final Map<String, List<Map<String, String>>> touristData = {
  "Dehradun (देहरादून)": [
    {
      "name": "Robber's Cave (गुच्चू पानी)",
      "desc": "A natural cave river famous for picnic and adventure. पिकनिक और रोमांच के लिए प्रसिद्ध प्राकृतिक गुफा नदी।",
      "image": "assets/images/robbers_cave.jpg",
    },
    {
      "name": "Sahastradhara (सहस्त्रधारा)",
      "desc": "Waterfall known for medicinal properties. औषधीय गुणों वाला झरना।",
      "image": "assets/images/sahastradhara.jpg",
    },
    {
      "name": "Mindrolling Monastery (माइंडरोलिंग मठ)",
      "desc": "One of the largest Buddhist centers in India. भारत के सबसे बड़े बौद्ध केंद्रों में से एक।",
      "image": "assets/images/mindrolling.jpg",
    },
    {
      "name": "Tapkeshwar Temple (तपकेश्वर मंदिर)",
      "desc": "Ancient cave temple of Lord Shiva. भगवान शिव का प्राचीन गुफा मंदिर।",
      "image": "assets/images/tapkeshwar.jpg",
    },
    {
      "name": "Malsi Deer Park (मालसी हिरण पार्क)",
      "desc": "Mini-zoo and picnic spot. मिनी-चिड़ियाघर और पिकनिक स्थल।",
      "image": "assets/images/malsi_deer_park.jpg",
    },
  ],
  "Nainital (नैनीताल)": [
    {
      "name": "Naini Lake (नैनी झील)",
      "desc": "Heart-shaped lake surrounded by hills. पहाड़ों से घिरी दिल के आकार की झील।",
      "image": "assets/images/naini_lake.jpg",
    },
    {
      "name": "Snow View Point (स्नो व्यू प्वाइंट)",
      "desc": "Offers panoramic views of snow-capped peaks. बर्फ से ढकी चोटियों का मनोरम दृश्य।",
      "image": "assets/images/snow_view.jpg",
    },
    {
      "name": "Naina Devi Temple (नैना देवी मंदिर)",
      "desc": "Sacred Hindu temple on the lake's edge. झील के किनारे स्थित पवित्र हिंदू मंदिर।",
      "image": "assets/images/naina_devi.jpg",
    },
    {
      "name": "Tiffin Top (टिफिन टॉप)",
      "desc": "Popular viewpoint for picnic. पिकनिक के लिए लोकप्रिय व्यूपॉइंट।",
      "image": "assets/images/tiffin_top.jpg",
    },
    {
      "name": "Eco Cave Gardens (ईको केव गार्डन)",
      "desc": "Garden with interconnected caves. आपस में जुड़ी गुफाओं वाला बगीचा।",
      "image": "assets/images/eco_cave.jpg",
    },
  ],
  "Haridwar (हरिद्वार)": [
    {
      "name": "Har Ki Pauri (हर की पौड़ी)",
      "desc": "Sacred ghat on the Ganga river. गंगा नदी का पवित्र घाट।",
      "image": "assets/images/har_ki_pauri.jpg",
    },
    {
      "name": "Chandi Devi Temple (चंडी देवी मंदिर)",
      "desc": "Hilltop temple dedicated to Goddess Chandi. देवी चंडी को समर्पित पहाड़ी मंदिर।",
      "image": "assets/images/chandi_devi.jpg",
    },
    {
      "name": "Mansa Devi Temple (मनसा देवी मंदिर)",
      "desc": "Temple offering panoramic city views. शहर का मनोरम दृश्य प्रदान करने वाला मंदिर।",
      "image": "assets/images/mansa_devi.jpg",
    },
    {
      "name": "Bharat Mata Mandir (भारत माता मंदिर)",
      "desc": "Temple dedicated to Mother India. भारत माता को समर्पित मंदिर।",
      "image": "assets/images/bharat_mata.jpg",
    },
    {
      "name": "Shantikunj (शांतिनिकुंज)",
      "desc": "Spiritual and social service organization. आध्यात्मिक और सामाजिक सेवा संस्थान।",
      "image": "assets/images/shantikunj.jpg",
    },
  ],
};
