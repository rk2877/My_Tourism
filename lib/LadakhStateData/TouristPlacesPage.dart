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
    "Leh (लेह)": [
      {
        "name": "Hanle (हन्ले)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3LQefVicPbEmyVmxmL3QKllHZCHP-4XdqzA&s",
        "description": "Hanle is a remote village in Ladakh, 260 km from Leh, at an altitude of about 4,500 meters, famous for its astronomical observatory. | हन्ले लद्दाख का एक दूरस्थ गाँव है, जो लेह से लगभग 260 किमी दूर 4,500 मीटर की ऊँचाई पर स्थित है और अपने खगोलीय वेधशाला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Shanti Stupa (शांति स्तूप)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_tioMGBLjdHA8aU4R9k2oEubpDNU_eJZmw&s",
        "description": "Shanti Stupa, perched atop a hill in Leh, offers stunning panoramic views and is a symbol of peace. | शांति स्तूप लेह की पहाड़ी पर स्थित है, जहाँ से मनमोहक दृश्य दिखाई देते हैं और यह शांति का प्रतीक माना जाता है।"
      },
      {
        "name": "Thiksey Monastery (थिकसे मठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0fF7W7G-afdEG8zDn3Y37kouYE04Pyr0xOw&s",
        "description": "Thiksey is the largest monastery in central Ladakh, resembling Tibet’s Potala Palace, and is known for its Buddhist art and culture. | थिकसे मध्य लद्दाख का सबसे बड़ा मठ है, जो तिब्बत के पोताला पैलेस जैसा दिखता है और बौद्ध कला व संस्कृति के लिए प्रसिद्ध है।"
      },
      {
        "name": "Hemis Monastery (हेमिस मठ)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/hemis-monastery-leh-ladakh-rural-hero?qlt=82&ts=1726641840092",
        "description": "Hemis Monastery is one of the richest monasteries in Ladakh, famous for the Hemis festival dedicated to Guru Padmasambhava. | हेमिस मठ लद्दाख के सबसे समृद्ध मठों में से एक है, जो गुरु पद्मसम्भव को समर्पित हेमिस उत्सव के लिए प्रसिद्ध है।"
      },
      {
        "name": "Leh Palace (लेह पैलेस)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/leh-palace-leh-ladakh-2-musthead-hero?qlt=82&ts=1726668053114",
        "description": "Leh Palace, built in the 17th century by King Sengge Namgyal, resembles Lhasa’s Potala Palace and offers panoramic views of Leh town. | लेह पैलेस 17वीं शताब्दी में राजा सेंगे नामग्याल द्वारा बनाया गया था, जो ल्हासा के पोताला पैलेस जैसा दिखता है और लेह शहर का शानदार दृश्य प्रस्तुत करता है।"
      },
      {
        "name": "Hemis National Park (हेमिस राष्ट्रीय उद्यान)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/hemis-national-park-leh-ladakh-1-attr-hero?qlt=82&ts=1726667915652",
        "description": "Hemis National Park is home to rare wildlife like the snow leopard, Himalayan wolf, and unique flora. | हेमिस राष्ट्रीय उद्यान दुर्लभ वन्यजीव जैसे हिम तेंदुआ, हिमालयी भेड़िया और विशेष वनस्पतियों का घर है।"
      },
      {
        "name": "Khardung La Pass (खारदुंग ला पास)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2iGkGBEKbn1vTpP495iV9fDKJHbakeANA6w&s",
        "description": "Khardung La is the second highest motorable pass in the world, offering adventurous drives and snowy views. | खारदुंग ला दुनिया का दूसरा सबसे ऊँचा वाहन योग्य दर्रा है, जो रोमांचक ड्राइव और बर्फीले नज़ारे प्रदान करता है।"
      },
      {
        "name": "Tsomoriri Lake (त्सोमोरिरी झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQylDjfGuJO6j8OwCfMVj32G8lpXTGu7NYPDA&s",
        "description": "Located in the Changthang Plateau at 4,000 meters, Tsomoriri is a high-altitude lake known for its surreal beauty. | त्सोमोरिरी झील 4,000 मीटर ऊँचे चांगथंग पठार में स्थित है और अपनी अद्भुत सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Lamayuru (लमायुरु - मूनलैंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTob5Wm4CtxSKRe-LL7Vc5R2qlwgAWdxtQ7kQ&s",
        "description": "Lamayuru, called the ‘Moonland of Ladakh’, is famous for its lunar-like landscape and ancient monastery. | लमायुरु, जिसे ‘लद्दाख का मूनलैंड’ कहा जाता है, अपने चंद्रमा जैसे परिदृश्य और प्राचीन मठ के लिए प्रसिद्ध है।"
      },
      {
        "name": "Pangong Lake (पैंगोंग झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxBIj-CpSRTIbKgweUxKOIanZlLwWdr_-ylg&s",
        "description": "Pangong Tso at 14,270 ft is one of the most scenic lakes, extending from India to Tibet. | 14,270 फीट की ऊँचाई पर स्थित पैंगोंग झील भारत से तिब्बत तक फैली एक बेहद सुंदर झील है।"
      },
      {
        "name": "Nubra Valley (नुब्रा घाटी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/b9/e6/1c/nubra-valley.jpg?w=1200&h=1200&s=1",
        "description": "Nubra Valley, known as the orchard of Ladakh, is famous for sand dunes, double-humped camels, and monasteries. | नुब्रा घाटी, जिसे लद्दाख का बाग कहा जाता है, अपने रेतीले टीलों, दो-कूबड़ वाले ऊँट और मठों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Magnetic Hill (मैग्नेटिक हिल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi0oJiV2aXnGvepnLkMXvT7V2J9BUB3rOKBA&s",
        "description": "Magnetic Hill near Leh is believed to defy gravity, where vehicles appear to move uphill on their own. | लेह के पास स्थित मैग्नेटिक हिल को गुरुत्वाकर्षण को चुनौती देने वाला माना जाता है, जहाँ वाहन अपने आप ऊपर चढ़ते दिखाई देते हैं।"
      }
    ],

    "Kargil (कारगिल)": [
      {
        "name": "Drass War Memorial (ड्रास वॉर मेमोरियल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy3VC57tGFi3npIAkjPdi-6ZxQJpOfyMSrPA&s",
        "description": "Drass War Memorial, built in memory of the 1999 Kargil War heroes, is a symbol of valor and patriotism. | ड्रास वॉर मेमोरियल 1999 के कारगिल युद्ध के शहीदों की स्मृति में बनाया गया है और यह साहस व देशभक्ति का प्रतीक है।"
      },
      {
        "name": "Mulbekh Monastery (मुलबेख मठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvko6YRDdOgIM1LB68V-oHmoLlBlupe_nhIw&s",
        "description": "Mulbekh Monastery is famous for its giant rock-carved Maitreya Buddha statue, dating back to the 7th century. | मुलबेख मठ अपनी विशाल चट्टान पर उकेरी गई मैत्रेय बुद्ध प्रतिमा के लिए प्रसिद्ध है, जो 7वीं शताब्दी की है।"
      },
      {
        "name": "Suru Valley (सुरु घाटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP8mYvV87a7SsOaMGL8m1YKPwmctKoYPratA&s",
        "description": "Suru Valley, surrounded by snow-capped peaks and lush greenery, is one of the most scenic places in Kargil. | सुरु घाटी बर्फ से ढकी चोटियों और हरी-भरी वादियों से घिरी हुई है और कारगिल के सबसे सुंदर स्थलों में से एक है।"
      },
      {
        "name": "Drang Drung Glacier (ड्रंग-ड्रुंग हिमनद)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXbZeuBLk93YhNDwE0szuyXclV6GY430_RJw&s",
        "description": "Drang Drung Glacier is one of the largest glaciers in Ladakh, offering breathtaking views along the Zanskar-Kargil road. | ड्रंग-ड्रुंग हिमनद लद्दाख के सबसे बड़े ग्लेशियरों में से एक है और ज़ांस्कर-कारगिल मार्ग पर अद्भुत दृश्य प्रस्तुत करता है।"
      },
      {
        "name": "Shergol Monastery (शेरगोल मठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgQPX2OCQLDY1Hm1reikCWWxLogrb2VEzl9A&s",
        "description": "Shergol Monastery, nestled in a cliffside cave, is a unique site for meditation and Buddhist art. | शेरगोल मठ एक चट्टान की गुफा में स्थित है और ध्यान व बौद्ध कला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Karsha Monastery (करशा मठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ1uETnWc7WJuzlshkc11SyO2KcZTohfEbuQ&s",
        "description": "Karsha Monastery is the largest and most influential monastery in Zanskar, known for its ancient murals and festivals. | करशा मठ ज़ांस्कर का सबसे बड़ा और प्रमुख मठ है, जो प्राचीन भित्तिचित्रों और उत्सवों के लिए जाना जाता है।"
      },
      {
        "name": "Lang Tso & Stat Tso Lakes (लैंग त्सो और स्टैट त्सो झीलें)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy6oHzX3d37oKpt1Gwcnbw5QIyBR9RflIj2A&s",
        "description": "Twin lakes near Pensi La in Suru Valley, known for reflections of the Zanskar peaks and pristine nature. | सुरु घाटी में पेंसी ला के पास स्थित जुड़ी हुई झीलें, ज़ांस्कर की चोटियों के प्रतिबिंब और प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
      {
        "name": "Munshi Aziz Bhat Museum (मुंशी अज़ीज भट म्यूज़ियम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvbao-4SDbL_MTblhyBEV8W9WIcGofBYRVvQ&s",
        "description": "Museum in Kargil Town exhibiting Silk Route artifacts, Tibetan manuscripts, coins, and handicrafts. | कारगिल नगर में स्थापित म्यूज़ियम जो सिल्क रूट की वस्तुएँ, तिब्बती पांडुलिपियाँ, सिक्के और हस्तशिल्प प्रदर्शित करता है।"
      },
      {
        "name": "Aryan Valley (आर्यन घाटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCVsNknCwAVZsP5PV7amOgIhQxs0qzpQkyNM25sl-K78r3CeoyWYV8DpmA9rc3E9gGz5w&usqp=CAU",
        "description": "Located in the Batalik sector, famous for Dard-Aryan communities and unique cultural traditions. | बतालिक क्षेत्र में स्थित, जो डार्ड-आर्यन समुदाय और अनूठी सांस्कृतिक परंपराओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Mushkoh Valley (मुश्कोह घाटी)",
        "image": "https://wildfloc.com/wp-content/uploads/2025/02/Mushkoo-Valley-Blog.webp",
        "description": "Also called 'Wild Tulip Valley' in Dras sector, historically significant and scenically beautiful. | ड्रास सेक्टर में स्थित 'वाइल्ड ट्यूलिप वैली', ऐतिहासिक रूप से महत्वपूर्ण और दृश्यात्मक रूप से सुंदर।"
      }
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
                      maxLines: 1,
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
