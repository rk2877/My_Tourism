import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class AssamDistrictsPage extends StatefulWidget {
  @override
  _AssamDistrictsPageState createState() => _AssamDistrictsPageState();
}

class _AssamDistrictsPageState extends State<AssamDistrictsPage> {
  // 🔹 सभी जिलों की लिस्ट
  final List<Map<String, String>> allDistricts = [
    {
      "name": "Baksa (बक्सा)",
      "image": "assets/AssamDistrictsImages/baksa.jpeg",
      "description":
      "Baksa is known for Manas National Park, a UNESCO World Heritage Site.\nबक्सा मानस नेशनल पार्क के लिए प्रसिद्ध है, जो यूनेस्को विश्व धरोहर स्थल है।",
    },
    {
      "name": "Barpeta (बरपेटा)",
      "image": "assets/AssamDistrictsImages/barpeta.jpeg",
      "description":
      "Barpeta is famous for Barpeta Satra and cultural heritage.\nबरपेटा अपने बरपेटा सत्र और सांस्कृतिक विरासत के लिए प्रसिद्ध है।",
    },
    {
      "name": "Biswanath (विश्वनाथ)",
      "image": "assets/AssamDistrictsImages/biswanath.jpeg",
      "description":
      "Biswanath is known as the 'Land of Satras' and Biswanath Ghat.\nविश्वनाथ 'सत्रों की भूमि' और विश्वनाथ घाट के लिए प्रसिद्ध है।",
    },
    {
      "name": "Bongaigaon (बोंगाईगांव)",
      "image": "assets/AssamDistrictsImages/bongaigaon.jpeg",
      "description":
      "Bongaigaon is an important commercial and cultural hub.\nबोंगाईगांव एक महत्वपूर्ण व्यावसायिक और सांस्कृतिक केंद्र है।",
    },
    {
      "name": "Cachar (कछार)",
      "image": "assets/AssamDistrictsImages/cachar.jpeg",
      "description":
      "Cachar is known for Silchar town and tea gardens.\nकछार सिलचर नगर और चाय बागानों के लिए प्रसिद्ध है।",
    },
    {
      "name": "Charaideo (चराइदेव)",
      "image": "assets/AssamDistrictsImages/charaideo.jpeg",
      "description":
      "Charaideo is famous for Ahom dynasty Maidams (burial mounds).\nचराइदेव अहोम वंश की माईडम (समाधियों) के लिए प्रसिद्ध है।",
    },
    {
      "name": "Chirang (चिरांग)",
      "image": "assets/AssamDistrictsImages/chirang.jpeg",
      "description":
      "Chirang is rich in forests and Bodoland culture.\nचिरांग अपने जंगलों और बोडोलैंड संस्कृति के लिए प्रसिद्ध है।",
    },
    {
      "name": "Darrang (दर्रांग)",
      "image": "assets/AssamDistrictsImages/darrang.jpeg",
      "description":
      "Darrang is famous for Orang National Park.\nदर्रांग ओरांग नेशनल पार्क के लिए प्रसिद्ध है।",
    },
    {
      "name": "Dhemaji (धीमाजी)",
      "image": "assets/AssamDistrictsImages/dhemaji.jpeg",
      "description":
      "Dhemaji is known for its agriculture and scenic beauty.\nधीमाजी अपनी कृषि और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
    },
    {
      "name": "Dhubri (धुबरी)",
      "image": "assets/AssamDistrictsImages/dhubri.jpeg",
      "description":
      "Dhubri is located on the Brahmaputra riverbank and famous for Gurdwara Sri Guru Tegh Bahadur Sahib.\nधुबरी ब्रह्मपुत्र नदी के किनारे स्थित है और गुरुद्वारा श्री गुरु तेग बहादुर साहिब के लिए प्रसिद्ध है।",
    },
    {
      "name": "Dibrugarh (डिब्रूगढ़)",
      "image": "assets/AssamDistrictsImages/dibrugarh.jpeg",
      "description":
      "Dibrugarh is known as the Tea City of India.\nडिब्रूगढ़ भारत का 'चाय नगर' कहलाता है।",
    },
    {
      "name": "Dima Hasao (डीमा हसाओ)",
      "image": "assets/AssamDistrictsImages/dima_hasao.jpeg",
      "description":
      "Dima Hasao (North Cachar Hills) is famous for Haflong hill station.\nडीमा हसाओ (नॉर्थ कछार हिल्स) हाफलांग हिल स्टेशन के लिए प्रसिद्ध है।",
    },
    {
      "name": "Goalpara (गोलपाड़ा)",
      "image": "assets/AssamDistrictsImages/goalpara.jpeg",
      "description":
      "Goalpara is rich in history and natural beauty.\nगोलपाड़ा इतिहास और प्राकृतिक सुंदरता से भरपूर है।",
    },
    {
      "name": "Golaghat (गोलाघाट)",
      "image": "assets/AssamDistrictsImages/golaghat.jpeg",
      "description":
      "Golaghat is famous for Kaziranga National Park.\nगोलाघाट काज़ीरंगा नेशनल पार्क के लिए प्रसिद्ध है।",
    },
    {
      "name": "Hailakandi (हैलाकांडी)",
      "image": "assets/AssamDistrictsImages/hailakandi.jpeg",
      "description":
      "Hailakandi is known for agriculture and tea estates.\nहैलाकांडी कृषि और चाय बागानों के लिए प्रसिद्ध है।",
    },
    {
      "name": "Hojai (होज़ाई)",
      "image": "assets/AssamDistrictsImages/hojai.jpeg",
      "description":
      "Hojai is an important commercial district.\nहोज़ाई एक महत्वपूर्ण व्यावसायिक जिला है।",
    },
    {
      "name": "Jorhat (जोरहाट)",
      "image": "assets/AssamDistrictsImages/jorhat.jpeg",
      "description":
      "Jorhat is famous for Majuli island and tea plantations.\nजोरहाट माजुली द्वीप और चाय बागानों के लिए प्रसिद्ध है।",
    },
    {
      "name": "Kamrup (कामरूप)",
      "image": "assets/AssamDistrictsImages/kamrup.jpeg",
      "description":
      "Kamrup is known for Hajo pilgrimage site and ancient temples.\nकामरूप हाजो तीर्थस्थल और प्राचीन मंदिरों के लिए प्रसिद्ध है।",
    },
    {
      "name": "Kamrup Metropolitan (कामरूप मेट्रोपॉलिटन)",
      "image": "assets/AssamDistrictsImages/kamrup_metropolitan.jpeg",
      "description":
      "Kamrup Metropolitan includes Guwahati, the largest city of Assam.\nकामरूप मेट्रोपॉलिटन में गुवाहाटी शामिल है, जो असम का सबसे बड़ा शहर है।",
    },
    {
      "name": "Karbi Anglong (कार्बी आंगलोंग)",
      "image": "assets/AssamDistrictsImages/karbi_anglong.jpeg",
      "description":
      "Karbi Anglong is famous for its hills and Karbi tribal culture.\nकार्बी आंगलोंग अपनी पहाड़ियों और करबी जनजातीय संस्कृति के लिए प्रसिद्ध है।",
    },
    {
      "name": "Karimganj (करीमगंज)",
      "image": "assets/AssamDistrictsImages/karimganj.jpeg",
      "description":
      "Karimganj is a border district with lush greenery.\nकरीमगंज सीमा जिला है, जो हरी-भरी प्रकृति के लिए प्रसिद्ध है।",
    },
    {
      "name": "Kokrajhar (कोकराझार)",
      "image": "assets/AssamDistrictsImages/kokrajhar.jpeg",
      "description":
      "Kokrajhar is the headquarters of Bodoland Territorial Region.\nकोकराझार बोडोलैंड टेरिटोरियल रीजन का मुख्यालय है।",
    },
    {
      "name": "Lakhimpur (लखीमपुर)",
      "image": "assets/AssamDistrictsImages/lakhimpur.jpeg",
      "description":
      "Lakhimpur is known for tea gardens and scenic beauty.\nलखीमपुर चाय बागानों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
    },
    {
      "name": "Majuli (माजुली)",
      "image": "assets/AssamDistrictsImages/majuli.jpeg",
      "description":
      "Majuli is the world's largest river island.\nमाजुली विश्व का सबसे बड़ा नदी द्वीप है।",
    },
    {
      "name": "Morigaon (मोरीगांव)",
      "image": "assets/AssamDistrictsImages/morigaon.jpeg",
      "description":
      "Morigaon is famous for Mayong, known as the Land of Black Magic.\nमोरीगांव मायोंग के लिए प्रसिद्ध है, जिसे 'काला जादू की भूमि' कहा जाता है।",
    },
    {
      "name": "Nagaon (नगांव)",
      "image": "assets/AssamDistrictsImages/nagaon.jpeg",
      "description":
      "Nagaon is known for Kaziranga National Park part and Srimanta Sankardev birthplace.\nनगांव काज़ीरंगा नेशनल पार्क के हिस्से और श्रीमंत शंकरदेव के जन्मस्थान के लिए प्रसिद्ध है।",
    },
    {
      "name": "Nalbari (नलबाड़ी)",
      "image": "assets/AssamDistrictsImages/nalbari.jpeg",
      "description":
      "Nalbari is famous for temples and agricultural fields.\nनलबाड़ी मंदिरों और कृषि भूमि के लिए प्रसिद्ध है।",
    },
    {
      "name": "Sivasagar (शिवसागर)",
      "image": "assets/AssamDistrictsImages/sivasagar.jpeg",
      "description":
      "Sivasagar is famous for Ahom dynasty monuments and Sivasagar tank.\nशिवसागर अहोम वंश के स्मारकों और शिवसागर तालाब के लिए प्रसिद्ध है।",
    },
    {
      "name": "Sonitpur (सोनीतपुर)",
      "image": "assets/AssamDistrictsImages/sonitpur.jpeg",
      "description":
      "Sonitpur is known for Nameri National Park.\nसोनीतपुर नामेरी नेशनल पार्क के लिए प्रसिद्ध है।",
    },
    {
      "name": "South Salmara-Mankachar (दक्षिण सलमारा-मनकाचार)",
      "image": "assets/AssamDistrictsImages/south_salmara_mankachar.jpeg",
      "description":
      "South Salmara-Mankachar is a border district along Bangladesh.\nदक्षिण सलमारा-मनकाचार बांग्लादेश की सीमा पर स्थित जिला है।",
    },
    {
      "name": "Tinsukia (तिनसुकिया)",
      "image": "assets/AssamDistrictsImages/tinsukia.jpeg",
      "description":
      "Tinsukia is known for Dibru-Saikhowa National Park and oil industries.\nतिनसुकिया डिब्रू-सैखोवा नेशनल पार्क और तेल उद्योगों के लिए प्रसिद्ध है।",
    },
    {
      "name": "Udalguri (उदलगुरी)",
      "image": "assets/AssamDistrictsImages/udalguri.jpeg",
      "description":
      "Udalguri is known for tea gardens and wildlife.\nउदलगुरी चाय बागानों और वन्यजीवों के लिए प्रसिद्ध है।",
    },
  ];

  // 🔹 Filtered List
      List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = allDistricts;
  }

  void _filterDistricts(String query) {
    setState(() {
      filteredDistricts = allDistricts
          .where((district) =>
      district["name"]!.toLowerCase().contains(query.toLowerCase()) ||
          district["description"]!
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assam Districts (असम जिले)",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search district...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: _filterDistricts,
            ),
          ),

          // 📋 District List
          Expanded(
            child: ListView.builder(
              itemCount: filteredDistricts.length,
              itemBuilder: (context, index) {
                final district = filteredDistricts[index];
                return Card(
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                  child: ListTile(
                    leading: Image.asset(
                      district["image"]!,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      district["name"]!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      district["description"]!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TouristPlacesPage(
                            districtName: district["name"]!,
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