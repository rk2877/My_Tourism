import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> touristPlaces = {
    "East Khasi Hills (ईस्ट खासी हिल्स)": [
      {
        "name": "Shillong Peak (शिलांग पीक)",
        "description":
        "Highest point in Shillong with panoramic views. शिलांग का सबसे ऊँचा स्थान, अद्भुत नज़ारों के साथ।",
        "image": "assets/images/shillong_peak.jpg",
      },
      {
        "name": "Elephant Falls (एलिफेंट फॉल्स)",
        "description":
        "Three-tiered waterfall near Shillong. शिलांग के पास तीन-स्तरीय झरना।",
        "image": "assets/images/elephant_falls.jpg",
      },
      {
        "name": "Ward's Lake (वार्ड्स लेक)",
        "description":
        "Beautiful man-made lake in Shillong. शिलांग में सुंदर मानव निर्मित झील।",
        "image": "assets/images/wards_lake.jpg",
      },
      {
        "name": "Police Bazar (पुलिस बाज़ार)",
        "description":
        "Main shopping hub of Shillong. शिलांग का मुख्य बाज़ार।",
        "image": "assets/images/police_bazar.jpg",
      },
      {
        "name": "Laitlum Canyons (लैतलुम कैन्यन)",
        "description":
        "Stunning canyon views in Meghalaya. मेघालय में अद्भुत घाटी के दृश्य।",
        "image": "assets/images/laitlum_canyons.jpg",
      },
    ],
    "West Khasi Hills (वेस्ट खासी हिल्स)": [
      {
        "name": "Nongkhnum Island (नोंगख्नुम द्वीप)",
        "description":
        "Second largest river island in Asia. एशिया का दूसरा सबसे बड़ा नदी द्वीप।",
        "image": "assets/images/nongkhnum_island.jpg",
      },
      {
        "name": "Weinia Falls (वेइनिया फॉल्स)",
        "description":
        "Magnificent waterfall in West Khasi Hills. वेस्ट खासी हिल्स में भव्य झरना।",
        "image": "assets/images/weinia_falls.jpg",
      },
      {
        "name": "Langshiang Falls (लांगशियांग फॉल्स)",
        "description":
        "One of the tallest waterfalls in Meghalaya. मेघालय के सबसे ऊँचे झरनों में से एक।",
        "image": "assets/images/langshiang_falls.jpg",
      },
      {
        "name": "Kynshi River (किंशी नदी)",
        "description":
        "Scenic river for boating. नौकायन के लिए सुंदर नदी।",
        "image": "assets/images/kynshi_river.jpg",
      },
      {
        "name": "Mawthadraishan Peak (मावथद्रैशन पीक)",
        "description":
        "Hilltop with breathtaking views. पहाड़ी चोटी से अद्भुत नज़ारे।",
        "image": "assets/images/mawthadraishan_peak.jpg",
      },
    ],
    "Ri-Bhoi (री-भोई)": [
      {
        "name": "Umiam Lake (उमियम झील)",
        "description":
        "Beautiful reservoir near Shillong. शिलांग के पास सुंदर जलाशय।",
        "image": "assets/images/umiam_lake.jpg",
      },
      {
        "name": "Lum Sohpetbneng (लुम सोहपेटब्नेंग)",
        "description":
        "Sacred hill of the Khasi people. खासी जनजाति की पवित्र पहाड़ी।",
        "image": "assets/images/lum_sohpetbneng.jpg",
      },
      {
        "name": "Pobitora Wildlife Sanctuary (पोबितोरा वन्यजीव अभयारण्य)",
        "description":
        "Famous for one-horned rhinoceros. एक-सींग वाले गैंडे के लिए प्रसिद्ध।",
        "image": "assets/images/pobitora_sanctuary.jpg",
      },
      {
        "name": "Byrnihat (बिर्नीहाट)",
        "description":
        "Gateway town of Meghalaya. मेघालय का प्रवेश द्वार शहर।",
        "image": "assets/images/byrnihat.jpg",
      },
      {
        "name": "Umden Village (उमदेन गाँव)",
        "description":
        "Known for Eri silk weaving. एरी रेशम बुनाई के लिए प्रसिद्ध।",
        "image": "assets/images/umden_village.jpg",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final places = touristPlaces[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("$districtName - Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(place["image"]!,
                  width: 60, height: 60, fit: BoxFit.cover),
              title: Text(place["name"]!,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(place["description"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      name: place["name"]!,
                      description: place["description"]!,
                      image: place["image"]!,
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
