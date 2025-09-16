import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class DelhiDistrictsPage extends StatefulWidget {
  @override
  _DelhiDistrictsPageState createState() => _DelhiDistrictsPageState();
}

class _DelhiDistrictsPageState extends State<DelhiDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "New Delhi (नई दिल्ली)",
      "image": "assets/DelhiDistrictsImages/new_delhi.jpeg",
      "description":
      "New Delhi is the capital city of India, known for government buildings and historical monuments. "
          "नई दिल्ली भारत की राजधानी है, जो सरकारी भवनों और ऐतिहासिक स्मारकों के लिए प्रसिद्ध है।"
    },
    {
      "name": "North Delhi (उत्तरी दिल्ली)",
      "image": "assets/DelhiDistrictsImages/north_delhi.jpeg",
      "description":
      "North Delhi is known for markets, temples, and cultural heritage. "
          "उत्तरी दिल्ली अपने बाजारों, मंदिरों और सांस्कृतिक विरासत के लिए जाना जाता है।"
    },
    {
      "name": "South Delhi (दक्षिण दिल्ली)",
      "image": "assets/DelhiDistrictsImages/south_delhi.jpeg",
      "description":
      "South Delhi is famous for parks, shopping areas, and educational institutions. "
          "दक्षिण दिल्ली अपने पार्कों, शॉपिंग क्षेत्रों और शैक्षणिक संस्थानों के लिए प्रसिद्ध है।"
    },
    {
      "name": "East Delhi (पूर्वी दिल्ली)",
      "image": "assets/DelhiDistrictsImages/east_delhi.jpeg",
      "description":
      "East Delhi is known for residential areas, markets, and industrial hubs. "
          "पूर्वी दिल्ली अपने आवासीय क्षेत्र, बाजार और औद्योगिक केंद्रों के लिए प्रसिद्ध है।"
    },
    {
      "name": "West Delhi (पश्चिमी दिल्ली)",
      "image": "assets/DelhiDistrictsImages/west_delhi.jpeg",
      "description":
      "West Delhi is famous for cultural sites, schools, and urban development. "
          "पश्चिमी दिल्ली अपने सांस्कृतिक स्थलों, स्कूलों और शहरी विकास के लिए जाना जाता है।"
    },
    {
      "name": "Central Delhi (केंद्रीय दिल्ली)",
      "image": "assets/DelhiDistrictsImages/central_delhi.jpeg",
      "description":
      "Central Delhi hosts government offices, historic landmarks, and commercial centers. "
          "केंद्रीय दिल्ली में सरकारी कार्यालय, ऐतिहासिक स्थल और वाणिज्यिक केंद्र स्थित हैं।"
    },
    {
      "name": "North East Delhi (उत्तर-पूर्वी दिल्ली)",
      "image": "assets/DelhiDistrictsImages/north_east_delhi.jpeg",
      "description":
      "North East Delhi is known for traditional markets, temples, and dense residential areas. "
          "उत्तर-पूर्वी दिल्ली अपने पारंपरिक बाजारों, मंदिरों और घनी आबादी वाले इलाकों के लिए जाना जाता है।"
    },
    {
      "name": "North West Delhi (उत्तर-पश्चिमी दिल्ली)",
      "image": "assets/DelhiDistrictsImages/north_west_delhi.jpeg",
      "description":
      "North West Delhi is famous for industrial zones, residential areas, and schools. "
          "उत्तर-पश्चिमी दिल्ली अपने औद्योगिक क्षेत्रों, आवासीय इलाकों और स्कूलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "South East Delhi (दक्षिण-पूर्वी दिल्ली)",
      "image": "assets/DelhiDistrictsImages/south_east_delhi.jpeg",
      "description":
      "South East Delhi is known for commercial hubs, parks, and cultural landmarks. "
          "दक्षिण-पूर्वी दिल्ली अपने वाणिज्यिक केंद्रों, पार्कों और सांस्कृतिक स्थलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "South West Delhi (दक्षिण-पश्चिमी दिल्ली)",
      "image": "assets/DelhiDistrictsImages/south_west_delhi.jpeg",
      "description":
      "South West Delhi is famous for urban development, universities, and residential sectors. "
          "दक्षिण-पश्चिमी दिल्ली अपने शहरी विकास, विश्वविद्यालयों और आवासीय क्षेत्रों के लिए जाना जाता है।"
    },
    {
      "name": "Shahdara (शाहदरा)",
      "image": "assets/DelhiDistrictsImages/shahdara.jpeg",
      "description":
      "Shahdara is known for historic sites, busy markets, and residential areas. "
          "शाहदरा अपने ऐतिहासिक स्थलों, व्यस्त बाजारों और आवासीय इलाकों के लिए प्रसिद्ध है।"
    },
  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filteredDistricts = districts.where((d) {
      final name = d["name"]!.toLowerCase();
      final desc = d["description"]!.toLowerCase();
      final query = searchQuery.toLowerCase();
      return name.contains(query) || desc.contains(query);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Delhi Districts (दिल्ली जिले)"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search District...",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredDistricts.length,
        itemBuilder: (context, index) {
          final d = filteredDistricts[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                d["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(d["name"]!),
              subtitle: Text(
                d["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: d["name"]!,
                      districtImage: d["image"]!,
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
