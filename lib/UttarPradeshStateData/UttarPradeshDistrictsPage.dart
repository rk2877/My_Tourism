import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class UttarPradeshDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "Varanasi (वाराणसी)",
      "image": "assets/images/varanasi.jpg",
      "description": "वाराणसी, जिसे काशी और बनारस भी कहा जाता है, उत्तर प्रदेश का एक पवित्र नगर है। यह गंगा नदी के किनारे स्थित है और हिंदू धर्म का एक प्रमुख तीर्थ स्थल है। यहाँ के घाट, मंदिर और संकरी गलियां प्रसिद्ध हैं।\n\nVaranasi, also known as Kashi and Banaras, is a sacred city of Uttar Pradesh. Located on the banks of the Ganga River, it is a major pilgrimage site for Hindus. The ghats, temples, and narrow streets are famous here."
    },
    {
      "name": "Agra (आगरा)",
      "image": "assets/images/agra.jpg",
      "description": "आगरा ताजमहल के लिए विश्व प्रसिद्ध है, जो प्रेम का प्रतीक माना जाता है। यहाँ आगरा किला और फतेहपुर सीकरी भी ऐतिहासिक धरोहरें हैं।\n\nAgra is world-famous for the Taj Mahal, considered the symbol of love. Agra Fort and Fatehpur Sikri are also historical treasures here."
    },
    {
      "name": "Lucknow (लखनऊ)",
      "image": "assets/images/lucknow.jpg",
      "description": "लखनऊ उत्तर प्रदेश की राजधानी है, जो अपनी तहज़ीब, चिकनकारी कढ़ाई और ऐतिहासिक इमारतों के लिए जानी जाती है।\n\nLucknow, the capital of Uttar Pradesh, is known for its culture, chikankari embroidery, and historical monuments."
    },
    {
      "name": "Prayagraj (प्रयागराज)",
      "image": "assets/images/prayagraj.jpg",
      "description": "प्रयागराज गंगा, यमुना और सरस्वती नदियों के संगम पर स्थित है और कुंभ मेला के लिए प्रसिद्ध है।\n\nPrayagraj is located at the confluence of the Ganga, Yamuna, and Saraswati rivers and is famous for the Kumbh Mela."
    },
    {
      "name": "Mathura (मथुरा)",
      "image": "assets/images/mathura.jpg",
      "description": "मथुरा भगवान कृष्ण की जन्मभूमि है और हिंदू धर्म के प्रमुख तीर्थों में से एक है।\n\nMathura is the birthplace of Lord Krishna and is one of the major pilgrimage sites in Hinduism."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uttar Pradesh Districts")),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(district["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(district["name"]!),
              subtitle: Text(district["description"]!.split("\n\n")[0], maxLines: 2, overflow: TextOverflow.ellipsis),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: district["name"]!,
                      places: _getTouristPlaces(district["name"]!),
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

  List<Map<String, String>> _getTouristPlaces(String districtName) {
    switch (districtName) {
      case "Varanasi (वाराणसी)":
        return [
          {
            "name": "Dashashwamedh Ghat (दशाश्वमेध घाट)",
            "image": "assets/images/dashashwamedh.jpg",
            "description": "यह वाराणसी का सबसे प्रमुख घाट है, जहाँ शाम की गंगा आरती अद्भुत होती है।\n\nThis is the most famous ghat of Varanasi, where the evening Ganga Aarti is mesmerizing."
          },
          {
            "name": "Kashi Vishwanath Temple (काशी विश्वनाथ मंदिर)",
            "image": "assets/images/kashi.jpg",
            "description": "यह भगवान शिव को समर्पित बारह ज्योतिर्लिंगों में से एक है।\n\nOne of the twelve Jyotirlingas dedicated to Lord Shiva."
          },
          {
            "name": "Sarnath (सारनाथ)",
            "image": "assets/images/sarnath.jpg",
            "description": "जहाँ भगवान बुद्ध ने पहला उपदेश दिया था।\n\nThe place where Lord Buddha gave his first sermon."
          },
          {
            "name": "Assi Ghat (अस्सी घाट)",
            "image": "assets/images/assi.jpg",
            "description": "यह घाट पर्यटकों और साधुओं दोनों के लिए लोकप्रिय है।\n\nThis ghat is popular among tourists and saints."
          },
          {
            "name": "Manikarnika Ghat (मणिकर्णिका घाट)",
            "image": "assets/images/manikarnika.jpg",
            "description": "यह हिंदुओं का प्रमुख श्मशान घाट है।\n\nThis is the main cremation ghat for Hindus."
          },
        ];
      default:
        return [];
    }
  }
}
