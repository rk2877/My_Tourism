import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  // Tourist places with internet images
  final Map<String, List<Map<String, String>>> touristPlaces = {
    "North Goa (उत्तर गोवा)": [
      {
        "name": "Baga Beach (बागा बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/3e/36/95/baga-sea-beach.jpg",
        "description": "Baga Beach is popular for water sports and nightlife. बागा बीच अपने जल क्रीड़ाओं और नाइटलाइफ़ के लिए प्रसिद्ध है।"
      },
      {
        "name": "Fort Aguada (फोर्ट अगुआड़ा)",
        "image": "https://cdn.thegoavilla.com/static/img/articles/fort-aguada.jpg",
        "description": "A 17th-century Portuguese fort with lighthouse. 17वीं सदी का पुर्तगाली किला जिसमें लाइटहाउस है।"
      },
      {
        "name": "Calangute Beach (कलंगुट बीच)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/calangute-beach-goa-7-musthead-hero?qlt=82&ts=1742168166188",
        "description": "Known as the 'Queen of Beaches'. 'बीच की रानी' के नाम से मशहूर।"
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
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  place["image"]!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      width: 60,
                      height: 60,
                      child: Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 60,
                      height: 60,
                      color: Colors.grey[300],
                      child: Icon(Icons.broken_image, color: Colors.grey[700]),
                    );
                  },
                ),
              ),
              title: Text(place["name"]!, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                place["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
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
