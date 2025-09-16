import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class MadhyaPradeshDistrictsPage extends StatefulWidget {
  @override
  _MadhyaPradeshDistrictsPageState createState() =>
      _MadhyaPradeshDistrictsPageState();
}

class _MadhyaPradeshDistrictsPageState
    extends State<MadhyaPradeshDistrictsPage> {
  final List<Map<String, String>> districts = [
    {
      "name": "Agar Malwa (आगर मालवा)",
      "image": "assets/MadhyaPradeshDistrictsImages/agar_malwa.jpeg",
      "description": "Agar Malwa is famous for temples and agriculture. आगर मालवा मंदिरों और कृषि के लिए प्रसिद्ध है।"
    },
    {
      "name": "Alirajpur (अलीराजपुर)",
      "image": "assets/MadhyaPradeshDistrictsImages/alirajpur.jpeg",
      "description": "Alirajpur is known for tribal culture and Bhil tribes. अलीराजपुर भील जनजाति और संस्कृति के लिए प्रसिद्ध है।"
    },
    {
      "name": "Anuppur (अनूपपुर)",
      "image": "assets/MadhyaPradeshDistrictsImages/anuppur.jpeg",
      "description": "Anuppur has Amarkantak, origin of Narmada river. अनूपपुर अमरकंटक के लिए प्रसिद्ध है।"
    },
    {
      "name": "Ashoknagar (अशोकनगर)",
      "image": "assets/MadhyaPradeshDistrictsImages/ashoknagar.jpeg",
      "description": "Ashoknagar is an agricultural district. अशोकनगर एक कृषि प्रधान जिला है।"
    },
    {
      "name": "Balaghat (बलाघाट)",
      "image": "assets/MadhyaPradeshDistrictsImages/balaghat.jpeg",
      "description": "Balaghat is known for Kanha National Park. बालाघाट कान्हा राष्ट्रीय उद्यान के लिए प्रसिद्ध है।"
    },
    {
      "name": "Barwani (बड़वानी)",
      "image": "assets/MadhyaPradeshDistrictsImages/barwani.jpeg",
      "description": "Barwani lies near Narmada river and Satpura hills. बड़वानी नर्मदा नदी और सतपुड़ा पहाड़ियों के पास है।"
    },
    {
      "name": "Betul (बेतूल)",
      "image": "assets/MadhyaPradeshDistrictsImages/betul.jpeg",
      "description": "Betul is rich in forests and tribal life. बेतूल जंगलों और जनजातीय जीवन से भरपूर है।"
    },
    {
      "name": "Bhind (भिंड)",
      "image": "assets/MadhyaPradeshDistrictsImages/bhind.jpeg",
      "description": "Bhind lies on Chambal valley. भिंड चंबल घाटी पर स्थित है।"
    },
    {
      "name": "Bhopal (भोपाल)",
      "image": "assets/MadhyaPradeshDistrictsImages/bhopal.jpeg",
      "description": "Bhopal is the capital city of Madhya Pradesh, known as the City of Lakes. भोपाल मध्य प्रदेश की राजधानी है, जिसे झीलों का शहर कहा जाता है।"
    },
    {
      "name": "Burhanpur (बुरहानपुर)",
      "image": "assets/MadhyaPradeshDistrictsImages/burhanpur.jpeg",
      "description": "Burhanpur has rich Mughal heritage. बुरहानपुर मुगल धरोहर के लिए प्रसिद्ध है।"
    },
    {
      "name": "Chhatarpur (छतरपुर)",
      "image": "assets/MadhyaPradeshDistrictsImages/chhatarpur.jpeg",
      "description": "Chhatarpur is home to Khajuraho temples. छतरपुर खजुराहो मंदिरों का घर है।"
    },
    {
      "name": "Chhindwara (छिंदवाड़ा)",
      "image": "assets/MadhyaPradeshDistrictsImages/chhindwara.jpeg",
      "description": "Chhindwara is rich in forests and tribal culture. छिंदवाड़ा जंगलों और जनजातीय संस्कृति से समृद्ध है।"
    },
    {
      "name": "Damoh (दमोह)",
      "image": "assets/MadhyaPradeshDistrictsImages/damoh.jpeg",
      "description": "Damoh is rich in culture and temples. दमोह अपनी संस्कृति और मंदिरों के लिए जाना जाता है।"
    },
    {
      "name": "Datia (दतिया)",
      "image": "assets/MadhyaPradeshDistrictsImages/datia.jpeg",
      "description": "Datia is famous for Pitambara Peeth temple. दतिया पीताम्बरा पीठ मंदिर के लिए प्रसिद्ध है।"
    },
    {
      "name": "Dewas (देवास)",
      "image": "assets/MadhyaPradeshDistrictsImages/dewas.jpeg",
      "description": "Dewas is known for Tekri Hill temples. देवास टेकरी हिल मंदिरों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Dindori (डिंडोरी)",
      "image": "assets/MadhyaPradeshDistrictsImages/dindori.jpeg",
      "description": "Dindori is a tribal district with natural beauty. डिंडोरी प्राकृतिक सुंदरता और जनजातीय जीवन के लिए मशहूर है।"
    },
    {
      "name": "Gwalior (ग्वालियर)",
      "image": "assets/MadhyaPradeshDistrictsImages/gwalior.jpeg",
      "description": "Gwalior is famous for its historic fort and palaces. ग्वालियर अपने ऐतिहासिक किले और महलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Hoshangabad (होशंगाबाद)",
      "image": "assets/MadhyaPradeshDistrictsImages/hoshangabad.jpeg",
      "description": "Hoshangabad lies on the banks of Narmada River. होशंगाबाद नर्मदा नदी के किनारे बसा है।"
    },
    {
      "name": "Indore (इंदौर)",
      "image": "assets/MadhyaPradeshDistrictsImages/indore.jpeg",
      "description": "Indore is the largest city and a commercial hub. इंदौर मध्य प्रदेश का सबसे बड़ा शहर और व्यापारिक केंद्र है।"
    },
    {
      "name": "Jabalpur (जबलपुर)",
      "image": "assets/MadhyaPradeshDistrictsImages/jabalpur.jpeg",
      "description": "Jabalpur is known for Marble Rocks and Dhuandhar Falls. जबलपुर मार्बल रॉक्स और धुआंधार फॉल्स के लिए मशहूर है।"
    },
    {
      "name": "Jhabua (झाबुआ)",
      "image": "assets/MadhyaPradeshDistrictsImages/jhabua.jpeg",
      "description": "Jhabua is a tribal district known for handicrafts. झाबुआ हस्तशिल्प और जनजातीय संस्कृति के लिए प्रसिद्ध है।"
    },
    {
      "name": "Katni (कटनी)",
      "image": "assets/MadhyaPradeshDistrictsImages/katni.jpeg",
      "description": "Katni is a major railway junction and limestone area. कटनी बड़ा रेलवे जंक्शन और चूना-पत्थर क्षेत्र है।"
    },
    {
      "name": "Khandwa (खंडवा)",
      "image": "assets/MadhyaPradeshDistrictsImages/khandwa.jpeg",
      "description": "Khandwa is the birthplace of Kishore Kumar. खंडवा किशोर कुमार का जन्मस्थान है।"
    },
    {
      "name": "Khargone (खरगोन)",
      "image": "assets/MadhyaPradeshDistrictsImages/khargone.jpeg",
      "description": "Khargone is famous for cotton production. खरगोन कपास उत्पादन के लिए प्रसिद्ध है।"
    },
    {
      "name": "Mandla (मंडला)",
      "image": "assets/MadhyaPradeshDistrictsImages/mandla.jpeg",
      "description": "Mandla is a tribal region near Kanha National Park. मंडला कान्हा राष्ट्रीय उद्यान के पास का जनजातीय क्षेत्र है।"
    },
    {
      "name": "Mandsaur (मंदसौर)",
      "image": "assets/MadhyaPradeshDistrictsImages/mandsaur.jpeg",
      "description": "Mandsaur is known for its temple of Pashupatinath. मंदसौर पशुपतिनाथ मंदिर के लिए प्रसिद्ध है।"
    },
    {
      "name": "Morena (मुरैना)",
      "image": "assets/MadhyaPradeshDistrictsImages/morena.jpeg",
      "description": "Morena is known for Chambal ravines. मुरैना चंबल के बीहड़ों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Narsinghpur (नरसिंहपुर)",
      "image": "assets/MadhyaPradeshDistrictsImages/narsinghpur.jpeg",
      "description": "Narsinghpur is an agricultural region. नरसिंहपुर एक कृषि क्षेत्र है।"
    },
    {
      "name": "Neemuch (नीमच)",
      "image": "assets/MadhyaPradeshDistrictsImages/neemuch.jpeg",
      "description": "Neemuch is a center for opium production. नीमच अफीम उत्पादन के लिए प्रसिद्ध है।"
    },
    {
      "name": "Panna (पन्ना)",
      "image": "assets/MadhyaPradeshDistrictsImages/panna.jpeg",
      "description": "Panna is famous for diamond mines. पन्ना हीरे की खदानों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Rajgarh (राजगढ़)",
      "image": "assets/MadhyaPradeshDistrictsImages/rajgarh.jpeg",
      "description": "Rajgarh is known for forts and hills. राजगढ़ अपने किलों और पहाड़ियों के लिए मशहूर है।"
    },
    {
      "name": "Raisen (रायसेन)",
      "image": "assets/MadhyaPradeshDistrictsImages/raisen.jpeg",
      "description": "Raisen is famous for forts and Sanchi stupas nearby. रायसेन किलों और साँची स्तूप के लिए मशहूर है।"
    },
    {
      "name": "Ratlam (रतलाम)",
      "image": "assets/MadhyaPradeshDistrictsImages/ratlam.jpeg",
      "description": "Ratlam is famous for gold jewelry and snacks. रतलाम सोने के आभूषण और नमकीन के लिए प्रसिद्ध है।"
    },
    {
      "name": "Rewa (रीवा)",
      "image": "assets/MadhyaPradeshDistrictsImages/rewa.jpeg",
      "description": "Rewa is famous as the land of white tigers. रीवा सफेद बाघों की भूमि के रूप में प्रसिद्ध है।"
    },
    {
      "name": "Sagar (सागर)",
      "image": "assets/MadhyaPradeshDistrictsImages/sagar.jpeg",
      "description": "Sagar is an educational hub in Madhya Pradesh. सागर मध्य प्रदेश का प्रमुख शैक्षणिक केंद्र है।"
    },
    {
      "name": "Satna (सतना)",
      "image": "assets/MadhyaPradeshDistrictsImages/satna.jpeg",
      "description": "Satna is known for cement factories and religious places. सतना सीमेंट कारखानों और धार्मिक स्थलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Sehore (सीहोर)",
      "image": "assets/MadhyaPradeshDistrictsImages/sehore.jpeg",
      "description": "Sehore is a historic district with temples. सीहोर मंदिरों वाला ऐतिहासिक जिला है।"
    },
    {
      "name": "Seoni (सिवनी)",
      "image": "assets/MadhyaPradeshDistrictsImages/seoni.jpeg",
      "description": "Seoni inspired Kipling's Jungle Book. सिवनी रुडयार्ड किपलिंग की जंगल बुक की प्रेरणा का स्थान है।"
    },
    {
      "name": "Shahdol (शहडोल)",
      "image": "assets/MadhyaPradeshDistrictsImages/shahdol.jpeg",
      "description": "Shahdol is known for coal mines. शहडोल कोयला खदानों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Shajapur (शाजापुर)",
      "image": "assets/MadhyaPradeshDistrictsImages/shajapur.jpeg",
      "description": "Shajapur is known for agriculture. शाजापुर कृषि के लिए प्रसिद्ध है।"
    },
    {
      "name": "Sheopur (श्योपुर)",
      "image": "assets/MadhyaPradeshDistrictsImages/sheopur.jpeg",
      "description": "Sheopur is known for Kuno Wildlife Sanctuary. श्योपुर कूनो अभयारण्य के लिए प्रसिद्ध है।"
    },
    {
      "name": "Shivpuri (शिवपुरी)",
      "image": "assets/MadhyaPradeshDistrictsImages/shivpuri.jpeg",
      "description": "Shivpuri is known for Madhav National Park. शिवपुरी माधव राष्ट्रीय उद्यान के लिए प्रसिद्ध है।"
    },
    {
      "name": "Singrauli (सिंगरौली)",
      "image": "assets/MadhyaPradeshDistrictsImages/singrauli.jpeg",
      "description": "Singrauli is known for coal mining and power plants. सिंगरौली कोयला खदानों और बिजली संयंत्रों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Tikamgarh (टीकमगढ़)",
      "image": "assets/MadhyaPradeshDistrictsImages/tikamgarh.jpeg",
      "description": "Tikamgarh is famous for forts and temples. टीकमगढ़ किलों और मंदिरों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Ujjain (उज्जैन)",
      "image": "assets/MadhyaPradeshDistrictsImages/ujjain.jpeg",
      "description": "Ujjain is a major pilgrimage city, famous for Mahakaleshwar Temple. उज्जैन महाकालेश्वर मंदिर के लिए प्रसिद्ध एक प्रमुख तीर्थ स्थल है।"
    },
    {
      "name": "Umaria (उमरिया)",
      "image": "assets/MadhyaPradeshDistrictsImages/umaria.jpeg",
      "description": "Umaria is known for Bandhavgarh National Park. उमरिया बांधवगढ़ राष्ट्रीय उद्यान के लिए प्रसिद्ध है।"
    },
    {
      "name": "Vidisha (विदिशा)",
      "image": "assets/MadhyaPradeshDistrictsImages/vidisha.jpeg",
      "description": "Vidisha is known for Udayagiri caves. विदिशा उदयगिरि गुफाओं के लिए प्रसिद्ध है।"
    },
    {
      "name": "Agar Malwa (आगर मालवा)",
      "description": "Known for Jain temples and spiritual places like Shri Mahavirji. श्री महावीरजी जैसे जैन मंदिरों और धार्मिक स्थलों के लिए प्रसिद्ध।",
      "image": "assets/MadhyaPradeshDistrictsImages/agar_malwa.jpeg"
    },
    {
      "name": "Niwari (निवाड़ी)",
      "description": "Famous for Orchha, a historical town with palaces and temples. ओरछा अपने ऐतिहासिक किलों और मंदिरों के लिए प्रसिद्ध है।",
      "image": "assets/MadhyaPradeshDistrictsImages/niwari.jpeg"
    },
    {
      "name": "Mauganj (मऊगंज)",
      "description": "Recently formed district, rich in cultural heritage and temples. हाल ही में बना जिला, सांस्कृतिक धरोहर और मंदिरों के लिए प्रसिद्ध।",
      "image": "assets/MadhyaPradeshDistrictsImages/mauganj.jpeg"
    },

  ];

  List<Map<String, String>> filteredDistricts = [];

  @override
  void initState() {
    super.initState();
    filteredDistricts = districts;
  }

  void _filterDistricts(String query) {
    setState(() {
      filteredDistricts = districts
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
        title: Text("Madhya Pradesh Districts (मध्य प्रदेश जिले)"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              onChanged: _filterDistricts,
              decoration: InputDecoration(
                hintText: "Search District...",
                prefixIcon: Icon(Icons.search),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredDistricts.length,
              itemBuilder: (context, index) {
                final district = filteredDistricts[index];
                return Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    leading: Image.asset(
                      district["image"]!,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
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