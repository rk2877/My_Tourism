import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({required this.districtName});

  final Map<String, List<Map<String, String>>> places = {
    // --- Amritsar ---
    "Amritsar (अमृतसर)": [
      {
        "name": "Golden Temple (स्वर्ण मंदिर)",
        "description":
        "Spiritual center of Sikhism with serene Sarovar. सिख धर्म का आध्यात्मिक केंद्र, शांत सरोवर के साथ।",
        "image": "assets/images/golden_temple.jpg",
      },
      {
        "name": "Jallianwala Bagh (जलियांवाला बाग)",
        "description":
        "Memorial of 1919 massacre, a reminder of history. 1919 की त्रासदी का स्मारक, इतिहास की याद।",
        "image": "assets/images/jallianwala.jpg",
      },
      {
        "name": "Wagah Border (वाघा बॉर्डर)",
        "description":
        "Iconic Beating Retreat ceremony at Indo-Pak border. भारत-पाक सीमा पर प्रसिद्ध बीटिंग रिट्रीट परेड।",
        "image": "assets/images/wagah.jpg",
      },
      {
        "name": "Gobindgarh Fort (गोविंदगढ़ किला)",
        "description":
        "Historic fort with museums, shows and food streets. संग्रहालयों और सांस्कृतिक शो वाला ऐतिहासिक किला।",
        "image": "assets/images/gobindgarh.jpg",
      },
      {
        "name": "Partition Museum (पार्टीशन म्यूज़ियम)",
        "description":
        "Museum dedicated to 1947 Partition stories. 1947 के विभाजन की कहानियों को समर्पित संग्रहालय।",
        "image": "assets/images/partition_museum.jpg",
      },
    ],

    // --- Ludhiana ---
    "Ludhiana (लुधियाना)": [
      {
        "name": "PAU Museum (पी.ए.यू. संग्रहालय)",
        "description":
        "Rural heritage museum at Punjab Agricultural University. पंजाब एग्रीकल्चरल यूनिवर्सिटी का ग्रामीण विरासत संग्रहालय।",
        "image": "assets/images/pau_museum.jpg",
      },
      {
        "name": "Nehru Rose Garden (नेहरू रोज़ गार्डन)",
        "description":
        "Large city park with numerous rose varieties. ढेरों किस्मों के गुलाबों वाला बड़ा शहर पार्क।",
        "image": "assets/images/nehru_rose_garden.jpg",
      },
      {
        "name": "Rakh Bagh (राख बाग)",
        "description":
        "Family park with toy train and jogging tracks. टॉय ट्रेन और जॉगिंग ट्रैक वाला फैमिली पार्क।",
        "image": "assets/images/rakh_bagh.jpg",
      },
      {
        "name": "Phillaur Fort (फिल्लौर किला)",
        "description":
        "Historic fort near Ludhiana on the Sutlej bank. सतलुज किनारे लुधियाना के पास स्थित ऐतिहासिक किला।",
        "image": "assets/images/phillaur_fort.jpg",
      },
      {
        "name": "Gurudwara Nanaksar (गुरुद्वारा ननकसर, जगराौं)",
        "description":
        "Sacred gurudwara known for peace and kirtan. शांति और कीर्तन के लिए प्रसिद्ध पवित्र गुरुद्वारा।",
        "image": "assets/images/nanaksar.jpg",
      },
    ],

    // --- Jalandhar ---
    "Jalandhar (जालंधर)": [
      {
        "name": "Devi Talab Mandir (देवी तालाब मंदिर)",
        "description":
        "Ancient temple dedicated to Goddess Durga. देवी दुर्गा को समर्पित प्राचीन मंदिर।",
        "image": "assets/images/devi_talab.jpg",
      },
      {
        "name": "Wonderland Theme Park (वंडरलैंड थीम पार्क)",
        "description":
        "Amusement and water rides for families. परिवारों के लिए मनोरंजन और वाटर राइड्स।",
        "image": "assets/images/wonderland.jpg",
      },
      {
        "name": "Pushpa Gujral Science City (पुष्पा गुर्जराल साइंस सिटी)",
        "description":
        "Interactive science exhibits and shows. इंटरएक्टिव विज्ञान प्रदर्शन और शो।",
        "image": "assets/images/science_city.jpg",
      },
      {
        "name": "Nikku Park (निक्कू पार्क)",
        "description":
        "Green space with kids’ activities. बच्चों की गतिविधियों वाला हराभरा पार्क।",
        "image": "assets/images/nikku_park.jpg",
      },
      {
        "name": "Imam Nasir Mausoleum & Jama Masjid (इमाम नसीर मक़बरा)",
        "description":
        "Historic complex reflecting medieval architecture. मध्यकालीन स्थापत्य वाला ऐतिहासिक परिसर।",
        "image": "assets/images/imam_nasir.jpg",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final districtPlaces = places[districtName] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("$districtName - Tourist Places")),
      body: ListView.builder(
        itemCount: districtPlaces.length,
        itemBuilder: (context, index) {
          final place = districtPlaces[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                place["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(place["name"]!),
              subtitle: Text(
                place["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
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
