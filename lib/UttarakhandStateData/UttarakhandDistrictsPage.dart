import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class UttarakhandDistrictsPage extends StatefulWidget {
  @override
  _UttarakhandDistrictsPageState createState() => _UttarakhandDistrictsPageState();
}

class _UttarakhandDistrictsPageState extends State<UttarakhandDistrictsPage> {
  final List<Map<String, String>> allDistricts = [
    {
      "name": "Dehradun (देहरादून)",
      "description": "Capital city of Uttarakhand, famous for its pleasant climate and educational institutions. उत्तराखंड की राजधानी, अपने सुखद मौसम और शैक्षिक संस्थानों के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/dehradun.jpeg",
    },
    {
      "name": "Haridwar (हरिद्वार)",
      "description": "One of the holiest cities in India, famous for Ganga Aarti. भारत के पवित्रतम शहरों में से एक, गंगा आरती के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/haridwar.jpeg",
    },
    {
      "name": "Nainital (नैनीताल)",
      "description": "Known for Naini Lake and scenic beauty. नैनी झील और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/nainital.jpeg",
    },
    {
      "name": "Pauri Garhwal (पौड़ी गढ़वाल)",
      "description": "Famous for scenic mountains and temples. पहाड़ों और मंदिरों के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/pauri_garhwal.jpeg",
    },
    {
      "name": "Rudraprayag (रुद्रप्रयाग)",
      "description": "Known for confluence of rivers and natural beauty. नदियों के संगम और प्राकृतिक सुंदरता के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/rudraprayag.jpeg",
    },
    {
      "name": "Chamoli (चमोली)",
      "description": "Famous for religious sites, adventure tourism, and glaciers. धार्मिक स्थल, एडवेंचर टूरिज्म और ग्लेशियर्स के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/chamoli.jpeg",
    },
    {
      "name": "Champawat (चम्पावत)",
      "description": "Known for historical temples and scenic views. ऐतिहासिक मंदिर और सुंदर दृश्य के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/champawat.jpeg",
    },
    {
      "name": "Tehri Garhwal (टिहरी गढ़वाल)",
      "description": "Famous for Tehri Dam and hill stations. टिहरी बांध और हिल स्टेशन के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/tehri_garhwal.jpeg",
    },
    {
      "name": "Udham Singh Nagar (उधम सिंह नगर)",
      "description": "Known for agriculture and industrial hubs. कृषि और औद्योगिक केंद्रों के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/udham_singh_nagar.jpeg",
    },
    {
      "name": "Uttarkashi (उत्तरकाशी)",
      "description": "Famous for pilgrimage sites and mountains. तीर्थ स्थल और पहाड़ों के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/uttarkashi.jpeg",
    },
    {
      "name": "Bageshwar (बागेश्वर)",
      "description": "Known for rivers and cultural heritage. नदियों और सांस्कृतिक विरासत के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/bageshwar.jpeg",
    },
    {
      "name": "Almora (अल्मोड़ा)",
      "description": "Famous for scenic beauty and handicrafts. प्राकृतिक सुंदरता और हस्तशिल्प के लिए प्रसिद्ध।",
      "image": "assets/UttarakhandDistrictsImages/almora.jpeg",
    },
  ];

  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;
  }

  void filterSearch(String query) {
    setState(() {
      filteredDistricts = allDistricts.where((district) {
        final name = district["name"]!.toLowerCase();
        return name.contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uttarakhand Districts (उत्तराखंड जिले)")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search District (जिला खोजें)...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: filterSearch,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredDistricts.length,
              itemBuilder: (context, index) {
                final district = filteredDistricts[index];
                return Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        district["image"]!,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.image_not_supported, size: 60);
                        },
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
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TouristPlacesPage(
                            districtName: district["name"]!, touristPlaces: [],
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
