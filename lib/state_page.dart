import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_tourism_app/settings_page.dart';

// Import all district pages here
import 'AndhraPradeshStateData/AndhraPradeshDistrictsPage.dart';
import 'ArunachalPradeshStateData/ArunachalDistrictsPage.dart';
import 'AssamStateData/AssamDistrictsPage.dart';
import 'BiharStateData/BiharDistrictsPage.dart';
import 'ChhattisgarhStateData/ChhattisgarhDistrictsPage.dart';
import 'GoaStateData/GoaDistrictsPage.dart';
import 'GujaratStateData/GujaratDistrictsPage.dart';
import 'HaryanaStateData/HaryanaDistrictsPage.dart';
import 'HimachalStateDate/HimachalDistrictsPage.dart';
import 'JharkhandStateData/JharkhandDistrictsPage.dart';
import 'KarnatakaStateData/KarnatakaDistrictsPage.dart';
import 'KeralaStateData/KeralaDistrictsPage.dart';
import 'MadhyaPradeshStateData/MadhyaPradeshDistrictsPage.dart';
import 'MaharashtraStateData/MaharashtraDistrictsPage.dart';
import 'ManipurSatateData/ManipurDistrictsPage.dart';
import 'MeghalayaStateData/MeghalayaDistrictsPage.dart';
import 'MizoramStateData/MizoramDistrictsPage.dart';
import 'NagalandStateData/NagalandDistrictsPage.dart';
import 'OdishaStateData/OdishaDistrictsPage.dart';
import 'PunjabStateData/PunjabDistrictsPage.dart';
import 'RajasthanStateData/RajasthanDistrictsPage.dart';
import 'SikkimStateData/SikkimDistrictsPage.dart';
import 'TamilnaduStateData/TamilNaduDistrictsPage.dart';
import 'TelanganaStateData/TelanganaDistrictsPage.dart';
import 'TripuraStateData/TripuraDistrictsPage.dart';
import 'UttarPradeshStateData/UttarPradeshDistrictsPage.dart';
import 'UttarakhandStateData/UttarakhandDistrictsPage.dart';
import 'WestBengalStateData/WestBengalDistrictsPage.dart';
import 'AndamanNicobarStateData/AndamanNicobarDistrictsPage.dart';
import 'ChandigarhStateData/ChandigarhDistrictsPage.dart';
import 'DamanDiuStateData/DamanDiuDistrictsPage.dart';
import 'DelhiStateData/DelhiDistrictsPage.dart';
import 'JammuKashmirStateData/JammuKashmirDistrictsPage.dart';
import 'LadakhStateData/LadakhDistrictsPage.dart';
import 'LakshadweepStateData/LakshadweepDistrictsPage.dart';
import 'PuducherryStateData/PuducherryDistrictsPage.dart';
import 'login_page.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  // 🔹 Notifiers for theme & font size
  final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
  final ValueNotifier<double> fontSizeNotifier = ValueNotifier(16);

  // 🔹 All states + UTs
  final List<Map<String, dynamic>> allStates = [
    // ===== States =====
    {
      "name": "Andhra Pradesh (आंध्र प्रदेश)",
      "image": "assets/images/andhra_pradesh.jpg",
      "description": "Known for Tirupati temple and beaches. आंध्र प्रदेश तिरुपति मंदिर और समुद्र तटों के लिए प्रसिद्ध है।",
      "page": AndhraPradeshDistrictsPage()
    },
    {
      "name": "Arunachal Pradesh (अरुणाचल प्रदेश)",
      "image": "assets/images/arunachal_pradesh.jpg",
      "description": "Land of the rising sun in India. भारत में सूरज की पहली किरण का राज्य।",
      "page": ArunachalPradeshDistrictsPage()
    },
    {
      "name": "Assam (असम)",
      "image": "assets/images/assam.jpg",
      "description": "Famous for tea gardens and Kaziranga National Park. चाय बागानों और काज़ीरंगा राष्ट्रीय उद्यान के लिए प्रसिद्ध।",
      "page": AssamDistrictsPage()
    },
    {
      "name": "Bihar (बिहार)",
      "image": "assets/images/bihar.jpg",
      "description": "Land of ancient universities and heritage. प्राचीन विश्वविद्यालयों और विरासत की भूमि।",
      "page": BiharDistrictsPage()
    },
    {
      "name": "Chhattisgarh (छत्तीसगढ़)",
      "image": "assets/images/chhattisgarh.jpg",
      "description": "Known for tribal culture and waterfalls. जनजातीय संस्कृति और झरनों के लिए प्रसिद्ध।",
      "page": ChhattisgarhDistrictsPage()
    },
    {
      "name": "Goa (गोवा)",
      "image": "assets/images/north_goa.jpg",
      "description": "Popular for beaches and nightlife. समुद्र तटों और रात्रि जीवन के लिए लोकप्रिय।",
      "page": GoaDistrictsPage()
    },
    {
      "name": "Gujarat (गुजरात)",
      "image": "assets/images/gujarat.jpg",
      "description": "Home to Gir lions and Somnath temple. गिर के शेर और सोमनाथ मंदिर का घर।",
      "page": GujaratDistrictsPage()
    },
    {
      "name": "Haryana (हरियाणा)",
      "image": "assets/images/haryana.jpg",
      "description": "Known for agriculture and historical sites. कृषि और ऐतिहासिक स्थलों के लिए प्रसिद्ध।",
      "page": HaryanaDistrictsPage()
    },
    {
      "name": "Himachal Pradesh (हिमाचल प्रदेश)",
      "image": "assets/images/himachal_pradesh.jpg",
      "description": "Famous for hill stations and snow. हिल स्टेशन और बर्फ के लिए प्रसिद्ध।",
      "page": HimachalPradeshDistrictsPage()
    },
    {
      "name": "Jharkhand (झारखंड)",
      "image": "assets/images/jharkhand.jpg",
      "description": "Known for forests and waterfalls. जंगलों और झरनों के लिए प्रसिद्ध।",
      "page": JharkhandDistrictsPage()
    },
    {
      "name": "Karnataka (कर्नाटक)",
      "image": "assets/images/karnataka.jpg",
      "description": "Bengaluru tech hub and Mysore Palace. बेंगलुरु तकनीकी केंद्र और मैसूर पैलेस।",
      "page": KarnatakaDistrictsPage()
    },
    {
      "name": "Kerala (केरल)",
      "image": "assets/images/kerala.jpg",
      "description": "God's own country with backwaters. बैकवाटर्स के साथ भगवान का अपना देश।",
      "page": KeralaDistrictsPage()
    },
    {
      "name": "Madhya Pradesh (मध्य प्रदेश)",
      "image": "assets/images/madhya_pradesh.jpg",
      "description": "Heart of India, rich in heritage. भारत का दिल, विरासत में समृद्ध।",
      "page": MadhyaPradeshDistrictsPage()
    },
    {
      "name": "Maharashtra (महाराष्ट्र)",
      "image": "assets/images/maharashtra.jpg",
      "description": "Mumbai city of dreams and Ajanta caves. सपनों का शहर मुंबई और अजंता गुफाएं।",
      "page": MaharashtraDistrictsPage()
    },
    {
      "name": "Manipur (मणिपुर)",
      "image": "assets/images/manipur.jpg",
      "description": "Famous for Loktak Lake. लोकटक झील के लिए प्रसिद्ध।",
      "page": ManipurDistrictsPage()
    },
    {
      "name": "Meghalaya (मेघालय)",
      "image": "assets/images/meghalaya.jpg",
      "description": "Abode of clouds and living root bridges. बादलों का घर और जीवित जड़ के पुल।",
      "page": MeghalayaDistrictsPage()
    },
    {
      "name": "Mizoram (मिजोरम)",
      "image": "assets/images/mizoram.jpg",
      "description": "Known for rolling hills and bamboo dance. लहरदार पहाड़ियों और बांस नृत्य के लिए प्रसिद्ध।",
      "page": MizoramDistrictsPage()
    },
    {
      "name": "Nagaland (नागालैंड)",
      "image": "assets/images/nagaland.jpg",
      "description": "Land of festivals and tribal culture. त्योहारों और जनजातीय संस्कृति की भूमि।",
      "page": NagalandDistrictsPage()
    },
    {
      "name": "Odisha (ओडिशा)",
      "image": "assets/images/odisha.jpg",
      "description": "Jagannath temple and Sun temple. जगन्नाथ मंदिर और सूर्य मंदिर।",
      "page": OdishaDistrictsPage()
    },
    {
      "name": "Punjab (पंजाब)",
      "image": "assets/images/punjab.jpg",
      "description": "Golden Temple and rich culture. स्वर्ण मंदिर और समृद्ध संस्कृति।",
      "page": PunjabDistrictsPage()
    },
    {
      "name": "Rajasthan (राजस्थान)",
      "image": "assets/images/rajasthan.jpg",
      "description": "Desert state with forts and palaces. रेगिस्तान राज्य, किले और महलों के साथ।",
      "page": RajasthanDistrictsPage()
    },
    {
      "name": "Sikkim (सिक्किम)",
      "image": "assets/images/sikkim.jpg",
      "description": "Himalayan state with Kanchenjunga. हिमालयी राज्य, कंचनजंगा के साथ।",
      "page": SikkimDistrictsPage()
    },
    {
      "name": "Tamil Nadu (तमिलनाडु)",
      "image": "assets/images/tamil_nadu.jpg",
      "description": "Temples, beaches, and classical arts. मंदिर, समुद्र तट और शास्त्रीय कला।",
      "page": TamilNaduDistrictsPage()
    },
    {
      "name": "Telangana (तेलंगाना)",
      "image": "assets/images/telangana.jpg",
      "description": "Charminar and Golconda fort. चारमीनार और गोलकोंडा किला।",
      "page": TelanganaDistrictsPage()
    },
    {
      "name": "Tripura (त्रिपुरा)",
      "image": "assets/images/tripura.jpg",
      "description": "Palaces and heritage. महल और विरासत।",
      "page": TripuraDistrictsPage()
    },
    {
      "name": "Uttar Pradesh (उत्तर प्रदेश)",
      "image": "assets/images/uttar_pradesh.jpg",
      "description": "Home to Taj Mahal and spiritual cities. ताजमहल और धार्मिक शहरों का घर।",
      "page": UttarPradeshDistrictsPage()
    },
    {
      "name": "Uttarakhand (उत्तराखंड)",
      "image": "assets/images/uttarakhand.jpg",
      "description": "Himalayan state with pilgrimage sites. हिमालयी राज्य, तीर्थ स्थलों के साथ।",
      "page": UttarakhandDistrictsPage()
    },
    {
      "name": "West Bengal (पश्चिम बंगाल)",
      "image": "assets/images/west_bengal.jpg",
      "description": "Kolkata and Sundarbans. कोलकाता और सुंदरबन।",
      "page": WestBengalDistrictsPage()
    },

    // ===== Union Territories =====
    {
      "name": "Andaman and Nicobar Islands (अंडमान और निकोबार द्वीपसमूह)",
      "image": "assets/images/andaman_nicobar.jpg",
      "description": "Beaches and marine life. समुद्र तट और समुद्री जीवन।",
      "page": AndamanNicobarDistrictsPage()
    },
    {
      "name": "Chandigarh (चंडीगढ़)",
      "image": "assets/images/chandigarh.jpg",
      "description": "Planned city with gardens. योजनाबद्ध शहर, बगीचों के साथ।",
      "page": ChandigarhDistrictsPage()
    },
    {
      "name": "Dadra and Nagar Haveli and Daman and Diu (दादरा और नगर हवेली और दमन और दीव)",
      "image": "assets/images/dnh_diu.jpg",
      "description": "Coastal beauty and heritage. तटीय सुंदरता और विरासत।",
      "page": DamanDiuDistrictsPage()
    },
    {
      "name": "Delhi (दिल्ली)",
      "image": "assets/images/delhi.jpg",
      "description": "Capital city of India. भारत की राजधानी।",
      "page": DelhiDistrictsPage()
    },
    {
      "name": "Jammu and Kashmir (जम्मू और कश्मीर)",
      "image": "assets/images/jammu_kashmir.jpg",
      "description": "Heaven on Earth with mountains. धरती पर स्वर्ग, पहाड़ों के साथ।",
      "page": JammuKashmirDistrictsPage()
    },
    {
      "name": "Ladakh (लद्दाख)",
      "image": "assets/images/ladakh.jpg",
      "description": "High-altitude deserts and monasteries. उच्च ऊंचाई के रेगिस्तान और मठ।",
      "page": LadakhDistrictsPage()
    },
    {
      "name": "Lakshadweep (लक्षद्वीप)",
      "image": "assets/images/lakshadweep.jpg",
      "description": "Tropical islands and coral reefs. उष्णकटिबंधीय द्वीप और प्रवाल भित्तियां।",
      "page": LakshadweepDistrictsPage()
    },
    {
      "name": "Puducherry (पुदुचेरी)",
      "image": "assets/images/puducherry.jpg",
      "description": "French colonial heritage. फ्रांसीसी औपनिवेशिक विरासत।",
      "page": PuducherryDistrictsPage()
    },
  ];


  List<Map<String, dynamic>> filteredStates = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    filteredStates = allStates;

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  void _filterStates(String query) {
    final q = query.toLowerCase();
    setState(() {
      filteredStates = allStates.where((s) =>
      s['name'].toLowerCase().contains(q) ||
          s['description'].toLowerCase().contains(q)).toList();
    });
  }

  Future<void> _refreshList() async {
    await Future.delayed(const Duration(milliseconds: 700));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surfaceVariant.withOpacity(0.1),

      // 🌈 Gradient AppBar
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6A1B9A), Color(0xFF283593)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text(
          'States of India',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            tooltip: 'Favorites',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            tooltip: 'About App',
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: 'My Tourism App',
                applicationVersion: '1.0.0',
                applicationLegalese: '© 2025 YourCompany',
              );
            },
          ),
        ],
      ),

      // 🟣 Drawer
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.deepPurple),
              accountName: Text(
                  FirebaseAuth.instance.currentUser?.displayName ?? 'Guest'),
              accountEmail:
              Text(FirebaseAuth.instance.currentUser?.email ?? ''),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.deepPurple),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),

            // ✅ नया Settings Option
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsPage()),
                );
              },
            ),

            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                if (mounted) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => LoginPage()),
                  );
                }
              },
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          // 🔎 Search Bar
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: _filterStates,
              style: const TextStyle(fontSize: 16),
              decoration: InputDecoration(
                hintText: "Search State or UT...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // 📜 Animated List
          Expanded(
            child: RefreshIndicator(
              onRefresh: _refreshList,
              child: ListView.builder(
                controller: _scrollController,
                physics: const BouncingScrollPhysics(),
                itemCount: filteredStates.length,
                itemBuilder: (context, index) {
                  final item = filteredStates[index];
                  return _AnimatedStateCard(item: item, index: index);
                },
              ),
            ),
          ),
        ],
      ),

      // ⬆️ Gradient FAB
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xFF6A1B9A), Color(0xFF283593)],
          ),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () => _scrollController.animateTo(0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut),
          child: const Icon(Icons.arrow_upward, color: Colors.white),
        ),
      ),
    );
  }
}

// 🌟 Animated Card Widget
class _AnimatedStateCard extends StatelessWidget {
  final Map<String, dynamic> item;
  final int index;
  const _AnimatedStateCard({required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    final delay = (index * 100).clamp(0, 600);
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 400 + delay),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Transform.translate(
          offset: Offset(0, (1 - value) * 30),
          child: child,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          if (item['page'] != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => item['page']),
            );
          }
        },
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          elevation: 8,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          clipBehavior: Clip.antiAlias,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: item['name'],
                child: Image.asset(
                  item['image'],
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['name'],
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.3)),
                      const SizedBox(height: 6),
                      Text(
                        item['description'],
                        style:
                        TextStyle(color: Colors.grey[700], fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10, top: 10),
                child: Icon(Icons.arrow_forward_ios, size: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}