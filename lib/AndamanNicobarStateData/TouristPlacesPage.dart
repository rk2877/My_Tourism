import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatefulWidget {
  final String districtName;

  const TouristPlacesPage({super.key, required this.districtName});

  @override
  _TouristPlacesPageState createState() => _TouristPlacesPageState();
}

class _TouristPlacesPageState extends State<TouristPlacesPage> {
  String _searchQuery = "";

  final Map<String, List<Map<String, String>>> districtPlaces = {
    "South Andaman (दक्षिण अंडमान)": [
      {
        "name": "Jolly Bouy",
        "description":
        "An island in Mahatma Gandhi Marine National Park, it offers a breathtaking underwater view.\n"
            "महात्मा गांधी मरीन नेशनल पार्क में स्थित यह द्वीप अद्भुत अंडरवाटर दृश्य प्रदान करता है।",
        "image":
        "https://cdn.s3waas.gov.in/s3352fe25daf686bdb4edca223c921acea/uploads/bfi_thumb/2018080652-olw7xebfqjaw081b7s6c0vu8btr7la67hdhnhm3r7u.jpg",
      },
      {
        "name": "Radha Nagar Beach (Swaraj Dweep)",
        "description":
        "Swaraj Dweep is a picturesque natural paradise with beautiful white sandy beaches, rich coral reefs.\n"
            "स्वराज द्वीप एक सुरम्य प्राकृतिक स्वर्ग है, जिसमें सुंदर सफेद रेत वाले समुद्र तट और समृद्ध कोरल रीफ हैं।",
        "image":
        "https://cdn.s3waas.gov.in/s3352fe25daf686bdb4edca223c921acea/uploads/bfi_thumb/2018080612-olw7xddljp9lom2od9rpge2rqfvudl2h58u60c55e2.jpg",
      },
      {
        "name": "Ross Island (Netaji Subhash Chandra Bose Island)",
        "description":
        "Once the seat of British power and capital of these Islands, it stands now as a historical site.\n"
            "यह कभी ब्रिटिश शासन की राजधानी थी, अब यह एक ऐतिहासिक स्थल के रूप में खड़ा है।",
        "image":
        "https://cdn.prod.website-files.com/5b56319971ac8c7475a9d877/5d310de537e91585f2231514_Ross%20Island.JPG",
      },
      {
        "name": "Chatham Island",
        "description":
        "It has a Saw Mill lying on the tiny island connected by a bridge.\n"
            "इस छोटे द्वीप पर एक आरा मिल है, जो पुल से जुड़ा हुआ है।",
        "image":
        "https://cdn.s3waas.gov.in/s3352fe25daf686bdb4edca223c921acea/uploads/bfi_thumb/2018080629-olw7xddljp9lom2od9rpge2rqfvudl2h58u60c55e2.jpg",
      },
      {
        "name": "Cinque Island",
        "description":
        "A sanctuary with rare corals and under-water marine life, Cinque Island has fine sandy beach.\n"
            "संक्वे द्वीप दुर्लभ कोरल और अंडरवाटर समुद्री जीवन वाला एक अभयारण्य है, जिसमें सुंदर रेत वाला समुद्र तट है।",
        "image":
        "https://cdn.s3waas.gov.in/s3352fe25daf686bdb4edca223c921acea/uploads/bfi_thumb/2018062148-olw7wtmzk6ikwsvckj8ji1239cl4vxw42j4yxiyf0q.jpg",
      },
      {
        "name": "Corbyn's Cove Beach",
        "description":
        "The coconut-palm fringed beach, six kilometers away from Port Blair town.\n"
            "पोर्ट ब्लेयर शहर से छह किलोमीटर दूर नारियल के पेड़ों से घिरा समुद्र तट।",
        "image":
        "https://cdn.s3waas.gov.in/s3352fe25daf686bdb4edca223c921acea/uploads/bfi_thumb/2018080659-olw7xf99xdc6btzy2akyldlox7mksz9xti54yw2d1m.jpg",
      },
      {
        "name": "Cellular Jail (सेल्युलर जेल)",
        "description":
        "It is a historical monument representing India's freedom struggle.\n"
            "सेल्युलर जेल भारत की स्वतंत्रता संग्राम का प्रतीक है।",
        "image":
        "https://www.shutterstock.com/image-photo/port-blair-andaman-india-05-600nw-2122983023.jpg",
      },
      {
        "name": "Mount Harriet",
        "description":
        "Mount Harriet, 55 Kms by road/ 15 Kms by ferry and trek from Port Blair.\n"
            "माउंट हैरिएट, पोर्ट ब्लेयर से सड़क द्वारा 55 किमी / फेरी और ट्रेक द्वारा 15 किमी दूर है।",
        "image":
        "https://cdn.s3waas.gov.in/s3352fe25daf686bdb4edca223c921acea/uploads/bfi_thumb/20180806100-olw7xddljp9lom2od9rpge2rqfvudl2h58u60c55e2.jpg",
      },
      {
        "name": "Gandhi Park",
        "description":
        "This beautiful park at Port Blair has facilities like amusement rides, safe water sports.\n"
            "पोर्ट ब्लेयर में यह सुंदर पार्क मनोरंजन राइड्स और सुरक्षित जल खेल जैसी सुविधाएँ प्रदान करता है।",
        "image":
        "https://cdn.s3waas.gov.in/s3352fe25daf686bdb4edca223c921acea/uploads/bfi_thumb/2018080649-olw7xebfqjaw081b7s6c0vu8btr7la67hdhnhm3r7u.jpg",
      },
      {
        "name": "Shaheed Dweep",
        "description":
        "This beautiful island with lush green forest and sandy beaches is the vegetable bowl of Andaman.\n"
            "यह सुंदर द्वीप हरे-भरे जंगल और रेत वाले समुद्र तटों के साथ अंडमान की सब्जियों का गढ़ है।",
        "image":
        "https://cdn.s3waas.gov.in/s3352fe25daf686bdb4edca223c921acea/uploads/bfi_thumb/2018080650-olw7xebfqjaw081b7s6c0vu8btr7la67hdhnhm3r7u.jpg",
      },
    ],
    "North and Middle Andaman (उत्तर और मध्य अंडमान)": [
      {
        "name": "Lamiya Bay Beach (लामिया बे बीच, डिगलीपुर)",
        "description":
        "The beach lies a few kilometers ahead of Kalipur beach and marks the foothill of Saddle Peak, the highest peak.\n"
            "यह बीच कालिपुर बीच से कुछ किलोमीटर आगे स्थित है और सैडल पीक, सबसे ऊँची चोटी, की तलहटी को दर्शाता है।",
        "image":
        "https://cdn.s3waas.gov.in/s30537fb40a68c18da59a35c2bfe1ca554/uploads/bfi_thumb/2018081339-olw6914ktknydrpzposvw48iwzal92isil71xvlytm.jpg",
      },
      {
        "name": "Karmatang Beach (कारमतांग बीच)",
        "description":
        "Karmatang Beach is a well known settling ground for leatherback turtles, green ocean turtles, hawksbill turtles and olive ridley turtles.\n"
            "कारमतांग बीच लेदरबैक कछुओं, ग्रीन ओशन कछुओं, हॉक्सबिल कछुओं और ऑलिव रिडले कछुओं के लिए प्रसिद्ध है।",
        "image":
        "https://cdn.s3waas.gov.in/s30537fb40a68c18da59a35c2bfe1ca554/uploads/bfi_thumb/2018070268-olw68xd828it3bvgbn6dm56ojft4ea3v62l40rrjii.jpg",
      },
      {
        "name": "Ramnagar Beach (रामनगर बीच)",
        "description":
        "Ramnagar Beach is a beautiful beach located at a distance of 70 kms from Mayabunder.\n"
            "रामनगर बीच मायाबंदर से 70 किमी की दूरी पर स्थित एक सुंदर बीच है।",
        "image":
        "https://cdn.s3waas.gov.in/s30537fb40a68c18da59a35c2bfe1ca554/uploads/bfi_thumb/2018081395-olw6914ktknydrpzposvw48iwzal92isil71xvlytm.jpg",
      },
      {
        "name": "Mud Volcano (मड वोल्केनो, श्याम नगर)",
        "description":
        "Located near Hathilevel, at a distance of 20 kms from Diglipur, a chain of Mud volcanoes can be seen.\n"
            "यहाँ हठीलेवल के पास, डिगलीपुर से 20 किमी की दूरी पर, मड वोल्केनो की एक श्रृंखला देखी जा सकती है।",
        "image":
        "https://cdn.s3waas.gov.in/s30537fb40a68c18da59a35c2bfe1ca554/uploads/bfi_thumb/2018070275-olw68xd828it3bvgbn6dm56ojft4ea3v62l40rrjii.jpg",
      },
      {
        "name": "Kalpong Hydro Electricity (कालपोंग हाइड्रो इलेक्ट्रिसिटी)",
        "description":
        "Kalpong Hydroelectric Project (Kalpong Dam) is the largest dam of the Andaman & Nicobar Islands, built across Kalpong river.\n"
            "कालपोंग हाइड्रोइलेक्ट्रिक प्रोजेक्ट अंडमान और निकोबार द्वीपसमूह का सबसे बड़ा बांध है, जो कालपोंग नदी पर बनाया गया है।",
        "image":
        "https://cdn.s3waas.gov.in/s30537fb40a68c18da59a35c2bfe1ca554/uploads/bfi_thumb/2018070250-olw68xd828it3bvgbn6dm56ojft4ea3v62l40rrjii.jpg",
      },
      {
        "name": "Kalipur Beach (कालिपुर बीच और टर्टल नेस्टिंग ग्राउंड)",
        "description":
        "Andaman and Nicobar Islands are home to thousands of turtles during their nesting period.\n"
            "अंडमान और निकोबार द्वीपसमूह में टर्टल नेस्टिंग सीजन में हजारों कछुए पाए जाते हैं।",
        "image":
        "https://cdn.s3waas.gov.in/s30537fb40a68c18da59a35c2bfe1ca554/uploads/bfi_thumb/2018070221-olw68xd828it3bvgbn6dm56ojft4ea3v62l40rrjii.jpg",
      },
      {
        "name": "Limestone Caves (अल्फ्रेड केव्स, डिगलीपुर)",
        "description":
        "Alfred Caves lie in the Diglipur sub-division near Ramnagar beach.\n"
            "अल्फ्रेड केव्स डिगलीपुर उपखंड में रामनगर बीच के पास स्थित हैं।",
        "image":
        "https://cdn.s3waas.gov.in/s30537fb40a68c18da59a35c2bfe1ca554/uploads/bfi_thumb/2018070264-olw68xd828it3bvgbn6dm56ojft4ea3v62l40rrjii.jpg",
      },
      {
        "name": "Ross & Smith Islands (ट्विन आइलैंड्स)",
        "description":
        "Ross & Smith islands are actually two islands joined together by a sand bar.\n"
            "रॉस और स्मिथ द्वीप वास्तव में दो द्वीप हैं जो रेत की पट्टी से जुड़े हैं।",
        "image":
        "https://cdn.s3waas.gov.in/s30537fb40a68c18da59a35c2bfe1ca554/uploads/bfi_thumb/2018081364-olw6914ktknydrpzposvw48iwzal92isil71xvlytm.jpg",
      },
      {
        "name": "Saddle Peak (सैडल पीक)",
        "description":
        "Diglipur provides a rare experience for eco-friendly tourists, famous for oranges, rice, forest wealth and marine life.\n"
            "डिगलीपुर पर्यावरण-प्रेमी पर्यटकों के लिए एक अनोखा अनुभव प्रदान करता है, और यह संतरे, चावल, जंगल और समुद्री जीवन के लिए प्रसिद्ध है।",
        "image":
        "https://cdn.s3waas.gov.in/s30537fb40a68c18da59a35c2bfe1ca554/uploads/bfi_thumb/2018081366-olw68xd828it3bvgbn6dm56ojft4ea3v62l40rrjii.jpg",
      },
    ],

    "Nicobar (निकोबार)": [
      {
        "name": "Campbell Bay National Park (कैम्पबेल बे राष्ट्रीय उद्यान)",
        "description":
        "It is rich in biodiversity and natural beauty.\n"
            "यह राष्ट्रीय उद्यान जैव विविधता से भरपूर है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL8aEsHOtN2w2mlDXf2iNIgBuBwCnKzT2GuA&s",
      },
      {
        "name": "Car Nicobar (कार निकोबार)",
        "description":
        "Known for its pristine beaches, coconut palms, and traditional Nicobarese culture.\n"
            "यह अपने सुंदर समुद्र तटों, नारियल के पेड़ों और पारंपरिक निकोबारी संस्कृति के लिए जाना जाता है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3yir_WCDCpkwXR9adgO-tIPvn2MVlWkiMTg&s",
      },
      {
        "name": "Katchal (कट्चल)",
        "description":
        "A serene island famous for coconut plantations, fishing villages, and tribal heritage.\n"
            "एक शांत द्वीप जो नारियल की खेती, मछली पकड़ने वाले गांवों और जनजातीय विरासत के लिए प्रसिद्ध है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi9A96BPvm6XVw4uZepEsK4DavgjtPrDDQqQ&s",
      },
    ],

  };

  @override
  Widget build(BuildContext context) {
    final allPlaces = districtPlaces[widget.districtName] ?? [];
    final filteredPlaces = allPlaces
        .where((place) =>
        place["name"]!.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.districtName} Tourist Places",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: "Search Place...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredPlaces.length,
              itemBuilder: (context, index) {
                final place = filteredPlaces[index];
                return Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    leading: Image.network(
                      place["image"]!,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(place["name"]!),
                    subtitle: Text(
                      place["description"]!,
                      maxLines: 3,
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
          ),
        ],
      ),
    );
  }
}
