import 'package:flutter/material.dart';
import 'TouristPlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;
  final String districtImage;

  TouristPlacesPage({required this.districtName, required this.districtImage});

  final Map<String, List<Map<String, String>>> touristPlaces = {
    "Kolkata (कोलकाता)": [
      {
        "name": "Victoria Memorial (विक्टोरिया मेमोरियल)",
        "image": "assets/images/victoria.jpg",
        "description": "A grand marble building built in memory of Queen Victoria. रानी विक्टोरिया की स्मृति में बना भव्य संगमरमर का भवन।"
      },
      {
        "name": "Howrah Bridge (हावड़ा ब्रिज)",
        "image": "assets/images/howrah_bridge.jpg",
        "description": "An engineering marvel and a symbol of Kolkata. इंजीनियरिंग का अद्भुत नमूना और कोलकाता का प्रतीक।"
      },
      {
        "name": "Dakshineswar Kali Temple (दक्षिणेश्वर काली मंदिर)",
        "image": "assets/images/dakshineswar.jpg",
        "description": "A famous Hindu temple dedicated to Goddess Kali. देवी काली को समर्पित प्रसिद्ध हिंदू मंदिर।"
      },
      {
        "name": "Science City (साइंस सिटी)",
        "image": "assets/images/science_city.jpg",
        "description": "India's largest science center. भारत का सबसे बड़ा विज्ञान केंद्र।"
      },
      {
        "name": "Indian Museum (भारतीय संग्रहालय)",
        "image": "assets/images/indian_museum.jpg",
        "description": "One of the oldest museums in the world. दुनिया के सबसे पुराने संग्रहालयों में से एक।"
      },
    ],
    "Darjeeling (दार्जिलिंग)": [
      {
        "name": "Tiger Hill (टाइगर हिल)",
        "image": "assets/images/tiger_hill.jpg",
        "description": "Famous for sunrise view over Kanchenjunga. कंचनजंघा पर सूर्योदय के लिए प्रसिद्ध।"
      },
      {
        "name": "Batasia Loop (बाटासिया लूप)",
        "image": "assets/images/batasia_loop.jpg",
        "description": "A spiral railway loop with stunning views. सुंदर दृश्यों वाला घुमावदार रेलवे ट्रैक।"
      },
      {
        "name": "Darjeeling Zoo (दार्जिलिंग चिड़ियाघर)",
        "image": "assets/images/darjeeling_zoo.jpg",
        "description": "Famous for snow leopard conservation. हिम तेंदुए के संरक्षण के लिए प्रसिद्ध।"
      },
      {
        "name": "Peace Pagoda (पीस पगोडा)",
        "image": "assets/images/peace_pagoda.jpg",
        "description": "A Buddhist stupa promoting peace. शांति को बढ़ावा देने वाला बौद्ध स्तूप।"
      },
      {
        "name": "Darjeeling Himalayan Railway (दार्जिलिंग हिमालयन रेलवे)",
        "image": "assets/images/darjeeling_railway.jpg",
        "description": "A UNESCO World Heritage Site toy train. यूनेस्को विश्व धरोहर स्थल टॉय ट्रेन।"
      },
    ],
    "Howrah (हावड़ा)": [
      {
        "name": "Belur Math (बेलूर मठ)",
        "image": "assets/images/belur_math.jpg",
        "description": "Headquarters of Ramakrishna Mission. रामकृष्ण मिशन का मुख्यालय।"
      },
      {
        "name": "Botanical Garden (बॉटनिकल गार्डन)",
        "image": "assets/images/botanical_garden.jpg",
        "description": "Famous for the Great Banyan Tree. महान बरगद के पेड़ के लिए प्रसिद्ध।"
      },
      {
        "name": "Vivekananda Setu (विवेकानंद सेतु)",
        "image": "assets/images/vivekananda_setu.jpg",
        "description": "An important bridge over the Hooghly River. हुगली नदी पर बना एक महत्वपूर्ण पुल।"
      },
      {
        "name": "Avani Riverside Mall (अवानी रिवरसाइड मॉल)",
        "image": "assets/images/avani_mall.jpg",
        "description": "A popular shopping destination. एक लोकप्रिय शॉपिंग डेस्टिनेशन।"
      },
      {
        "name": "Andul Rajbari (अंदुल राजबाड़ी)",
        "image": "assets/images/andul_rajbari.jpg",
        "description": "A historical royal palace. एक ऐतिहासिक शाही महल।"
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final places = touristPlaces[districtName] ?? [];
    return Scaffold(
      appBar: AppBar(title: Text("$districtName Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(place["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(place["name"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlaceDetailsPage(
                      name: place["name"]!,
                      image: place["image"]!,
                      description: place["description"]!,
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
