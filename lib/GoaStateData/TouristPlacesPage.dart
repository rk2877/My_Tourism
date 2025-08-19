import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  // Sample tourist places for each district
  final Map<String, List<Map<String, String>>> touristPlaces = {
    "North Goa (उत्तर गोवा)": [
      {
        "name": "Baga Beach (बागा बीच)",
        "image": "assets/images/north_goa.jpg",
        "description": "Baga Beach is popular for water sports and nightlife. बागा बीच अपने जल क्रीड़ाओं और नाइटलाइफ़ के लिए प्रसिद्ध है।"
      },
      {
        "name": "Fort Aguada (फोर्ट अगुआड़ा)",
        "image": "assets/images/south_goa.jpg",
        "description": "A 17th-century Portuguese fort with lighthouse. 17वीं सदी का पुर्तगाली किला जिसमें लाइटहाउस है।"
      },
      {
        "name": "Calangute Beach (कलंगुट बीच)",
        "image": "assets/images/calangute_beach.jpg",
        "description": "Known as the 'Queen of Beaches'. 'बीच की रानी' के नाम से मशहूर।"
      },
      {
        "name": "Anjuna Beach (अंजुना बीच)",
        "image": "assets/images/anjuna_beach.jpg",
        "description": "Famous for trance parties and flea markets. ट्रांस पार्टियों और फ्ले मार्केट के लिए मशहूर।"
      },
      {
        "name": "Chapora Fort (चपोरा किला)",
        "image": "assets/images/chapora_fort.jpg",
        "description": "Offers panoramic view of the Arabian Sea. अरब सागर का मनोरम दृश्य प्रदान करता है।"
      },
    ],
    "South Goa (दक्षिण गोवा)": [
      {
        "name": "Palolem Beach (पालोलेम बीच)",
        "image": "assets/images/palolem_beach.jpg",
        "description": "A serene beach with calm waters. शांत पानी वाला सुंदर बीच।"
      },
      {
        "name": "Colva Beach (कोलवा बीच)",
        "image": "assets/images/colva_beach.jpg",
        "description": "Famous for long white sand stretch. लंबे सफेद रेत के किनारे के लिए मशहूर।"
      },
      {
        "name": "Cabo de Rama Fort (काबो डी रामा किला)",
        "image": "assets/images/cabo_de_rama.jpg",
        "description": "Historic fort with ocean view. समुद्र के दृश्य वाला ऐतिहासिक किला।"
      },
      {
        "name": "Agonda Beach (अगोंडा बीच)",
        "image": "assets/images/agonda_beach.jpg",
        "description": "Ideal for solitude and turtle nesting. एकांत और कछुए के घोंसले के लिए आदर्श।"
      },
      {
        "name": "Butterfly Beach (बटरफ्लाई बीच)",
        "image": "assets/images/butterfly_beach.jpg",
        "description": "Hidden gem with crystal clear waters. साफ पानी वाला छिपा हुआ रत्न।"
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final places = touristPlaces[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("Tourist Places in $districtName")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                place["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(place["name"]!, style: TextStyle(fontWeight: FontWeight.bold)),
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
