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
    "Srinagar (श्रीनगर)": [
      {
        "name": "Dal Lake (डल झील)",
        "image": "assets/images/dal_lake.jpg",
        "description":
        "Famous lake with houseboats and shikaras, offering scenic views.\n\n"
            "हाउसबोट्स और शिकारा के साथ प्रसिद्ध झील, शानदार दृश्य पेश करती है।"
      },
      {
        "name": "Shankaracharya Temple (शंकराचार्य मंदिर)",
        "image": "assets/images/shankaracharya.jpg",
        "description":
        "Historic hilltop temple dedicated to Lord Shiva.\n\n"
            "भगवान शिव को समर्पित ऐतिहासिक पहाड़ी मंदिर।"
      },
      {
        "name": "Mughal Gardens (मुगल गार्डन)",
        "image": "assets/images/mughal_gardens.jpg",
        "description":
        "Beautiful gardens built during Mughal era, with fountains and flowers.\n\n"
            "मुगल काल में बने सुंदर बाग, जिसमें फव्वारे और फूल हैं।"
      },
      {
        "name": "Hazratbal Shrine (हज़रतबल मस्जिद)",
        "image": "assets/images/hazratbal.jpg",
        "description":
        "Famous Muslim shrine situated on the northern shore of Dal Lake.\n\n"
            "डल झील के उत्तरी किनारे स्थित प्रसिद्ध मुस्लिम मंदिर।"
      },
      {
        "name": "Nigeen Lake (निगीन झील)",
        "image": "assets/images/nigeen_lake.jpg",
        "description":
        "Smaller serene lake near Dal, perfect for boating.\n\n"
            "डल झील के पास की छोटी शांत झील, नौका विहार के लिए उत्तम।"
      },
    ],
    "Jammu (जम्मू)": [
      {
        "name": "Raghunath Temple (रघुनाथ मंदिर)",
        "image": "assets/images/raghunath_temple.jpg",
        "description":
        "Famous Hindu temple complex dedicated to Lord Rama.\n\n"
            "भगवान राम को समर्पित प्रसिद्ध हिंदू मंदिर परिसर।"
      },
      {
        "name": "Bahu Fort (बाहू किला)",
        "image": "assets/images/bahu_fort.jpg",
        "description":
        "Historic fort overlooking Tawi River, with gardens inside.\n\n"
            "टावी नदी के ऊपर स्थित ऐतिहासिक किला, जिसके अंदर बाग हैं।"
      },
      {
        "name": "Mubarak Mandi Palace (मुबारक मंडी पैलेस)",
        "image": "assets/images/mubarak_mandi.jpg",
        "description":
        "Old royal palace with unique architecture and museums.\n\n"
            "पुराना शाही महल, अनोखी वास्तुकला और संग्रहालय के साथ।"
      },
      {
        "name": "Amar Mahal Palace (अमर महल पैलेस)",
        "image": "assets/images/amar_mahal.jpg",
        "description":
        "Museum and palace showcasing royal heritage.\n\n"
            "शाही विरासत को प्रदर्शित करने वाला संग्रहालय और महल।"
      },
      {
        "name": "Ranbireshwar Temple (रणबीरश्वर मंदिर)",
        "image": "assets/images/ranbireshwar.jpg",
        "description":
        "Ancient temple dedicated to Lord Shiva.\n\n"
            "भगवान शिव को समर्पित प्राचीन मंदिर।"
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
              leading: Image.asset(p["image"]!, width: 60, height: 60, fit: BoxFit.cover),
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
