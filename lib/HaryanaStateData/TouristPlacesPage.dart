import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;
  final String districtImage;

  const TouristPlacesPage({
    Key? key,
    required this.districtName,
    required this.districtImage,
  }) : super(key: key);

  Map<String, List<Map<String, String>>> get placesByDistrict => {
    "Ambala (अम्बाला)": [
      {
        "name": "Rani Ka Talab (रानी का तालाब)",
        "image": "assets/haryana/rani_ka_talab.jpg",
        "description":
        "A historic pond surrounded by temples and scenic views.\n\n"
            "एक ऐतिहासिक तालाब, जिसके चारों ओर मंदिर और सुंदर दृश्य हैं।"
      },
      {
        "name": "Holy Redeemer Church",
        "image": "assets/haryana/holy_redeemer.jpg",
        "description":
        "One of the oldest churches in Ambala Cantonment.\n\n"
            "अम्बाला छावनी का सबसे पुराना चर्च।"
      },
    ],
    "Bhiwani (भिवानी)": [
      {
        "name": "Star Monument (स्टार स्मारक)",
        "image": "assets/haryana/star_monument.jpg",
        "description":
        "Unique star-shaped monument built in memory of saint.\n\n"
            "संत की स्मृति में बना एक अद्वितीय सितारा आकार का स्मारक।"
      },
      {
        "name": "Devsar Dham (देवसर धाम)",
        "image": "assets/haryana/devsar_dham.jpg",
        "description":
        "Famous religious site dedicated to Goddess.\n\n"
            "देवी को समर्पित प्रसिद्ध धार्मिक स्थल।"
      },
    ],
    "Faridabad (फरीदाबाद)": [
      {
        "name": "Surajkund (सूरजकुंड)",
        "image": "assets/haryana/surajkund.jpg",
        "description":
        "Popular for international crafts mela held every year.\n\n"
            "अंतरराष्ट्रीय हस्तशिल्प मेला हर साल आयोजित होता है।"
      },
      {
        "name": "Badkhal Lake (बढ़खल झील)",
        "image": "assets/haryana/badkhal_lake.jpg",
        "description":
        "A scenic lake surrounded by hills, picnic spot.\n\n"
            "पहाड़ियों से घिरी सुंदर झील, पिकनिक स्थल।"
      },
    ],
    "Gurugram (गुरुग्राम)": [
      {
        "name": "Kingdom of Dreams",
        "image": "assets/haryana/kingdom_of_dreams.jpg",
        "description":
        "India's first live entertainment, theatre and leisure destination.\n\n"
            "भारत का पहला लाइव एंटरटेनमेंट और थिएटर स्थल।"
      },
      {
        "name": "Sultanpur Bird Sanctuary",
        "image": "assets/haryana/sultanpur.jpg",
        "description":
        "Famous bird sanctuary, paradise for bird watchers.\n\n"
            "प्रसिद्ध पक्षी अभयारण्य, पक्षी प्रेमियों के लिए स्वर्ग।"
      },
    ],
    "Kurukshetra (कुरुक्षेत्र)": [
      {
        "name": "Brahma Sarovar (ब्रह्म सरोवर)",
        "image": "assets/haryana/brahma_sarovar.jpg",
        "description":
        "A holy water tank, believed to be created by Lord Brahma.\n\n"
            "पवित्र जल सरोवर, जिसे भगवान ब्रह्मा ने बनाया माना जाता है।"
      },
      {
        "name": "Jyotisar (ज्योतिसर)",
        "image": "assets/haryana/jyotisar.jpg",
        "description":
        "Sacred place where Lord Krishna gave Bhagavad Gita.\n\n"
            "पवित्र स्थल जहां भगवान कृष्ण ने गीता का उपदेश दिया।"
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final places = placesByDistrict[districtName] ?? [];
    return Scaffold(
      appBar: AppBar(title: Text("$districtName - Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final p = places[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(p["image"]!,
                  width: 60, height: 60, fit: BoxFit.cover),
              title: Text(p["name"]!),
              subtitle: Text(
                p["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      name: p["name"]!,
                      image: p["image"]!,
                      description: p["description"]!,
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
