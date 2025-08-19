import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class JharkhandTouristPlacesPage extends StatelessWidget {
  final String districtName;

  JharkhandTouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> placesData = {
    "Ranchi": [
      {"name": "Dassam Falls", "image": "assets/images/dassam.jpg", "desc": "A scenic waterfall located 34 km from Ranchi."},
      {"name": "Rock Garden", "image": "assets/images/rockgarden.jpg", "desc": "Beautiful garden with scenic views."},
      {"name": "Tagore Hill", "image": "assets/images/tagorehill.jpg", "desc": "Historic hill named after Rabindranath Tagore."},
    ],
    "Jamshedpur": [
      {"name": "Jubilee Park", "image": "assets/images/jubileepark.jpg", "desc": "A large park with fountains and gardens."},
      {"name": "Dimna Lake", "image": "assets/images/dimnalake.jpg", "desc": "A scenic lake ideal for boating."},
    ],
    "Dhanbad": [
      {"name": "Maithon Dam", "image": "assets/images/maithon.jpg", "desc": "Popular picnic spot with boating facilities."},
      {"name": "Topchanchi Lake", "image": "assets/images/topchanchi.jpg", "desc": "Lake surrounded by lush greenery."},
    ],
    "Hazaribagh": [
      {"name": "Hazaribagh National Park", "image": "assets/images/hazaribaghpark.jpg", "desc": "Wildlife sanctuary with rich flora and fauna."},
      {"name": "Canary Hill", "image": "assets/images/canaryhill.jpg", "desc": "Popular hill spot with trekking trails."},
    ],
    "Deoghar": [
      {"name": "Baidyanath Temple", "image": "assets/images/baidyanath.jpg", "desc": "Famous Jyotirlinga temple."},
      {"name": "Trikuta Hills", "image": "assets/images/trikuta.jpg", "desc": "Hill range with scenic beauty."},
    ],
  };

  @override
  Widget build(BuildContext context) {
    final places = placesData[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("$districtName Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(place["image"]!, width: 80, height: 80, fit: BoxFit.cover),
              title: Text(place["name"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      placeName: place["name"]!,
                      imagePath: place["image"]!,
                      description: place["desc"]!,
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
