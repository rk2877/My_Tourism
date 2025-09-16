import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatefulWidget {
  final String districtName;
  final String districtImage;

  const TouristPlacesPage({
    Key? key,
    required this.districtName,
    required this.districtImage,
  }) : super(key: key);

  @override
  _TouristPlacesPageState createState() => _TouristPlacesPageState();
}

class _TouristPlacesPageState extends State<TouristPlacesPage> {
  String searchQuery = "";

  // ✅ Tourist places data (with online images + bilingual details)
  Map<String, List<Map<String, String>>> get placesByDistrict => {
    "Daman (दमन)": [
      {
        "name": "Devka Beach (देवका बीच)",
        "image":
        "https://s7ap1.scene7.com/is/image/incredibleindia/jampore-beach-daman-daman-&-diu-3-attr-hero?qlt=82&ts=1726737524940",
        "description":
        "Popular beach with shacks and long walks.\n\nलोकप्रिय बीच, शैक और सैर के लिए मशहूर।"
      },
      {
        "name": "Jampore Beach (जम्पोर बीच)",
        "image":
        "https://s7ap1.scene7.com/is/image/incredibleindia/jampore-beach-daman-daman-&-diu-1-attr-hero?qlt=82&ts=1726737569628",
        "description":
        "Calm waters, perfect for swimming & family picnics.\n\nशांत पानी, तैराकी और पिकनिक के लिए उपयुक्त।"
      },
      {
        "name": "Moti Daman Fort (मोती दमन किला)",
        "image":
        "https://s7ap1.scene7.com/is/image/incredibleindia/fort-of-st-jerome-daman-3-attr-hero?qlt=82&ts=1726737606121",
        "description": "Massive Portuguese fort from 16th century.\n\n16वीं सदी का विशाल पुर्तगाली किला।"
      },
      {
        "name": "St. Jerome Fort (सेंट जेरोम किला)",
        "image":
        "https://s7ap1.scene7.com/is/image/incredibleindia/st-jerome-fort-daman-daman-and-diu-1-attr-hero?qlt=82&ts=1726737522549",
        "description": "Riverside fort facing Daman Ganga.\n\nदमन गंगा नदी के किनारे स्थित किला।"
      },
      {
        "name": "Bom Jesus Church (बॉम जीसस चर्च)",
        "image":
        "https://s7ap1.scene7.com/is/image/incredibleindia/church-of-bom-jesus-daman-2-attr-hero?qlt=82&ts=1726737543654",
        "description": "Beautiful church from 1603.\n\n1603 में बना सुंदर चर्च।"
      },
      {
        "name": "Daman Lighthouse (लाइट हाउस)",
        "image": "https://avathioutdoors.gumlet.io/travelGuide/dev/daman_P5881.jpg",
        "description": "Scenic sunset views at Moti Daman.\n\nमोती दमन में खूबसूरत सूर्यास्त दृश्य।"
      },
    ],

    "Diu (दिउ)": [
      {
        "name": "Diu Fort (दिउ किला)",
        "image": "https://cdnbbsr.s3waas.gov.in/s371e09b16e21f7b6919bbfc43f6a5b2f0/uploads/2020/10/2020102288-scaled-e1603439463808.jpg",
        "description": "Sea-facing Portuguese fort.\n\nसमुद्र किनारे पुर्तगाली किला।"
      },
      {
        "name": "Naida Caves (नैडा गुफाएँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVBa1TOQsp8VbYKhiTJ43kQ8Gg82lHGANY7A&s",
        "description": "Unique honeycombed caves.\n\nअनूठी मधुमक्खी छत्ता जैसी गुफाएँ।"
      },
      {
        "name": "Nagoa Beach (नागोआ बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa8jj4P9P6mfyMJCGF7HBkBjKWo9VbaIPa2g&s",
        "description": "Palm-lined beach with water sports.\n\nपाम पेड़ों से सजा समुद्र तट।"
      },
      {
        "name": "St. Paul's Church (सेंट पॉल्स चर्च)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/st-pauls-church-diu-daman-diu-3-musthead-hero?qlt=82&ts=1726737753797",
        "description": "Baroque-style church.\n\nबैरोक शैली का चर्च।"
      },
      {
        "name": "Gangeshwar Temple (गंगेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVMA_H_7uPEeZYlPavhurI-4gvCGm0zjUgfQ&s",
        "description": "Sea-washed Shivlingas.\n\nसमुद्र की लहरों से सराबोर शिवलिंग।"
      },
      {
        "name": "INS Khukri Memorial (आईएनएस खूक्रि स्मारक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/f2/df/3f/inskhukery.jpg?w=900&h=500&s=1",
        "description": "War memorial for Indian Navy ship.\n\nभारतीय नौसेना के जहाज का युद्ध स्मारक।"
      },
    ],

    "Dadra & Nagar Haveli (दादरा और नगर हवेली)": [
      {
        "name": "Vanganga Lake Garden (वांगंगा लेक गार्डन)",
        "image":
        "https://s7ap1.scene7.com/is/image/incredibleindia/vanganga-lake-garden-silvassa-daman-&-diu-3-attr-hero?qlt=82&ts=1726816524830",
        "description": "Lake garden with boating.\n\nझील और बोटिंग वाला सुंदर गार्डन।"
      },
      {
        "name": "Hirwa Van Garden (हिरवा वन गार्डन)",
        "image":
        "https://s7ap1.scene7.com/is/image/incredibleindia/hirwa-van-garden-silvassa-daman-&-diu-1-attr-hero?qlt=82&ts=1726737286171",
        "description": "Green garden with fountains.\n\nफव्वारों वाला हरा-भरा बगीचा।"
      },
      {
        "name": "Dudhani Lake (दूधनी झील)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/dudhni-lake-silvassa-daman-&-diu-2-attr-hero?qlt=82&ts=1726737285897",
        "description": "Famous for water sports.\n\nवॉटर स्पोर्ट्स के लिए प्रसिद्ध।"
      },
      {
        "name": "Vasona Lion Safari (वासोना लायन सफारी)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/vasona-lion-safari-park-silvassa-daman-&-diu-2-attr-hero?qlt=82&ts=1726737302245",
        "description": "Spot Asiatic lions in open safari.\n\nखुले सफारी में एशियाई शेर।"
      },
      {
        "name": "Satmalia Deer Park (सतमालिया डियर पार्क)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/satmalia-wildlife-sanctuary-daman-daman-&-diu-attr-about?qlt=82&ts=1726737559959",
        "description": "Home to spotted deer & antelopes.\n\nचितकबरे हिरण और नीलगाय का घर।"
      },
      {
        "name": "Tribal Museum (जनजातीय संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmkikH8fYk3KMjIUuYUnMEyYVXxb5MSBEh_w&s",
        "description": "Showcasing tribal culture.\n\nआदिवासी संस्कृति का प्रदर्शन।"
      },
      {
        "name":
        "Aquaserene (Neertal) Tourist Complex, Dudhani (एक्वासिरीन टूरिस्ट कॉम्प्लेक्स, दूधनी)",
        "image": "https://cdn.s3waas.gov.in/s35878a7ab84fb43402106c575658472fa/uploads/bfi_thumb/2020091733-scaled-ovlj55t2423ogcr1u7cjannp9ut85um30rk54jsgp6.jpg",
        "description":
        "Popular recreational complex in Dudhani.\n\nदूधनी का सबसे प्रसिद्ध मनोरंजन स्थल।"
      },
      {
        "name": "Church of Our Lady of Piety (चर्च ऑफ़ आवर लेडी ऑफ़ पायटी)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/church-of-our-lady-of-piety-silvassa-dadra-and-nagar-haveli-1-attr-hero?qlt=82&ts=1726816601996",
        "description":
        "Historic church opposite Tribal Museum.\n\nट्राइबल म्यूजियम के सामने स्थित प्राचीन चर्च।"
      },
      {
        "name": "Souvenir Shop – The Silva Store (सिल्वा स्टोर सॉवेनियर शॉप)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_UPi1FN8K3KgrnC-eiYuf8q4w3EDkFcKrjQ&s",
        "description":
        "Tourist souvenir shop developed by Tourism Dept.\n\nपर्यटकों के लिए स्मृति-चिन्हों की दुकान।"
      },
      {
        "name": "Nakshatra Garden (नक्षत्र गार्डन)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/nakshatra-garden-silvassa-daman-&-diu-5-attr-hero?qlt=82&ts=1726816317305",
        "description":
        "Astro-themed garden with plants linked to zodiac.\n\nज्योतिष आधारित बगीचा जिसमें राशि अनुसार पौधे।"
      },
      {
        "name": "Daman Ganga River Front (दमन गंगा रिवर फ्रंट)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/daman-ganga-riverfront-silvassa-daman-&-diu-1-attr-hero?qlt=82&ts=1726816333918",
        "description":
        "Iconic riverside scenic spot in Silvassa.\n\nसिलवासा का प्रसिद्ध नदी किनारा स्थल।"
      },
      {
        "name": "Himayvan Health Resort, Kauncha (हिमायवन हेल्थ रिसॉर्ट, कौंचा)",
        "image": "https://cdn.s3waas.gov.in/s35878a7ab84fb43402106c575658472fa/uploads/bfi_thumb/2020091886-scaled-ovmvvht1mfnhc4hfrivjyygml3xcd170vwqg66mfm2.jpg",
        "description":
        "Natural scenic health resort near forest.\n\nजंगल के पास प्राकृतिक स्वास्थ्य स्थल।"
      },
      {
        "name": "Tapovan Tourist Complex, Bindrabin (टापोवन टूरिस्ट कॉम्प्लेक्स, बिंद्राबिन)",
        "image": "https://cdn.s3waas.gov.in/s35878a7ab84fb43402106c575658472fa/uploads/bfi_thumb/2020082792-oukndb504fpi70pbegdvus75wa745oij5gqcz93vd6.jpg",
        "description":
        "Tourist complex beside Tadkeshwar Temple.\n\nतड़कश्वर मंदिर के पास स्थित पर्यटन स्थल।"
      },
      {
        "name": "BAPS Swaminarayan Temple (बीएपीएस स्वामिनारायण मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy1rmPp15JFsYt4cSR7Ea961jN2GM65aSv4Q&s",
        "description":
        "Architectural marvel on Daman Ganga river bank.\n\nदमन गंगा नदी किनारे स्थापत्य कला का सुंदर उदाहरण।"
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final allPlaces = placesByDistrict[widget.districtName] ?? [];
    final filteredPlaces = allPlaces.where((p) {
      final query = searchQuery.toLowerCase();
      return p["name"]!.toLowerCase().contains(query) ||
          p["description"]!.toLowerCase().contains(query);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.districtName} - Tourist Places"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search places...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (val) {
                setState(() {
                  searchQuery = val;
                });
              },
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredPlaces.length,
        itemBuilder: (context, index) {
          final p = filteredPlaces[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                p["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
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
