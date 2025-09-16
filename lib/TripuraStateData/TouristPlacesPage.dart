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

  // ✅ आपके पास पहले से यह Map होगा
  final Map<String, List<Map<String, String>>> districtPlaces = {
    // 🔹 North Tripura
    "North Tripura (उत्तर त्रिपुरा)": [
      {
        "name": "Rowa Wildlife Sanctuary (रोवा वाइल्डलाइफ सेंचुरी)",
        "description":
        "A biodiversity hotspot with various species of flora and fauna. यह एक जैव विविधता केंद्र है जहां अनेक प्रकार के वनस्पति और जीव पाए जाते हैं।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_485atnq8yjWqEXJXEmFIysSniO3SdrWCAA&s",
      },
      {
        "name": "Jampui Hills (जंपुई हिल्स)",
        "description":
        "Famous for scenic beauty, orange gardens, and sunrise views. प्राकृतिक सुंदरता, संतरे के बाग और सूर्योदय के लिए प्रसिद्ध।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT22x7__ldMFkPYVovK5S6eVH6lazzJQDPvag&s",
      },
      {
        "name": "Kali Bari Temple (कालीबाड़ी मंदिर)",
        "description":
        "A famous temple dedicated to Goddess Kali. माता काली को समर्पित प्रसिद्ध मंदिर।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQOd9dre_kKYim7YtLjJVtElIqQkkIk3_XtA&s",
      },
      {
        "name": "Kurma Waterfall (कुर्मा जलप्रपात)",
        "description":
        "A scenic waterfall surrounded by lush greenery, popular for picnics and nature lovers. हरी-भरी प्रकृति से घिरा यह झरना पिकनिक और प्रकृति प्रेमियों के लिए प्रसिद्ध है।",
        "image": "https://content.jdmagicbox.com/v2/comp/north_tripura/a2/9999p3824.3824.240426095555.d6a2/catalogue/kurma-waterfall-north-tripura-tourist-attraction-97nggozhxq.jpg",
      },

    ],

    // 🔹 Unakoti
    "Unakoti (उनाकोटी)": [
      {
        "name": "Unakoti Hill (उनकोटि हिल)",
        "description":
        "Known for ancient rock carvings and Shaivite pilgrimage. प्राचीन शिलाचित्रों और शैव तीर्थ स्थल के लिए प्रसिद्ध।",
        "image": "https://upload.wikimedia.org/wikipedia/commons/f/f0/Unakoti_3.jpg",
      },
    ],

    // 🔹 Dhalai
    "Dhalai (धलाई)": [
      {
        "name": "Longtharai Hills (लोंगतराई हिल्स)",
        "description":
        "A peaceful hilly region with scenic landscapes. शांत और सुंदर पहाड़ी क्षेत्र।",
        "image": "https://media.evendo.com/locations-resized/AttractionImages/1920x466/69bda14d-732a-4275-bdd1-e3034744f2a1",
      },
      {
        "name": "Dumboor Lake (डुम्बूर झील)",
        "description":
        "A large lake famous for boating and bird watching. नौकायन और पक्षी दर्शन के लिए प्रसिद्ध बड़ी झील।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1R5ZQNtCooTPe4w2wOGcsiwyVRbUgcRmxDA&s",
      },
    ],

    // 🔹 Khowai
    "Khowai (खोवाई)": [
      {
        "name": "Baramura Eco Park (बरमुरा इको पार्क)",
        "description":
        "A scenic eco-park surrounded by lush green hills. हरे-भरे पहाड़ों से घिरा सुंदर इको पार्क।",
        "image": "https://tripuratourism.gov.in/images/tour/1661756009/86.jpg",
      },
    ],

    // 🔹 Sepahijala
    "Sepahijala (सिपाहीजला)": [
      {
        "name": "Sepahijala Wildlife Sanctuary (सिपाहीजला वाइल्डलाइफ सेंचुरी)",
        "description":
        "Known for clouded leopards and migratory birds. बादली तेंदुए और प्रवासी पक्षियों के लिए प्रसिद्ध।",
        "image": "https://tripuratourism.gov.in/images/tour/1661767990/291.jpg",
      },
      {
        "name": "Neermahal (नीरमहल)",
        "description":
        "A unique water palace built in the middle of Rudrasagar Lake, reflecting Mughal and Hindu architectural styles. रुद्रसागर झील के बीच बना एक अनोखा जल महल, जो मुगल और हिंदू वास्तुकला का मिश्रण है।",
        "image": "https://tripuratourism.gov.in/images/tour/1661759345/80.jpg",
      },
    ],

    // 🔹 Gomati
    "Gomati (गोमती)": [
      {
        "name": "Mata Tripureswari Temple (माता त्रिपुरेश्वरी मंदिर)",
        "description":
        "One of the 51 Shakti Peethas, dedicated to Goddess Tripura Sundari. 51 शक्तिपीठों में से एक, देवी त्रिपुरा सुंदरी को समर्पित।",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/tripura-sundari-temple-agartala-tripura-2-attr-hero?qlt=82&ts=1726651006473",
      },
      {
        "name": "Udaipur Bhubaneswari Temple (उदयपुर भुवनेश्वरी मंदिर)",
        "description":
        "A historic temple located near Gomati river. गोमती नदी के पास स्थित ऐतिहासिक मंदिर।",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Bhubaneswari_Temple_.Rajnagar%2CUdaipur.South_Tripura.jpg/1200px-Bhubaneswari_Temple_.Rajnagar%2CUdaipur.South_Tripura.jpg",
      },
      {
        "name": "Tepania Eco Park (तेपनिया इको पार्क)",
        "description":
        "A beautiful eco-park surrounded by lush greenery, perfect for picnics and nature walks. हरी-भरी हरियाली से घिरा एक सुंदर इको पार्क, पिकनिक और प्रकृति भ्रमण के लिए उपयुक्त।",
        "image": "https://tripuratourism.gov.in/images/tour/1661768799/271.png",
      },
      {
        "name": "Udaipur Science Centre (उदयपुर साइंस सेंटर)",
        "description":
        "An interactive science museum with exhibitions and activities for students and tourists. एक इंटरैक्टिव विज्ञान संग्रहालय जहाँ विद्यार्थियों और पर्यटकों के लिए प्रदर्शनी और गतिविधियाँ होती हैं।",
        "image": "https://static.pib.gov.in/WriteReadData/userfiles/image/image002YD6G.jpg",
      },
      {
        "name": "Coconut Island (नारियल द्वीप)",
        "description":
        "A scenic island in the middle of Dumboor Lake, famous for its coconut trees and natural beauty. डुम्बूर झील के बीच स्थित एक मनोरम द्वीप, जो नारियल के पेड़ों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/09/36/a3/9b/coconut-island.jpg",
      },
      {
        "name": "Kalyan Sagar (कल्याण सागर)",
        "description":
        "A sacred lake near Tripura Sundari Temple. त्रिपुरा सुंदरी मंदिर के पास स्थित पवित्र झील।",
        "image": "https://i.ytimg.com/vi/84cq1exMCXU/maxresdefault.jpg",
      },
    ],

    // 🔹 South Tripura
    "South Tripura (दक्षिण त्रिपुरा)": [
      {
        "name": "Pilak (पिलक)",
        "description":
        "An archaeological site with ancient sculptures. प्राचीन मूर्तियों वाला पुरातात्विक स्थल।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD4fKYyMbbLr8zFrDUON6RK8AG1ZFf9xmerg&s",
      },
      {
        "name": "Trishna Wildlife Sanctuary (त्रिश्ना वाइल्डलाइफ सेंचुरी)",
        "description":
        "Known for Indian Gaur and rich biodiversity. भारतीय गौर और समृद्ध जैव विविधता के लिए प्रसिद्ध।",
        "image": "https://content3.jdmagicbox.com/v2/comp/south_tripura/i7/9999p3823.3823.141215132124.l4i7/catalogue/trishna-wildlife-sanctuary-rajnagar-south-tripura-wildlife-sanctuary-sx9tcwooxb.jpg",
      },
      {
        "name": "Devata Mura (देवता मूड़ा)",
        "description":
        "An archaeological site known for its rock-cut carvings of Hindu deities. हिंदू देवताओं की शिलाचित्र मूर्तियों के लिए प्रसिद्ध एक पुरातात्विक स्थल।",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/2%29Chabimura%2C_the_archaeological_site_at_Devtamura.jpg/250px-2%29Chabimura%2C_the_archaeological_site_at_Devtamura.jpg",
      },
      {
        "name": "Mahamuni Buddhist Temple (महामुनि बौद्ध मंदिर)",
        "description":
        "A sacred Buddhist temple and pilgrimage site in South Tripura, visited by many devotees. दक्षिण त्रिपुरा में स्थित एक पवित्र बौद्ध मंदिर और तीर्थ स्थल, जहाँ अनेक श्रद्धालु आते हैं।",
        "image": "https://tripuratourism.gov.in/images/tour/1661769740/2.png",
      },
    ],

    // 🔹 West Tripura
    "West Tripura (पश्चिम त्रिपुरा)": [
      {
        "name": "Ujjayanta Palace (उज्जयंत पैलेस)",
        "description":
        "A royal palace in Agartala with Mughal-style gardens. अगरतला में मुगल शैली के बागानों वाला शाही महल।",
        "image": "https://latest.thedailyguardian.com/wp-content/uploads/2023/06/9-anchor-1.jpg",
      },
      {
        "name": "Jagannath Bari (जगन्नाथ बाड़ी)",
        "description":
        "A sacred temple dedicated to Lord Jagannath. भगवान जगन्नाथ को समर्पित पवित्र मंदिर।",
        "image": "https://tripuratourism.gov.in/images/tour/1701775086/49.png",
      },
      {
        "name": "Chaturdasha Temple (चतुर्दश मंदिर)",
        "description":
        "A historic temple dedicated to 14 deities. 14 देवताओं को समर्पित ऐतिहासिक मंदिर।",
        "image": "https://tripuratourism.gov.in/images/tour/1661760260/156.jpg",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final allPlaces = districtPlaces[widget.districtName] ?? [];

    // ✅ Search filter
    final filteredPlaces = allPlaces
        .where((place) =>
        place["name"]!.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.districtName} Tourist Places",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      // ✅ Search box + list
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

          // ✅ Places list
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
                          builder: (_) =>
                              PlaceDetailsPage(
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