import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String placeName;

  PlaceDetailsPage({required this.placeName});

  // 🔹 Tourist places with long bilingual descriptions
  final Map<String, String> placeDescriptions = {
    "Golghar (गोलघर)":
    "Golghar was built in 1786 by Captain John Garstin as a granary to store food grains. "
        "It has a height of 29 meters and a base wall thickness of 3.6 meters. "
        "The structure is beehive-shaped and has no pillars inside, making it a fine example of engineering. "
        "There is a spiral staircase of 145 steps that leads to the top, offering a panoramic view of Patna city and the Ganga river. "
        "Initially, it was meant to avoid famines, but later it became a historical monument. "
        "Today, Golghar is one of the most popular tourist attractions in Patna. "
        "यह विशाल अन्नागार 1786 में ब्रिटिश कैप्टन जॉन गार्स्टिन द्वारा बनवाया गया था। "
        "इसकी ऊँचाई 29 मीटर है और इसके चारों ओर 3.6 मीटर मोटी दीवारें बनी हैं। "
        "इसके ऊपर जाने के लिए 145 सीढ़ियाँ हैं, जहाँ से पूरे पटना और गंगा नदी का सुंदर दृश्य दिखता है।",

    "Patna Museum (पटना संग्रहालय)":
    "Patna Museum, also known as 'Jadu Ghar', was established in 1917 during the British period. "
        "It houses more than 50,000 rare art objects including Indian artifacts, British-period paintings, and ancient sculptures. "
        "The museum has special collections of Gandhara art, Buddhist relics, and Mughal miniatures. "
        "It also preserves the holy ashes of Lord Buddha, making it a significant religious site. "
        "The building itself is a blend of Mughal and Rajput architecture. "
        "Visitors get to see coins, arms, textiles, and manuscripts from different eras. "
        "पटना संग्रहालय, जिसे 'जादू घर' भी कहा जाता है, 1917 में स्थापित हुआ था। "
        "यहां 50,000 से अधिक दुर्लभ वस्तुएँ रखी गई हैं जिनमें गंधार कला, बौद्ध अवशेष, मुगल मिनिएचर पेंटिंग्स और प्राचीन मूर्तियाँ शामिल हैं। "
        "यहाँ भगवान बुद्ध की पवित्र अस्थियाँ भी सुरक्षित रखी गई हैं।",

    "Takht Sri Patna Sahib (तख़्त श्री पटना साहिब)":
    "Takht Sri Patna Sahib is one of the five Takhts of Sikhism and is located in Patna, Bihar. "
        "It was built to commemorate the birthplace of Guru Gobind Singh Ji, the tenth Sikh Guru, who was born here in 1666. "
        "The Gurudwara holds immense religious importance for Sikhs worldwide. "
        "It was commissioned by Maharaja Ranjit Singh, the first Maharaja of the Sikh Empire. "
        "Inside the Gurudwara, many relics belonging to Guru Gobind Singh Ji are preserved, including his weapons and sacred books. "
        "Thousands of devotees visit the place every year, especially during Gurpurab celebrations. "
        "तख़्त श्री पटना साहिब सिख धर्म के पाँच पवित्र तख़्तों में से एक है। "
        "यहाँ 1666 में दसवें सिख गुरु, गुरु गोबिंद सिंह जी का जन्म हुआ था। "
        "यह गुरुद्वारा महाराजा रणजीत सिंह द्वारा बनवाया गया था और आज भी लाखों श्रद्धालु यहाँ दर्शन करने आते हैं।",

    "Buddha Smriti Park (बुद्ध स्मृति पार्क)":
    "Buddha Smriti Park was inaugurated in 2010 by the Dalai Lama to commemorate the 2554th birth anniversary of Lord Buddha. "
        "It is located near Patna Junction and covers an area of 22 acres. "
        "The park has a central 200-feet tall stupa, known as the Patliputra Karuna Stupa, which houses the sacred ashes of Lord Buddha. "
        "Two saplings of the Bodhi tree have also been planted here, one from Bodh Gaya and the other from Anuradhapura, Sri Lanka. "
        "The park also features a meditation hall, library, and museum dedicated to the teachings of Buddha. "
        "It is a peaceful place for visitors and an important Buddhist pilgrimage site. "
        "बुद्ध स्मृति पार्क का उद्घाटन 2010 में दलाई लामा ने किया था। "
        "यहाँ 200 फीट ऊँचा करुणा स्तूप बना है जिसमें भगवान बुद्ध की अस्थियाँ रखी गई हैं। "
        "यह पार्क बौद्ध धर्मावलंबियों के लिए एक प्रमुख तीर्थस्थल है।",
  };

  @override
  Widget build(BuildContext context) {
    final description = placeDescriptions[placeName] ?? "Details not available";

    return Scaffold(
      appBar: AppBar(title: Text(placeName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            description,
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ),
      ),
    );
  }
}

class PatnaPlacesPage extends StatelessWidget {
  final List<String> places = [
    "Golghar (गोलघर)",
    "Patna Museum (पटना संग्रहालय)",
    "Takht Sri Patna Sahib (तख़्त श्री पटना साहिब)",
    "Buddha Smriti Park (बुद्ध स्मृति पार्क)",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Patna Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final placeName = places[index];
          return ListTile(
            leading: Icon(Icons.place, color: Colors.blue),
            title: Text(placeName),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PlaceDetailsPage(placeName: placeName), // ✅ केवल name भेजो
                ),
              );
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PatnaPlacesPage(),
  ));
}
