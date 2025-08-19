import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> placesData = {
    "Agra": [
      {"name": "Taj Mahal", "image": "assets/images/tajmahal.jpg", "desc": "The Taj Mahal is a UNESCO World Heritage Site and one of the Seven Wonders of the World."},
      {"name": "Agra Fort", "image": "assets/images/agrafort.jpg", "desc": "A majestic Mughal fort and UNESCO World Heritage Site."},
      {"name": "Mehtab Bagh", "image": "assets/images/mehtabbagh.jpg", "desc": "A beautiful garden opposite the Taj Mahal."},
      {"name": "Fatehpur Sikri", "image": "assets/images/fatehpursikri.jpg", "desc": "A historic city built by Emperor Akbar."},
      {"name": "Itmad-ud-Daulah", "image": "assets/images/itmad.jpg", "desc": "Known as the Baby Taj."},
      {"name": "Akbar's Tomb", "image": "assets/images/akbartomb.jpg", "desc": "The final resting place of Mughal Emperor Akbar."},
      {"name": "Jama Masjid", "image": "assets/images/jamamasjid.jpg", "desc": "A historic mosque in Agra."},
      {"name": "Guru ka Tal", "image": "assets/images/gurukatal.jpg", "desc": "A historic Sikh pilgrimage site."},
      {"name": "Mariam's Tomb", "image": "assets/images/mariam.jpg", "desc": "The tomb of Mariam-uz-Zamani."},
      {"name": "Chini Ka Rauza", "image": "assets/images/chini.jpg", "desc": "A Persian-style tomb in Agra."},
    ],
    "Lucknow": [
      {"name": "Bara Imambara", "image": "assets/images/barab.jpg", "desc": "Famous for its central hall without beams."},
      {"name": "Chota Imambara", "image": "assets/images/chotab.jpg", "desc": "A beautiful monument also called the Imambara of Hussainabad."},
      {"name": "Rumi Darwaza", "image": "assets/images/rumi.jpg", "desc": "An iconic gateway of Lucknow."},
      {"name": "Hazratganj", "image": "assets/images/hazratganj.jpg", "desc": "A shopping area with colonial architecture."},
      {"name": "Ambedkar Park", "image": "assets/images/ambedkarpark.jpg", "desc": "A grand memorial park in Lucknow."},
      {"name": "Janeshwar Mishra Park", "image": "assets/images/janeshwar.jpg", "desc": "One of Asia's largest parks."},
      {"name": "Lucknow Zoo", "image": "assets/images/zoo.jpg", "desc": "A zoological garden in Lucknow."},
      {"name": "British Residency", "image": "assets/images/residency.jpg", "desc": "Historic site from 1857 revolt."},
      {"name": "Kukrail Forest", "image": "assets/images/kukrail.jpg", "desc": "Famous for crocodile breeding center."},
      {"name": "Constantia House", "image": "assets/images/constantia.jpg", "desc": "A historical building in Lucknow University."},
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
