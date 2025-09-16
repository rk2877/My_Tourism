import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class LakshadweepDistrictsPage extends StatefulWidget {
  @override
  _LakshadweepDistrictsPageState createState() =>
      _LakshadweepDistrictsPageState();
}

class _LakshadweepDistrictsPageState extends State<LakshadweepDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Agatti (अगत्ती)",
      "image":
      "https://cdn.s3waas.gov.in/s358238e9ae2dd305d79c2ebc8c1883422/uploads/bfi_thumb/2018031583-1-olw9sscnbbyeyudrkwyrrvn619hatjjemh11p1kdsi.jpg",
      "description":
      "Agatti is a beautiful island known for its lagoons and coral reefs. "
          "अगत्ती अपनी लैगून और मूंगे की चट्टानों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Amini (अमिनी)",
      "image":
      "https://s7ap1.scene7.com/is/image/incredibleindia/kalpeni-kavaratti-lakshwadeep-3-musthead-hero?qlt=82&ts=1727011703260",
      "description":
      "Amini is known for its coir products and cultural heritage. "
          "अमिनी अपने नारियल रस्सी उत्पाद और सांस्कृतिक धरोहर के लिए प्रसिद्ध है।"
    },
    {
      "name": "Andrott (अंद्रोत्त)",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIjGBVUpyK5dQhgrEKCGS9tDjwrChe07QmZA&s",
      "description":
      "Andrott is the largest island, famous for ancient mosques. "
          "अंद्रोत्त सबसे बड़ा द्वीप है, प्राचीन मस्जिदों के लिए प्रसिद्ध।"
    },
    {
      "name": "Bitra (बित्रा)",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrmYZsQ_zrh1KZtC6tNfnL8l5pulhhIZiYvg&s",
      "description":
      "Bitra is the smallest inhabited island in Lakshadweep. "
          "बित्रा लक्षद्वीप का सबसे छोटा आबाद द्वीप है।"
    },
    {
      "name": "Chetlat (चेतलत)",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIjGBVUpyK5dQhgrEKCGS9tDjwrChe07QmZA&s",
      "description":
      "Chetlat is known for its traditional weaving and coconut farming. "
          "चेतलत पारंपरिक बुनाई और नारियल खेती के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kadmat (कदमत)",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIjGBVUpyK5dQhgrEKCGS9tDjwrChe07QmZA&s",
      "description":
      "Kadmat is popular for water sports and lagoons. "
          "कदमत जल क्रीड़ा और लैगून के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kalpeni (कल्पेनी)",
      "image":
      "https://s7ap1.scene7.com/is/image/incredibleindia/kalpeni-kavaratti-lakshwadeep-3-musthead-hero?qlt=82&ts=1727011703260",
      "description":
      "Kalpeni is famous for its scenic beauty and coral debris. "
          "कल्पेनी अपनी प्राकृतिक सुंदरता और मूंगे के टुकड़ों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kavaratti (कावरत्ती)",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqsKWD3XwU4Nqv0IB1amqNeapnQh-OhjGoWw&s",
      "description":
      "Kavaratti is the capital, famous for Ujra Mosque and lagoons. "
          "कावरत्ती राजधानी है, उजरा मस्जिद और लैगून के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kiltan (किल्तान)",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn-7gned5dN8v2b_YWEFFovuYKNKmCTmiELA&s",
      "description":
      "Kiltan is known for its folk dances and culture. "
          "किल्तान अपने लोक नृत्य और संस्कृति के लिए प्रसिद्ध है।"
    },
    {
      "name": "Minicoy (मिनिकॉय)",
      "image":
      "https://m.media-amazon.com/images/I/81WKzOn1v+L._UF1000,1000_QL80_.jpg",
      "description":
      "Minicoy is famous for its lighthouse and cultural ties with Maldives. "
          "मिनिकॉय अपने लाइटहाउस और मालदीव से सांस्कृतिक संबंधों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Bangaram (बंगाराम)",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5tACfH4varunz2iz5JQ7_bDOk-QAPzjUFvg&s",
      "description":
      "Bangaram is a tourist paradise with golden beaches. "
          "बंगाराम सुनहरी बीच वाला एक पर्यटन स्वर्ग है।"
    },
  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filteredDistricts = districts
        .where((d) =>
        d["name"]!.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lakshadweep Districts (लक्षद्वीप)"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          // 🔍 Search Box
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search District / Island...",
                prefixIcon: Icon(Icons.search),
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

          // 📋 List
          Expanded(
            child: ListView.builder(
              itemCount: filteredDistricts.length,
              itemBuilder: (context, index) {
                final d = filteredDistricts[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.network(
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
          ),
        ],
      ),
    );
  }
}
