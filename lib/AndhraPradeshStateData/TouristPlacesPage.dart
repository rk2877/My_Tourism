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
    "Guntur (गुंटूर)": [
      {
        "name": "Amaravati Stupa (अमरावती स्तूप)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/d/de/British_Museum_Asia_14.jpg",
        "description":
        "Ancient Buddhist site with historical relics. प्राचीन बौद्ध स्थल।"
      },
      {
        "name": "Undavalli Caves (उंडावल्ली गुफाएँ)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/4/47/Undavalli_Caves%2C_Vijayawada%2C_Guntur%2C_Andhra_Pradesh%2C_India_%282018%29_1.jpg",
        "description":
        "Rock-cut caves with monolithic statues. शिलाच्छेदित गुफाएँ।"
      },
      {
        "name": "Mangalagiri Temple (मंगलगिरी मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/7/7a/Diguva_mangalagiri_temple_guntur_dist_AP.jpg",
        "description":
        "Famous Narasimha Swamy temple. प्रसिद्ध नरसिंह स्वामी मंदिर।"
      },
      {
        "name": "Uppalapadu Bird Sanctuary (उप्पलपाडु पक्षी अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG-svLxtZ25gX-nSWDteaHqfyK1ipknGMPAw&s",
        "description":
        "Home to migratory birds like pelicans. प्रवासी पक्षियों का घर।"
      },
      {
        "name": "Kondaveedu Fort (कोंडवीडु किला)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/kondaveedu-fort-guntur-andhra-pradesh-2-attr-hero?qlt=82&ts=1726743768425",
        "description":
        "Historic hilltop fort with scenic views. ऐतिहासिक पहाड़ी किला।"
      },
      {
        "name": "Bhattiprolu Stupa (भट्टीप्रोलु स्तूप)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN_to3E3RKbZValO9y1ABvT9I9kTZg9R1l7Q&s",
        "description":
        "Ancient Buddhist stupa of great archaeological value. प्राचीन बौद्ध स्तूप।"
      },
      {
        "name": "Tenali (तेनाली)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/0/0c/Tenali_Ramakrishna_statue.jpg",
        "description": "Cultural town famous for Tenali Rama. तेनालीराम के लिए प्रसिद्ध।"
      },
      {
        "name": "Nagarjuna Sagar Dam (नागार्जुन सागर बाँध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd1G-ufHxiKTce-pSKalMh91o0Vzu9CzSxqQ&s",
        "description": "One of the largest dams in India. भारत के सबसे बड़े बाँधों में से एक।"
      },
      {
        "name": "Chebrolu (चेब्रोलु)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/f/fa/Chebrolu_Temple.jpg",
        "description": "Village with ancient temples. प्राचीन मंदिरों वाला गाँव।"
      },
      {
        "name": "Ettipothala Waterfalls (एट्टीपोथला झरना)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBsUOeNojeJgIqWvTmnlTTgmDXxl5zDPxaDw&s",
        "description": "Beautiful waterfall surrounded by greenery. हरा-भरा झरना।"
      },
      {
        "name": "Kotappakonda Temple (कोटप्पकोंडा मंदिर)",
        "image": "https://media.newindianexpress.com/TNIE/import/2023/2/19/original/temple.JPG?w=1200&h=675&auto=format%2Ccompress&fit=max&enlarge=true",
        "description": "Renowned hill temple of Lord Shiva. प्रसिद्ध शिव मंदिर।"
      },
      {
        "name": "Pedakakani Temple (पेदाकाकनी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFRP-15LXxeWFcnvZAZ_lsXeFEaTOkZCz_Hg&s",
        "description": "Ancient temple dedicated to Lord Shiva. प्राचीन शिव मंदिर।"
      },
    ],
    "Krishna (कृष्णा)": [
      {
        "name": "Kanaka Durga Temple (कनक दुर्गा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPnPJN1ey--8vwDQjLdbmR_5b9dqh91VYLew&s",
        "description": "Famous temple dedicated to Goddess Kanaka Durga on Indrakeeladri Hill, Vijayawada. विजयवाड़ा के इंद्रकीलाद्रि पहाड़ी पर स्थित देवी कनक दुर्गा को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Prakasam Barrage (प्रकाशम बैराज)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/LR-6085.jpg/500px-LR-6085.jpg",
        "description": "Iconic barrage across Krishna River, scenic evening views. कृष्णा नदी पर बना प्रसिद्ध बैराज, शाम के दृश्य के लिए मशहूर।"
      },
      {
        "name": "Bhavani Island (भवानी द्वीप)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnJj4tRfagupRnn1QbZtYVK8kj87J9uDgMUA&s",
        "description": "Largest river island on Krishna River with resorts and water sports. कृष्णा नदी पर स्थित सबसे बड़ा रिवर आइलैंड, रिसॉर्ट्स और वॉटर स्पोर्ट्स के लिए प्रसिद्ध।"
      },
      {
        "name": "Undavalli Caves (उंदवल्ली गुफाएं)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/4/47/Undavalli_Caves%2C_Vijayawada%2C_Guntur%2C_Andhra_Pradesh%2C_India_%282018%29_1.jpg",
        "description": "Ancient rock-cut caves with massive statue of Lord Vishnu. प्राचीन शैल-कट गुफाएं, भगवान विष्णु की विशाल प्रतिमा के साथ।"
      },
      {
        "name": "Manginapudi Beach (मंगिनापुडी बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa6S17PqBMrgP_pKE9DhAIljyuYH3SuqL5yA&s",
        "description": "Popular beach near Machilipatnam with black soil. मछलीपट्टनम के पास स्थित प्रसिद्ध बीच, काली मिट्टी के लिए प्रसिद्ध।"
      },
      {
        "name": "Rajiv Gandhi Park (राजीव गांधी पार्क)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/18/8f/de/pathway-to-rajiv-gandhi.jpg?w=700&h=400&s=1",
        "description": "Beautiful park with musical fountains and mini zoo. सुंदर पार्क जिसमें म्यूज़िकल फाउंटेन और छोटा चिड़ियाघर है।"
      },
      {
        "name": "Mogalrajapuram Caves (मोगलराजपुरम गुफाएं)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Moghalrajpuram_Caves_01.jpg/1200px-Moghalrajpuram_Caves_01.jpg",
        "description": "Ancient caves with idols of Lord Nataraja and Ardhanarishvara. प्राचीन गुफाएं, जिनमें भगवान नटराज और अर्धनारीश्वर की मूर्तियां हैं।"
      },
      {
        "name": "Hazarat Bal Mosque (हजरत बल मस्जिद)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSvONYEAR3JuU2HkW4o3Pj1dRAhQZaHr7Odw&s",
        "description": "Important mosque in Vijayawada with Indo-Islamic architecture. विजयवाड़ा की महत्वपूर्ण मस्जिद, हिंद-इस्लामी स्थापत्य कला का उदाहरण।"
      },
      {
        "name": "Subramanya Swamy Temple (सुब्रमण्य स्वामी मंदिर, Mopidevi)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0e65xYeVgf8Xxu2c3TJTXZueB-JeqCGyEwg&s",
        "description": "Famous temple dedicated to Lord Subramanya, attracts devotees from across AP. भगवान सुब्रमण्य को समर्पित प्रसिद्ध मंदिर, आंध्र प्रदेश भर से भक्त आते हैं।"
      },
      {
        "name": "Kondapalli Fort (कोंडापल्ली किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/5/5a/Vijayawada-Kondapalli_Quilla.jpg",
        "description": "Historic fort famous for Kondapalli toys. प्राचीन किला, कोंडापल्ली खिलौनों के लिए मशहूर।"
      },
      {
        "name": "Gunadala Matha Shrine (गुनाडला माता चर्च)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHxuRaRRPA-MLixpzH2w-BDp8K8Rx_Fj_0tQ&s",
        "description": "Christian pilgrimage site dedicated to Mother Mary. मदर मैरी को समर्पित ईसाई तीर्थ स्थल।"
      },
      {
        "name": "Kuchipudi Village (कुचिपुड़ी गांव)",
        "image": "https://i.ytimg.com/vi/WAb3yuhKk6I/maxresdefault.jpg",
        "description": "Birthplace of Kuchipudi dance form, cultural center. कुचिपुड़ी नृत्य शैली का जन्मस्थान, सांस्कृतिक केंद्र।"
      },
      {
        "name": "Gandhi Hill (गांधी हिल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-wmqosFkoJaGlvbVHgDEe3UphcIMCXkyLgA&s",
        "description": "Memorial for Mahatma Gandhi with museum and planetarium. महात्मा गांधी की याद में बना स्मारक, संग्रहालय और तारामंडल।"
      },
    ],
    "Nellore (नेल्लोर)": [
      {
        "name": "sri ranganathaswamy temple  (श्री रंगनाथस्वामी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfIRqcVEmT4HAM_IneXqaZkWndWqJDeO505A&s",
        "description": "A famous temple dedicated to Lord Ranganatha on the banks of the Penna River. पेनना नदी के किनारे भगवान रंगनाथ को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Mypadu Beach (मायपाडु बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUdqeTYnfP_GZ0zbKDfoLwz212TtRqohbUEQ&s",
        "description": "Scenic beach with golden sands and coconut trees, perfect for relaxation. सुनहरी रेत और नारियल के पेड़ों वाला खूबसूरत समुद्र तट।"
      },
      {
        "name": "Pulicat Lake (पुलिकट झील)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/c/cc/India_-Pulicat_Lake-023-_lake_landscape.jpg",
        "description": "India's second-largest brackish water lake, famous for migratory birds. भारत की दूसरी सबसे बड़ी खारे पानी की झील, प्रवासी पक्षियों के लिए प्रसिद्ध।"
      },
      {
        "name": "Udayagiri Fort (उदयगिरि किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwaRs1z3njIXKA8f6J96hO2FXOcGV7Ugpl9A&s",
        "description": "Historic fort with ancient temples and scenic hill views. प्राचीन मंदिरों और सुंदर पहाड़ी दृश्यों वाला ऐतिहासिक किला।"
      },
      {
        "name": "Nelapattu Bird Sanctuary (नेलपट्टू पक्षी अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4642-iKE3H1SgDO38pK75KoAutWBDVmuN7A&s",
        "description": "Sanctuary famous for pelicans and migratory birds. पेलिकन और प्रवासी पक्षियों के लिए प्रसिद्ध अभयारण्य।"
      },
      {
        "name": "Jonnawada Kamakshi Temple (जोनावाडा कामाक्षी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnv9FvNC-OW7efkZOBCPGAFKy5KFbD8G6-lw&s",
        "description": "Renowned temple of Goddess Kamakshi attracting thousands of devotees. देवी कामाक्षी का प्रसिद्ध मंदिर, हजारों भक्तों को आकर्षित करता है।"
      },
      {
        "name": "Krishnapatnam Port (कृष्णपट्टनम बंदरगाह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9QF3XlHykgoTbT0ZjnJqOfy1IlsWg6m5mnQ&s",
        "description": "One of India's major ports with scenic coastal surroundings. भारत के प्रमुख बंदरगाहों में से एक, खूबसूरत तटीय वातावरण के साथ।"
      },
      {
        "name": "Someswara Swamy Temple, Someswaram (सोमेश्वर स्वामी मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/SomeswaraSwamy-5.JPG/1200px-SomeswaraSwamy-5.JPG",
        "description": "Historic Shiva temple with beautiful architecture. शानदार वास्तुकला वाला ऐतिहासिक शिव मंदिर।"
      },
      {
        "name": "Satish Dhawan Space Centre (सतीश धवन स्पेस सेंटर, श्रीहरिकोटा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfkcjo7MUTHphagCoezpDhbcRlJbtSSTr-Xw&s",
        "description": "ISRO's launch site, known worldwide for satellite launches. इसरो का लॉन्च स्थल, उपग्रह प्रक्षेपण के लिए विश्व प्रसिद्ध।"
      },
      {
        "name": "Narasimha Konda (नरसिंह कोण्डा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaAI7t_ygld2Hoe3gP1hxMjEfC6mPFZ1Zhyg&s",
        "description": "Hill temple dedicated to Lord Narasimha with panoramic views. भगवान नरसिंह को समर्पित पहाड़ी मंदिर, मनोरम दृश्य प्रदान करता है।"
      },
      {
        "name": "Penchalakona (पेंचलकोंडा)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Penchalakona2.JPG/250px-Penchalakona2.JPG",
        "description": "Pilgrimage site with Lord Narasimha temple amidst scenic hills. सुंदर पहाड़ियों के बीच भगवान नरसिंह का तीर्थ स्थल।"
      },
    ],
    "Chittoor (चित्तूर)": [
      {
        "name": "Tirumala Venkateswara Temple (तिरुमला वेंकटेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1S185C6gUp1q2TAt_RqFGEfRtcR4hR96__w&s",
        "description": "World-famous Hindu temple dedicated to Lord Venkateswara. भगवान वेंकटेश्वर को समर्पित विश्व प्रसिद्ध मंदिर।"
      },
      {
        "name": "Talakona Waterfalls (तलकोना जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5DnnQhJuTCBRmC6FEJ5IOUDUKRkUayWadOQ&s",
        "description": "Highest waterfall in Andhra Pradesh amidst lush greenery. आंध्र प्रदेश का सबसे ऊँचा झरना, हरियाली से घिरा।"
      },
      {
        "name": "Chandragiri Fort (चंद्रगिरी किला)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/chandragiri-fort-tirupati-andhra-pradesh-1-new-attr-hero?qlt=82&ts=1742149835282",
        "description": "Historic fort built by Vijayanagara kings. विजयनगर राजाओं द्वारा निर्मित ऐतिहासिक किला।"
      },
      {
        "name": "Sri Kalahasti Temple (श्री कालाहस्ती मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnssvTHdyT5gY2m1WU9wOKAUR6PIGirDIm1w&s",
        "description": "Famous Shiva temple known for Rahu-Ketu pooja. राहु-केतु पूजा के लिए प्रसिद्ध शिव मंदिर।"
      },
      {
        "name": "Horsley Hills (हॉर्सले हिल्स)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpESqHZrQtA_2fOwL53x_bbBIOxUKHNP1qlA&s",
        "description": "Popular hill station with panoramic views. सुंदर दृश्यों वाला प्रसिद्ध हिल स्टेशन।"
      },
      {
        "name": "Kapila Theertham (कपिला तीर्थम)",
        "image": "https://i0.wp.com/hindupost.in/wp-content/uploads/2025/02/The-Hindu.png?resize=696%2C391&ssl=1",
        "description": "Scenic waterfall and temple near Tirupati. तिरुपति के पास दर्शनीय झरना और मंदिर।"
      },
      {
        "name": "ISKCON Temple, Tirupati (इस्कॉन मंदिर, तिरुपति)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQOsnKHJBfrnhxuVIyGS9y6H3D0kQFZ1Icjw&s",
        "description": "Beautiful temple of Lord Krishna. भगवान कृष्ण का सुंदर मंदिर।"
      },
      {
        "name": "Kanipakam Vinayaka Temple (कनीपक्कम विनायक मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkHQ295AYlMJdIuY7zJm3RtReB5jqRazLVjQ&s",
        "description": "Ancient Ganesha temple with unique idol. प्राचीन गणेश मंदिर जिसमें अद्भुत मूर्ति है।"
      },
      {
        "name": "Sri Venkateswara Zoological Park (श्री वेंकटेश्वर प्राणी उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGrqkYP_0iFm0-vwRvGQH9j25-0S8uVAi0wA&s",
        "description": "Largest zoological park in Asia. एशिया का सबसे बड़ा प्राणी उद्यान।"
      },
      {
        "name": "Sri Padmavathi Ammavari Temple (श्री पद्मावती अम्मावरि मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh0RODJVSojw0GOn96bvbutm8K_u27tYAKew&s",
        "description": "Temple dedicated to Goddess Padmavathi in Tiruchanur. तिरुचनूर में देवी पद्मावती को समर्पित मंदिर।"
      },
      {
        "name": "Tirupati (तिरुपति शहर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/4/4e/Tirumala_090615.jpg",
        "description": "Famous pilgrimage city with many temples. कई मंदिरों वाला प्रसिद्ध तीर्थ शहर।"
      },
      {
        "name": "Kailasakona Waterfalls (कैलासकोना जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/92/ef/41/kailasakona-waterfalls.jpg?w=900&h=500&s=1",
        "description": "Serene waterfall near Nagalapuram. नागलापुरम के पास शांत जलप्रपात।"
      },
      {
        "name": "Tiruchanur (तिरुचनूर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Padmavathi_Ammavari_Temple.JPG/1200px-Padmavathi_Ammavari_Temple.JPG",
        "description": "Sacred place of Goddess Padmavathi. देवी पद्मावती का पवित्र स्थान।"
      },
    ],
    "YSR Kadapa (वाईएसआर कडप्पा)": [
      {
        "name": "Gandikota Fort (गंडिकोटा किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ6_pKELaS4Q9-QspuqzhO_ZASXETBXEircQ&s",
        "description":
        "Known as the 'Grand Canyon of India' with breathtaking gorge views. इसे 'भारत का ग्रैंड कैन्यन' कहा जाता है, शानदार खाई और चट्टानी दृश्य के लिए प्रसिद्ध।"
      },
      {
        "name": "Belum Caves (बेलुम गुफाएँ)",
        "image": "https://i0.wp.com/eindiatourism.in/wp-content/uploads/2024/07/Belum_caves_12.jpg?resize=640%2C360&ssl=1",
        "description":
        "Second largest cave system in India with stalactite formations. भारत की दूसरी सबसे बड़ी गुफाएँ, अद्भुत चूना-पत्थर संरचनाओं के लिए प्रसिद्ध।"
      },
      {
        "name": "Pushpagiri Temple (पुष्पगिरि मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdqdpq8XDV_bkm7l-6vVkgsQ3uvakfq1dZRg&s",
        "description":
        "Ancient temple complex dedicated to Lord Shiva. भगवान शिव को समर्पित प्राचीन मंदिर परिसर।"
      },
      {
        "name": "Ameen Peer Dargah (अमीन पीर दरगाह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4b4bZKi8NLNMEdTGV_tPSKsQoRa_sFEPwpQ&s",
        "description":
        "Famous Sufi shrine visited by people of all religions. प्रसिद्ध सूफी दरगाह, सभी धर्मों के लोग दर्शन करने आते हैं।"
      },
      {
        "name": "Veerabhadra Swamy Temple, Rayachoti (वीरभद्र स्वामी मंदिर, रायचोटी)",
        "image": "https://assets.eenadu.net/article_img/11092022sun-sf2b.jpg",
        "description":
        "One of the oldest Lord Shiva temples in Andhra Pradesh. आंध्र प्रदेश के सबसे प्राचीन शिव मंदिरों में से एक।"
      },
      {
        "name": "Sri Venkateswara Wildlife Sanctuary (श्री वेंकटेश्वर वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNbe2wD8XfeSmNnNItC-sofqV5iIMtXnkugg&s",
        "description":
        "Rich flora and fauna, home to endangered species. वन्यजीव और दुर्लभ प्रजातियों के लिए प्रसिद्ध।"
      },
      {
        "name": "Siddavatam Fort (सिद्धवतं किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/SidhoutFort2.jpg/250px-SidhoutFort2.jpg",
        "description":
        "Historical fort on the banks of Penna River. पेनना नदी के किनारे स्थित ऐतिहासिक किला।"
      },
      {
        "name": "Devuni Kadapa Temple (देवुनी कडप्पा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/8d/89/4c/caption.jpg?w=1200&h=-1&s=1",
        "description":
        "Sacred temple marking the beginning of Tirupati pilgrimage. तिरुपति यात्रा का प्रारंभिक बिंदु माना जाने वाला पवित्र मंदिर।"
      },
      {
        "name": "Vontimitta Kodanda Ramaswamy Temple (वोंटिमिट्टा कोदंड रामस्वामी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgSkDqwR79WrMR4ts4IJRrlWgFpkhDugzvUQ&s",
        "description":
        "Renowned Rama temple with grand architecture. भव्य वास्तुकला वाला प्रसिद्ध श्रीराम मंदिर।"
      },
      {
        "name": "Mylavaram Dam (मायलवरम बाँध)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/d/df/Long_view_of_Mylavaram_reservoir.jpg",
        "description":
        "Picturesque dam on Pennar River, popular picnic spot. पेनना नदी पर बना सुंदर बाँध, पिकनिक स्थल के रूप में प्रसिद्ध।"
      },
    ],
    "Anantapur (अनंतपुर)": [
      {
        "name": "Penukonda Fort (पेनुकोंडा किला)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/penukonda-fort-anantpur-andhra-pradesh-1-attr-hero?qlt=82&ts=1726743891514",
        "description": "Historic fort with beautiful views of surrounding hills. खूबसूरत पहाड़ियों के दृश्यों वाला ऐतिहासिक किला।"
      },
      {
        "name": "Gooty Fort (गूटी किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPDD2GgY-HzxmllgwgdsBLPHeldWEj7Z0eDA&s",
        "description": "Ancient fort known for its strategic location. प्राचीन किला, रणनीतिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Kadiri Temple (कादिरी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcqEFtu5s8vKChvccIN8L9BJS7nk0XF6DykA&s",
        "description": "Temple dedicated to Lord Lakshmi Narasimha, popular pilgrimage site. भगवान लक्ष्मी नरसिंह को समर्पित मंदिर, प्रसिद्ध तीर्थ स्थल।"
      },
      {
        "name": "Gooty Church (गूटी चर्च)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlPXY2XsdlAKsY3WYYXUF_Fby-FilOJ_h-0w&s",
        "description": "Historic church with colonial architecture. उपनिवेशकालीन वास्तुकला वाला ऐतिहासिक चर्च।"
      },
      {
        "name": "Lepakshi Temple (लेपाक्षी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX0Zg9eEVm5wTyAuI8rbCu_0iZIt8Eh5Q3TA&s",
        "description": "Famous for hanging pillar, murals, and Nandi statue. लटकी हुई स्तंभ, भित्ति चित्र और नंदी प्रतिमा के लिए प्रसिद्ध।"
      },
      {
        "name": "Gandikota Gorge (गंडिकोटा घाटी)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Indian_Grand_Canyon_Sudhakar_Bichali.jpg/1200px-Indian_Grand_Canyon_Sudhakar_Bichali.jpg",
        "description": "Breathtaking canyon known as 'Grand Canyon of India'. 'भारत का ग्रैंड कैन्यन' के नाम से मशहूर अद्भुत घाटी।"
      },
      {
        "name": "Vontimitta Temple (वोंटिमिट्टा मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Vontimitta_Temple.jpg/1200px-Vontimitta_Temple.jpg",
        "description": "Renowned temple with intricate carvings. जटिल नक्काशी के लिए प्रसिद्ध मंदिर।"
      },
      {
        "name": "Mangalagiri Hills (मंगलागिरी हिल्स)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/c/c0/Mangalagiri_town.jpg",
        "description": "Scenic hills with temples and panoramic views. मंदिरों और मनोरम दृश्यों वाली खूबसूरत पहाड़ियाँ।"
      },
      {
        "name": "Chandragiri Fort (चंद्रगिरी किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/d/d1/Raaja_mahal_1.JPG",
        "description": "Historic fort built during Vijayanagara era. विजयनगर काल में निर्मित ऐतिहासिक किला।"
      },
      {
        "name": "Penukonda Monuments (पेनुकोंडा स्मारक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAgrQQOiHX1bs3FtRSC0M_mfxKD-pAkiVBNw&s",
        "description": "Ancient temples and structures with historical significance. प्राचीन मंदिर और ऐतिहासिक महत्व वाले स्मारक।"
      },
      {
        "name": "Puttaparthi (पुत्तापर्थी)",
        "image": "https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2022/12/Puttaparthi-Andhra-Pradesh.jpg?fit=1024%2C778&ssl=1",
        "description": "Famous spiritual town, home of Sri Sathya Sai Baba. प्रसिद्ध आध्यात्मिक शहर, श्री साईं बाबा का घर।"
      },
      {
        "name": "Sri Sathya Sai Baba Ashram (श्री सत्या साईं बाबा आश्रम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8OdOBXAxfGqVtocIfK5Y0mjeiK2FeP_-jFQ&s",
        "description": "Major pilgrimage center attracting devotees worldwide. विश्वभर से भक्तों को आकर्षित करने वाला प्रमुख तीर्थ स्थल।"
      },
      {
        "name": "Chennekothapalle Waterfalls (चेनकोतपल्ले जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO4kXolqCHkBb4lmqkYBGbi0AfzR65XTt86g&s",
        "description": "Beautiful waterfall surrounded by hills and forests. पहाड़ियों और जंगलों से घिरा खूबसूरत झरना।"
      },
      {
        "name": "Tallapaka (तल्लापाका)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/SA_Rajampet.jpg/1200px-SA_Rajampet.jpg",
        "description": "Birthplace of Annamacharya, famous composer and saint. प्रसिद्ध संगीतकार और संत अन्नमाचार्य का जन्मस्थान।"
      },
    ],
    "Kurnool (कुर्नूल)": [
      {
        "name": "Konda Reddy Fort (कोंडा रेड्डी किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGgM_C_Ffx8mX9k88tkVAgAqaPIJkXKzC1dA&s",
        "description": "Historic fort in the heart of Kurnool city. कुरनूल शहर के केंद्र में ऐतिहासिक किला।"
      },
      {
        "name": "Oravakallu Rock Garden (ओरवाकल्लू रॉक गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPdeMjD8sxhfQ1cetJUrH4ABxtaKQCjviddA&s",
        "description": "Natural rock formations and scenic landscape. प्राकृतिक चट्टानी संरचनाएं और सुंदर दृश्य।"
      },
      {
        "name": "Yaganti Temple (यगंती मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA6AdGGfdes6ppQj3HiXu6DbU-8qexNtD_fw&s",
        "description": "Ancient temple dedicated to Lord Shiva and Nandi statue. भगवान शिव और नंदी प्रतिमा के लिए प्राचीन मंदिर।"
      },
      {
        "name": "Srisailam Dam (श्रीसैलम बाँध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7aw7hlI2GbOHq4wwz5Oqv6-wR08D6OY_IJw&s",
        "description": "Famous dam on Krishna River, surrounded by hills. कृष्णा नदी पर प्रसिद्ध बाँध, पहाड़ियों से घिरा।"
      },
      {
        "name": "Srisailam Temple (श्रीसैलम मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Srisailam.jpg/960px-Srisailam.jpg",
        "description": "One of the twelve Jyotirlingas, major pilgrimage site. बारह ज्योतिर्लिंगों में से एक, प्रमुख तीर्थ स्थल।"
      },
      {
        "name": "Ahobilam Temple (अहोबिलम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb8e5Zs04Uu_WJNr5wMcrNvFqO_S5MKzn72Q&s",
        "description": "Hill temples dedicated to Lord Narasimha. भगवान नरसिंह को समर्पित पहाड़ी मंदिर।"
      },
      {
        "name": "Rollapadu Wildlife Sanctuary (रोल्लापाडु वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHttLPzSTQnK2nmhbd695HsXjskhswLcEw0w&s",
        "description": "Home to endangered Great Indian Bustard birds. संकटग्रस्त ग्रेट इंडियन बस्टर्ड पक्षियों का प्राकृतिक आवास।"
      },
      {
        "name": "Mahanandi Temple (महानंदी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/ed/b3/63/perennial-pool.jpg?w=900&h=500&s=1",
        "description": "Ancient temple with natural water springs. प्राकृतिक जल स्रोतों वाला प्राचीन मंदिर।"
      },
      {
        "name": "Orvakallu Dam (ओरवाकल्लू बाँध)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/orvakallu-rock-garden-kurnool-andhra-pradesh-1-attr-hero?qlt=82&ts=1726744002257",
        "description": "Scenic dam with boating and picnic spots. नौका विहार और पिकनिक स्थल के लिए खूबसूरत बाँध।"
      },
      {
        "name": "Kurnool Museum (कुरनूल संग्रहालय)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/kurnool-museum-kurnool-ap-1-attr-hero-1?qlt=82&ts=1726743945813 ",
        "description": "Exhibits on local history, culture, and artifacts. स्थानीय इतिहास, संस्कृति और कलाकृतियों पर प्रदर्शन।"
      },
      {
        "name": "Chintala Venkataramana Temple (चिंतला वेंकटारमण मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgWMK8IpnZPI4Yn67gyJs8XWprGVDVp-e7uA&s",
        "description": "Ancient temple with beautiful carvings. सुंदर नक्काशियों वाला प्राचीन मंदिर।"
      },
    ],
    "Prakasam (प्रकाशम)": [
      {
        "name": "Bhavanasi Lake (भवनासी झील)",
        "image": "https://avathioutdoors.gumlet.io/travelGuide/dev/ananthagiri-hills_P6882.jpg",
        "description": "Picturesque freshwater lake popular for boating and picnics. नौका विहार और पिकनिक के लिए प्रसिद्ध रमणीय झील।"
      },
      {
        "name": "Singarayakonda Beach (सिंगरायकोंडा बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY5TUT-m3UWZxbBWLOQma0pqK21jlor__nmw&s",
        "description": "Popular coastal spot for relaxation and sunrise views. विश्राम और सूर्योदय के लिए प्रसिद्ध समुद्र तट।"
      },
      {
        "name": "Giddalur Waterfalls (गिद्धालुर जलप्रपात)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/21/54/b5/56/temple.jpg",
        "description": "Picturesque waterfall amid nature. प्राकृतिक वातावरण में रमणीय जलप्रपात।"
      },
      {
        "name": "Mypadu Beach (मायपाडु बीच)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/c/ce/Mypadu_Beach.jpg",
        "description": "Beautiful beach with calm waves and golden sand. शांत लहरें और सुनहरी रेत वाला सुंदर समुद्र तट।"
      },
      {
        "name": "Parchur Temple (पारचूर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb2Ql-wzAYnv2Rk1pgK-Z0yBRivg5dmucNZA&s",
        "description": "Famous local temple with religious significance. धार्मिक महत्व वाला प्रसिद्ध स्थानीय मंदिर।"
      },
      {
        "name": "Chirala Beach (चिराला बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLU4IXxNggyNAqLCcMI2WYi53o-nQy8vO6Dw&s",
        "description": "Popular beach destination known for scenic sunset. रमणीय सूर्यास्त के लिए प्रसिद्ध बीच।"
      },
    ],
    "East Godavari (पूर्वी गोदावरी)": [
      {
        "name": "Kadiyapulanka Mangrove Forest (कडियापुलंका मैंग्रोव जंगल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-79dcovvi2MYBNPvc3jdEIMJSCxu5klhuUw&s",
        "description": "Beautiful mangrove forest, perfect for eco-tourism. सुंदर मैंग्रोव जंगल, इको-टूरिज़्म के लिए आदर्श।"
      },
      {
        "name": "Papikondalu Hills (पापीकोंडालु पहाड़ियाँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKX4iBFZUAvoSspfy6QdTyttyvkCXrsOz09g&s",
        "description": "Scenic hills along Godavari River, popular for river cruises. गोदावरी नदी के किनारे सुंदर पहाड़ियाँ, नदी क्रूज़ के लिए प्रसिद्ध।"
      },
      {
        "name": "Dowleswaram Barrage (डौलसवरम बैराज)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShL00hzr86hreC45qEncnVaYroE6vegKPw8A&s",
        "description": "Historic barrage built by Sir Visvesvaraya. सर विश्वेश्वरैया द्वारा निर्मित ऐतिहासिक बैराज।"
      },
      {
        "name": "Draksharamam Temple (द्राक्षरामम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrKuG4egw-HFNwrMhQmZkzko9gYVrqhwn06w&s",
        "description": "Ancient temple dedicated to Lord Shiva, one of the Pancharama Kshetras. भगवान शिव को समर्पित प्राचीन मंदिर, पांच रामेश्वरम तीर्थों में से एक।"
      },
      {
        "name": "Coringa Wildlife Sanctuary (कोरिंगा वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9slIXvJ-ayJ1l-uqHzVUIMLcEmXO40pOEYQ&s",
        "description": "Mangrove habitat with diverse flora and fauna. विविध वनस्पति और जीव-जंतुओं वाला मैंग्रोव आवास।"
      },
      {
        "name": "Hope Island (होप द्वीप)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAzHHNi8KUSTlNjaP1ANUBFcrwcRbuA1YgZQ&s",
        "description": "Scenic island near Kakinada with pristine beaches. काकीनाडा के पास सुंदर और स्वच्छ समुद्र तट वाला द्वीप।"
      },
      {
        "name": "Sir Arthur Cotton Museum (सर आर्थर कॉटन संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNL5jon2OPR8mxqs-Epy_NuJv9eQwhLWIV2A&s",
        "description": "Museum showcasing irrigation and engineering history. सिंचाई और इंजीनियरिंग इतिहास को दर्शाने वाला संग्रहालय।"
      },
      {
        "name": "Annavaram Temple (अन्नावारम मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/a/ac/A_Hindu_temple_at_Annavaram_Andhra_Pradesh.jpg",
        "description": "Famous temple of Lord Venkateswara, attracting millions annually. भगवान वेंकटेश्वर का प्रसिद्ध मंदिर, हर साल लाखों भक्तों को आकर्षित करता है।"
      },
    ],
    "West Godavari (पश्चिमी गोदावरी)": [
      {
        "name": "Dwaraka Tirumala Temple (द्वारका तिरुमला मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBM7UrUoFio3WBG8GrPVO8EzVzxirAXa3DQg&s",
        "description": "Famous temple dedicated to Lord Venkateswara. भगवान वेंकटेश्वर को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Kolleru Lake (कोल्लेरु झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfS98ZnnapxPhIO4ytNSu_YqtKtChtpvpCPQ&s",
        "description": "Famous freshwater lake and bird sanctuary. प्रसिद्ध ताजे पानी की झील और पक्षी अभयारण्य।"
      },
      {
        "name": "Bhimeswaram Temple (भीमेश्वरम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_S7U5aO0ODenXBYo8HelCoSgVAt6BIbH8oQ&s",
        "description": "Ancient Shiva temple attracting pilgrims from across the state. प्राचीन शिव मंदिर, पूरे राज्य से तीर्थयात्रियों को आकर्षित करता है।"
      },
      {
        "name": "Narasapur Beach (नरसापुर बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq-yMIFSuxSo5EMLvCGI8W4ZIJQAJv_VyWgA&s",
        "description": "Popular coastal spot with golden sand and sunsets. सुनहरी रेत और सूर्यास्त के लिए प्रसिद्ध तटीय स्थल।"
      },
      {
        "name": "Pedavegi (पेदवेगी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVs6jVkQIYUgwn8qaT0151vwsWoNgy2tEbrQ&s",
        "description": "Historical site with ancient temples and archaeological remains. प्राचीन मंदिर और पुरातात्विक अवशेष वाला ऐतिहासिक स्थल।"
      },
      {
        "name": "Vatluru Park (वाटलुरु पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdPdIUDeprSiXjwBFKH1L7tLIQWjyswVFNTA&s",
        "description": "Relaxing green space in West Godavari district. पश्चिम गोदावरी जिले में आरामदायक हरा-भरा क्षेत्र।"
      },
      {
        "name": "Ramatheertham (रामतीरथम)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/2/29/1000_year_old_Sri_Rama_temple_on_top_of_Bodhikonda_01.jpg",
        "description": "Famous pilgrimage site with ancient temples. प्राचीन मंदिरों वाला प्रसिद्ध तीर्थ स्थल।"
      },
    ],
    "Vizianagaram (विजयनगरम)": [
      {
        "name": "Vizianagaram Fort (विजयनगरम किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5FhDEL8rCeP3NH6JzkfkGBRhUXi-hmGsAIg&s",
        "description": "Historic fort built in 1712, showcasing ancient architecture. 1712 में निर्मित ऐतिहासिक किला, प्राचीन वास्तुकला को प्रदर्शित करता है।"
      },
      {
        "name": "Govindapuram Temple (गोविंदपुरम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW39jVWMVluZyKPsJ-VUzW_BA3OI0x_1gf2w&s",
        "description": "Famous temple dedicated to Lord Shiva and local deity. भगवान शिव और स्थानीय देवी-देवता को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Pydithalli Cave (पिडिथल्ली गुफा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/0d/81/8c/caption.jpg?w=1200&h=1200&s=1",
        "description": "Ancient rock-cut Buddhist cave with historical importance. ऐतिहासिक महत्व वाली प्राचीन बौद्ध गुफा।"
      },
      {
        "name": "Ramatheertham (रामतीरथम)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/2/29/1000_year_old_Sri_Rama_temple_on_top_of_Bodhikonda_01.jpg",
        "description": "Pilgrimage site with ancient temples on hills. पहाड़ियों पर प्राचीन मंदिरों वाला तीर्थ स्थल।"
      },
      {
        "name": "Pusapati Palace (पुसापति पैलेस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHKDkUuM-Ue3_WMJYRIYV3hFOYj-Oh1zyhCQ&s",
        "description": "Royal palace showcasing heritage and architecture. विरासत और वास्तुकला प्रदर्शित करने वाला शाही महल।"
      },
      {
        "name": "Vepada Waterfalls (वेपाडा जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRQyEy1ZBdBFbWQ_yzkn4aPlF4FEqJzGJ3EQ&s",
        "description": "Scenic waterfall surrounded by lush greenery. हरे-भरे वातावरण से घिरा रमणीय जलप्रपात।"
      },
      {
        "name": "Araku Valley Viewpoint (अरकू वैली व्यूपॉइंट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsG0dOlyo4ZAdb6U2YaN7bGpog-Njh3RZrBw&s",
        "description": "Scenic viewpoint offering panoramic hills view. मनोरम पहाड़ियों का दृश्य प्रदान करने वाला सुंदर व्यूपॉइंट।"
      },
    ],
    "Srikakulam (श्रीकाकुलम)": [
      {
        "name": "Srikurmam Temple (श्रीकुरम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTOdVRGBuO-y76GtFTtdjq3MANISoQfz8Kjw&s",
        "description": "Ancient temple dedicated to Lord Vishnu, unique architecture. भगवान विष्णु को समर्पित प्राचीन मंदिर, अनूठी वास्तुकला।"
      },
      {
        "name": "Arasavalli Sun Temple (अरासवल्ली सूर्य मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjLnlDxM7rCbXK_7MiBt8_UCld3g-PgKOu0w&s",
        "description": "Ancient temple dedicated to Sun God, major pilgrimage site. सूर्य देव को समर्पित प्राचीन मंदिर, प्रमुख तीर्थ स्थल।"
      },
      {
        "name": "Kalingapatnam Beach (कालिंगापटनम बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFaa25V2pnu71P5atPvNO5LBsLTI-Hb9Xs6A&s",
        "description": "Popular beach known for sunrise views and scenic beauty. सूर्योदय और खूबसूरत दृश्य के लिए प्रसिद्ध समुद्र तट।"
      },
      {
        "name": "Darmavaram Waterfalls (दार्मावरम जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVAxHXzYhW_sCY6iLcv-PqE7QGGBCBJAsAtA&s",
        "description": "Picturesque waterfall amidst hills and forests. पहाड़ियों और जंगलों के बीच रमणीय जलप्रपात।"
      },
      {
        "name": "Salihundam Buddhist Site (सलीहुंडम बौद्ध स्थल)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/5/55/Salihundam_Historic_Buddhist_Remains_3_by_GPuvvada_2010.jpg",
        "description": "Ancient Buddhist stupa and monastery ruins. प्राचीन बौद्ध स्तूप और मठ के अवशेष।"
      },
      {
        "name": "Srikakulam Fort (सृकाकुलम किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA7l3kzZstVLmhTS7XLXf9v-z0-7Pxt9xs-Q&s",
        "description": "Ancient fort with panoramic city views. मनोरम शहर के दृश्य वाला प्राचीन किला।"
      },
      {
        "name": "Kalingapatnam Lighthouse (कालिंगापटनम लाइटहाउस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3x8nmorM2ZMlB4dOtdOBXRCoxAZxmaM6dUA&s",
        "description": "Historic lighthouse along the Bay of Bengal coast. बंगाल की खाड़ी के तट पर ऐतिहासिक लाइटहाउस।"
      },
      {
        "name": "Baruva Beach (बारुवा बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQiqIMLSxfk18L2vcAYYSmmC80N-wWDX2Tcg&s",
        "description": "Scenic beach famous for fishing and sunrise. मछली पकड़ने और सूर्योदय के लिए प्रसिद्ध सुंदर समुद्र तट।"
      },
      {
        "name": "Maredumilli Forests (मारेदुमिली वन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgRNu52qDeIy_tz1AvxyGjryuaRjy0uWNafA&s",
        "description": "Dense forests with trekking and eco-tourism opportunities. घने जंगल, ट्रेकिंग और इको-टूरिज़्म के लिए आदर्श।"
      },
    ],
    "Visakhapatnam (विशाखापट्टनम)": [
      {
        "name": "Ramakrishna Beach (रामकृष्ण बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJUXXEkWUMbJFYHr0HVf4-X7yJzGfGAeZURQ&s",
        "description": "Popular beach in Visakhapatnam for relaxation and sunset. विशाखापट्टनम में लोकप्रिय समुद्र तट, विश्राम और सूर्यास्त के लिए।"
      },
      {
        "name": "Kailasagiri Hill Park (कैलासगिरी हिल पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-R3eeskw3pirm8tADdlISyCsh9ePgZ81k1A&s",
        "description": "Hilltop park with panoramic city and sea views. शहर और समुद्र के मनोरम दृश्य वाला पहाड़ी पार्क।"
      },
      {
        "name": "Araku Valley (अरकू वैली)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLHGxiNzDUXKAsSCLqC41_JMt1cYmsPKrdxQ&s",
        "description": "Scenic valley known for coffee plantations and waterfalls. कॉफी बागानों और जलप्रपातों के लिए प्रसिद्ध खूबसूरत घाटी।"
      },
      {
        "name": "Borra Caves (बोरा गुफाएँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzuJk6gpnHxOHB_RGlMIzY6s_Mp83gsmqoZg&s",
        "description": "Stalactite and stalagmite formations in limestone caves. चूना-पत्थर की गुफाओं में स्टैलेक्टाइट और स्टैलेग्माइट संरचनाएँ।"
      },
      {
        "name": "Simhachalam Temple (सिंहाचलम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbYhCEAYH64zBpmCKVHpA57Gmvg9qWADApjA&s",
        "description": "Famous temple of Lord Varaha Narasimha, spiritual hub. भगवान वराह नरसिंह का प्रसिद्ध मंदिर, आध्यात्मिक केंद्र।"
      },
      {
        "name": "INS Kursura Submarine Museum (आईएनएस कुर्सुरा सबमरीन संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpQ_po3GhLox7Ms7s3Qs2cmhpfd5QgEAxa6g&s",
        "description": "Unique museum inside a decommissioned submarine. सेवा से मुक्त पनडुब्बी के अंदर अनूठा संग्रहालय।"
      },
      {
        "name": "Thotlakonda Buddhist Complex (थोटलकोंडा बौद्ध परिसर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKnB9bpgThKyoiP2hnEm1z5K_HRf2AaZwSxA&s",
        "description": "Ancient Buddhist site on a hill overlooking the sea. समुद्र के दृश्य वाली पहाड़ी पर प्राचीन बौद्ध स्थल।"
      },
      {
        "name": "Yarada Beach (यराडा बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoqC30a0NhEC0cEFfiN_YioPyNFIRJtm1rNA&s",
        "description": "Secluded beach with pristine waters, ideal for relaxation. शांत और साफ पानी वाला सुदूर समुद्र तट, विश्राम के लिए आदर्श।"
      },
      {
        "name": "Kambalakonda Wildlife Sanctuary (कम्बालाकोंडा वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ8nRL7-svj6vjK2yrde2QIMSQqJNBliFsPQ&s",
        "description": "Forest sanctuary with trekking and biodiversity. ट्रेकिंग और जैव विविधता वाला वन्यजीव अभयारण्य।"
      },
      {
        "name": "Rushikonda Beach (रुशिकोंडा बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS61gIWKLEDw_QCIlgPTreodOG1lJLYfJABIg&s",
        "description": "Popular beach for water sports and sunbathing. जलक्रीड़ा और धूप सेंकने के लिए लोकप्रिय समुद्र तट।"
      },
      {
        "name": "VUDA Park (वुडा पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAYHzUrIU6Zy2ZKDJoenbyP-Cw7fBF9eN48Q&s",
        "description": "Urban park with gardens, fountains and recreational facilities. उद्यान, फव्वारे और मनोरंजन सुविधाओं वाला शहरी पार्क।"
      },
    ],

    "Anakapalli (अनकापल्ली)": [
      {
        "name": "Borra Caves (बोर्रा गुफाएं)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzuJk6gpnHxOHB_RGlMIzY6s_Mp83gsmqoZg&s",
        "description": "Famous limestone caves with stunning stalactite and stalagmite formations. प्रसिद्ध चूना पत्थर की गुफाएं जिनमें स्टैलेक्टाइट और स्टैलेग्माइट की आश्चर्यजनक संरचनाएं हैं।"
      },
      {
        "name": "Kailasagiri Hill Park (कैलाशगिरि हिल पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-R3eeskw3pirm8tADdlISyCsh9ePgZ81k1A&s",
        "description": "Hilltop park offering panoramic views of Visakhapatnam city and Bay of Bengal. पहाड़ी की चोटी पर स्थित पार्क जहाँ से विशाखापट्नम शहर और बंगाल की खाड़ी का मनोरम दृश्य दिखता है।"
      },
      {
        "name": "Tatipudi Reservoir (तातिपुड़ी जलाशय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLDSfu9BGqp0QSFuBDSoKd8DjX0Fdpve-21g&s",
        "description": "Scenic reservoir surrounded by lush green hills. हरी-भरी पहाड़ियों से घिरा हुआ मनोरम जलाशय।"
      },
      {
        "name": "Ananthagiri Coffee Plantations (आनंथगिरि कॉफी बागान)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0c/98/97/51/coffee-plantation.jpg",
        "description": "Famous coffee plantations in the Eastern Ghats. पूर्वी घाट में स्थित प्रसिद्ध कॉफी बागान।"
      },
      {
        "name": "Bojjana Konda (बोज्जाना कोंडा)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/c/c5/Bojjana_Konda_statue_06.jpg",
        "description": "Historic Buddhist site with rock-cut caves. चट्टानों में खुदी हुई गुफाओं वाला ऐतिहासिक बौद्ध स्थल।"
      },
      {
        "name": "Gangavaram Beach (गंगावरम बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNlKC4E03fvCD75Efop8voFijE2ua94ksC1A&s",
        "description": "Serene beach ideal for relaxation. विश्राम के लिए उपयुक्त शांतिपूर्ण समुद्र तट।"
      },
      {
        "name": "Pudimadaka Lighthouse (पुडिमडका लाइटहाउस)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/1c/5b/3e/excellent-view-of-sea.jpg?w=1200&h=-1&s=1",
        "description": "Historic lighthouse with scenic views. ऐतिहासिक लाइटहाउस जहाँ से सुंदर दृश्य दिखते हैं।"
      },
      {
        "name": "Kondakarla Ava Bird Sanctuary (कोंडाकर्ला अवा पक्षी अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSftk3xT2k5w7QVb8xCFylJ6SW5YWyGEpHGtw&s",
        "description": "Bird sanctuary known for migratory birds. प्रवासी पक्षियों के लिए प्रसिद्ध पक्षी अभयारण्य।"
      },
      {
        "name": "Sri Satyanarayana Temple (श्री सत्यनारायण मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoZoyfxnnTOwz6Eu4XbtSy3P8jlutuFflNZQ&s",
        "description": "Popular temple dedicated to Lord Satyanarayana. भगवान सत्यनारायण को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Bheemili Beach (भीमिली बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScFVLwWdx8v90EyCvtdQKcccIhIKoXQYgUgQ&s",
        "description": "Popular beach with golden sand. सुनहरी रेत वाला प्रसिद्ध समुद्र तट।"
      },
      {
        "name": "R.K. Beach (आर.के. बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJUXXEkWUMbJFYHr0HVf4-X7yJzGfGAeZURQ&s",
        "description": "Famous city beach with scenic sunsets. मनोरम सूर्यास्त वाला प्रसिद्ध शहर का समुद्र तट।"
      },
      {
        "name": "Kondakarla Lake (कोंडाकर्ला झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwDfnZbceDSk_m4yXPYnNQWRrzCAblMEtqkA&s",
        "description": "Lake surrounded by lush greenery. हरी-भरी हरियाली से घिरी झील।"
      }
    ],

    "Annamaya": [
      {
        "name": "Gurramkonda Fort (गुर्रमकोंडा किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/b/bc/Gurramkonda_Hill_Fort.jpg",
        "description": "Historic fort with architectural significance. ऐतिहासिक और स्थापत्य महत्व वाला किला।"
      },
      {
        "name": "Koundinya Wildlife Sanctuary (कौंडिन्य वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdfqW3uMOOxHDqWJj5I3_OdLTbLhPYxs6-Vw&s",
        "description": "Sanctuary known for elephant population. हाथियों की आबादी के लिए प्रसिद्ध अभयारण्य।"
      },
      {
        "name": "Rajampeta Fort (राजम्पेट किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Tallakapaka_annamaya.jpg/1200px-Tallakapaka_annamaya.jpg",
        "description": "Historic fort with panoramic views. ऐतिहासिक किला जहाँ से मनोरम दृश्य दिखते हैं।"
      },
      {
        "name": "Chinna Tirupati (छिन्ना तिरुपति)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQVOvfX7qNsGRBr_9k6DtF4jCwsgfydue0jQ&s",
        "description": "Temple town with replica of Tirupati temple. तिरुपति मंदिर की प्रतिकृति वाला तीर्थ स्थल।"
      },
      {
        "name": "Penna River (पेनना नदी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUe_unDclzlz7owi3CW6bq4bJuUZbz2mduGg&s",
        "description": "River known for its scenic beauty. अपनी सुंदरता के लिए प्रसिद्ध नदी।"
      },
      {
        "name": "Vontimitta Temple (वोंटिमिट्टा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgSkDqwR79WrMR4ts4IJRrlWgFpkhDugzvUQ&s",
        "description": "Temple dedicated to Lord Rama. भगवान राम को समर्पित मंदिर।"
      },
      {
        "name": "Narasimha Swamy Temple (नरसिंह स्वामी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx_wcQjP0wW-ZATd83tQaEvE4W_kCAWW5IzA&s",
        "description": "Temple dedicated to Lord Narasimha. भगवान नरसिंह को समर्पित मंदिर।"
      }
    ],

    "Bapatla (बापटल)": [
      {
        "name": "Bapatla Beach (बापतला बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe-3UcmvZXrVv64-b-Qo78hMvRLCKOyxILmg&s",
        "description": "Pristine beach with golden sands. स्वच्छ सुनहरी रेत वाला समुद्र तट।"
      },
      {
        "name": "Suryalanka Beach (सूर्यलंका बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/69/34/81/is-that-powered-parachute.jpg?w=1200&h=-1&s=1",
        "description": "Famous beach destination with resorts. रिसॉर्ट्स वाला प्रसिद्ध बीच डेस्टिनेशन।"
      },
      {
        "name": "Bhavanarayana Swamy Temple (भवनारायण स्वामी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC2lT0VzJjaPPpQ2eKRqiQSeX8t8jnSauu9Q&s",
        "description": "Ancient temple dedicated to Lord Vishnu. भगवान विष्णु को समर्पित प्राचीन मंदिर।"
      },
      {
        "name": "Pattabhi Waterfalls (पट्टाभि झरना)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTxqVB8i4W7M4iSB3aTqnzXwbibevtIrgkTQ&s",
        "description": "Scenic waterfall surrounded by greenery. हरियाली से घिरा सुंदर झरना।"
      },
      {
        "name": "Bapatla Ratha Yatra (बापतला रथ यात्रा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcWvn6WNx2TbnjIugTA462GgWuJhL10SjjbQ&s",
        "description": "Famous festival attracting thousands. हजारों लोगों को आकर्षित करने वाला प्रसिद्ध उत्सव।"
      },
      {
        "name": "Sri Krishna Devaraya Park (श्री कृष्ण देवराय पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS9oW9yI-44BPpbAKjHQNX93DyHyKzDtM4uA&s",
        "description": "Lush green park in Bapatla town. बापतला शहर में हरी-भरी पार्क।"
      },
      {
        "name": "Suryalanka Beach Resort (सूर्यलंका बीच रिसॉर्ट)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/b7/de/4a/view-from-the-balcony.jpg?w=900&h=500&s=1",
        "description": "Popular tourist resort near beach. समुद्र तट के पास प्रसिद्ध पर्यटक रिसॉर्ट।"
      },
      {
        "name": "Bapatla Mandal Museum (बापतला मंडल संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSuORbrI_lXzaG2anUUg7MMvit-iJOzo0XNA&s",
        "description": "Museum showcasing local culture and history. स्थानीय संस्कृति और इतिहास प्रदर्शित करने वाला संग्रहालय।"
      }
    ],

    "East Godavari (पूर्वी गोदावरी)": [
      {
        "name": "Konaseema Backwaters (कोनासीमा बैकवाटर्स)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkUpgd-2ZzcN0UDw41E7uAlDxjEdW7zeceBg&s",
        "description": "Scenic backwaters similar to Kerala. केरल जैसे मनोरम बैकवाटर्स।"
      },
      {
        "name": "Dindi Resort (डिंडी रिसॉर्ट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTit9bT0sDNgr6j0256J-vPWHycRJjO4p4egA&s",
        "description": "Popular resort on Godavari river banks. गोदावरी नदी के किनारे स्थित लोकप्रिय रिसॉर्ट।"
      },
      {
        "name": "Papikondalu Hills (पापिकोंडालु पहाड़ियाँ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/30/e4/0c/papi-hills.jpg?w=1200&h=-1&s=1",
        "description": "Beautiful hill ranges along Godavari river. गोदावरी नदी के किनारे सुंदर पहाड़ियाँ।"
      },
      {
        "name": "Samalkota Temples (समालकोटा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyboQ9zlAd0H05vVIcwFSFSh56QM1N0C2onw&s",
        "description": "Ancient temples with architectural beauty. स्थापत्य सौंदर्य वाले प्राचीन मंदिर।"
      },
      {
        "name": "Ramachandrapuram (रामचंद्रपुरम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTht5YfKHZBwgVsWWEi5G9gro4jPEOh-EMcDA&s",
        "description": "Historical town with cultural significance. सांस्कृतिक महत्व वाला ऐतिहासिक शहर।"
      },
      {
        "name": "Gokavaram Waterfalls (गोकेवरम झरना)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX8vbCLtPjK3pcnireEzA7eyCamS1njVnV-w&s",
        "description": "Beautiful waterfalls amidst nature. प्रकृति के बीच सुंदर झरना।"
      },
      {
        "name": "P. Gannavaram (पी. गणनवरम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuVDD3bpKlFW6xurwezdPy7Dx5CQhWlJ4k8UyQ6psizl1miAI6IyM-zyivDIr1E6X27v8&usqp=CAU",
        "description": "Famous for agriculture and temples. कृषि और मंदिरों के लिए प्रसिद्ध।"
      },
      {
        "name": "Mummidivaram (मुम्मिडिवरम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZrYmZmfI7AN1GgB6gjzQetZ3a0w6SjtzcvQ&s",
        "description": "Small town known for scenic beauty. सुंदर दृश्यों के लिए प्रसिद्ध छोटा शहर।"
      }
    ],

    "Eluru (एलुरु)": [
      {
        "name": "Eluru Buddha Park (एलूरु बुद्ध पार्क)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/1/14/Buddha_Park_in_Eluru_%28May_2019%29_9.jpg",
        "description": "Beautiful park with Buddha statue. बुद्ध प्रतिमा वाला सुंदर पार्क।"
      },
      {
        "name": "Dwaraka Tirumala Temple (द्वारका तिरुमला मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBM7UrUoFio3WBG8GrPVO8EzVzxirAXa3DQg&s",
        "description": "Famous temple of Lord Venkateswara. भगवान वेंकटेश्वर का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Guntupalli Caves (गुंटुपल्ली गुफाएं)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfH9fWp9Egu6H-0UuSwnpWiJ2rUx2nP22KQA&s",
        "description": "Ancient Buddhist rock-cut caves. प्राचीन बौद्ध गुफाएं।"
      },
      {
        "name": "Pedavegi Temple (पेदावेगी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2VsLXZRs-aDlUOz_qd0JCwMTO7abaHg7_gg&s",
        "description": "Historic temple with architecture. स्थापत्य वाला ऐतिहासिक मंदिर।"
      },
      {
        "name": "Eluru Canal (एलूरु नहर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-J-z9lXJ2HlqrlDVWvwZTLKCDK7YwPtJJTQ&s",
        "description": "Canal offering boating experience. नौका विहार का अनुभव देने वाली नहर।"
      },
      {
        "name": "Kasimkota (कासिमकोटा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-BUP88RgtAibTL2U42HyX0eQnXa_TM49eaA&s",
        "description": "Small scenic town with culture. संस्कृति वाला सुंदर छोटा शहर।"
      }
    ],

    "Kakinada (काकीनाडा)": [
      {
        "name": "Kakinada Beach (काकिनाडा बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX6RAvVQDUacgLs2lkvIlMcPNPFLkPf_4iLA&s",
        "description": "Famous beach with lighthouse. लाइटहाउस वाला प्रसिद्ध बीच।"
      },
      {
        "name": "Hope Island (होप आइलैंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAzHHNi8KUSTlNjaP1ANUBFcrwcRbuA1YgZQ&s",
        "description": "Natural island near Kakinada coast. काकिनाडा तट के पास प्राकृतिक द्वीप।"
      },
      {
        "name": "Coringa Wildlife Sanctuary (कोरिंगा वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9slIXvJ-ayJ1l-uqHzVUIMLcEmXO40pOEYQ&s",
        "description": "Mangrove forest with rich biodiversity. समृद्ध जैव विविधता वाला मैंग्रोव वन।"
      },
      {
        "name": "Kadiyam Gardens (काडियम गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTolURD1f3XWbXGwdg-nRkQvTJ-osYFTy4tTw&s",
        "description": "Famous botanical garden. प्रसिद्ध वनस्पति उद्यान।"
      },
      {
        "name": "Gokavaram Waterfalls (गोकेवरम झरना)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCLWAG_jviixClaMbDyPim98FaOvwlCO9yzw&s",
        "description": "Scenic waterfall surrounded by nature. प्रकृति से घिरा सुंदर झरना।"
      },
      {
        "name": "Pithapuram Temple (पितापुरम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0ca6M6CjJrCEpjIyEKC9NMYBgCT-TeSqiiQ&s",
        "description": "Ancient temple town with culture. संस्कृति वाला प्राचीन मंदिर नगर।"
      },
      {
        "name": "Samarlakota Fort (समरलकोटा किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyboQ9zlAd0H05vVIcwFSFSh56QM1N0C2onw&s",
        "description": "Historic fort with architecture. स्थापत्य वाला ऐतिहासिक किला।"
      },
      {
        "name": "Pavitra Sangamam (पवित्र संगम)",
        "image": "https://static2.tripoto.com/media/filter/tst/img/1414312/TripDocument/1558496955_dsc_0305.jpg",
        "description": "Where Godavari merges with sea. जहाँ गोदावरी समुद्र में मिलती है।"
      },
      {
        "name": "Kakinada Port (काकिनाडा बंदरगाह)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Far_view_of_Kakinada_port_from_Beach.jpg/1200px-Far_view_of_Kakinada_port_from_Beach.jpg",
        "description": "Major port with industrial importance. औद्योगिक महत्व वाला प्रमुख बंदरगाह।"
      }
    ],

    "Nandyal (नंद्याल)": [
      {
        "name": "Srisailam Temple (श्रीशैलम मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Srisailam.jpg/960px-Srisailam.jpg",
        "description": "Famous temple of Lord Shiva in Nandyal region. नंद्याल क्षेत्र में भगवान शिव का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Nallamala Forests (नल्लामला वन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnxrv58toUlPZ6fZt9fpbvkx81de2EroTpA&s",
        "description": "Dense forests with wildlife and trekking. वन्यजीव और ट्रैकिंग के लिए घने जंगल।"
      },
      {
        "name": "Mahanandi Temple (महानंदी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/ed/b3/63/perennial-pool.jpg?w=900&h=500&s=1",
        "description": "Ancient temple dedicated to Lord Shiva. भगवान शिव को समर्पित प्राचीन मंदिर।"
      },
      {
        "name": "Ahobilam (अहोबिलम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwZnlAD_tigiE5O-Y6HbkeOu3eVCZU8VjBjA&s",
        "description": "Famous for Narasimha temples in hills. पहाड़ियों में नरसिंह मंदिरों के लिए प्रसिद्ध।"
      },
      {
        "name": "Nandyal Reservoir (नंद्याल जलाशय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5PhEypFhDD3mhDXOUghbOkspTdBqvlxOqSw&s",
        "description": "Beautiful water reservoir surrounded by hills. पहाड़ियों से घिरा सुंदर जलाशय।"
      },
      {
        "name": "Yaganti Temple (यागंति मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA6AdGGfdes6ppQj3HiXu6DbU-8qexNtD_fw&s",
        "description": "Ancient temple known for Nandi idol. नंदी मूर्ति के लिए प्रसिद्ध प्राचीन मंदिर।"
      },
      {
        "name": "Brahmamgari Matham (ब्राह्ममगारी माथम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoEwgJZTDhr4doRjRPHvq32FLI5dQjrEuGFw&s",
        "description": "Spiritual center with historical significance. ऐतिहासिक महत्व वाला आध्यात्मिक केंद्र।"
      }
    ],

    "NTR (एनटीआर जिला)": [
      {
        "name": "Amaravati Stupa (अमरावती स्तूप)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/d/de/British_Museum_Asia_14.jpg",
        "description": "Ancient Buddhist stupa and ruins. प्राचीन बौद्ध स्तूप और अवशेष।"
      },
      {
        "name": "NTR Garden (एनटीआर गार्डन)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/6/6c/NTR_Memorial.jpg",
        "description": "Popular recreational park in Vijayawada. विजयवाड़ा में प्रसिद्ध मनोरंजन पार्क।"
      }
    ],

    "Palnadu (पलनाडु)": [
      {
        "name": "Nagarjuna Sagar Dam (नगरजुना सागर बांध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd1G-ufHxiKTce-pSKalMh91o0Vzu9CzSxqQ&s",
        "description": "Massive dam with scenic views. मनोरम दृश्य वाला विशाल बांध।"
      },
      {
        "name": "Gundlakamma Reservoir (गुंडलाकम्मा जलाशय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWJQcI49ovXwh3ZDIMcJag25NzTQsx6oPmqg&s",
        "description": "Reservoir surrounded by greenery. हरियाली से घिरा जलाशय।"
      },
      {
        "name": "Macherla Hills (माचेरला पहाड़ियाँ)",
        "image": "https://img.traveltriangle.com/blog/wp-content/uploads/2025/07/Cover-Image-8.jpg",
        "description": "Hilly region with trekking and views. ट्रैकिंग और दृश्य वाली पहाड़ी क्षेत्र।"
      },
      {
        "name": "Nallamala Wildlife Sanctuary (नल्लामला वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyc8gMRiUW4-IAruzNlXzWGpmInuEgRPeNAQ&s",
        "description": "Sanctuary for wildlife and trekking. वन्यजीव और ट्रैकिंग के लिए अभयारण्य।"
      },
      {
        "name": "Chilakaluripet Temples (चिलकलुरीपेट मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/10/a8/5a/f6/fb-img-1505406262102.jpg",
        "description": "Ancient temples with historic value. ऐतिहासिक महत्व वाले प्राचीन मंदिर।"
      },
      {
        "name": "Ponnur Temples (पोनूर मंदिर)",
        "image": "https://explorebyroad.blog/wp-content/uploads/2021/09/img_2231-768x1024.jpg",
        "description": "Ancient temples with architecture. स्थापत्य वाले प्राचीन मंदिर।"
      },
      {
        "name": "Markapur Temples (मार्कापुर मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0f/83/40/b2/markapur-temple.jpg",
        "description": "Famous temples with historic importance. ऐतिहासिक महत्व वाले प्रसिद्ध मंदिर।"
      },
      {
        "name": "Vinukonda Hills (विनुकोण्डा पहाड़ियाँ)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/c/c7/Start_of_the_Nallamala.JPG",
        "description": "Scenic hills with panoramic views. मनोरम दृश्य वाली पहाड़ियाँ।"
      }
    ],

    "Vijayanagar (विजयनगरम)": [
      {
        "name": "Araku Valley (अरकु वैली)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/7b/31/15/araku-valley.jpg?w=900&h=-1&s=1",
        "description": "Scenic valley with coffee plantations. कॉफी बागानों वाला मनोरम घाटी।"
      },
      {
        "name": "Annavaram Temple (अन्नावरम मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/a/ac/A_Hindu_temple_at_Annavaram_Andhra_Pradesh.jpg",
        "description": "Famous temple dedicated to Lord Veerabhadra. भगवान वीरभद्र को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Chaparai Waterfalls (चपराई झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/80/10/a2/water-cascade.jpg?w=1200&h=-1&s=1",
        "description": "Beautiful waterfalls surrounded by forest. जंगल से घिरा सुंदर झरना।"
      },
      {
        "name": "Pathapatnam Temple (पठापट्नम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6NVSyUTHrOBJBLvfgZwdsRrkoAQyYQUPunQ&s",
        "description": "Famous local temple with history. ऐतिहासिक महत्व वाला स्थानीय प्रसिद्ध मंदिर।"
      },
      {
        "name": "Vamsadhara River (वंसधारा नदी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvcmoB5EaMjQBEiJX0sxUt9Uzdf1Sdj2hm9w&s",
        "description": "Scenic river flowing through the district. जिले से बहती मनोरम नदी।"
      }
    ],

    "Sri Sathya Sai (श्री सत्य साईं)": [
      {
        "name": "Prashanthi Nilayam (प्रशांति निकेतन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8OdOBXAxfGqVtocIfK5Y0mjeiK2FeP_-jFQ&s",
        "description": "World-famous ashram and spiritual center. विश्व प्रसिद्ध आश्रम और आध्यात्मिक केंद्र।"
      },
      {
        "name": "Sri Sathya Sai University (विश्वविद्यालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTF0xrbMsT91DsIZy-UAmDeCd6-HNuIwksVw&s",
        "description": "Educational and spiritual institution. शैक्षिक और आध्यात्मिक संस्थान।"
      },
      {
        "name": "Chaitanya Jyoti Museum (चैतन्य ज्योति संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/f7/a8/59/chaitanya-jyoti-museum.jpg?w=1200&h=-1&s=1",
        "description": "Museum showcasing Baba's life & teachings. बाबा के जीवन और शिक्षाओं को दिखाने वाला संग्रहालय।"
      },
      {
        "name": "Sai Heritage Museum (साई हेरिटेज संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/3f/d2/photo6jpg.jpg?w=900&h=500&s=1",
        "description": "Heritage museum for devotees. भक्तों के लिए हेरिटेज संग्रहालय।"
      },
      {
        "name": "Yajur Mandir (यजुर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQePmrSOFccQ-MSxHyPuZF2MmNJcXArJcZCUg&s",
        "description": "Temple with regular spiritual programs. नियमित आध्यात्मिक कार्यक्रम वाला मंदिर।"
      },
      {
        "name": "Sai Kulwant Hall Gardens (साई कुलवंत हॉल गार्डन)",
        "image": "https://example.com/sai-kulwant-hall-gardens.jpg",
        "description": "Beautiful gardens near the main prayer hall. मुख्य प्रार्थना हॉल के पास सुंदर उद्यान।"
      }
    ],
    "Alluri Sitharama Raju (अल्लूरी सीताराम राजू)": [
      {"name": "Araku Valley (अरकु वैली)", "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/7b/31/15/araku-valley.jpg?w=900&h=-1&s=1", "description": "Famous hill station with coffee plantations. कॉफी बागानों वाला प्रसिद्ध हिल स्टेशन।"},
      {"name": "Katiki Waterfalls (काटिकी झरना)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7P7S_-pPUtzntinuh2HfPOvnOlKzjd9pMfA&s", "description": "Beautiful waterfall near Borra Caves. बोर्रा गुफाओं के पास सुंदर झरना।"},
      {"name": "Ananthagiri Coffee Plantations (आनंथगिरि कॉफी बागान)", "image": "https://media-cdn.tripadvisor.com/media/photo-s/0c/98/97/51/coffee-plantation.jpg", "description": "Famous coffee plantations in Eastern Ghats. पूर्वी घाट में प्रसिद्ध कॉफी बागान।"},
      {"name": "Padmapuram Gardens (पद्मापुरम गार्डन)", "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/04/57/60/padmapuram-gardens.jpg?w=1200&h=-1&s=1", "description": "Terraced garden in Araku Valley. अरकु वैली में सुंदर बाग।"},
      {"name": "Nagavali River (नागावली नदी)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWPQXCYajW3439YVJOM-JBOWfVUctlL7rMxA&s", "description": "Important river with natural beauty. प्राकृतिक सुंदरता वाली महत्वपूर्ण नदी।"},
],
      "Tirupati (तिरुपति)": [
        {"name": "Sri Venkateswara Temple (श्री वेंकटेश्वर मंदिर)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1S185C6gUp1q2TAt_RqFGEfRtcR4hR96__w&s", "description": "World-famous temple of Lord Venkateswara. भगवान वेंकटेश्वर का विश्व प्रसिद्ध मंदिर।"},
        {"name": "Silathoranam (सिलथोरनम)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEs0GGdXnPGabEy7ZQ0mCH7akAk52OQnqO3g&s", "description": "Natural rock formation in Tirumala. तिरुमला में प्राकृतिक चट्टानी संरचना।"},
        {"name": "Sri Kapileswara Swamy Temple (श्री कपिलेश्वर स्वामी मंदिर)", "image": "https://upload.wikimedia.org/wikipedia/commons/0/00/Kapilatheertam.jpg", "description": "Ancient Shiva temple at foot of Tirumala. तिरुमला की तलहटी में स्थित प्राचीन शिव मंदिर।"},
        {"name": "Chandragiri Fort (चंद्रगिरी किला)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAZ5z8mbJHRTqHuLUHDPYXPL1V3bpJjhe_Ng&s", "description": "Historical fort near Tirupati. तिरुपति के पास ऐतिहासिक किला।"},
        {"name": "Talakona Waterfalls (तलाकोना झरना)", "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Talakona_Waterfalls_near_Tirupati_India.jpg/250px-Talakona_Waterfalls_near_Tirupati_India.jpg", "description": "Tallest waterfall in Andhra Pradesh. आंध्र प्रदेश का सबसे ऊँचा झरना।"},
        {"name": "Tirumala Hills (तिरुमला पहाड़ियाँ)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_gdz3XEyztf8NXJADKcOinTd53wfyNr5GfA&s", "description": "Hill range with temples and scenic views. मंदिर और मनोरम दृश्य वाली पहाड़ियाँ।"},
        {"name": "Sri Venkateswara Zoological Park (श्री वेंकटेश्वर चिड़ियाघर)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGrqkYP_0iFm0-vwRvGQH9j25-0S8uVAi0wA&s", "description": "Zoo with diverse wildlife species. विविध वन्यजीव प्रजातियों वाला चिड़ियाघर।"},
        {"name": "Sri Padmavathi Ammavari Temple (श्री पद्मावती अम्मावारी मंदिर)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh0RODJVSojw0GOn96bvbutm8K_u27tYAKew&s", "description": "Famous temple dedicated to Goddess Padmavathi. देवी पद्मावती को समर्पित प्रसिद्ध मंदिर।"},
        {"name": "Govindaraja Swamy Temple (गोविंदराज स्वामी मंदिर)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaKbb1UBfTIuvTA9PQmVpZfjI4PyYnbG6tmw&s", "description": "Historic temple in Tirupati city. तिरुपति शहर में ऐतिहासिक मंदिर।"},
        {"name": "Kapila Theertham (कपिला तीर्थ)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRemltXr4frHeKSHCWOuwTNMo6zLJrp3kNauw&s", "description": "Sacred waterfall and temple. पवित्र झरना और मंदिर।"},
        {"name": "Sri Venkateswara Museum (श्री वेंकटेश्वर संग्रहालय)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Wu399BytL1B0vLqCyT1INeVpeXlLu-HNjg&s", "description": "Museum showcasing temple artifacts. मंदिर की कलाकृतियों को दिखाने वाला संग्रहालय।"},
        {"name": "Alipiri Footpath (अलीपिरी पदमार्ग)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyZkdCQzeumFwACC3K5nWPOfiEL6nHLhIS2w&s", "description": "Path for pilgrims to climb Tirumala hills. तीर्थयात्रियों के लिए तिरुमला पहाड़ियों तक का मार्ग।"},
        {"name": "Sri Venkateswara Park (श्री वेंकटेश्वर पार्क)", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNbe2wD8XfeSmNnNItC-sofqV5iIMtXnkugg&s", "description": "Beautiful park for relaxation. विश्राम के लिए सुंदर पार्क।"},
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

