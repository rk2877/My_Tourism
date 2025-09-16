import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class KeralaDistrictsPage extends StatefulWidget {
  @override
  _KeralaDistrictsPageState createState() => _KeralaDistrictsPageState();
}

class _KeralaDistrictsPageState extends State<KeralaDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Thiruvananthapuram (तिरुवनंतपुरम)",
      "description":
      "Capital city of Kerala, famous for Padmanabhaswamy Temple. केरल की राजधानी, पद्मनाभस्वामी मंदिर के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/thiruvananthapuram.jpeg",
    },
    {
      "name": "Kollam (कोल्लम)",
      "description":
      "Known for Ashtamudi Lake and cashew industry. अष्टमुडी झील और काजू उद्योग के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/kollam.jpeg",
    },
    {
      "name": "Pathanamthitta (पथनमथिट्टा)",
      "description":
      "Known as the pilgrim capital of Kerala, famous for Sabarimala Temple. तीर्थ नगरी, सबरीमाला मंदिर के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/pathanamthitta.jpeg",
    },
    {
      "name": "Alappuzha (अलप्पुझा)",
      "description":
      "Known as Venice of the East, famous for backwaters and houseboats. पूरब का वेनिस, बैकवाटर और हाउसबोट्स के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/alappuzha.jpeg",
    },
    {
      "name": "Kottayam (कोट्टायम)",
      "description":
      "Famous for literacy and rubber plantations. साक्षरता और रबर बागानों के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/kottayam.jpeg",
    },
    {
      "name": "Idukki (इडुक्की)",
      "description":
      "Hill district famous for spice plantations and dams. पहाड़ी जिला, मसाला बागान और बांधों के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/idukki.jpeg",
    },
    {
      "name": "Ernakulam (एर्नाकुलम / कोच्चि)",
      "description":
      "Known as Queen of the Arabian Sea, commercial hub of Kerala. अरब सागर की रानी, केरल का वाणिज्यिक केंद्र।",
      "image": "assets/KeralaDistrictsImages/ernakulam.jpeg",
    },
    {
      "name": "Thrissur (त्रिशूर)",
      "description":
      "Cultural capital of Kerala, famous for Thrissur Pooram festival. सांस्कृतिक राजधानी, त्रिशूर पूरम उत्सव के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/thrissur.jpeg",
    },
    {
      "name": "Palakkad (पालक्काड)",
      "description": "Known as the rice bowl of Kerala. केरल का चावल का कटोरा।",
      "image": "assets/KeralaDistrictsImages/palakkad.jpeg",
    },
    {
      "name": "Malappuram (मलप्पुरम)",
      "description":
      "Historic district famous for mosques and cultural heritage. ऐतिहासिक जिला, मस्जिदों और सांस्कृतिक धरोहर के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/malappuram.jpeg",
    },
    {
      "name": "Kozhikode (कोझिकोड / कालीकट)",
      "description":
      "Historic port city famous for spices and beaches. ऐतिहासिक बंदरगाह शहर, मसालों और समुद्र तटों के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/kozhikode.jpeg",
    },
    {
      "name": "Wayanad (वायनाड)",
      "description":
      "Hill district famous for wildlife sanctuaries and waterfalls. पहाड़ी जिला, वन्यजीव अभयारण्य और झरनों के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/wayanad.jpeg",
    },
    {
      "name": "Kannur (कन्नूर)",
      "description":
      "Known for Theyyam ritual dance and handloom industry. थेय्यम नृत्य और हथकरघा उद्योग के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/kannur.jpeg",
    },
    {
      "name": "Kasaragod (कासरगोड)",
      "description":
      "Northernmost district, famous for Bekal Fort and beaches. उत्तरी जिला, बेकल किला और समुद्र तटों के लिए प्रसिद्ध।",
      "image": "assets/KeralaDistrictsImages/kasaragod.jpeg",
    },
  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filteredDistricts = districts
        .where((district) =>
        district["name"]!.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Kerala Districts (केरल के जिले)"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search District...",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
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
          final district = filteredDistricts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                district["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(district["name"]!),
              subtitle: Text(district["description"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: district["name"]!,
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
