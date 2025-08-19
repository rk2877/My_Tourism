import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> districtPlaces = {
    "Itanagar": [
      {
        "name": "Ita Fort",
        "image": "assets/images/ita_fort.jpg",
        "description": "Ita Fort, built in the 14th–15th century, is an important historical site in Itanagar and one of the oldest structures in Arunachal Pradesh."
      },
      {
        "name": "Ganga Lake",
        "image": "assets/images/ganga_lake.jpg",
        "description": "Also known as Gyakar Sinyi, Ganga Lake is a serene natural lake surrounded by lush green forests."
      },
    ],
    "Tawang": [
      {
        "name": "Tawang Monastery",
        "image": "assets/images/tawang_monastery.jpg",
        "description": "The largest monastery in India and the second largest in the world, Tawang Monastery is a spiritual and cultural center."
      },
      {
        "name": "Sela Pass",
        "image": "assets/images/sela_pass.jpg",
        "description": "A high-altitude mountain pass known for breathtaking views and the sacred Sela Lake."
      },
    ],
    "Ziro": [
      {
        "name": "Ziro Valley",
        "image": "assets/images/ziro_valley.jpg",
        "description": "Known for its lush green paddy fields and the Apatani tribal culture, Ziro Valley is a UNESCO World Heritage Site."
      },
      {
        "name": "Talley Valley Wildlife Sanctuary",
        "image": "assets/images/talley_valley.jpg",
        "description": "A biodiversity hotspot home to rare species of flora and fauna."
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final places = districtPlaces[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("$districtName Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(place["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(place["name"]!),
              subtitle: Text(
                place["description"]!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceDetailsPage(
                      placeName: place["name"]!,
                      imagePath: place["image"]!,
                      description: place["description"]!,
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
