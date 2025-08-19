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
    "Leh (लेह)": [
      {
        "name": "Shanti Stupa (शांति स्तूप)",
        "image": "assets/images/shanti_stupa.jpg",
        "description":
        "Iconic white-domed stupa offering panoramic views of Leh.\n\n"
            "लेह के खूबसूरत दृश्य पेश करने वाला प्रतिष्ठित सफेद गुंबद वाला स्तूप।"
      },
      {
        "name": "Leh Palace (लेह पैलेस)",
        "image": "assets/images/leh_palace.jpg",
        "description":
        "Historic palace resembling Potala Palace of Lhasa.\n\n"
            "ऐतिहासिक महल, जो ल्हासा के पोताला पैलेस जैसा दिखता है।"
      },
      {
        "name": "Hemis Monastery (हेमिस मठ)",
        "image": "assets/images/hemis_monastery.jpg",
        "description":
        "Famous Buddhist monastery known for Hemis festival.\n\n"
            "हेमिस उत्सव के लिए प्रसिद्ध बौद्ध मठ।"
      },
      {
        "name": "Pangong Lake (पैंगोंग झील)",
        "image": "assets/images/pangong_lake.jpg",
        "description":
        "Scenic high-altitude lake, partially in Tibet.\n\n"
            "सुंदर ऊँचाई वाली झील, जिसका एक हिस्सा तिब्बत में है।"
      },
      {
        "name": "Nubra Valley (नुब्रा घाटी)",
        "image": "assets/images/nubra_valley.jpg",
        "description":
        "Famous valley with sand dunes and Bactrian camels.\n\n"
            "रेतीले टीलों और बक्ट्रियन ऊँटों वाली प्रसिद्ध घाटी।"
      },
    ],
    "Kargil (कारगिल)": [
      {
        "name": "Kargil War Memorial (कारगिल युद्ध स्मारक)",
        "image": "assets/images/kargil_war_memorial.jpg",
        "description":
        "Memorial honoring soldiers of Kargil war.\n\n"
            "कारगिल युद्ध के सैनिकों को समर्पित स्मारक।"
      },
      {
        "name": "Mulbekh Monastery (मुल्बेक मठ)",
        "image": "assets/images/mulbekh_monastery.jpg",
        "description":
        "Ancient monastery with Buddha statue carved in rock.\n\n"
            "पुराना मठ, जिसमें चट्टान पर खुदा हुआ बुद्ध की मूर्ति है।"
      },
      {
        "name": "Drass Valley (द्रास घाटी)",
        "image": "assets/images/drass_valley.jpg",
        "description":
        "Known as the second coldest inhabited place in the world.\n\n"
            "दुनिया का दूसरा सबसे ठंडा बसा हुआ क्षेत्र के रूप में जाना जाता है।"
      },
      {
        "name": "Tiger Hill (टाइगर हिल)",
        "image": "assets/images/tiger_hill.jpg",
        "description":
        "Famous for sunrise view over Kargil town.\n\n"
            "कारगिल शहर पर सूर्योदय का दृश्य देखने के लिए प्रसिद्ध।"
      },
      {
        "name": "Batalik Sector (बाटालिक सेक्टर)",
        "image": "assets/images/batalik.jpg",
        "description":
        "Important sector from Kargil war with scenic beauty.\n\n"
            "कारगिल युद्ध का महत्वपूर्ण क्षेत्र, प्राकृतिक सुंदरता के साथ।"
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
