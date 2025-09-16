import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class WestBengalDistrictsPage extends StatefulWidget {
  @override
  _WestBengalDistrictsPageState createState() => _WestBengalDistrictsPageState();
}

class _WestBengalDistrictsPageState extends State<WestBengalDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Alipurduar (अलीपुरद्वार)",
      "image": "assets/WestBengalDistrictsImages/alipurduar.jpeg",
      "description":
      "Alipurduar is known for its forests, wildlife sanctuaries, and rivers. अलीपुरद्वार अपने जंगलों, वन्यजीव अभयारण्य और नदियों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Bankura (बांकुरा)",
      "image": "assets/WestBengalDistrictsImages/bankura.jpeg",
      "description":
      "Bankura is famous for terracotta temples and traditional crafts. बांकुरा अपने मिट्टी के मंदिरों और पारंपरिक शिल्प के लिए प्रसिद्ध है।"
    },
    {
      "name": "Birbhum (बीरभूम)",
      "image": "assets/WestBengalDistrictsImages/birbhum.jpeg",
      "description":
      "Birbhum is known for its cultural heritage, fairs, and folk music. बीरभूम अपनी सांस्कृतिक विरासत, मेलों और लोक संगीत के लिए प्रसिद्ध है।"
    },
    {
      "name": "Cooch Behar (कूच बिहार)",
      "image": "assets/WestBengalDistrictsImages/cooch_behar.jpeg",
      "description":
      "Cooch Behar is famous for historical palaces and royal heritage. कूच बिहार अपने ऐतिहासिक महलों और शाही विरासत के लिए प्रसिद्ध है।"
    },
    {
      "name": "Dakshin Dinajpur (दक्षिण दिनाजपुर)",
      "image": "assets/WestBengalDistrictsImages/dakshin_dinajpur.jpeg",
      "description":
      "Known for agriculture and rural landscapes. कृषि और ग्रामीण दृश्यों के लिए प्रसिद्ध।"
    },
    {
      "name": "Darjeeling (दार्जिलिंग)",
      "image": "assets/WestBengalDistrictsImages/darjeeling.jpeg",
      "description":
      "Darjeeling is famous for tea gardens, toy train, and Himalayan views. दार्जिलिंग अपने चाय बागानों, टॉय ट्रेन और हिमालय के दृश्य के लिए प्रसिद्ध है।"
    },
    {
      "name": "Hooghly (हुगली)",
      "image": "assets/WestBengalDistrictsImages/hooghly.jpeg",
      "description":
      "Hooghly is known for historical temples, rivers, and trade centers. हुगली अपने ऐतिहासिक मंदिरों, नदियों और व्यापार केंद्रों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Howrah (हावड़ा)",
      "image": "assets/WestBengalDistrictsImages/howrah.jpeg",
      "description":
      "Howrah is known for Howrah Bridge and industrial importance. हावड़ा हावड़ा ब्रिज और औद्योगिक महत्व के लिए प्रसिद्ध है।"
    },
    {
      "name": "Jalpaiguri (जलपाईगुड़ी)",
      "image": "assets/WestBengalDistrictsImages/jalpaiguri.jpeg",
      "description":
      "Jalpaiguri is famous for tea gardens, rivers, and wildlife. जलपाईगुड़ी अपने चाय बागानों, नदियों और वन्यजीवों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Jhargram (झारग्राम)",
      "image": "assets/WestBengalDistrictsImages/jhargram.jpeg",
      "description":
      "Jhargram is known for forests, tribal culture, and temples. झारग्राम अपने जंगलों, आदिवासी संस्कृति और मंदिरों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kalimpong (कालिम्पोंग)",
      "image": "assets/WestBengalDistrictsImages/kalimpong.jpeg",
      "description":
      "Kalimpong is famous for scenic hills and Buddhist monasteries. कालिम्पोंग अपने मनोरम पहाड़ों और बौद्ध मठों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kolkata (कोलकाता)",
      "image": "assets/WestBengalDistrictsImages/kolkata.jpeg",
      "description":
      "Kolkata is known as the 'City of Joy' and famous for culture and festivals. कोलकाता को 'आनंद का शहर' कहा जाता है और यह अपनी संस्कृति और त्योहारों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Malda (मालदा)",
      "image": "assets/WestBengalDistrictsImages/malda.jpeg",
      "description":
      "Malda is famous for mangoes and historical sites. मालदा अपने आम और ऐतिहासिक स्थलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Murshidabad (मुर्शिदाबाद)",
      "image": "assets/WestBengalDistrictsImages/murshidabad.jpeg",
      "description":
      "Murshidabad is known for Nawabi culture and historical buildings. मुर्शिदाबाद अपनी नवाबी संस्कृति और ऐतिहासिक इमारतों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Nadia (नादिया)",
      "image": "assets/WestBengalDistrictsImages/nadia.jpeg",
      "description":
      "Nadia is known for religious significance and temples. नादिया अपने धार्मिक महत्व और मंदिरों के लिए प्रसिद्ध है।"
    },
    {
      "name": "North 24 Parganas (उत्तर 24 परगना)",
      "image": "assets/WestBengalDistrictsImages/north_24_parganas.jpeg",
      "description":
      "Known for wetlands, mangroves, and towns. जलक्षेत्र, मैंग्रोव और शहरों के लिए प्रसिद्ध।"
    },
    {
      "name": "Paschim Bardhaman (पश्चिम बर्धमान)",
      "image": "assets/WestBengalDistrictsImages/paschim_bardhaman.jpeg",
      "description":
      "Known for coal mines and industrial towns. कोयला खदान और औद्योगिक शहरों के लिए प्रसिद्ध।"
    },
    {
      "name": "Purba Bardhaman (पूर्व बर्धमान)",
      "image": "assets/WestBengalDistrictsImages/purba_bardhaman.jpeg",
      "description":
      "Famous for agriculture and cultural heritage. कृषि और सांस्कृतिक विरासत के लिए प्रसिद्ध।"
    },
    {
      "name": "Purba Medinipur (पूर्व मिदनापुर)",
      "image": "assets/WestBengalDistrictsImages/purba_medinipur.jpeg",
      "description":
      "Known for coastal areas and historical temples. तटीय क्षेत्र और ऐतिहासिक मंदिरों के लिए प्रसिद्ध।"
    },
    {
      "name": "Paschim Medinipur (पश्चिम मिदनापुर)",
      "image": "assets/WestBengalDistrictsImages/paschim_medinipur.jpeg",
      "description":
      "Known for forests, agriculture, and tribal culture. जंगल, कृषि और आदिवासी संस्कृति के लिए प्रसिद्ध।"
    },
    {
      "name": "South 24 Parganas (दक्षिण 24 परगना)",
      "image": "assets/WestBengalDistrictsImages/south_24_parganas.jpeg",
      "description":
      "Famous for Sundarbans mangroves and tiger reserve. सुंदरबन मैंग्रोव और बाघ अभयारण्य के लिए प्रसिद्ध।"
    },
    {
      "name": "Purulia (पुरुलिया)",
      "image": "assets/WestBengalDistrictsImages/purulia.jpeg",
      "description":
      "Purulia is known for Chhau dance, hills, and tribal culture. पुरुलिया अपने छऊ नृत्य, पहाड़ों और आदिवासी संस्कृति के लिए प्रसिद्ध है।"
    },
    {
      "name": "Uttar Dinajpur (उत्तर दिनाजपुर)",
      "image": "assets/WestBengalDistrictsImages/uttar_dinajpur.jpeg",
      "description":
      "Uttar Dinajpur is famous for agriculture and cultural diversity. उत्तर दिनाजपुर कृषि और सांस्कृतिक विविधता के लिए प्रसिद्ध है।"
    },
  ];

  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = districts;
  }

  void _filterDistricts(String query) {
    final filtered = districts.where((district) {
      final name = district['name']!.toLowerCase();
      final search = query.toLowerCase();
      return name.contains(search);
    }).toList();

    setState(() {
      filteredDistricts = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("West Bengal Districts (पश्चिम बंगाल जिले)"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterDistricts,
              decoration: InputDecoration(
                hintText: 'Search districts...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredDistricts.length,
        itemBuilder: (context, index) {
          final district = filteredDistricts[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  district["image"]!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.image_not_supported, size: 60);
                  },
                ),
              ),
              title: Text(district["name"]!),
              subtitle: Text(
                district["description"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: district["name"]!,
                      districtImage: district["image"]!,
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