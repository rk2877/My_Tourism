import 'package:flutter/material.dart';
import 'touristplacespage.dart';

class District {
  final String name;
  final String imagePath;
  final String description;

  District(this.name, this.imagePath, this.description);
}

class HimachalPradeshDistrictsPage extends StatefulWidget {
  const HimachalPradeshDistrictsPage({super.key});

  @override
  _HimachalPradeshDistrictsPageState createState() =>
      _HimachalPradeshDistrictsPageState();
}

class _HimachalPradeshDistrictsPageState
    extends State<HimachalPradeshDistrictsPage> {
  final List<District> districts = [
    District(
      "Bilaspur (बिलासपुर)",
      "assets/HimachalPradeshDistrictsImages/bilaspur.jpeg",
      "Bilaspur is known for Gobind Sagar Lake and Bhakra Dam. "
          "बिलासपुर गोविंद सागर झील और भाखड़ा डैम के लिए प्रसिद्ध है।",
    ),
    District(
      "Chamba (चंबा)",
      "assets/HimachalPradeshDistrictsImages/chamba.jpeg",
      "Chamba is famous for its ancient temples and natural beauty. "
          "चंबा अपने प्राचीन मंदिरों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
    ),
    District(
      "Hamirpur (हमीरपुर)",
      "assets/HimachalPradeshDistrictsImages/hamirpur.jpeg",
      "Hamirpur is known for education centers and picturesque landscapes. "
          "हमीरपुर शिक्षा केंद्रों और सुंदर प्राकृतिक दृश्यों के लिए जाना जाता है।",
    ),
    District(
      "Kangra (कांगड़ा)",
      "assets/HimachalPradeshDistrictsImages/kangra.jpeg",
      "Kangra is home to Kangra Fort and Masroor Rock Cut Temples. "
          "कांगड़ा कांगड़ा किला और मस्रूर रॉक कट मंदिरों के लिए प्रसिद्ध है।",
    ),
    District(
      "Kinnaur (किन्नौर)",
      "assets/HimachalPradeshDistrictsImages/kinnaur.jpeg",
      "Kinnaur is famous for apples, mountains, and Kinnauri culture. "
          "किन्नौर अपने सेब, पहाड़ों और किन्नौरी संस्कृति के लिए प्रसिद्ध है।",
    ),
    District(
      "Kullu (कुल्लू)",
      "assets/HimachalPradeshDistrictsImages/kullu.jpeg",
      "Kullu is known for the Kullu Dussehra festival and scenic valleys. "
          "कुल्लू अपने दशहरा उत्सव और सुंदर घाटियों के लिए प्रसिद्ध है।",
    ),
    District(
      "Lahaul and Spiti (लाहौल और स्पीति)",
      "assets/HimachalPradeshDistrictsImages/lahaul_spiti.jpeg",
      "Lahaul & Spiti is famous for high-altitude monasteries and cold desert landscapes. "
          "लाहौल और स्पीति ऊँचाई वाले मठों और ठंडे रेगिस्तानी परिदृश्यों के लिए प्रसिद्ध है।",
    ),
    District(
      "Mandi (मंडी)",
      "assets/HimachalPradeshDistrictsImages/mandi.jpeg",
      "Mandi is called the 'Varanasi of the Hills' due to its temples. "
          "मंडी को अपने मंदिरों के कारण 'पहाड़ों का वाराणसी' कहा जाता है।",
    ),
    District(
      "Shimla (शिमला)",
      "assets/HimachalPradeshDistrictsImages/shimla.jpeg",
      "Shimla is the capital and a popular hill station with colonial heritage. "
          "शिमला राजधानी और औपनिवेशिक धरोहर वाला प्रसिद्ध हिल स्टेशन है।",
    ),
    District(
      "Sirmaur (सिरमौर)",
      "assets/HimachalPradeshDistrictsImages/sirmaur.jpeg",
      "Sirmaur is famous for Renuka Lake and apple orchards. "
          "सिरमौर रेनुका झील और सेब के बागों के लिए प्रसिद्ध है।",
    ),
    District(
      "Solan (सोलन)",
      "assets/HimachalPradeshDistrictsImages/solan.jpeg",
      "Solan is known as the Mushroom City of India and has many industries. "
          "सोलन को भारत का मशरूम शहर कहा जाता है और यहाँ कई उद्योग हैं।",
    ),
    District(
      "Una (ऊना)",
      "assets/HimachalPradeshDistrictsImages/una.jpeg",
      "Una is known for Chintpurni Temple and proximity to Punjab. "
          "ऊना चिंतपूर्णी मंदिर और पंजाब की निकटता के लिए प्रसिद्ध है।",
    ),
  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filteredDistricts = districts
        .where((d) =>
    d.name.toLowerCase().contains(searchQuery.toLowerCase()) ||
        d.description.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text("Himachal Pradesh Districts (हिमाचल प्रदेश जिले)")),
      body: Column(
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: "Search District / जिला खोजें",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          // 📋 Filtered List
          Expanded(
            child: ListView.builder(
              itemCount: filteredDistricts.length,
              itemBuilder: (context, index) {
                final district = filteredDistricts[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.asset(
                      district.imagePath,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(district.name),
                    subtitle: Text(
                      district.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TouristPlacesPage(
                            districtName: district.name,
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
