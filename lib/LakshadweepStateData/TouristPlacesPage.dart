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
    "Agatti (अगत्ती)": [
      {
        "name": "Agatti Island Lagoon (अगत्ती द्वीप लैगून)",
        "image": "https://cdn.s3waas.gov.in/s358238e9ae2dd305d79c2ebc8c1883422/uploads/bfi_thumb/2018031583-1-olw9sscnbbyeyudrkwyrrvn619hatjjemh11p1kdsi.jpg",
        "description": "Famous for snorkeling, diving and marine life.\n\nस्नॉर्कलिंग, डाइविंग और समुद्री जीवन के लिए प्रसिद्ध।"
      },
      {
        "name": "Agatti Beach (अगत्ती बीच)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/1-%20water-jet-skiing-bangaram-Island-lakshadweep-state-hero?qlt=82&ts=1726667570716",
        "description": "Crystal clear waters and white sandy beach.\n\nक्रिस्टल साफ पानी और सफेद रेत वाला सुंदर बीच।"
      },
    ],
    "Kavaratti (कावरत्ती)": [
      {
        "name": "Ujra Mosque (उजरा मस्जिद)",
        "image": "https://i.redd.it/6c2og0ag1dbc1.jpeg",
        "description": "Historic mosque known for its architecture.\n\nस्थापत्य कला के लिए प्रसिद्ध ऐतिहासिक मस्जिद।"
      },
      {
        "name": "Kavaratti Beach (कावरत्ती बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqsKWD3XwU4Nqv0IB1amqNeapnQh-OhjGoWw&s",
        "description": "Beautiful white sandy beach with clear waters.\n\nसाफ़ पानी और सुंदर सफेद रेत वाला समुद्र तट।"
      },
    ],
    "Andrott (अंद्रोत्त)": [
      {
        "name": "Juma Masjid (जुमा मस्जिद)",
        "image": "https://media1.thrillophilia.com/filestore/vl2zep81cnlbeoge48catt5t3kdy_Cheraman_jumamasjid.JPG",
        "description": "Ancient mosque with historical importance.\n\nऐतिहासिक महत्व वाली प्राचीन मस्जिद।"
      },
    ],
    "Amini (अमिनी)": [
      {
        "name": "Amini Beach (अमिनी बीच)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/kalpeni-kavaratti-lakshwadeep-3-musthead-hero?qlt=82&ts=1727011703260",
        "description": "Known for coir products and scenic views.\n\nनारियल रस्सी उत्पाद और प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
    ],
    "Bitra (बित्रा)": [
      {
        "name": "Bitra Village (बित्रा गाँव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrmYZsQ_zrh1KZtC6tNfnL8l5pulhhIZiYvg&s",
        "description": "Smallest inhabited island with a temple dedicated to goddess.\n\nसबसे छोटा आबाद द्वीप, देवी को समर्पित मंदिर के साथ।"
      },
    ],
    "Chetlat (चेतलत)": [
      {
        "name": "Chetlat Beach (चेतलत बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIjGBVUpyK5dQhgrEKCGS9tDjwrChe07QmZA&s",
        "description": "Beautiful beach famous for fishing and weaving.\n\nमछली पकड़ने और बुनाई के लिए प्रसिद्ध सुंदर बीच।"
      },
    ],
    "Kadmat (कदमत)": [
      {
        "name": "Kadmat Island Beach (कदमत द्वीप बीच)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/kalpeni-kavaratti-lakshwadeep-3-musthead-hero?qlt=82&ts=1727011703260",
        "description": "Popular for water sports and scuba diving.\n\nजल क्रीड़ा और स्कूबा डाइविंग के लिए प्रसिद्ध।"
      },
    ],
    "Kalpeni (कल्पेनी)": [
      {
        "name": "Kalpeni Lagoon (कल्पेनी लैगून)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/kalpeni-kavaratti-lakshwadeep-3-musthead-hero?qlt=82&ts=1727011703260",
        "description": "Famous for coral debris and natural beauty.\n\nमूंगे के टुकड़ों और प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
    ],
    "Kiltan (किल्तान)": [
      {
        "name": "Kiltan Beach (किल्तान बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn-7gned5dN8v2b_YWEFFovuYKNKmCTmiELA&s",
        "description": "Known for folk dances and cultural beauty.\n\nलोक नृत्य और सांस्कृतिक सुंदरता के लिए प्रसिद्ध।"
      },
    ],
    "Minicoy (मिनिकॉय)": [
      {
        "name": "Minicoy Lighthouse (मिनिकॉय लाइटहाउस)",
        "image": "https://m.media-amazon.com/images/I/81WKzOn1v+L._UF1000,1000_QL80_.jpg",
        "description": "Famous for its 19th century lighthouse and Maldivian culture.\n\n19वीं सदी के लाइटहाउस और मालदीव संस्कृति के लिए प्रसिद्ध।"
      },
    ],
    "Bangaram (बंगाराम)": [
      {
        "name": "Bangaram Beach (बंगाराम बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5tACfH4varunz2iz5JQ7_bDOk-QAPzjUFvg&s",
        "description": "Tourist paradise with golden beaches.\n\nपर्यटन का स्वर्ग, सुनहरी बीच के साथ।"
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
              leading: Image.network(p["image"]!, width: 60, height: 60, fit: BoxFit.cover),
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
