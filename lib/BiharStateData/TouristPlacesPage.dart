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
    "Sheohar (शिवहर)": [
      {
        "name": "Ambika Sthan Temple (अंबिका स्थान मंदिर)",
        "image": "https://static.punjabkesari.in/multimedia/2023_10image_16_21_422015321ambika.jpg",
        "description": "Ambika Sthan Temple is a famous shrine of Goddess Durga in Sheohar district. ""अंबिका स्थान मंदिर, शिवहर जिले में माँ दुर्गा का प्रसिद्ध तीर्थ स्थल है।"
      },
      {
        "name": "Hanuman Mandir (हनुमान मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV-UXBanWBb_ZLXfmm5_n0qcEY3VId2v752g&s",
        "description":
        "Hanuman Mandir in Sheohar Bazar is a center of faith for locals. "
            "शिवहर बाजार का हनुमान मंदिर स्थानीय श्रद्धालुओं का आस्था केंद्र है।"
      },
      {
        "name": "Sheohar District Museum (शिवहर जिला संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaf2iyPlfomM8gzABf1zXO7FuCOLiOmDvpPw&s",
        "description":
        "The district museum preserves local heritage and cultural items. "
            "जिला संग्रहालय स्थानीय धरोहर और सांस्कृतिक वस्तुओं को संजोता है।"
      },
      {
        "name": "Devkuli Shiv Mandir (देवकुली शिव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr0xqb1HiV2pdZszQG5WLlrqs1rcL-kDKRyw&s",
        "description":
        "An ancient temple dedicated to Lord Shiva, believed to date back to the Dwapar era. "
            "यह प्राचीन शिव मंदिर है जिसे द्वापर युग का माना जाता है और यह शिवहर जिले का प्रमुख धार्मिक स्थल है।"
      },
],
      "Muzaffarpur (मुज़फ़्फ़रपुर)": [
        {
          "name": "Garibnath Dham (गरीबनाथ धाम)",
          "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMgZM27qb8dwde9j4JnQnXW_gI3KkY3zWkTg&s",
          "description": "Famous Shiva temple in the heart of Muzaffarpur. बाबा गरीबनाथ मंदिर, मुजफ्फरपुर का प्रमुख शिव मंदिर है।"
        },
        {
          "name": "Ram Chandra Shahi Museum (रामचन्द्र शाही संग्रहालय)",
          "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSTGMH4vQabKqQR55Yn5AIHtEUNVa9ARtH3Q&s",
          "description": "Museum showcasing historical artifacts. ऐतिहासिक वस्तुओं का संग्रहालय।"
        },
        {
          "name": "Jubba Sahni Park (जुब्बा साहनी पार्क)",
          "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfbW90c3v5aibP6cfOcUgT-VissM4mGbM4DQ&s",
          "description": "Recreational park dedicated to freedom fighter Jubba Sahni. स्वतंत्रता सेनानी जुब्बा साहनी को समर्पित पार्क।"
        },
        {
          "name": "Simri Mai Temple (सिमरी माई मंदिर)",
          "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjaAWplY8-HZ009KpK85wVLiPRC4d7M9g7Ow&s",
          "description": "Popular religious site. प्रसिद्ध धार्मिक स्थल।"
        },
      ],
    "Bhagalpur (भागलपुर)": [
      {
        "name": "Vikramshila (विक्रमशिला)",
        "image": "https://images.shiksha.com/mediadata/images/articles/1744259892phpqKwFvZ.jpeg",
        "description": "The remains of Vikramshila University, established by King Dharampala in the 8th century, are a major historical site. विक्रमशिला विश्वविद्यालय के अवशेष, जो राजा धर्मपाल ने 8वीं शताब्दी में स्थापित किया था, एक प्रमुख ऐतिहासिक स्थल है।"
      },
      {
        "name": "Mandar Hill (मंदर पर्वत)",
        "image": "https://feeds.abplive.com/onecms/images/uploaded-images/2021/08/12/bd270b32154d315777c9aa55d6d6d267_original.jpg?impolicy=abp_cdn&imwidth=640",
        "description": "A sacred hill associated with the Samudra Manthan legend from Hindu mythology. हिन्दू पौराणिक कथाओं के समुद्र मंथन प्रसंग से जुड़ा एक पवित्र पर्वत।"
      },
      {
        "name": "Tilka Manjhi Park (तिलका मांझी पार्क)",
        "image": "https://i0.wp.com/angdesh.com/wp-content/uploads/2022/06/tilka-manjhi-bhagalpur.jpg?fit=1200%2C788&ssl=1",
        "description": "Park dedicated to freedom fighter Tilka Manjhi. स्वतंत्रता सेनानी तिलका मांझी को समर्पित पार्क।"
      },
      {
        "name": "Sri Champapur Digambar (श्री चम्पापुर दिगंबर)",
        "image": "https://avathioutdoors.gumlet.io/travelGuide/dev/bhagalpur_P3163.jpg",
        "description":
        "A famous Jain pilgrimage site, believed to be the place of all five Kalyanaks of Lord Vasupujya. "
            "यह प्रसिद्ध जैन तीर्थ स्थल है, जहाँ भगवान वासुपूज्य के पाँचों कल्याणक हुए माने जाते हैं।"
      },
      {
        "name": "Maharshi Mehi Ashram (महर्षि मेही आश्रम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNd9fnSH5J_yZBsuLWGfxtQ_5phAT8p2lAMA&s",
        "description":
        "A spiritual center dedicated to Maharshi Mehi, promoting Santmat and meditation practices. "
            "यह महर्षि मेही को समर्पित आध्यात्मिक केंद्र है, जहाँ संतमत और ध्यान साधना का प्रचार किया जाता है।"
      },
    ],
    "Darbhanga (दरभंगा)": [
      {
        "name": "Ahilya Asthan (अहिल्या स्थान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7NFfUuOHIamCbX__dlzWzyipJ2NLZNWvjQg&s",
        "description": "Historic temple connected with Ramayana. ऐतिहासिक मंदिर, रामायण कथा से जुड़ा।"
      },
      {
        "name": "Brahmpur (ब्राह्मपुर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxhDFWUqIxYMG_rqcTFq9nfYEAHsr2vrY3wA&s",
        "description": "Home to Gautam Kund and Gautam Rishi Temple. गौतम कुंड और गौतम ऋषि मंदिर।"
      },
      {
        "name": "Kusheshwar Asthan (कुशेश्वर स्थान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6bHXNiKVtjp8TsrxhSXowN3TJtRxG-XrRcg&s",
        "description": "Shiva temple and bird sanctuary. शिव मंदिर और बर्ड सैंक्चुरी।"
      },
      {
        "name": "Mahinam Mahadeo Sthan (महिनाम महादेव स्थान)",
        "image": "https://www.nativeplanet.com/photos/560x292/2018/08/photo-92-155232-3.jpg",
        "description": "Shiva temple with fairs on Kartik and Magh Purnima. शिव मंदिर, कार्तिक व माघ पूर्णिमा पर मेला।"
      },
      {
        "name": "Nawadah Durga Sthan (नवादा दुर्गा स्थान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaqO2H9f0YezInOfoTgtBloUzfB3Dal2RHaA&s",
        "description": "Durga temple with grand Dussehra fair. दुर्गा मंदिर, दशहरा मेला।"
      },
      {
        "name": "Shyama Temple (श्यामा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk0G1xQ5BdmLTnFsR96JwImYvP5j9JwzvNIQ&s",
        "description": "Famous Kali temple linked to Darbhanga Raj family. काली मंदिर, दरभंगा राज परिवार से जुड़ा।"
      },
      {
        "name": "Manokamna Temple (मनोकामना मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHw7LuaCT2vm2DtI4YCSCXJxgfJqj0j0W3sg&s",
        "description": "Hanuman temple near Nargona Palace. हनुमान मंदिर (नर्गौना पैलेस के पास)।"
      },
      {
        "name": "Kankali Temple (कंकाली मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSiFdh9AvhHZQWGDPCAJti8xcMlCDFHdHUWg&s",
        "description": "Shakti Peeth inside Darbhanga Fort. दरभंगा किला परिसर का शक्तिपीठ।"
      },
      {
        "name": "Catholic Church (कैथोलिक चर्च / Holy Rosary Church)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpk0SFZCWDBPFEZNV5mPQujcEmQ9tcVNSYpw&s",
        "description": "Established in 1891, famous for Christmas celebrations. 1891 में स्थापित, क्रिसमस प्रसिद्ध।"
      },
      {
        "name": "Bhikha Salami Majar (भिखा सलामी मजार)",
        "image": "https://www.nativeplanet.com/photos/412x309x100/2013/07/_13736095900.jpg",
        "description": "Famous for Ramadan fair. रमजान मेले के लिए प्रसिद्ध।"
      },
      {
        "name": "Masjid at Darbhanga Tower (दरभंगा टॉवर मस्जिद)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXUS4d-bSAbLwHNGgu2dI2Du7HyaJzkcUOeA&s",
        "description": "Important Islamic site of Darbhanga. मुख्य इस्लामी स्थल।"
      },
      {
        "name": "Mazar of Makhdoom Baba (मखदूम बाबा मजार)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq44HXip2doXJxsMxUza6nCTZrmZNSaGCxDQ&s",
        "description": "Symbol of communal harmony. साम्प्रदायिक सौहार्द का प्रतीक।"
      },
      {
        "name": "Maharaja Laxmiswar Singh Museum (महाराजा लक्ष्मेश्वर सिंह संग्रहालय)",
        "image": "https://i0.wp.com/eindiatourism.in/wp-content/uploads/2025/02/DARBHANGA_RAJ.jpg?resize=640%2C480&ssl=1",
        "description": "Royal artifacts, weapons, and statues. राजसी कलाकृतियाँ, हथियार, मूर्तियाँ।"
      },
      {
        "name": "Chandradhari Museum (चंद्रधारी संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXaj2BVGTL4rN7PmuOuy7vaTEbJveDsgY_sw&s",
        "description": "Rare objects, paintings, and sculptures. दुर्लभ वस्तुएँ, चित्रकला, मूर्तियाँ।"
      },
      {
        "name": "Darbhanga Town (दरभंगा शहर / राज परिसर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/f/f8/Darbhanga_1.jpg",
        "description": "Includes Nargona Palace, Anandbagh Bhavan, Bela Palace, and University campus. नर्गौना पैलेस, आनंदबाग भवन, बेला पैलेस, विश्वविद्यालय।"
      }
    ],
    "Kishanganj (किशनगंज)": [
      {
        "name": "Har Gauri Temple (हर गौरी मंदिर)",
        "image": "https://i0.wp.com/angdesh.com/wp-content/uploads/2022/07/har-gauri-temple-kishanganj-purnea.jpg?resize=582%2C436&ssl=1",
        "description": "A famous Shiva temple with great religious significance. हर गौरी मंदिर धार्मिक महत्व और श्रद्धा का प्रमुख केंद्र है।"
      },
      {
        "name": "Haldibari Tea Gardens (हल्दीबाड़ी चाय बागान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKXjpGZsU8bmy_nX5w8Eu2M2iOYvEdyW_j5w&s",
        "description": "Lush green tea gardens offering a unique tea tourism experience. हल्दीबाड़ी चाय बागान हरियाली और चाय पर्यटन के लिए मशहूर हैं।"
      },
      {
        "name": "Nehru Shanti Park (नेहरू शांति पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw05y3YsgatGRyoUKQu-HqMeZ8LeYzvKnGsw&s",
        "description": "A peaceful park ideal for relaxation and family outings. नेहरू शांति पार्क शांति और परिवार संग समय बिताने का बेहतरीन स्थल है।"
      }
    ],
    "Patna (पटना)": [
      {
        "name": "Golghar",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Golghar_%E0%A5%AA.jpg/500px-Golghar_%E0%A5%AA.jpg",
        "description": "Golghar, built in 1786 by Captain John Garstin, is a massive granary offering panoramic views of Patna. गोलघर, 1786 में कैप्टन जॉन गार्स्टिन द्वारा बनाया गया एक विशाल अन्नागार है, जहाँ से पटना का शानदार नज़ारा दिखता है।"
      },
      {
        "name": "Patna Museum",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/patna-museum-patna-bihar1-attr-hero?qlt=82&ts=1742184173282",
        "description": "Patna Museum houses rare artifacts, paintings, and ancient relics. पटना संग्रहालय में दुर्लभ कलाकृतियाँ और प्राचीन वस्तुएँ रखी हैं।"
      },
      {
        "name": "Sanjay Gandhi Biological Park",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNDpzAdy2SnR7BYbyFHJhYBv-ygBCnSWfZAg&s",
        "description": "A famous zoo and botanical garden. प्रसिद्ध चिड़ियाघर और बॉटनिकल गार्डन।"
      },
      {
        "name": "Takht Sri Patna Sahib",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/takht-sri-patna-sahib-patna1-bihar-attr-hero?qlt=82&ts=1742157323645",
        "description": "A sacred Sikh Gurudwara dedicated to Guru Gobind Singh Ji. गुरु गोविंद सिंह जी को समर्पित पवित्र गुरुद्वारा।"
      },
      {
        "name": "Buddha Smriti Park",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6OSGPcShJym7zYiPXcBJ96SCbkipFUGjCOA&s",
        "description": "Memorial park dedicated to Lord Buddha. भगवान बुद्ध को समर्पित स्मारक पार्क।"
      },
      {
        "name": "Kumhrar Park",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/kumhrar-park-patna-1-attr-hero?qlt=82&ts=1742197952471",
        "description": "Ancient archaeological site from Mauryan period. मौर्य काल का प्राचीन पुरातात्विक स्थल।"
      },
      {
        "name": "Agam Kuan",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/agam-kuan-patna-bihar-1-musthead-hero?qlt=82&ts=1742176399502",
        "description": "Ancient well dating back to Ashoka period. अशोक काल का प्राचीन कुआँ।"
      },
      {
        "name": "Padri Ki Haveli",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCrs3mdU5wuvkVlZTkNWuWsYxMfPpgnBtXaQ&s",
        "description": "Oldest church in Bihar built in 1772. बिहार का सबसे पुराना चर्च, 1772 में बना।"
      },
      {
        "name": "Gandhi Maidan",
        "image": "https://upload.wikimedia.org/wikipedia/commons/b/b4/Gandhi_Maidan.jpg",
        "description": "Historic ground where major political rallies are held. ऐतिहासिक मैदान, जहाँ महत्वपूर्ण रैलियाँ होती हैं।"
      },
      {
        "name": "Planetarium Patna",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/61/fc/a2/crop-20170822-233322.jpg?w=900&h=500&s=1",
        "description": "One of Asia’s largest planetariums. एशिया के सबसे बड़े तारामंडलों में से एक।"
      },
      {
        "name": "Eco Park",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIGpOAYSqANXRH2OQDTzJ6LB-aBl-M5VKP8w&s",
        "description": "Green park with walking tracks and boating. हरियाली से भरा पार्क जिसमें बोटिंग की सुविधा।"
      },
      {
        "name": "Khuda Bakhsh Library",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/khuda-bakhsh-oriental-public-library-1-attr-hero?qlt=82&ts=1742156627752",
        "description": "Library with rare manuscripts. दुर्लभ पांडुलिपियों वाली लाइब्रेरी।"
      },
      {
        "name": "Funtasia Water Park",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzWQW8YMKaEih17jC5GIcwpxhYx9rZTIeSRw&s",
        "description": "First water park of Bihar. बिहार का पहला वॉटर पार्क।"
      },
      {
        "name": "Mahavir Mandir",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgC1mr1YX3zPvdKXS2l077S-nheDGwULsUPQ&s",
        "description": "Famous Hanuman temple near Patna Junction. पटना जंक्शन के पास प्रसिद्ध हनुमान मंदिर।"
      },
      {
        "name": "ISKCON Temple",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjCELksw3b8FVLheO89TqEdkWuOlSPq6tYwQ&s",
        "description": "Beautiful temple of Lord Krishna. भगवान कृष्ण का भव्य मंदिर।"
      },
      {
        "name": "Ganga Ghat",
        "image": "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202001/Patna_Ganga_ghats_01.jpeg",
        "description": "Famous riverfront for Ganga Aarti. गंगा आरती के लिए प्रसिद्ध तट।"
      },
      {
        "name": "Patna Sahib Fort",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKxNe89VfIFJIl6kzqW7aMoSnK3jm2lv082g&s",
        "description": "Historical fort near Gurudwara Patna Sahib. गुरुद्वारा पटना साहिब के पास का ऐतिहासिक किला।"
      },
      {
        "name": "Rajdhani Vatika",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDLaY21Hee-vZ5lOtyTmaa4N9sPzzIQn74-w&s",
        "description": "Public park for recreation. मनोरंजन के लिए सार्वजनिक पार्क।"
      },
      {
        "name": "Srikrishna Science Centre",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/sri-krishna-science-centre-patna-2-attr-hero?qlt=82&ts=1742196044627",
        "description": "Interactive science exhibits. इंटरएक्टिव विज्ञान प्रदर्शनी।"
      },
      {
        "name": "Japanese Peace Pagoda",
        "image": "https://www.shutterstock.com/image-photo/vishwa-shanti-stupa-vaishali-biharindiais-260nw-2468092653.jpg",
        "description": "Buddhist monument for peace. शांति के लिए बौद्ध स्मारक।"
      },
      {
        "name": "Badi Patan Devi Temple",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/patan-devi-mandir-patna-bihar-2-attr-hero?qlt=82&ts=1742160519674",
        "description": "One of the 51 Shakti Peethas. 51 शक्ति पीठों में से एक।"
      },
      {
        "name": "Chhoti Patan Devi Temple",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwhB1iaDOBwTGCv1yWDO3ql5SMnEVgIMO6Ow&s",
        "description": "Ancient temple of Goddess Durga. माँ दुर्गा का प्राचीन मंदिर।"
      },
      {
        "name": "Pathar Ki Masjid",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDuwvyfH_zOmjOlQ0SrW8M1yRN6dvxBqi3Ug&s",
        "description": "Mosque made of stone built in 1621. पत्थर से बनी मस्जिद, 1621 में निर्मित।"
      },
      {
        "name": "Hanuman Mandir Birla Colony",
        "image": "https://media-cdn.tripadvisor.com/media/photo-i/11/ec/95/4d/hanuman-mandir-patna.jpg",
        "description": "Popular Hanuman temple in Birla Colony. बिरला कॉलोनी का प्रसिद्ध हनुमान मंदिर।"
      },
      {
        "name": "NIT Ghat",
        "image": "https://d2kihw5e8drjh5.cloudfront.net/eyJidWNrZXQiOiJ1dGEtaW1hZ2VzIiwia2V5IjoicGxhY2VfaW1nLzRiNzg4NDgxOTgwNjRiMjg5YzU5NjBlYTllYTE4OTQ4IiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo2NDAsImhlaWdodCI6NjQwLCJmaXQiOiJpbnNpZGUifSwicm90YXRlIjpudWxsLCJ0b0Zvcm1hdCI6ICJ3ZWJwIn19",
        "description": "Popular spot for evening strolls along the Ganga. गंगा किनारे घूमने का लोकप्रिय स्थान।"
      }
    ],

    "Gaya ji (गया जी)": [
      {
        "name": "Mahabodhi Temple",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSplPP6pKfS1HVvScBf838xidRNRVmFhF6_jQ&s",
        "description": "Mahabodhi Temple in Bodh Gaya is one of the most sacred and revered Buddhist pilgrimage sites in the world. It is the place where Lord Buddha attained enlightenment under the Bodhi Tree more than 2500 years ago. The temple complex features magnificent architecture, intricate carvings, stupas, and shrines, drawing pilgrims, tourists, and scholars alike. Visitors can experience spiritual tranquility, meditate in the serene surroundings, and witness the grandeur of ancient Buddhist art and heritage. The temple is a UNESCO World Heritage Site and attracts thousands of devotees annually. महाबोधि मंदिर, गया में विश्व के सबसे पवित्र बौद्ध तीर्थस्थलों में से एक है। यह वही स्थान है जहाँ भगवान बुद्ध ने पवित्र बोधि वृक्ष के नीचे ज्ञान प्राप्त किया। मंदिर परिसर में भव्य वास्तुकला, जटिल नक्काशी, स्तूप और मंदिर हैं।"
      },
      {
        "name": "Bodhi Tree",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Bodhi_Tree_Distant_View_-_panoramio.jpg/250px-Bodhi_Tree_Distant_View_-_panoramio.jpg",
        "description": "The Bodhi Tree is the sacred fig tree under which Lord Buddha attained enlightenment in Bodh Gaya. Pilgrims from around the world come to meditate, offer prayers, and experience a deep spiritual connection. Surrounded by temples, stupas, and peaceful gardens, this holy tree is a symbol of wisdom, peace, and awakening. Visitors often circumambulate the tree, chant mantras, and engage in reflective meditation, feeling the serene energy of the site. The Bodhi Tree is central to Buddhist heritage and attracts spiritual seekers, historians, and tourists alike. पवित्र बोधि वृक्ष, गया में भगवान बुद्ध ने ज्ञान प्राप्त किया। यह शांति और ध्यान का प्रतीक है।"
      },
      {
        "name": "Great Buddha Statue",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuZKtEGYaWu2q-zc_Hs9GSzMUylmXkJ7gZCw&s",
        "description": "The Great Buddha Statue in Bodh Gaya stands 80 feet tall and is a magnificent example of modern Buddhist sculpture. Surrounded by serene gardens and monasteries, it provides an ideal spot for meditation and reflection. Tourists and devotees admire its serene expression, golden hue, and intricate detailing. The statue symbolizes peace, enlightenment, and the teachings of Lord Buddha. It is visited by thousands annually for photography, spiritual practice, and learning about Buddhist art and culture. The site offers a panoramic view of the surroundings and a calming atmosphere for all visitors. गया में स्थित महान बुद्ध प्रतिमा 80 फीट ऊँची है और बौद्ध धर्म की शिक्षाओं का प्रतीक है।"
      },
      {
        "name": "Dungeshwari Cave Temples",
        "image": "https://static2.tripoto.com/media/filter/tst/img/1682066/TripDocument/1568776459_1568776458503.jpg",
        "description": "Dungeshwari Cave Temples, located near Bodh Gaya, are historically important as the caves where Lord Buddha meditated before attaining enlightenment. Carved into rocky hills, these caves allow visitors to experience the austere monastic life and spiritual practices of Buddha. The tranquil environment, surrounded by natural beauty, provides a perfect atmosphere for meditation and reflection. Pilgrims often engage in silent contemplation and rituals here. The caves are an archaeological treasure and a significant pilgrimage site, attracting tourists, historians, and spiritual seekers from across the world. गुफाएँ, गया के पास स्थित, भगवान बुद्ध ने ज्ञान प्राप्ति से पहले यहाँ ध्यान किया।"
      },
      {
        "name": "Vishnupad Temple",
        "image": "https://upload.wikimedia.org/wikipedia/commons/c/ce/Vishnupadh_Temple.jpg",
        "description": "Vishnupad Temple in Gaya is an ancient Hindu temple dedicated to Lord Vishnu. Built around a sacred footprint believed to be of Lord Vishnu, it is a major pilgrimage site for Hindus. The temple architecture is intricate with stone carvings, sacred ghats, and ceremonial spaces. Devotees perform pind daan rituals, offer prayers, and celebrate festivals, making it a culturally vibrant place. Surrounded by serene surroundings and ghats on the Phalgu River, the temple offers a spiritual and tranquil experience. Every year, thousands of pilgrims visit to seek blessings and perform religious rites. गया में स्थित विष्णुपद मंदिर भगवान विष्णु को समर्पित है।"
      },
      {
        "name": "Muchalinda Lake",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsiZYo4KvkM8PAOgLsfciTGlhGAB2qxDsBUg&s",
        "description": "Muchalinda Lake near Mahabodhi Temple is a serene water body where Buddha is believed to have been protected by the serpent Muchalinda while meditating. It is a peaceful spot surrounded by lush greenery and temples. Pilgrims meditate, perform rituals, and enjoy the calm environment. The lake adds spiritual and historical significance to the area, attracting tourists, photographers, and scholars who wish to experience the sacredness of Bodh Gaya. Visitors feel connected to the spiritual legacy and the teachings of Buddha. महाबोधि मंदिर के पास मुचालिंदा झील शांतिपूर्ण स्थल है जहाँ बुद्ध का संरक्षण हुआ।"
      },
      {
        "name": "Barabar Caves",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBqdNXL8a_DH93iBRfXQ_5ELQzjgTfm_ctrw&s",
        "description": "Barabar Caves are the oldest rock-cut caves in India, dating back to the Mauryan period. These granite caves feature intricate carvings and serve as a historical testament to Buddhist monastic life. Visitors can explore the serene interiors, inscriptions, and architectural marvels, feeling a connection with ancient spiritual practices. The site is surrounded by lush forests and hills, enhancing its tranquil atmosphere. Barabar Caves attract historians, archaeologists, and tourists eager to experience India’s ancient heritage. They are also associated with meditation, asceticism, and early Buddhist monastic traditions. भारत की सबसे पुरानी चट्टान-खोदी गुफाएँ, मौर्य काल की।"
      },
      {
        "name": "Indosan Nippon Japanese Temple",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQzwDAzLwc_x1ZRhgCMpqwd1MMhWMJOxy59Q&s",
        "description": "Indosan Nippon Japanese Temple in Bodh Gaya is a stunning Buddhist temple built in Japanese architectural style. The temple showcases Japanese art, serene gardens, and meditation halls. Pilgrims and tourists experience spiritual peace, cultural exchange, and meditation here. It serves as a bridge between Japanese Buddhism and Indian Buddhist heritage, attracting devotees, students, and travelers interested in learning about Buddhist traditions. The temple's peaceful ambiance and aesthetic appeal make it a popular destination in Bodh Gaya for contemplation and spiritual practice. गया में जापानी शैली का बौद्ध मंदिर।"
      },
      {
        "name": "Tibetan Monastery",
        "image": "https://c8.alamy.com/comp/CE6688/tibetan-monastery-bodh-gaya-bihar-india-asia-CE6688.jpg",
        "description": "The Tibetan Monastery in Bodh Gaya is a colorful and spiritually significant center of Tibetan Buddhism. With vibrant prayer flags, meditation halls, and Buddhist shrines, it provides a serene environment for study, contemplation, and rituals. Pilgrims and tourists from all over the world visit to learn about Tibetan practices, participate in meditation sessions, and experience the unique architecture and culture. The monastery is surrounded by lush landscapes and peaceful surroundings, making it ideal for spiritual seekers and photographers. This monastery strengthens cultural exchange and Buddhist heritage preservation. गया में रंगीन तिब्बती बौद्ध मठ।"
      },
      {
        "name": "Royal Bhutan Monastery",
        "image": "https://avathioutdoors.gumlet.io/travelGuide/dev/bodh-gaya_P9913.jpg",
        "description": "The Royal Bhutan Monastery in Bodh Gaya represents Bhutanese architectural excellence and Buddhist culture. With beautifully painted walls, statues, and meditation spaces, it attracts devotees, students, and tourists seeking spiritual knowledge. The monastery organizes teachings, rituals, and meditation sessions while maintaining a serene atmosphere. Surrounded by natural beauty, it offers a peaceful retreat for contemplation and learning. Pilgrims from Bhutan and around the world visit this site to experience cultural exchange, religious practices, and the heritage of Himalayan Buddhism. गया में भूटानी वास्तुकला का बौद्ध मठ।"
      },
      {
        "name": "Chinese Temple",
        "image": "https://c8.alamy.com/comp/BFN0W4/chinese-temple-bodhgaya-bihar-india-asia-BFN0W4.jpg",
        "description": "The Chinese Temple in Bodh Gaya is a significant center for Chinese Buddhist traditions. With elegant architecture, statues, and gardens, it provides a serene place for meditation, prayers, and learning. Visitors experience cultural exchange, spiritual practice, and a deeper understanding of Buddhism. The temple hosts rituals and celebrations, attracting pilgrims, tourists, and scholars. Its aesthetic design, peaceful surroundings, and historical significance make it a must-visit for those exploring Bodh Gaya’s rich Buddhist heritage. गया में चीनी शैली का बौद्ध मंदिर।"
      },
      {
        "name": "Thai Monastery",
        "image": "https://media1.thrillophilia.com/filestore/0v4thdb3ou0t1hcxu64q9y8z4mt4_1625840529_thai_bihar.jpg",
        "description": "The Thai Monastery in Bodh Gaya features distinctive Thai architecture with a golden Buddha statue and vibrant decorations. The monastery provides meditation halls, classrooms, and peaceful gardens, allowing pilgrims and tourists to immerse in spiritual practices. Cultural programs, rituals, and teachings take place here, strengthening Buddhist heritage and Thai-Indian connections. Visitors enjoy the aesthetic beauty, serene environment, and a unique glimpse into Thai Buddhist traditions. The monastery is surrounded by lush greenery and tranquil spaces, ideal for reflection and mindfulness. गया में थाई शैली का बौद्ध मठ।"
      },
      {
        "name": "Vietnamese Temple",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjC0dUH7Cc_YCBxy7c8kXkSjubbemd9RtuPg&s",
        "description": "The Vietnamese Temple in Bodh Gaya showcases Vietnamese Buddhist art, culture, and architecture. With peaceful gardens, meditation halls, and intricate decorations, it offers visitors a serene environment for spiritual practices. Pilgrims perform rituals, meditate, and participate in cultural programs here. The temple strengthens Buddhist heritage connections and provides a unique experience of Vietnamese traditions in India. Surrounded by natural beauty, it is ideal for study, reflection, and photography. This temple attracts devotees, tourists, and scholars from around the world, contributing to Bodh Gaya’s diverse religious landscape. गया में वियतनामी शैली का बौद्ध मंदिर।"
      },
      {
        "name": "Animesh Lochana Chaitya",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2k-m81I3ZubRFSBgX_cIy6Gme8NMXRFYPuA&s",
        "description": "Animesh Lochana Chaitya in Bodh Gaya marks the place where Lord Buddha meditated without blinking, demonstrating extraordinary concentration and discipline. It is a revered pilgrimage site where visitors reflect on mindfulness, meditation, and spiritual awakening. The surroundings are peaceful, with gardens, shrines, and pathways for contemplation. Pilgrims and tourists engage in prayer, meditation, and rituals here, feeling inspired by the sacred energy. This chaitya preserves Buddhist heritage and serves as an educational site for learning about the life and teachings of Lord Buddha. गया में वह स्थान जहाँ बुद्ध ने बिना पलक झपकाए ध्यान किया।"
      },
      {
        "name": "Sujata Stupa",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJMeLc5anHkne5ejfwn3L4lH5Z1wcn8FyjbA&s",
        "description": "Sujata Stupa commemorates the generous milk-rice offering by Sujata to Lord Buddha before his enlightenment. It is a revered spot for pilgrims, surrounded by serene landscapes and small temples. Visitors reflect on generosity, devotion, and the importance of acts of kindness in spiritual practice. The stupa is maintained with care, and devotees perform rituals, meditate, and seek blessings. It is an important historical and cultural site, offering a peaceful ambiance for learning and contemplation. Sujata’s act symbolizes the support and compassion that aid spiritual journeys. गया में सुजाता को समर्पित स्तूप।"
      },
      {
        "name": "Phalgu River",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7BVh1jcw88ArFEhTkQOpZNdYiiaiza1PD7g&s",
        "description": "Phalgu River in Gaya holds immense religious significance for Hindus performing pind daan rituals. The riverbanks are lined with ghats, temples, and sacred spaces, offering a spiritual environment for devotees. Pilgrims immerse themselves in rituals, prayers, and reflection, honoring ancestors and seeking blessings. The serene flow of the river, surrounded by hills and temples, enhances the sacred experience. Tourists can also enjoy scenic beauty, photography, and cultural learning. The river continues to be a central site for religious ceremonies, festivals, and spiritual practices in Gaya. गया में पवित्र फल्गु नदी पिंड दान के लिए प्रसिद्ध है।"
      },
      {
        "name": "Mangla Gauri",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBNJFF_uKtIvISvpv7F5ABqxJh7zGPjghIGw&s",
        "description": "Mangla Gauri Temple in Gaya is one of the 18 Maha Shakti Peethas, dedicated to Goddess Parvati (Gauri). It is believed that a part of Goddess Sati fell here, making it extremely sacred. Pilgrims visit for blessings related to prosperity, health, and marital bliss. The temple is perched on a hill, offering panoramic views of the surroundings. Rituals, prayers, and festivals are celebrated with devotion. The temple complex includes beautiful architecture, peaceful gardens, and pathways for contemplation, making it a spiritual and culturally rich site. गया में मंगला गौरी मंदिर 18 महा शक्ति पीठों में से एक है।"
      },
      {
        "name": "Gurpa Hill",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAmfhBDMUfGYqRrmfmB1olg9P89SLTImiYoQ&s",
        "description": "Gurpa Hill, also known as Gurupada Giri, is a sacred Buddhist-Hindu pilgrimage site near Gaya. It is believed that Mahakasyapa, Buddha’s last disciple, attained nirvana here while awaiting Maitreya. The hill features caves, stupas, and temples, along with Lord Vishnu’s sacred footprints. Pilgrims meditate, explore the historical monuments, and enjoy panoramic views. The serene and spiritual environment makes it ideal for reflection and devotion. Gurpa Hill is an important site preserving the religious and cultural heritage of the region, attracting tourists, monks, and scholars. गुरुपद गिरि, गया के पास एक पवित्र बौद्ध-हिंदू तीर्थ स्थल है।"
      },
      {
        "name": "Niranjana River",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrHVU-qIl9RotQINPT33vUsb4RGtUZwUVTCA&s",
        "description": "The Niranjana River, flowing near Bodh Gaya, holds historical and spiritual significance. Pilgrims perform rituals, meditation, and prayers along its banks. The river enhances the tranquility and sacredness of the Bodh Gaya region, surrounded by lush greenery, temples, and stupas. It is believed that spiritual energy is strong here, aiding meditation and reflection. Tourists and devotees experience peace, historical connection, and cultural insight. The river is part of the spiritual landscape that shaped Buddha’s journey and continues to attract visitors seeking religious and historical experiences. गया में निर्वाण नदी ऐतिहासिक और पवित्र स्थल।"
      },
    ],


    "Nalanda (नालंदा)": [

      {
        "name": "Rajgir Glass Bridge (राजगीर ग्लास ब्रिज)",
        "image": "https://images.news18.com/ibnkhabar/uploads/2023/04/6.jpeg",
        "description": "राजगीर की पहाड़ियों पर बना यह कांच का पुल रोमांच और साहसिक पर्यटन का नया आकर्षण है। यहाँ से घाटियों का मनोरम दृश्य दिखाई देता है। The Rajgir Glass Bridge is a thrilling adventure spot offering stunning views of the valleys from the hills of Rajgir."
      },

      {
        "name": "Nalanda University (नालंदा विश्वविद्यालय)",
        "image": "https://i0.wp.com/apeejay.news/wp-content/uploads/2023/10/041023-Taresh-Datta-Feature-1.jpg?fit=569%2C509&ssl=1",
        "description": "Nalanda University, dating back to the 5th century, is one of the world’s oldest centers of learning. The ruins showcase grand monasteries, classrooms, and libraries that once attracted students from across Asia. It remains a symbol of ancient India’s academic excellence and Buddhist scholarship. यह 5वीं शताब्दी का प्राचीन विश्वविद्यालय है, जिसमें भव्य मठ, कक्षाएं और पुस्तकालय शामिल हैं।"
      },
      {
        "name": "Hiuen Tsang Memorial Hall (ह्वेनसांग स्मारक हॉल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5rzuyTfSGHiSAhQGS2Txj0Bw5s7GXdvXxQA&s",
        "description": "Dedicated to the Chinese traveler Hiuen Tsang, this memorial hall celebrates his journey to Nalanda University in the 7th century. Visitors can explore exhibits showcasing his travels, artifacts, and historical accounts, providing insight into ancient cultural exchanges. यह स्मारक हॉल ह्वेनसांग के नालंदा यात्रा को समर्पित है, जिसमें उनके यात्रा दस्तावेज़ और ऐतिहासिक वस्तुएं प्रदर्शित हैं।"
      },
      {
        "name": "Nalanda Archaeological Museum (नालंदा पुरातत्व संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0c74bbHOd9nssn7Qvi97GvbGAAwmcy4xyAA&s",
        "description": "Housing ancient artifacts, sculptures, and manuscripts, this museum offers a detailed glimpse into Nalanda’s rich history. Visitors can explore relics of the Buddhist era and understand the intellectual and cultural significance of the site. इसमें प्राचीन अवशेष, मूर्तियां और पांडुलिपियां रखी हैं, जो नालंदा के समृद्ध इतिहास की जानकारी देती हैं।"
      },
      {
        "name": "Black Buddha Temple (काला बुद्ध मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStSB6q_XwYX6e-C2Gx8MAeTSfIoozu0_YtRQ&s",
        "description": "A unique temple featuring a black stone statue of Lord Buddha, attracting pilgrims and tourists alike. The temple architecture is a fine example of ancient Indian craftsmanship and spiritual art, making it a must-visit site in Nalanda. यह भगवान बुद्ध की काले पत्थर की प्रतिमा वाला अद्वितीय मंदिर है, जो पर्यटकों और तीर्थयात्रियों को आकर्षित करता है।"
      },
      {
        "name": "Nav Nalanda Mahavihara (नव नालंदा महाविहार)",
        "image": "https://cache.careers360.mobi/media/colleges/social-media/media-gallery/1015/2021/11/26/Campus%20Buliding%20of%20Nava%20Nalanda%20Mahavihara%20Nalanda_Campus-View.jpg",
        "description": "Established as a modern center for Pali and Buddhist studies, Nav Nalanda Mahavihara revives Nalanda’s ancient scholarly tradition. Scholars from India and abroad come here to study and conduct research on Buddhist philosophy and culture. यह पाली और बौद्ध अध्ययन का आधुनिक केंद्र है, जहां विद्वान शोध करते हैं।"
      },
      {
        "name": "Kundalpur (कुंडलपुर)",
        "image": "https://www.hlimg.com/images/things2do/738X538/download-1-1506080704t.jpg",
        "description": "Believed to be the birthplace of Lord Mahavira, Kundalpur attracts Jain pilgrims from across India. The site is historically significant and features ancient temples and serene surroundings conducive to meditation and reflection. यह भगवान महावीर का जन्मस्थान माना जाता है और जैन तीर्थयात्रियों के लिए महत्वपूर्ण स्थल है।"
      },
      {
        "name": "Pawapuri Jal Mandir (पावापुरी जल मंदिर)",
        "image": "https://www.hlimg.com/images/things2do/738X538/pawapuri_jal_mandir_1507868346t.jpg",
        "description": "Located in the middle of a lake, Pawapuri Jal Mandir is a serene Jain temple dedicated to Lord Mahavira. The temple’s reflection in water creates a picturesque scene, offering both spiritual solace and visual beauty. यह झील के बीच स्थित जैन मंदिर है, जो भगवान महावीर को समर्पित है।"
      },
      {
        "name": "Surya Kund (सूर्य कुंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6WmAwq3vKof7p54eFVxIMoy8TnFjvJ06pPA&s",
        "description": "Surya Kund is a sacred pond located near the Sun Temple, attracting devotees and tourists. It is believed that taking a dip here cleanses sins and brings blessings. The serene environment enhances spiritual experience and tranquility. सूर्य मंदिर के पास स्थित यह पवित्र कुंड पर्यटकों और श्रद्धालुओं के लिए आकर्षण का केंद्र है।"
      },
      {
        "name": "Telhara (टेलहारा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0dO3Gmcm6XoBJYPE-RBPKIxAp4ozrPIGfpQ&s",
        "description": "An important archaeological site of an ancient Buddhist monastery, Telhara features excavated ruins of stupas, viharas, and monastic complexes. It provides insight into Buddhist monastic life and Nalanda’s religious history. यह प्राचीन बौद्ध मठ का पुरातात्विक स्थल है, जो नालंदा के धार्मिक इतिहास की जानकारी देता है।"
      },
      {
        "name": "Rajgir Ropeway (राजगीर रोपवे)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoaIJgr4Xt_LgBTlXerdEIaEEeYVTFJXfzKA&s",
        "description": "The Rajgir Ropeway offers a scenic ride up to the Vishwa Shanti Stupa, providing panoramic views of Rajgir hills and valleys. It’s both an adventurous and spiritual experience for tourists and devotees visiting the area. यह रोपवे पर्यटकों और श्रद्धालुओं के लिए अद्भुत दृश्य और अनुभव प्रदान करता है।"
      },
      {
        "name": "Vishwa Shanti Stupa (विश्व शांति स्तूप)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHjRqMbS6WhSDLvaiTfcyiEgI7XTgNtbT-TQ&s",
        "description": "A Japanese-built peace pagoda located on Ratnagiri Hill, Vishwa Shanti Stupa promotes peace and meditation. It offers breathtaking views of the surrounding landscape and represents global Buddhist harmony. रत्नागिरी पहाड़ी पर स्थित यह शांति स्तूप पर्यटकों और साधकों के लिए ध्यान और शांति का प्रतीक है।"
      },
      {
        "name": "Bimbisar Jail (बिंबिसार जेल)",
        "image": "https://avathioutdoors.gumlet.io/travelGuide/dev/rajgir_P3959.jpg",
        "description": "Historic prison where King Bimbisar was imprisoned by his son Ajatashatru. The site is an important historical landmark and attracts tourists interested in ancient Indian history and royal legacies. राजा बिंबिसार को उनके पुत्र ने कैद किया था, यह स्थल ऐतिहासिक दृष्टि से महत्वपूर्ण है।"
      },
      {
        "name": "Cyclopean Wall (साइक्लोपियन वॉल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZl0As8mvPXu9YWm7VFqIT9Jyck7nu7wdFgA&s",
        "description": "An ancient stone wall surrounding old Rajgir, Cyclopean Wall represents architectural ingenuity of the past. The massive stones are carefully placed without mortar, showcasing early construction techniques. यह प्राचीन दीवार राजगीर को घेरे हुए है और प्राचीन निर्माण तकनीक का उदाहरण है।"
      },
      {
        "name": "Hot Springs, Rajgir (गरम पानी कुंड, राजगीर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc-6UaIlw-SKVg3DL1ywQdZk1uIMhYbk3Uxw&s",
        "description": "Natural hot springs believed to have medicinal properties, located in Rajgir. Visitors come for relaxation, health benefits, and the scenic surroundings. The springs hold spiritual and therapeutic significance. राजगीर में स्थित प्राकृतिक गरम पानी के कुंड, स्वास्थ्य और विश्राम के लिए प्रसिद्ध हैं।"
      },
      {
        "name": "Ajatshatru Fort (अजातशत्रु किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOmjCJpJ_86ZeKxGf6ZTzaEeHejOfA6Olhpw&s",
        "description": "Built by King Ajatshatru in the 6th century BC, this fort stands atop a hill offering panoramic views. It has historical significance from the Magadha kingdom and remains a popular tourist attraction. 6वीं शताब्दी ईसा पूर्व में निर्मित यह किला ऐतिहासिक दृष्टि से महत्वपूर्ण है।"
      },
      {
        "name": "Griddhakuta Hill (गृद्धकूट पहाड़ी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaCsxeaQtCR70nS4T49w5TSQNbdb7IvT7Xaw&s",
        "description": "A sacred hill where Buddha delivered sermons, Griddhakuta Hill is an important pilgrimage site. The hill offers stunning views and spiritual ambiance for meditation and reflection. यह पवित्र पहाड़ी जहां बुद्ध ने उपदेश दिए, तीर्थयात्रियों के लिए महत्वपूर्ण है।"
      },
      {
        "name": "Maniyar Math (मणियार मठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_FxOK1yaWZaaWUPMaGM1_H3QmR1EVC2bn3A&s",
        "description": "An archaeological site featuring ancient relics and ruins of monastic settlements, Maniyar Math offers insight into Nalanda’s historical Buddhist community and their lifestyle. प्राचीन अवशेषों और मठ की खंडहरों वाला स्थल, नालंदा के बौद्ध समुदाय की जानकारी देता है।"
      },
      {
        "name": "Son Bhandar Caves (सोन भंडार गुफाएँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh0NOCbFzbbKIRtfyOg24h_oVxCqpMy0bQvg&s",
        "description": "These ancient rock-cut caves are believed to contain hidden treasures. The caves have religious significance and attract history enthusiasts and tourists for exploration and study. खजाने से जुड़ी प्राचीन गुफाएँ, जो इतिहास प्रेमियों के लिए आकर्षण का केंद्र हैं।"
      },
      {
        "name": "Jarasandh Akhara (जरासंध अखाड़ा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwJAMv4INClkTsolCqUdP9dal-Q4t3QQzwZA&s",
        "description": "Historically associated with Jarasandh from Mahabharata, this site offers cultural and mythological insights. Tourists visit to explore its legendary connections and archaeological importance. महाभारत के जरासंध से जुड़ा ऐतिहासिक स्थल, जो पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Veerayatan Museum (वीरायतन संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0IrO04Dc8ZqpMuGnM8-J1mnpozRM1z447Nw&s",
        "description": "A Jain museum showcasing art, culture, and history. Visitors can view ancient manuscripts, sculptures, and artifacts, highlighting the spiritual heritage of Jainism in Nalanda region. जैन कला, संस्कृति और इतिहास प्रदर्शित करने वाला संग्रहालय।"
      },
      {
        "name": "Pandu Pokhar (पांडु पोखर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-CO7ON_oc36UNMmKRwtsNMnAjQ-GoOy-Y1A&s",
        "description": "An amusement park and historical pond in Rajgir, Pandu Pokhar is ideal for family visits. It combines leisure with history, offering a serene environment and recreational facilities for tourists. राजगीर में मनोरंजन पार्क और ऐतिहासिक पोखर, परिवार और पर्यटकों के लिए उत्तम स्थल।"
      },

    ],

    "Samastipur (समस्तीपुर)": [
      {
        "name": "Chhatneshwar (छतनश्वर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031361-1-1024x828.jpg",
        "description": "A famous religious site with historical importance. ऐतिहासिक महत्व वाला प्रसिद्ध धार्मिक स्थल।"
      },
      {
        "name": "Collectorate Samastipur (कलेक्टरेट समस्तीपुर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031316-1-1024x842.jpg",
        "description": "The main administrative office of Samastipur district. समस्तीपुर जिले का प्रमुख प्रशासनिक कार्यालय।"
      },
      {
        "name": "Railway Station Samastipur (रेलवे स्टेशन समस्तीपुर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031312-1024x872.jpg",
        "description": "A major railway junction connecting Bihar with other regions. बिहार को अन्य क्षेत्रों से जोड़ने वाला प्रमुख रेलवे जंक्शन।"
      },
      {
        "name": "Lal Kothi Samastipur (लाल कोठी समस्तीपुर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031326-1024x861.jpg",
        "description": "A historic building representing colonial architecture. औपनिवेशिक स्थापत्य कला का प्रतीक ऐतिहासिक भवन।"
      },
      {
        "name": "Thaneshwar Mandir (थानेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031385-606x1024.jpg",
        "description": "A revered temple dedicated to Lord Shiva. भगवान शिव को समर्पित पूजनीय मंदिर।"
      },
      {
        "name": "Rajendra Agricultural University (राजेंद्र कृषि विश्वविद्यालय)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031361-2-1024x919.jpg",
        "description": "One of India’s prominent agricultural universities. भारत के प्रमुख कृषि विश्वविद्यालयों में से एक।"
      },
      {
        "name": "Khatu Shyam Mandir (खाटू श्याम मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031325-1024x880.jpg",
        "description": "A temple dedicated to Khatu Shyam Ji, visited by devotees. खाटू श्याम जी को समर्पित, भक्तों द्वारा पूजनीय मंदिर।"
      },
      {
        "name": "Dhamaun (धमौं)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031365-1-1024x922.jpg",
        "description": "A village with cultural and religious importance. सांस्कृतिक और धार्मिक महत्व वाला गाँव।"
      },
      {
        "name": "Hazrat Mazar (हज़रत मजार)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031376-1024x934.jpg",
        "description": "A shrine visited by people of different communities. विभिन्न समुदायों द्वारा पूजनीय दरगाह।"
      },
      {
        "name": "Vidyapati Dham (विद्यापति धाम)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031338-1024x973.jpg",
        "description": "Associated with the great Maithili poet Vidyapati. महान मैथिली कवि विद्यापति से जुड़ा धाम।"
      },
      {
        "name": "Tirmuhani Vidyapati Ashmarak (तीरमुहानी विद्यापति अश्मारक)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031314-1024x969.jpg",
        "description": "A memorial site of poet Vidyapati. कवि विद्यापति की स्मृति में बना स्थल।"
      },
      {
        "name": "Narhan (नरहन)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031329-1024x864.jpg",
        "description": "Known for its fort and historical background. अपने किले और ऐतिहासिक पृष्ठभूमि के लिए प्रसिद्ध।"
      },
      {
        "name": "Jageshwar Dham (जागेश्वर धाम)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031339-1024x845.jpg",
        "description": "A sacred place dedicated to Lord Shiva. भगवान शिव को समर्पित पवित्र स्थल।"
      },
      {
        "name": "Parvati Mandir (पार्वती मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031332-1024x858.jpg",
        "description": "A popular temple dedicated to Goddess Parvati. देवी पार्वती को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Jute Mill (जूट मिल)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031323-1024x894.jpg",
        "description": "An industrial site contributing to the local economy. स्थानीय अर्थव्यवस्था में योगदान देने वाला औद्योगिक स्थल।"
      },
      {
        "name": "Jama Masjid (जामा मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031327-1024x934.jpg",
        "description": "A historic mosque and center of Islamic faith. इस्लामी आस्था का केंद्र और ऐतिहासिक मस्जिद।"
      },
      {
        "name": "Samastipur Dairy (समस्तीपुर डेयरी)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031374-1024x918.jpg",
        "description": "A major dairy unit of the region. क्षेत्र की एक प्रमुख डेयरी इकाई।"
      },
      {
        "name": "Khudneshwar Mandir (खुदनेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031316-2-731x1024.jpg",
        "description": "An ancient temple dedicated to Lord Shiva. भगवान शिव को समर्पित प्राचीन मंदिर।"
      },
      {
        "name": "Mannipur Durga Mandir (मन्नीपुर दुर्गा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031320-1024x873.jpg",
        "description": "A temple of Goddess Durga with festive celebrations. देवी दुर्गा का मंदिर जहाँ भव्य पर्व मनाए जाते हैं।"
      },
      {
        "name": "Samastipur Church (समस्तीपुर चर्च)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031397-645x1024.jpg",
        "description": "A Christian religious site with peaceful surroundings. शांत वातावरण वाला ईसाई धार्मिक स्थल।"
      },
      {
        "name": "Sugar Mill Hasanpur (शुगर मिल हसनपुर)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031360-1024x885.jpg",
        "description": "One of the important sugar mills of the district. जिले की प्रमुख चीनी मिलों में से एक।"
      },
      {
        "name": "Baba Kewal Maharaj (बाबा केवल महाराज)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031334-1024x926.jpg",
        "description": "A revered saint’s shrine visited by devotees. एक पूजनीय संत का दरबार, जहाँ भक्त आते हैं।"
      },
      {
        "name": "Chhatta Holi Dhamoun (छत्ता होली धमौं)",
        "image": "https://cdn.s3waas.gov.in/s32838023a778dfaecdc212708f721b788/uploads/2017/06/2018031326-1-1024x852.jpg",
        "description": "A local religious site with cultural gatherings. सांस्कृतिक आयोजनों वाला स्थानीय धार्मिक स्थल।"
      }
    ],
    "Araria (अररिया)": [
      {
        "name": "Purnagiri Temple (पूर्णागिरि मंदिर, Forbesganj)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjjDzCG7QZCB3bCcC8B8YvwXEntWOkjc7LCg&s",
        "description": "One of the most famous temples in Araria, attracting lakhs of devotees every year, especially during Navratri. Religious and cultural importance. अररिया जिले का सबसे प्रसिद्ध मंदिर, जहाँ हर साल लाखों श्रद्धालु आते हैं, विशेषकर नवरात्रि के समय।"
      },
      {
        "name": "Mahadev Mandir (महादेव मंदिर, Araria Town)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBmyMpVjlYf7A2ZFh8vWWgSbI-hcawKsMqiQ&s",
        "description": "A sacred Shiva temple known for its spiritual atmosphere and festivals like Mahashivratri. धार्मिक महत्व का प्रसिद्ध शिव मंदिर, जहाँ महाशिवरात्रि और अन्य पर्वों पर भारी भीड़ लगती है।"
      },

      {
        "name": "RaniGanj Vriksh Vatika (रानीगंज वृक्ष वाटिका)",
        "image": "https://cdn.s3waas.gov.in/s368ce199ec2c5517597ce0a4d89620f55/uploads/bfi_thumb/2018041047-olw9o7uww9ozckm3dlqfdaseyht1dd08hxhbazlcd0.jpg",
        "description": "Araria's first biodiversity park, known for its greenery and rare species of plants. अररिया का पहला जैव विविधता पार्क, जो हरियाली और दुर्लभ प्रजातियों के पौधों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kusiyargaon Biodiversity Park (कुसियारगांव बायोडायवर्सिटी पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMmAm0LRTLd5t511KAY3XBvWM3tW5Y077f_A&s",
        "description": "A biodiversity park that preserves natural flora and fauna of the region. क्षेत्र की प्राकृतिक वनस्पति और जीवों को संरक्षित करने वाला जैव विविधता पार्क।"
      },
      {
        "name": "Thakurbari Shiv Mandir (ठाकुरबाड़ी शिव मंदिर, Araria Town)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/58/5c/98/thakurbari-temple.jpg?w=1200&h=1200&s=1",
        "description": "A famous Shiva temple located in the center of Araria town, popular among devotees. अररिया शहर के केंद्र में स्थित प्रसिद्ध शिव मंदिर, जो भक्तों के बीच लोकप्रिय है।"
      },
      {
        "name": "Madanpur Shiv Mandir (मदनपुर शिव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkbmyCZ3siIozPDL6k6WT4jm09OA6SvRsAp1R51k2NWyxPO_Rf2RMw5yEbjBwoZT6ZurU&usqp=CAU",
        "description": "A temple dedicated to Lord Shiva in Madanpur, known for local festivals and spiritual gatherings. मदनपुर का शिव मंदिर, जहाँ धार्मिक उत्सव और आध्यात्मिक सभाएँ आयोजित होती हैं।"
      },

      {
        "name": "Kali Mandir (काली मंदिर, Araria Town)",
        "image": "https://lh3.googleusercontent.com/gps-cs-s/AC9h4nqpOEFPmsQKgQfjuEtX6r69DrdCwkolQxZ4tmrOGzTEnypVYKwlTYsgGPnU2EBljOs_lpFHR2axXd06PO0pmSdhrBNaxAPpJHaoiVfCo8KtsQiy2AahhxtDWiHm-jJ79dCr0ttW=s1360-w1360-h1020-rw",
        "description": "A famous temple dedicated to Goddess Kali, especially crowded during Kali Puja and Durga Puja festivals. अररिया शहर का प्रसिद्ध काली मंदिर, जहाँ काली पूजा और दुर्गा पूजा के समय भारी भीड़ होती है।"
      }
],
      "Arwal (अरवल)": [
        {
          "name": "Makhdum Shah Ka Mazaar (मख़दूम शाह का मज़ार)",
          "image": "https://cdn.s3waas.gov.in/s366808e327dc79d135ba18e051673d906/uploads/bfi_thumb/2018022752-olw9m5ln23id7ar7iqtuub1j8fdso6a1wbs1d9ndaw.jpg",
          "description": "यह मज़ार अरवल का एक प्रमुख धार्मिक स्थल है। यहाँ श्रद्धालु दूर-दूर से आते हैं। इसे सड़क मार्ग से NH-98 द्वारा पटना से पहुँचा जा सकता है।"
        },
        {
          "name": "Madhusrava Ashram (मधुस्रवा आश्रम)",
          "image": "https://cdn.s3waas.gov.in/s366808e327dc79d135ba18e051673d906/uploads/bfi_thumb/2018022735-1-olw9m5ln23id7ar7iqtuub1j8fdso6a1wbs1d9ndaw.jpg",
          "description": "यह आश्रम अरवल जिले का एक शांत धार्मिक स्थल है। यहाँ आध्यात्मिक वातावरण लोगों को आकर्षित करता है।"
        },
        {
          "name": "Gautam Budh Mandir (गौतम बुद्ध मंदिर)",
          "image": "https://cdn.s3waas.gov.in/s366808e327dc79d135ba18e051673d906/uploads/bfi_thumb/2018022778-olw9m6jh8xjniwpud98hessztt95vvds8gfiujlz4o.jpg",
          "description": "गौतम बुद्ध को समर्पित यह मंदिर अरवल का प्रसिद्ध स्थल है। यहाँ NH-98 के रास्ते पटना से पहुँचा जा सकता है।"
        },
        {
          "name": "Fakharpur Mandir (फखरपुर मंदिर)",
          "image": "https://cdn.s3waas.gov.in/s366808e327dc79d135ba18e051673d906/uploads/bfi_thumb/2018022755-olw9m5ln23id7ar7iqtuub1j8fdso6a1wbs1d9ndaw.jpg",
          "description": "यह मंदिर फखरपुर पंचायत, अरवल में स्थित है। यह स्थानीय श्रद्धालुओं के लिए धार्मिक महत्व रखता है।"
        },
        {
          "name": "Aganoor Jal Vidyut Pariyojna (अगनूर जल विद्युत परियोजना)",
          "image": "https://cdn.s3waas.gov.in/s366808e327dc79d135ba18e051673d906/uploads/bfi_thumb/2018022712-olw9lx53cl6sat3hw567pv6dvyjhqwcgv5wo1rzwuw.jpg",
          "description": "यह जल विद्युत परियोजना अरवल जिले के कालेर प्रखंड में स्थित है। NH-98 से सड़क मार्ग द्वारा यहाँ पहुँचा जा सकता है।"
        }
      ],

    "Aurangabad (औरंगाबाद)": [
      {
        "name": "Deo Sun Temple (देव सूर्य मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/4/4d/Sun-temple_DEO_Aurangabad_Bihar%2CIndia.jpg",
        "description": "देव सूर्य मंदिर औरंगाबाद का सबसे प्रसिद्ध स्थल है। इसे 15वीं सदी में चंद्रवंशी राजा भैरवेंद्र सिंह ने बनवाया था। 100 फीट ऊँचा यह मंदिर छत्रनुमा शिखर वाला है। छठ पर्व पर यहाँ लाखों श्रद्धालु ब्रह्मा कुंड में स्नान कर सूर्य देव की पूजा करते हैं।"
      },
      {
        "name": "Deo Kund (देव कुंड)",
        "image": "https://www.nativeplanet.com/photos/212x302x100/2018/12/photo-92-104209-1.jpg",
        "description": "देव कुंड एक ऐतिहासिक स्थल है, जहाँ भगवान शिव का प्राचीन मंदिर स्थित है। महाशिवरात्रि पर हजारों श्रद्धालु यहाँ दर्शन के लिए आते हैं। मान्यता है कि यही स्थान वह है जहाँ च्यवन ऋषि ने तपस्या की थी।"
      },
      {
        "name": "Umga Temple (उमगा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEXQwhIIf6VR8kf55oIr1hVPqjbd41AJjWog&s",
        "description": "उमगा एक प्रसिद्ध तीर्थ स्थल है, जहाँ वैष्णव मंदिर स्थित है। इसका स्थापत्य देव सूर्य मंदिर से मिलता-जुलता है। ग्रेनाइट पत्थरों से बना यह मंदिर भगवान गणेश, सूर्य देव और भगवान शिव को समर्पित है।"
      },
      {
        "name": "Amjhar Sharif Dargah (अमझर शरीफ़ दरगाह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF2s3fO3SoNlZinOwnEtzOwnRx_0HbZHnU-g&s",
        "description": "अमझर शरीफ़ औरंगाबाद का प्रमुख इस्लामी तीर्थ स्थल है। यह सूफी संत हज़रत सैयदना मोहम्मद जिलानी अमझरी क़ादरी की दरगाह है। हर साल जून के पहले सप्ताह में यहाँ उर्स मनाया जाता है और संत के पवित्र बाल भी प्रदर्शित किए जाते हैं।"
      },
      {
        "name": "Pawai, Mali and Chandangadh (पवाई, माली और चंदनगढ़ किले)",
        "image": "https://www.nativeplanet.com/photos/325x244x100/2018/12/photo-92-104350-1.jpg",
        "description": "पवाई, माली और चंदनगढ़ औरंगाबाद के ऐतिहासिक स्थल हैं। यहाँ राजस्थान से आए राजाओं के किलों के अवशेष पाए जाते हैं। इतिहास और पुरातत्व में रुचि रखने वालों के लिए ये स्थल विशेष महत्व रखते हैं।"
      },
      {
        "name": "Piru (पीरु)",
        "image": "https://www.nativeplanet.com/photos/325x244x100/2018/12/photo-92-104440-1.jpg",
        "description": "पीरु, जिसे प्रीतिकूट भी कहा जाता था, प्रख्यात कवि और सम्राट हर्षवर्धन के दरबारी बाणभट्ट का जन्मस्थान है। यह स्थल साहित्य और इतिहास प्रेमियों के लिए आकर्षण का केंद्र है।"
      },
      {
        "name": "Siris (सीरीस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8UXFPCOQRt5i7zGAfpk6j5koGch0bDSCBfg&s",
        "description": "सीरीस एक ऐतिहासिक स्थल है जो शेरशाह और मुग़ल साम्राज्य के समय परगना था। यह 1857 के विद्रोह के कुछ अनसुने नायकों और राजा नारायण सिंह की गतिविधियों का प्रमुख स्थल रहा है। यहाँ एक प्राचीन मस्जिद भी स्थित है।"
      }
    ],
    "Begusarai (बेगूसराय)": [
      {
        "name": "Jaimanglagarh Fort (जयमंगलगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3f4be00279ee2e0a53eafdaa94a151e2c/uploads/bfi_thumb/2018041899-olwdvreeccqzqsnthfxdnsgld96p0b6hmdi1jc9k7e.jpg",
        "description": "A historical fort located on the banks of River Ganga, known for its ancient architecture and cultural significance. गंगा नदी के किनारे स्थित एक ऐतिहासिक किला, जो अपने प्राचीन स्थापत्य और सांस्कृतिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Naulakha Temple (नौलखा मंदिर, Begusarai Town)",
        "image": "https://cdn.s3waas.gov.in/s3f4be00279ee2e0a53eafdaa94a151e2c/uploads/bfi_thumb/2018041749-olwdvreeccqzqsnthfxdnsgld96p0b6hmdi1jc9k7e.jpg",
        "description": "A famous temple in Begusarai town dedicated to Lord Radha-Krishna, attracting devotees throughout the year. बेगूसराय शहर का प्रसिद्ध राधा-कृष्ण मंदिर, जहाँ सालभर श्रद्धालु दर्शन करने आते हैं।"
      },
      {
        "name": "Kanwar Lake (कावर झील / काबर ताल)",
        "image": "https://media2.thrillophilia.com/images/photos/000/365/567/original/1611686680_Over-11-lakh-migratory-birds-visit-Odishas-Chilika-lake.jpg?",
        "description": "Asia's largest freshwater oxbow lake, a Ramsar site and a paradise for migratory birds. एशिया की सबसे बड़ी मीठे पानी की प्राकृतिक झील, जो रामसर साइट है और प्रवासी पक्षियों का स्वर्ग मानी जाती है।"
      },
      {
        "name": "Simaria Dham (सिमरिया धाम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJPyHqPS3NsvcDPeVKuJ5AnSHfRZ35FUABQQ&s",
        "description": "A sacred pilgrimage site on the banks of the Ganga River, famous for Simaria Mela and religious gatherings. गंगा नदी के तट पर स्थित पवित्र तीर्थ स्थल, जो सिमरिया मेला और धार्मिक आयोजनों के लिए प्रसिद्ध है।"
      }
    ],
    "Banka (बांका)": [
  {
    "name": "Papharni Mandir (पफरनी मंदिर)",
    "image": "https://i0.wp.com/angdesh.com/wp-content/uploads/2022/07/papharni-talab-banka-7.jpg?resize=445%2C297&ssl=1",
    "description": "यह मंदिर बांका जिले का एक प्रमुख धार्मिक स्थल है, जहाँ बड़ी संख्या में श्रद्धालु दर्शन के लिए आते हैं।"
  },
  {
  "name": "Chuteshwar Nath Temple (चुटेश्वर नाथ मंदिर)",
  "image": "https://i0.wp.com/angdesh.com/wp-content/uploads/2022/07/chutonath-mandir-dumka-5.jpg?fit=400%2C300&ssl=1&resize=350%2C200",
  "description": "यह प्राचीन शिव मंदिर अपनी धार्मिक मान्यताओं और पौराणिक महत्व के लिए जाना जाता है।"
},
{
"name": "Mandar Hill (मंदर पर्वत)",
"image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/4f/7c/30/mandar-hill-parvat.jpg?w=1200&h=-1&s=1",
"description": "मंदर पर्वत बांका जिले का सबसे प्रमुख तीर्थ स्थल है। मान्यता है कि समुद्र मंथन यहीं हुआ था। पर्वत पर विष्णु और अन्य देवी-देवताओं के मंदिर स्थित हैं।"
},
      {
        "name": "Digghi Talab (दिग्घी तालाब)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgy4m4JpeXEPtivlzPFcTEfGGBdZiL3pBxow&s",
        "description": "दिग्घी तालाब धार्मिक स्नान और मेलों के लिए प्रसिद्ध है। स्थानीय परंपराओं और संस्कृति का अनुभव यहाँ किया जा सकता है।"
      }
    ],
    "Buxar (बक्सर)": [
      {
        "name": "Ramrekha Ghat (रामरेखा घाट, सिद्धाश्रम)",
        "image": "data:image/jpeg;base64,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",
        "description": "A sacred site on the banks of the Ganga, believed to be associated with Lord Rama. Lakhs of devotees visit during festivals and Ganga snan. गंगा तट पर स्थित पवित्र स्थल, जिसे भगवान राम से जोड़ा जाता है। पर्व और गंगा स्नान पर लाखों श्रद्धालु यहाँ आते हैं।"
      },

      {
        "name": "Kila (किला)",
        "image": "https://www.hlimg.com/images/things2do/300X200/images%20(20)_1511370063t.jpg?w=400&dpr=2.6",
        "description": "A historical fort known for its architecture and cultural significance. ऐतिहासिक किला जो अपनी वास्तुकला और सांस्कृतिक महत्व के लिए प्रसिद्ध है।"
      },

      {
        "name": "Bramheshwar Nath Temple (ब्रह्मेश्वरनाथ मंदिर, Dumraon)",
        "image": "https://lh3.googleusercontent.com/gps-cs-s/AC9h4npYQliI6QDFqodKZXNJVwZj30iVfWHljL2wrLt1-_JHzjflfdYnT0QUOwK90qwWZjEAINc15xEGdyL882u9J4Me8xjueLkUNEcrhHmNFyIgDJmenJc-iQXwVyb3yyW-roqAP7aAPw=w243-h244-n-k-no-nu",
        "description": "A famous Shiva temple often called 'Mini Deoghar'. During Shravan month, lakhs of devotees visit. प्रसिद्ध शिव मंदिर जिसे 'मिनी देवघर' कहा जाता है। सावन में लाखों श्रद्धालु यहाँ आते हैं।"
      },
      {
        "name": "Katkauli Ka Maidan (कठकौली का मैदान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlmYe-O6nAtWATuBL7wuxRsfMsxOoD0dSHAg&s",
        "description": "The battlefield of the historic Battle of Buxar (1764) between the British and Indian rulers. ऐतिहासिक 'बक्सर का युद्ध' (1764) का मैदान, जहाँ अंग्रेजों और भारतीय शासकों के बीच युद्ध हुआ था।"
      },
      {
        "name": "Mata Ahilya Asthan (माता अहिल्या स्थान, Ahirauli)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQvvVda_n6d4zrW-wRGC1GawSYPBizKkeTUxfYOoobZvePZLHP&s",
        "description": "A temple dedicated to Mata Ahilya, associated with Ramayana legends. रामायण काल से जुड़ा पौराणिक स्थल, माता अहिल्या को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Bihari Ji Mandir (बिहारी जी मंदिर, Dumraon)",
        "image": "https://lh3.googleusercontent.com/gps-cs-s/AC9h4nq5oL720LWJmsz4LCFnBNGj5KKEd5jLXxRcxfIf4RW3ZLaosZx7yr2Jmx7ZZb7NBqIj2MgmWqCZ1gHELT-QwBAOys6Z7loXczmTj1sQPNe5MS1b_dxYEzRXn0-5QZg6iKqFEyg=s1360-w1360-h1020-rw",
        "description": "A famous temple in Dumraon dedicated to Lord Krishna, visited by devotees year-round. दु्मरांव स्थित भगवान श्रीकृष्ण को समर्पित प्रसिद्ध मंदिर, जहाँ सालभर श्रद्धालु दर्शन करने आते हैं।"
      },
      {
        "name": "Nath Baba Mandir (नाथ बाबा मंदिर, Buxar)",
        "image": "https://i0.wp.com/www.buxarkhabar.com/wp-content/uploads/2018/09/11-sep-nath-baba-mandir.jpg?fit=709%2C425&ssl=1",
        "description": "A sacred Shiva temple and a major religious center for local devotees. धार्मिक आस्था का प्रमुख केंद्र, शिव भक्तों के लिए अत्यंत महत्वपूर्ण।"
      },
      {
        "name": "Sita Ram Upadhyaya Museum (सीता राम उपाध्याय संग्रहालय, Buxar)",
        "image": "https://www.mappls.com/place/IYZKCW_1686226708720_0.png",
        "description": "A museum housing ancient sculptures, coins, and artifacts from the Maurya, Gupta, and Magadh period. An important site for history lovers. एक संग्रहालय जहाँ मौर्य, गुप्त और मगध काल की मूर्तियाँ, सिक्के और प्राचीन वस्तुएँ रखी गई हैं। इतिहास प्रेमियों के लिए महत्वपूर्ण स्थल।"
      }

    ],
    "Bhojpur (भोजपुर)": [
      {
        "name": "Rarheswar Shiv Mandir (राढ़ेश्वर शिव मंदिर)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/rarheshwar-shiv-mandir-durgapur-west-bengal-2-attr-hero?qlt=82&ts=1726643643395",
        "description": "Rarheshwar Shiv Mandir is one of the ancient Shiva temples located near Durgapur, around 4 km from Muchipara. It holds great religious and historical significance. | राढ़ेश्वर शिव मंदिर दुर्गापुर के पास स्थित प्राचीन शिव मंदिरों में से एक है, जो मुचिपारा से लगभग 4 किमी दूर है। इसका धार्मिक और ऐतिहासिक महत्व है।"
      },
      {
        "name": "Masarh (मसरh)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm-08dcrtU-ncGvnw_TRtx2ak7gC86eChtzQ&s",
        "description": "Masarh is derived from the word 'Mahasara'. It has a 600-year-old Jain inscription in the Parshvanatha temple where this place is mentioned as Mahasara. | मसरh का नाम 'महासरा' शब्द से निकला है। यहाँ के पार्श्वनाथ मंदिर में 600 वर्ष पुराना जैन शिलालेख है, जिसमें इस स्थान का उल्लेख महासरा के रूप में किया गया है।"
      },
      {
        "name": "Holy Saviour Church (होली सेवियर चर्च)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS785dnpXqhqZhXPdq5yuvthM_3wsbN6Z_hjw&s",
        "description": "Also known as St. Mary's Church, this was built in the early 1890s in Arrah with extraordinary British architecture. | सेंट मेरी चर्च के नाम से भी प्रसिद्ध यह चर्च आरा में 1890 के दशक में ब्रिटिश स्थापत्य कला से बनाया गया था।"
      },
      {
        "name": "Arrah House, Maharaja College (आरा हाउस, महाराजा कॉलेज)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Arrah_House.jpg/250px-Arrah_House.jpg",
        "description": "Arrah House is a historic building that witnessed the Siege of Arrah during the Revolt of 1857. Today, it is known as Veer Kunwar Singh Museum under the ASI. | आरा हाउस एक ऐतिहासिक भवन है जिसने 1857 के विद्रोह के दौरान आरा की घेराबंदी देखी थी। आज यह भारतीय पुरातत्व सर्वेक्षण के अधीन वीर कुंवर सिंह संग्रहालय के नाम से जाना जाता है।"
      },
      {
        "name": "Bisram Jain Temple (बिसराम जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgCwroQMTFBmOc3L3vOvSdSeGYdjIAeNO3-g&s",
        "description": "Bisram is a religious site dedicated to Lord Mahavira, the 24th Tirthankar of Jainism. The name 'Bisram' means 'rest' in Hindi. | बिसराम जैन धर्म का प्रमुख स्थल है जो भगवान महावीर, 24वें तीर्थंकर को समर्पित है। 'बिसराम' का अर्थ हिंदी में 'विश्राम' होता है।"
      },
      {
        "name": "Jagdishpur Fort (जगदीशपुर किला)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/st.-marys-church-arrah-bihar-1-attr-nearby?qlt=82&ts=1726740513737",
        "description": "Jagdishpur Fort was the residence of Babu Veer Kunwar Singh, one of the greatest leaders of the Revolt of 1857. | जगदीशपुर किला 1857 के विद्रोह के महान नेता बाबू वीर कुंवर सिंह का निवास स्थान था।"
      },
      {
        "name": "Aranya Devi Temple (आरण्य देवी मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Aranya_Devi_Temple%2C_Arrah.jpg/500px-Aranya_Devi_Temple%2C_Arrah.jpg",
        "description": "One of the most famous temples in Arrah, dedicated to Goddess Aranya Devi (forest deity). Thousands of devotees visit every year. | आरा का प्रसिद्ध मंदिर, जो नगर की अधिष्ठात्री देवी आरण्य देवी को समर्पित है। हर साल हजारों श्रद्धालु यहाँ आते हैं।"
      },
      {
        "name": "Sun Temple, Tarari (सूर्य मंदिर, तरारी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeRrdhh8AV7mEElui65k-oKN0vKXoEqKLeOA&s",
        "description": "तरारी ब्लॉक के देव गांव में स्थित यह सूर्य मंदिर 14वीं शताब्दी या उससे भी प्राचीन माना जाता है। यहाँ सूर्य देव की प्रतिमा के साथ अन्य देवी-देवताओं की मूर्तियाँ भी हैं।"
      },
      {
        "name": "Veer Kunwar Singh Qila, Jagdishpur (वीर कुंवर सिंह किला, जगदीशपुर)",
        "image": "https://images.news18.com/ibnkhabar/uploads/2023/01/2439329_HYP_0_FEATURE20230125_153441-16747230683x2.jpg",
        "description": "1857 के महान स्वतंत्रता सेनानी वीर कुंवर सिंह का किला जगदीशपुर में स्थित है। यह किला उनकी वीरता और बलिदान की स्मृतियों को संजोए हुए है।"
      }
    ],

    "Gopalganj (गोपालगंज)": [
      {
        "name": "Thawe Durga Mandir (थावे दुर्गा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdaYyFO78KNKQepxVkYvHf0fx66tKPECqLqg&s",
        "description": "The most famous Shakti Peeth in Gopalganj, where lakhs of devotees visit during Navratri. गोपालगंज का सबसे प्रसिद्ध शक्तिपीठ, जहाँ नवरात्रि में लाखों श्रद्धालु आते हैं।"
      },
      {
        "name": "Shri Pitambara Peeth, Maa Baglamukhi (श्री पीताम्बरा पीठ, माँ बगलामुखी)",
        "image": "https://nonprod-media.webdunia.com/public_html/_media/hi/img/article/2022-05/04/full/1651659391-0807.jpg",
        "description": "A divine temple dedicated to Maa Baglamukhi, worshipped for victory and protection. माँ बगलामुखी को समर्पित दिव्य मंदिर, जहाँ विजय और सुरक्षा के लिए पूजा होती है।"
      },

      {
        "name": "Lakri Dargah (लकड़ी दरगाह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOwftLcqdawVlfobxX0RrydsN5uFqrdwPMfw&s",
        "description": "A famous Sufi shrine visited by people of all religions, known for communal harmony. सभी धर्मों के लोग इस सूफी दरगाह में आते हैं, जो साम्प्रदायिक एकता का प्रतीक है।"
      },
      {
        "name": "Hathua Raj Palace (हथुआ राज पैलेस)",
        "image": "https://i.ytimg.com/vi/rw0o0Ca3YJ4/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCoUnRl_YdtKl0dYxzX7LJwV36b0w", // ऊपर दिखाए गए इमेज को किसी भरोसेमंद होस्टिंग में अपलोड करें
        "description": "A historic white palace built in Mughal-British architectural style, located in Hathua, symbolizing royal heritage. Part of the estate now houses Sainik School Gopalganj. हथुआ में स्थित एक ऐतिहासिक सफेद महल, जो मुगल-ब्रिटिश स्थापत्य शैली में बना है और शाही विरासत का प्रतीक है। इसका एक हिस्सा अब सैनिक स्कूल गोपालगंज के रूप में उपयोग में है।"
      }
    ],
    "East Champaran (पूर्वी चंपारण)": [
      {
        "name": "George Orwell Birthplace, Motihari (जॉर्ज ऑरवेल जन्मस्थान, मोतिहारी)",
        "image": "https://cdn.s3waas.gov.in/s3bac9162b47c56fc8a4d2a519803d51b3/uploads/bfi_thumb/2022010712-1-pin8sz3efdqtcotx7l5xputyjn91jhzvolxxsihj0e.jpeg",
        "description": "George Orwell, a world-renowned novelist of English literature, was born on June 25, 1903, near Gopal Sah High School in Motihari. The site is preserved as a historic landmark. | जॉर्ज ऑरवेल, अंग्रेजी साहित्य के विश्वप्रसिद्ध उपन्यासकार, का जन्म 25 जून 1903 को मोतिहारी के गोपाल साह हाई स्कूल के पास हुआ था। यह स्थल आज एक ऐतिहासिक धरोहर के रूप में संरक्षित है।"
      },
      {
        "name": "Gandhi Memorial, Chandrahiya (गांधी स्मारक, चंद्रहिया)",
        "image": "https://cdn.s3waas.gov.in/s3bac9162b47c56fc8a4d2a519803d51b3/uploads/bfi_thumb/2018033063-olwccjdhi9gqddjtp8jq53tuxp5kl1ulld4t2agdxa.jpg",
        "description": "Chandrahiya village in East Champaran holds special significance in the Champaran Satyagraha. On April 18, 1917, Mahatma Gandhi was stopped here by the British during the movement. | पूर्वी चंपारण का चंद्रहिया गाँव चंपारण सत्याग्रह में विशेष महत्व रखता है। 18 अप्रैल 1917 को महात्मा गांधी को यहाँ अंग्रेजों ने आंदोलन के दौरान रोका था।"
      },
      {
        "name": "Someshwar Nath Mandir, Areraj (सोमेश्वर नाथ मंदिर, अरेराज)",
        "image": "https://cdn.s3waas.gov.in/s3bac9162b47c56fc8a4d2a519803d51b3/uploads/bfi_thumb/2018031343-e1520936977530-olwccburzl6fshuqx5apl5q66m6mvh0qwbwx82rjb2.jpg",
        "description": "Areraj is a holy city in North Bihar, 28 km southwest of Motihari. The Someshwar Nath Temple here is an ancient and highly revered Shiva temple. | अरेराज उत्तर बिहार का एक पवित्र नगर है, जो मोतिहारी से 28 किमी दक्षिण-पश्चिम में स्थित है। यहाँ का सोमेश्वर नाथ मंदिर एक प्राचीन और अत्यंत श्रद्धेय शिव मंदिर है।"
      },
      {
        "name": "Ashokan Pillar, Lauria Areraj (अशोक स्तंभ, लौरिया अरेराज)",
        "image": "https://cdn.s3waas.gov.in/s3bac9162b47c56fc8a4d2a519803d51b3/uploads/bfi_thumb/2018031421-olwcccsm6f7q43tdrnpc5nhms020364h8gkepcq54u.jpg",
        "description": "This lofty stone column was erected by Emperor Ashoka in 249 BC at Lauria village under Areraj subdivision. It is an important monument of Buddhist and Mauryan history. | यह विशाल पत्थर का स्तंभ 249 ईसा पूर्व सम्राट अशोक द्वारा अरेराज प्रखंड के लौरिया गाँव में स्थापित किया गया था। यह बौद्ध और मौर्यकालीन इतिहास का एक महत्वपूर्ण स्मारक है।"
      },
      {
        "name": "Gandhi Sangrahalaya, Motihari (गांधी संग्रहालय, मोतिहारी)",
        "image": "https://cdn.s3waas.gov.in/s3bac9162b47c56fc8a4d2a519803d51b3/uploads/bfi_thumb/2018031331-olwccburzl6fshuqx5apl5q66m6mvh0qwbwx82rjb2.jpg",
        "description": "The foundation stone of this Gandhi memorial and library was laid on June 10, 1972 by the Governor D.K. Barooch. It preserves rare documents and materials related to Gandhi and Champaran Satyagraha. | गांधी स्मारक और पुस्तकालय की आधारशिला 10 जून 1972 को तत्कालीन राज्यपाल डी.के. बारूच द्वारा रखी गई थी। यहाँ गांधीजी और चंपारण सत्याग्रह से जुड़े दुर्लभ दस्तावेज़ व सामग्री संरक्षित हैं।"
      },
      {
        "name": "Kesaria Baudh Stupa (केसरीया बौद्ध स्तूप)",
        "image": "https://cdn.s3waas.gov.in/s3bac9162b47c56fc8a4d2a519803d51b3/uploads/bfi_thumb/2018031361-olwccburzl6fshuqx5apl5q66m6mvh0qwbwx82rjb2.jpg",
        "description": "The discovery of the Kesaria Stupa reestablished Bihar’s historic importance. It is considered the largest Buddhist stupa ever found in the world. | केसरीया स्तूप की खोज ने बिहार के ऐतिहासिक महत्व को पुनः स्थापित किया। इसे दुनिया का सबसे बड़ा बौद्ध स्तूप माना जाता है।"
      }
      ],
    "West Champaran (पश्चिम चंपारण)": [
      {
        "name": "Valmikinagar Barrage (वाल्मीकिनगर बैराज)",
        "image": "https://cdn.s3waas.gov.in/s3c6e19e830859f2cb9f7c8f8cacb8d2a6/uploads/2018/03/2018031099-300x199.jpg",
        "description": "The Valmikinagar Barrage on the Gandak River is a major attraction, offering scenic views and picnic spots. | गंडक नदी पर स्थित वाल्मीकिनगर बैराज एक प्रमुख आकर्षण है, जहाँ सुंदर दृश्य और पिकनिक स्थल उपलब्ध हैं।"
      },
      {
        "name": "Chanki Garh Fort (चंकीगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTee9DwbqmIp_sWb5W7RVISci6pexAHJgMRfg&s",
        "description": "Chanki Garh is an ancient fort located near Valmikinagar, known for its historical importance and scenic surroundings. | चंकीगढ़ एक प्राचीन किला है जो वाल्मीकिनगर के पास स्थित है, यह अपने ऐतिहासिक महत्व और सुंदर प्राकृतिक परिवेश के लिए प्रसिद्ध है।"
      },
      {
        "name": "Someshwar Fort (सोमेश्वर किला)",
        "image": "https://scontent.fdel1-2.fna.fbcdn.net/v/t39.30808-6/485885326_1071389895021763_4845036170938945016_n.jpg?stp=dst-jpg_p526x296_tt6&_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_ohc=piyfQcoOsiwQ7kNvwE5hJ6p&_nc_oc=Adn5KnDPI_TN2eSAb5EmM7F-oJemxY4BHgf-rSC4rn8Sr4M7LB23rYxqpFl3Jaa59Lw&_nc_zt=23&_nc_ht=scontent.fdel1-2.fna&_nc_gid=RMphlhR7u-RlzmeCliqM_Q&oh=00_Afat0n6hzYG6S1lz0Qao8lG-7Tc3bbUgmL2LLhJ44fD2_w&oe=68C7040A",
        "description": "Someshwar Fort, located near the Indo-Nepal border in West Champaran, is a historical site surrounded by dense forests and scenic hills. | पश्चिम चंपारण में भारत-नेपाल सीमा के पास स्थित सोमेश्वर किला एक ऐतिहासिक स्थल है, जो घने जंगलों और सुंदर पहाड़ियों से घिरा हुआ है।"
      },
      {
        "name": "Valmiki Tiger Reserve (वाल्मीकि टाइगर रिज़र्व)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnuEy1RXtKzRDQGem01CPJ1OCjvEA40O_9Mg&s",
        "description": "Valmiki Tiger Reserve, located in West Champaran, is the only tiger reserve in Bihar. Spread over the Himalayan Terai region, it is home to tigers, leopards, elephants, and rich biodiversity. | पश्चिम चंपारण में स्थित वाल्मीकि टाइगर रिज़र्व बिहार का एकमात्र टाइगर रिज़र्व है। यह हिमालयी तराई क्षेत्र में फैला है और यहाँ बाघ, तेंदुए, हाथी तथा समृद्ध जैव विविधता पाई जाती है।"
      },
      {
        "name": "Thori Red Hill (थोरी रेड हिल)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-c/1280x250/13/5e/4a/00/jim-corbett-national.jpg",
        "description": "Thori Red Hill, located near Valmikinagar in West Champaran, is known for its unique red-colored soil and natural beauty. It is a popular spot for nature lovers and trekkers. | पश्चिम चंपारण के वाल्मीकिनगर के पास स्थित थोरी रेड हिल अपनी लाल मिट्टी और प्राकृतिक सुंदरता के लिए प्रसिद्ध है। यह प्रकृति प्रेमियों और ट्रैकिंग करने वालों के लिए एक लोकप्रिय स्थल है।"
      },

      {
        "name": "Ramnagar Shiv Mandir (रामनगर शिव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn3HDNWCnl8kwZRcqlFkoZQJHaQqgyn5Z2lA&s",
        "description": "Ramnagar Shiv Mandir is a famous temple dedicated to Lord Shiva, known for its religious importance and large gatherings during Maha Shivratri. | रामनगर शिव मंदिर भगवान शिव को समर्पित एक प्रसिद्ध मंदिर है, जो अपनी धार्मिक महत्ता और महाशिवरात्रि के विशाल मेले के लिए जाना जाता है।"
      },

      {
        "name": "Bhiknathori (भिखनाथोरी)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-c/1280x250/13/5e/4a/00/jim-corbett-national.jpg",
        "description": "A scenic spot near the Nepal border offering clear Himalayan views, once visited by King George V for hunting. | नेपाल सीमा के पास स्थित यह सुंदर स्थल हिमालय की झलक दिखाता है, जहाँ किंग जॉर्ज पंचम शिकार के लिए आए थे।"
      },
      {
        "name": "Sumeswer Fort (सुमेश्वर किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPw1opi1NeGuYrsofty92Cz6uGxOuQeThyig&s",
        "description": "Located atop the Sumeswer Hills at 2,884 feet, the fort offers breathtaking Himalayan views and ancient water reservoirs. | 2,884 फीट ऊँचे सुमेश्वर पहाड़ पर स्थित यह किला शानदार हिमालयी दृश्य और प्राचीन जलाशयों के लिए जाना जाता है।"
      },
      {
        "name": "Bhitiharwa Ashram (भितिहरवा आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s3c6e19e830859f2cb9f7c8f8cacb8d2a6/uploads/2018/03/2018031068-300x230.png",
        "description": "This ashram is where Mahatma Gandhi began the Champaran Satyagraha, now a pilgrimage site of Gandhian legacy. | यहीं से महात्मा गांधी ने चंपारण सत्याग्रह शुरू किया था, अब यह गाँधीवादी धरोहर का तीर्थ स्थल है।"
      },
      {
        "name": "Nandangarh and Chankigarh (नंदनगढ़ और चाणकिगढ़)",
        "image": "https://cdn.s3waas.gov.in/s3c6e19e830859f2cb9f7c8f8cacb8d2a6/uploads/2018/03/2018031072.jpg",
        "description": "These ancient mounds are believed to be remains of Nanda dynasty palaces and associated with Chanakya. | ये प्राचीन टीले नंद वंश के महलों और चाणक्य से जुड़े अवशेष माने जाते हैं।"
      },
      {
        "name": "Ashoka Pillars, Lauriya (अशोक स्तंभ, लौरिया)",
        "image": "https://cdn.s3waas.gov.in/s3c6e19e830859f2cb9f7c8f8cacb8d2a6/uploads/2018/03/2018031071-270x300.jpg",
        "description": "A 2300-year-old Ashokan pillar, standing 35 feet tall, showcases Mauryan artistry and history. | लगभग 2300 वर्ष पुराना अशोक स्तंभ, 35 फीट ऊँचा, मौर्यकालीन कला और इतिहास का अद्भुत प्रमाण है।"
      }
    ],
    "Jehanabad (जहानाबाद)": [
      {
        "name": "Barabar Caves (बाराबर गुफाएँ)",
        "image": "https://cdn.s3waas.gov.in/s34e4b5fbbbb602b6d35bea8460aa8f8e5/uploads/bfi_thumb/2021020354-scaled-p2bdqjgz588u51gwoqho3bqrznv3f6a7nr82fp2ah6.jpg",
        "description": "The Barabar Caves, located near Makhdumpur about 25 km south of Jehanabad, are the oldest surviving rock-cut caves in India. Dating back to the Mauryan period (3rd century BCE), they were used by the Ajivika sect and later associated with Buddhism and Jainism. The caves are famous for their polished granite interiors and echo effect. | बाराबर गुफाएँ, जहानाबाद से लगभग 25 किमी दक्षिण में मखदूमपुर के पास स्थित, भारत की सबसे प्राचीन शिलाचित्रित गुफाएँ मानी जाती हैं। ये मौर्य काल (ईसा पूर्व 3री शताब्दी) की हैं और पहले आजीवक संप्रदाय द्वारा उपयोग में लाई जाती थीं। बाद में इनका संबंध बौद्ध और जैन धर्म से भी रहा। गुफाओं की ग्रेनाइट की दीवारों पर चमकदार पॉलिश और गूँजने की विशेषता प्रसिद्ध है।"
      },
      {
        "name": "Barabar Hills (बाराबर पहाड़ियाँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WGVavI60xEZmNF3TmP3Fda1HThtaqqe4ug&s",
        "description": "Barabar Hills surround the famous caves and offer a scenic natural landscape with historic charm, making them a popular trekking and picnic spot. | बाराबर गुफाओं को घेरे हुए ये पहाड़ियाँ प्राकृतिक सौंदर्य और ऐतिहासिक महत्व से भरपूर हैं। यह स्थान ट्रेकिंग और पिकनिक के लिए भी प्रसिद्ध है।"
      },
      {
        "name": "Dawthu, Hulasganj (दावथू, हुलासगंज)",
        "image": "https://cdn.s3waas.gov.in/s34e4b5fbbbb602b6d35bea8460aa8f8e5/uploads/bfi_thumb/2022101172-pw1m5vqqgqmubcogk7esbtffoyd31usvnw8su7qah6.jpeg",
        "description": "This site contains ancient remains of temples and sculptures resembling early historic structures, making it an archaeological interest point. | इस स्थल पर प्राचीन मंदिरों और मूर्तियों के अवशेष मिलते हैं, जिनका ढांचा प्राचीन ऐतिहासिक स्थापत्य जैसा है। यह स्थान पुरातत्व की दृष्टि से महत्वपूर्ण है।"
      },
      {
        "name": "Amthua Sharif (अमथुआ शरीफ)",
        "image": "https://cdn.s3waas.gov.in/s34e4b5fbbbb602b6d35bea8460aa8f8e5/uploads/bfi_thumb/2022101118-pw1m713mtg7gi70dupaddizptwp8gjd2hky5ye0yve.jpeg",
        "description": "Amthua Sharif is a Sufi shrine located 13 km from Jehanabad headquarters and 8 km from Kako, known for its religious significance. | अमथुआ शरीफ एक सूफी दरगाह है, जो जिला मुख्यालय से 13 किमी और काको से 8 किमी दूर स्थित है। यह धार्मिक दृष्टि से अत्यंत महत्वपूर्ण स्थल है।"
      },
      {
        "name": "Vishnu Temple, Kako (विष्णु मंदिर, काको)",
        "image": "https://cdn.s3waas.gov.in/s34e4b5fbbbb602b6d35bea8460aa8f8e5/uploads/bfi_thumb/2022092128-pv374dti692jjonjc8f9guxvxh6njo2fn6gjn8qvm2.jpeg",
        "description": "The Vishnu Temple at Kako is an ancient shrine with both historical and religious value, attracting devotees and historians alike. | काको का विष्णु मंदिर एक प्राचीन धार्मिक स्थल है, जिसका ऐतिहासिक और धार्मिक दोनों दृष्टि से महत्व है। यहाँ श्रद्धालु और इतिहास प्रेमी बड़ी संख्या में आते हैं।"
      },
      {
        "name": "Bibi Kamal’s Dargah (बीबी कमाल की दरगाह)",
        "image": "https://cdn.s3waas.gov.in/s34e4b5fbbbb602b6d35bea8460aa8f8e5/uploads/bfi_thumb/2018030881-olw8p6fpq9bz5bokzshdpvgodstr38glyvma40wvbe.jpg",
        "description": "This is the shrine of Hazrat Bibi Kamal, considered the first woman Sufi saint of India, and holds immense spiritual importance. | यह हज़रत बीबी कमाल की दरगाह है, जिन्हें भारत की पहली महिला सूफी संत माना जाता है। यह स्थान अत्यधिक आध्यात्मिक महत्व रखता है।"
      }
    ],
    "Jamui (जमुई)": [
      {
        "name": "Jain Mandir, Lachhuar (जैन मंदिर, लच्छुआर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Lachhuar_Jain_Temple.jpg/375px-Lachhuar_Jain_Temple.jpg",
        "description": "This large Dharmsala with 65 rooms was built for Jain pilgrims. Inside is a temple of Lord Mahavira with a 2,600-year-old black stone idol weighing about 250 kg. | यह विशाल धर्मशाला जैन तीर्थयात्रियों के लिए 65 कमरों के साथ बनाई गई है। इसके भीतर भगवान महावीर का मंदिर है, जिसमें 2600 साल पुरानी काले पत्थर की प्रतिमा विराजमान है, जिसका वज़न लगभग 250 किलो है।"
      },
      {
        "name": "Giddheswar Temple (गिद्धेश्वर मंदिर)",
        "image": "https://images.news18.com/ibnkhabar/uploads/2025/06/HYP_5260029_20250622_134513_watermark_24062025_011517_1.jpg?im=Resize,width=400,aspect=fit,type=normal",
        "description": "A famous Shiva temple located atop stone boulders, about 15 km south of Jamui town. | यह प्रसिद्ध शिव मंदिर पत्थरों की चट्टानों के ऊपर स्थित है, जो जमुई मुख्यालय से लगभग 15 किमी दक्षिण में है।"
      },
      {
        "name": "Simultalla Hill Station (सिमुलतल्ला हिल स्टेशन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiynfWmNEA4X4Kqi2-9Q96Yxit3WDQIY9iDw&s",
        "description": "Known for its scenic beauty and pleasant weather, Simultalla is believed to be the meditation land (Tapo-Bhumi) of Sri Ramakrishna Paramhans. | अपनी प्राकृतिक सुंदरता और सुहावने मौसम के लिए प्रसिद्ध सिमुलतल्ला को श्री रामकृष्ण परमहंस की तपो-भूमि माना जाता है।"
      },
      {
        "name": "Kali Mandir, Malaypur (काली मंदिर, मलयपुर)",
        "image": "https://i.ytimg.com/vi/lc4MrU6u5B8/maxresdefault.jpg",
        "description": "This temple of Goddess Kali is located near Jamui railway station in Malaypur village, Barhat block. A grand Kali Mela is organized here annually. | देवी काली का यह मंदिर मलयपुर गाँव (बरहट प्रखंड) में जमुई रेलवे स्टेशन के पास स्थित है। यहाँ हर साल भव्य काली मेला आयोजित होता है।"
      },
      {
        "name": "Minto Tower, Gidhaur (मिंटो टॉवर, गिद्धौर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6AX4-MNBpMlY63VNbMqG3OJCvaqJviYw1Og&s",
        "description": "Built in 1909 by the Maharaja of Gidhaur to honor the visit of British Viceroy Lord Irwin, the Minto Tower is a landmark in the Gidhaur market. | गिद्धौर के महाराजा ने 1909 में ब्रिटिश वायसराय लॉर्ड इर्विन की यात्रा की स्मृति में मिंटो टॉवर का निर्माण कराया। यह गिद्धौर बाज़ार का प्रमुख आकर्षण है।"
      },
      {
        "name": "Patneswar Mandir (पटनेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs8cMXVfsiHmZOEcbVF-QutTHqnEKPFsOmUw&s",
        "description": "A famous Shiva temple located about 5 km north of Jamui town on Station Road. | यह प्रसिद्ध शिव मंदिर स्टेशन रोड पर जमुई से लगभग 5 किमी उत्तर की ओर स्थित है।"
      },
      {
        "name": "Maa Netula Temple (माँ नेटुला मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMPABNp7lw_n2eyMQyAGRRy38tqdB9Vtz49Q&s",
        "description": "This temple of Maa Ambe is situated in Kumar village, Sikandra block, about 26 km west of Jamui town. | माँ अम्बे का यह प्रसिद्ध मंदिर कुमार गाँव (सिकंदरा प्रखंड) में स्थित है, जो जमुई मुख्यालय से लगभग 26 किमी पश्चिम में है।"
      },
      {
        "name": "Bhim Bandh (भीमबांध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEVZfovHX5SOKsQtB89QmvHa5v9PcxS6nXFw&s",
        "description": "Located in the forest between Lakshmipur and Haveli Kharagpur, Bhim Bandh has several natural hot springs and is a popular winter picnic spot. | लक्ष्मीपुर और हवेली खरगपुर के जंगलों के बीच स्थित भीमबांध प्राकृतिक गर्म जलस्रोतों के लिए प्रसिद्ध है और अक्टूबर से फरवरी तक यह एक लोकप्रिय पिकनिक स्थल है।"
      }
    ],



    "Kaimur (कैमूर)": [
      {
        "name": "Mundeshwari Temple (मुण्डेश्वरी मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Maa_Mundeshwari_Devi.jpg/500px-Maa_Mundeshwari_Devi.jpg",
        "description": "विश्व का सबसे प्राचीन जीवित मंदिर, माता मुंडेश्वरी को समर्पित। यहां लाखों श्रद्धालु हर साल दर्शन करने आते हैं।"
      },
      {
        "name": "Kaimur Wildlife Sanctuary (कैमूर वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYdSYiU-I2bTXNqEcELEfRbJUCxBs6ZxUSVw&s",
        "description": "बिहार का सबसे बड़ा वन्यजीव अभयारण्य, जहाँ कई दुर्लभ जीव और प्राकृतिक सुंदरता देखने को मिलती है।"
      },
      {
        "name": "Telhar Kund Waterfall (टेल्हार कुंड जलप्रपात)",
        "image": "https://pbs.twimg.com/media/FwaY09YagAAHZrd.jpg",
        "description": "पर्वतीय क्षेत्र में स्थित यह खूबसूरत जलप्रपात पर्यटकों और पिकनिक मनाने वालों के लिए स्वर्ग समान है।"
      },
      {
        "name": "Baidyanath Village & Archaeological Site (बैद्यनाथ गांव एवं पुरातात्विक स्थल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQATu8ipHOXTmJN_T9cwGwtBc6j8v3066zcaA&s",
        "description": "यहां प्राचीन मंदिर और ऐतिहासिक धरोहरें हैं, जो इसे एक प्रमुख सांस्कृतिक स्थल बनाते हैं।"
      },
      {
        "name": "Chainpur Fort (चैनपुर किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWm9zIxGYxiZxLvPf5UmxjdBnGcrT1S-mYEw&s",
        "description": "इतिहास और वास्तुकला का अद्भुत उदाहरण, कैमूर का यह किला सैलानियों को आकर्षित करता है।"
      }
    ],
    "Katihar (कटिहार)": [
      {
        "name": "Satsang Mandir (सत्संग मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b5b41fac0361d157d9673ecb926af5ae/uploads/bfi_thumb/2018031332-olwbt7sydjgvxby956ok3jtjfiqpg0r9j72tsjyjfk.jpg",
        "description": "A peaceful spiritual center in Katihar where devotees gather for satsang and prayers. | कटिहार का एक शांतिपूर्ण आध्यात्मिक स्थल, जहाँ भक्तजन सत्संग और प्रार्थना के लिए एकत्र होते हैं।"
      },
      {
        "name": "Peer Mazar, Manihari (पीर मजार, मनिहारी)",
        "image": "https://cdn.s3waas.gov.in/s3b5b41fac0361d157d9673ecb926af5ae/uploads/bfi_thumb/2018031327-1-olwbt6v46pfllpzmao9xj222u4vc8bnj72fcb9zxls.jpg",
        "description": "A popular dargah in Manihari visited by devotees of all faiths for blessings. | मनिहारी में स्थित एक प्रसिद्ध दरगाह, जहाँ सभी धर्मों के लोग आशीर्वाद लेने आते हैं।"
      },
      {
        "name": "Gurudwara Saheb, Barari (गुरुद्वारा साहेब, बरारी)",
        "image": "https://cdn.s3waas.gov.in/s3b5b41fac0361d157d9673ecb926af5ae/uploads/bfi_thumb/2018031345-olwbt7sydjgvxby956ok3jtjfiqpg0r9j72tsjyjfk.jpg",
        "description": "A historic Sikh Gurudwara in Barari, serving as a center of devotion and langar. | बरारी का ऐतिहासिक सिख गुरुद्वारा, जहाँ श्रद्धा और लंगर की परंपरा चलती है।"
      },
      {
        "name": "Gorkhanath Temple (गोरखनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b5b41fac0361d157d9673ecb926af5ae/uploads/bfi_thumb/2018031329-1-olwbt6v46pfllpzmao9xj222u4vc8bnj72fcb9zxls.jpg",
        "description": "Dedicated to Lord Shiva in the form of Gorakhnath, this temple attracts many devotees. | भगवान शिव के गोरखनाथ रूप को समर्पित यह मंदिर भक्तों का आकर्षण है।"
      },
      {
        "name": "Gogabil Lake, Manihari (गोगाबिल झील, मनिहारी)",
        "image": "https://cdn.s3waas.gov.in/s3b5b41fac0361d157d9673ecb926af5ae/uploads/bfi_thumb/2018031315-olwbt6v46pfllpzmao9xj222u4vc8bnj72fcb9zxls.jpg",
        "description": "A natural ox-bow lake and bird sanctuary in Manihari, famous for migratory birds. | मनिहारी की एक प्राकृतिक ऑक्स-बो झील और पक्षी अभयारण्य, जो प्रवासी पक्षियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kastharan Nath Mandir (कष्टरनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b5b41fac0361d157d9673ecb926af5ae/uploads/bfi_thumb/2018031390-olwbt8qskdi68xwvzp36o1l00wm2npuzvbqb9tx59c.jpg",
        "description": "An ancient temple of Lord Shiva, considered one of the oldest shrines in Katihar. | भगवान शिव का प्राचीन मंदिर, जिसे कटिहार के सबसे पुराने तीर्थस्थलों में माना जाता है।"
      },
      {
        "name": "Gandhi Ghar, Kursela (गांधी घर, कुरसेला)",
        "image": "https://cdn.s3waas.gov.in/s3b5b41fac0361d157d9673ecb926af5ae/uploads/bfi_thumb/2018031329-olwbt7sydjgvxby956ok3jtjfiqpg0r9j72tsjyjfk.jpg",
        "description": "A memorial house in Kursela associated with Mahatma Gandhi’s visit and freedom struggle. | कुरसेला में स्थित यह स्मारक महात्मा गांधी की यात्रा और स्वतंत्रता संग्राम से जुड़ा है।"
      },
      {
        "name": "Gauri Shankar Mandir, SBI Gali (गौरीशंकर मंदिर, एसबीआई गली)",
        "image": "https://cdn.s3waas.gov.in/s3b5b41fac0361d157d9673ecb926af5ae/uploads/bfi_thumb/2018031327-olwbt6v46pfllpzmao9xj222u4vc8bnj72fcb9zxls.jpg",
        "description": "A famous Shiva temple in Katihar city, located in SBI Gali. | कटिहार शहर के एसबीआई गली में स्थित यह प्रसिद्ध शिव मंदिर है।"
      },
      {
        "name": "Sarwajnik Durga Mandir (सार्वजनिक दुर्गा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7ea6Vz4VZFA5kaJ4l8n_9mUmmPUdsW3SVIw&s",
        "description": "A public Durga temple where grand Durga Puja celebrations are held every year. | एक सार्वजनिक दुर्गा मंदिर जहाँ हर साल भव्य दुर्गा पूजा आयोजित की जाती है।"
      }
    ],
    "Khagaria (खगड़िया)": [
  {
    "name": "Katyayani Asthan (कात्यायनी स्थान)",
    "image": "https://www.jagranimages.com/images/newimg/29072022/29_07_2022-maa_katyayani_place_khagaria_22934836.jpg",
    "description": "Located about 12 km from Khagaria district HQ, this temple is dedicated to Maa Katyayani. It also has shrines of Lord Rama, Lakshman, and Maa Janki. Devotees visit especially on Mondays and Fridays. According to legends, Sage Katyayan performed penance near the Kaushik (Koshi) river, and Maa Durga appeared as his daughter, hence known as Katyayani. Around 300 years ago, Bhakta Sripat Maharaj built this temple after a divine vision. | खगड़िया मुख्यालय से लगभग 12 किमी दूर स्थित यह मंदिर माँ कात्यायनी को समर्पित है। यहाँ भगवान राम, लक्ष्मण और माँ जानकी के भी मंदिर हैं। मान्यता है कि ऋषि कात्यायन ने यहाँ कोशी नदी के तट पर तप किया था और माँ दुर्गा उनकी पुत्री के रूप में प्रकट हुईं। लगभग 300 वर्ष पहले भक्त श्रीपत महाराज ने स्वप्न में माँ के दर्शन के बाद इस मंदिर का निर्माण कराया।"
  }
],
    "Lakhisarai (लखीसराय)": [
  {
    "name": "Ashok Dham Temple (अशोक धाम मंदिर)",
    "image": "https://cdnbbsr.s3waas.gov.in/s39bb6dee73b8b0ca97466ccb24fff3139/uploads/2022/10/2022101744.jpg",
    "description": "One of the most famous Shiva temples in Bihar, dedicated to Lord Mahadev. It attracts devotees especially during Shravan month when Kanwarias visit with Ganga jal. | बिहार के प्रमुख शिव मंदिरों में से एक, भगवान महादेव को समर्पित। श्रावण मास में विशेष रूप से कांवरियों का यहाँ आना होता है।"
  },
  {
  "name": "Buddha Math Rajauna (बुद्ध मठ, राजौना)",
  "image": "https://www.nativeplanet.com/photos/212x302x100/2018/12/photo-92-115352-1.jpg",
  "description": "An ancient Buddhist monastery that reflects the influence of Lord Buddha’s teachings in the region. | एक प्राचीन बौद्ध मठ, जो इस क्षेत्र में भगवान बुद्ध की शिक्षाओं के प्रभाव को दर्शाता है।"
},
{
"name": "Shiringi Rishi Ashram (श्रृंगी ऋषि आश्रम)",
"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlh1i2uETYSc8-E0QunIIxXDU-NGn7MISJvg&s",
"description": "A spiritual site dedicated to Sage Shringi, known for meditation and peace. | ऋषि श्रृंगी को समर्पित यह आश्रम ध्यान और शांति का प्रसिद्ध स्थल है।"
},
{
"name": "Maharani Asthan Barahiya (महारानी स्थान, बरहिया)",
"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeSHONOW7hBTKe_fGusUb7UA4YjL3jYXElkA&s",
"description": "A temple dedicated to Goddess Durga, visited by devotees throughout the year. | देवी दुर्गा को समर्पित यह स्थान श्रद्धालुओं के बीच प्रसिद्ध है।"
},
{
"name": "Surya Mandir Pokharma (सूर्य मंदिर पोखरमा)",
"image": "https://www.jagranimages.com/images/newimg/09112021/09_11_2021-surya_mandir__22190768.jpg",
"description": "A historic Sun Temple where Chhath Puja is celebrated with great devotion. | यह ऐतिहासिक सूर्य मंदिर छठ पूजा के लिए अत्यंत प्रसिद्ध है।"
},
{
"name": "Lal Pahari Lakhisarai (लाल पहाड़ी, लखीसराय)",
"image": "https://www.jagranimages.com/images/newimg/08072022/08_07_2022-lali_pahari_lakhisarai2_22872728_m.webp",
"description": "A natural spot surrounded by hills and greenery, ideal for trekking and nature lovers. | पहाड़ियों और हरियाली से घिरा प्राकृतिक स्थल, ट्रेकिंग और प्रकृति प्रेमियों के लिए उत्तम।"
},
      {
        "name": "Jalappa Asthan (जलप्पा स्थान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRktqwN8qrHwV2ZeIXzrQodpZjHV0o1MzgUZw&s",
        "description": "A sacred temple in Lakhisarai with strong religious importance among locals. | लखीसराय का प्रसिद्ध धार्मिक स्थल, जहाँ बड़ी संख्या में श्रद्धालु दर्शन करने आते हैं।"
      }
    ],
    "Madhepura (मधेपुरा)": [
      {
        "name": "Singheshwar Nath Temple (सिंघेश्वर नाथ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Qq7vGUJi-a76G00VTr0yluRPQXtX0I3dXjtA8p_n1N6Pci2P94cmWP5XilCctNk3Kl8&usqp=CAU",
        "description": "भगवान शिव को समर्पित यह प्राचीन मंदिर मधेपुरा का सबसे प्रसिद्ध धार्मिक स्थल है। यहां सावन महीने में विशेष मेला लगता है। Singheshwar Nath Temple is a revered Shiva temple and a major religious site of Madhepura."
      },
      {
        "name": "Kosi River (कोसी नदी)",
        "image": "https://cdnbbsr.s3waas.gov.in/s39a49a25d845a483fae4be7e341368e36/uploads/2021/08/2021080579.jpg",
        "description": "कोसी नदी जिसे 'बिहार का शोक' कहा जाता है, मधेपुरा से होकर बहती है। इसके किनारे प्राकृतिक सुंदरता और ऐतिहासिक महत्व जुड़ा हुआ है। The Kosi River, also known as the 'Sorrow of Bihar', flows through Madhepura with scenic beauty and cultural importance."
      },

],
    "Madhubani (मधुबनी)": [

      {
        "name": "Naulakha Palace (नौलखा पैलेस)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/1b/7e/52/naulakha-palace.jpg?w=600&h=500&s=1",
        "description": "Naulakha Palace is a historic site in Madhubani, known for its heritage significance and old architecture. Visitors also explore nearby cultural places like Philharmonic and Mangrauni. | नौलखा पैलेस मधुबनी का एक ऐतिहासिक स्थल है, जो अपनी धरोहर और पुरानी वास्तुकला के लिए प्रसिद्ध है। यहाँ से लोग पास के सांस्कृतिक स्थलों जैसे फिलहारमोनिक और मंगरौनी भी जाते हैं।"
      },
      {
        "name": "Kapileshwar Temple (कपिलेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/e4/c4/b3/shivsagar.jpg?w=1000&h=800&s=1",
        "description": "One of the most popular Shiva temples in Madhubani, Kapileshwar Temple is clean and sacred, attracting many devotees. It is highly revered and dedicated to Lord Shiva. | मधुबनी का प्रसिद्ध शिव मंदिर, कपिलेश्वर मंदिर अत्यंत स्वच्छ और पवित्र है। यह भगवान शिव को समर्पित है और बड़ी संख्या में श्रद्धालु यहाँ पूजा करने आते हैं।"
      },
      {
        "name": "Somnath Mahadev Temple (सोमनाथ महादेव मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/5e/f5/a7/kapileshwar-nath-mahadev.jpg?w=1000&h=800&s=1",
        "description": "Somnath Mahadev Temple is one of the most sacred Shiva temples in Madhubani, known for spiritual importance and regular religious gatherings. | सोमनाथ महादेव मंदिर मधुबनी का एक प्रमुख शिव मंदिर है, जो धार्मिक महत्व और नियमित पूजा-अर्चना के लिए जाना जाता है।"
      },
      {
        "name": "Rameshwarnath Temple (रामेश्वरनाथ मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/66/bf/4c/lord-shiva-temple-in.jpg?w=1000&h=-1&s=1",
        "description": "An ancient Shiva temple located in Rahua Sangram village, founded in 1850. This historic temple is one of the oldest in the region and a major site of worship. | यह प्राचीन शिव मंदिर रहुआ संग्राम गाँव में स्थित है और 1850 में स्थापित हुआ था। यह क्षेत्र का एक प्रसिद्ध और प्राचीन धार्मिक स्थल है।"
      },
      {
        "name": "Parasmanidham Rahua Sangram (पारसमणिधाम रहुआ संग्राम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/25/ff/34/best-ancient-famous-temple.jpg?w=1000&h=800&s=1",
        "description": "Famous as Parasmaninath Temple, maintained by Parasmani Foundation. A revered Shiva temple attracting thousands of devotees every year. | पारसमणिनाथ मंदिर, रहुआ संग्राम मधुबनी का प्रसिद्ध शिव मंदिर है जिसे पारस्मणि फाउंडेशन द्वारा संचालित किया जाता है। यहाँ हर साल हजारों श्रद्धालु आते हैं।"
      },
      {
        "name": "Mithila Haat (मिथिला हाट)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/8b/84/49/come-and-feel-the-taste.jpg?w=1000&h=-1&s=1",
        "description": "Mithila Haat is a cultural hub showcasing traditional Mithila art, Madhubani paintings, crafts, and regional products. A must-visit to experience the heritage of Mithilanchal. | मिथिला हाट पारंपरिक मिथिला कला, मधुबनी पेंटिंग्स, हस्तशिल्प और क्षेत्रीय उत्पादों का केंद्र है। मिथिलांचल की धरोहर को करीब से जानने के लिए यह अवश्य घूमने योग्य स्थान है।"
      }
    ],
    "Purnia (पूर्णिया)": [
      {
        "name": "Jalalgarh Fort (जलालगढ़ किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Jalalgarh_fort_purnea.jpg/500px-Jalalgarh_fort_purnea.jpg",
        "description": "पूर्णिया का सबसे प्रसिद्ध ऐतिहासिक स्थल, जलालगढ़ किला 1722 में फ़ौजदार सैफ़ खान द्वारा बनवाया गया था। यह विशाल दुर्ग वास्तुकला और ऐतिहासिक धरोहर का प्रतीक है।"
      },
      {
        "name": "Kali Mandir, Purnia (काली मंदिर, पूर्णिया)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH8hGP2YDZXYz_88KwIfD7aQXP_4A5c9J31IfQ1jfuOTXK9LuJ&s",
        "description": "पूर्णिया शहर के मध्य स्थित यह प्राचीन काली मंदिर धार्मिक आस्था का प्रमुख केंद्र है। नवरात्र और अन्य पर्वों पर यहाँ बड़ी संख्या में श्रद्धालु आते हैं।"
      },

      {
        "name": "Jalgawa Lake / Wetland (जलगांवा झील/चौर क्षेत्र)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Jhelum_River-Pakistan.jpg/500px-Jhelum_River-Pakistan.jpg",
        "description": "पूर्णिया जिले का यह प्राकृतिक झीलनुमा क्षेत्र स्थानीय लोगों के लिए पिकनिक और सैर का प्रमुख स्थल है। सर्दियों में यहाँ प्रवासी पक्षी भी देखे जा सकते हैं।"
      }
    ],
    "Rohtas (रोहतास)": [
      {
        "name": "Rohtasgarh Fort (रोहतासगढ़ किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Rohtasgarh_Fort_Entrance.jpg/500px-Rohtasgarh_Fort_Entrance.jpg",
        "description": "रोहतास जिले का सबसे प्रसिद्ध ऐतिहासिक स्थल। यह विशाल किला 7वीं शताब्दी में राजा हरिश्चंद्र द्वारा बनवाया गया था और बाद में शेरशाह सूरी ने इसे मज़बूत किया। किले में कई मंदिर, मस्जिद और बावलियाँ स्थित हैं।"
      },
      {
        "name": "Tutel Bhawani Temple (टूटेल भवानी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSAfT3fq_B0GUrKoxJJFM3MjTZ9cuChkdd5kmuD0lKnXcVH3E&s",
        "description": "यह प्रसिद्ध शक्ति स्थल रोहतास जिले के देवरी में स्थित है। नवरात्र के समय यहाँ लाखों श्रद्धालु माता के दर्शन करने आते हैं।"
      },
      {
        "name": "Gupteshwar Mahadev (गुप्तेश्वर महादेव)",
        "image": "https://i2.wp.com/www.rohtasdistrict.com/wp-content/uploads/2017/08/Screenshot_2017-08-26-09-33-57.png?resize=696%2C392",
        "description": "यह प्राचीन गुफा मंदिर भगवान शिव को समर्पित है। गुफा के अंदर स्थित शिवलिंग धार्मिक महत्व के साथ-साथ प्राकृतिक सुंदरता का भी आकर्षण है।"
      },
      {
        "name": "Manjhar Kund & Dhua Kund (मंझर कुंड और धुआं कुंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNSd662y9W6FJ8hV7jD_bVaY8fWeKf_Wa1zrbTpViaBTvWdej6&s",
        "description": "सासाराम के पास स्थित ये झरने प्राकृतिक सुंदरता के लिए मशहूर हैं। सावन और बरसात में यहाँ का दृश्य बेहद आकर्षक हो जाता है।"
      }
    ],
    "Saharsa (सहरसा)": [
      {
        "name": "Ugratara Sthan (उग्रतारा स्थान)",
        "image": "https://cdn.s3waas.gov.in/s38eefcfdf5990e441f0fb6f3fad709e21/uploads/2018/03/2018032627.jpg",
        "description": "यह मंदिर माता तारा को समर्पित है और सहरसा का सबसे प्रसिद्ध धार्मिक स्थल है। नवरात्र के समय यहाँ लाखों श्रद्धालु दर्शन करने आते हैं।"
      },

      {
        "name": "Sun Temple, Kandaha (कनढा का सूर्य मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38eefcfdf5990e441f0fb6f3fad709e21/uploads/2018/03/2018032679-731x1024.jpg",
        "description": "यह प्राचीन सूर्य मंदिर सहरसा का ऐतिहासिक और सांस्कृतिक धरोहर है। छठ पर्व पर यहाँ बहुत भीड़ लगती है।"
      },
      {
        "name": "Kosi River View (कोसी नदी का तट)",
        "image": "https://cdnbbsr.s3waas.gov.in/s39a49a25d845a483fae4be7e341368e36/uploads/2021/08/2021080579.jpg",
        "description": "कोसी नदी को 'बिहार का शोक' कहा जाता है, लेकिन इसके किनारे का नजारा बेहद सुंदर और आकर्षक होता है।"
      }
    ],
    "Siwan (सीवान)": [
      {
        "name": "Maharajganj Kali Mandir (महाराजगंज काली मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30d0fd7c6e093f7b804fa0150b875b868/uploads/bfi_thumb/2018032973-olw6wtfjrn866j65tgy0hm5g301z1by9gbie4ycbd6.jpeg",
        "description": "यह मंदिर धार्मिक दृष्टि से अत्यंत प्रसिद्ध है। नवरात्रि और त्योहारों में यहाँ हजारों भक्त दर्शन करने आते हैं।"
      },
      {
        "name": "Amar Singh Fort (अमर सिंह किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdd7ERdbiqGoktCNyUtuAzbX9rJkiWo-6Zyg&s",
        "description": "सीवान का ऐतिहासिक स्थल जो राजा अमर सिंह से जुड़ा है। यह पुराना किला स्थानीय इतिहास और संस्कृति को दर्शाता है।"
      },
      {
        "name": "Zeeradei (जीरादेई – Dr. Rajendra Prasad Birthplace)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Dr_rajendra_prasad_house.jpg/760px-Mapcarta.jpg",
        "description": "भारत के प्रथम राष्ट्रपति डॉ. राजेंद्र प्रसाद का जन्म यहीं हुआ था। यह स्थान ऐतिहासिक महत्व रखता है।"
      },
      {
        "name": "Bhikhabandh Shivalaya (भिखाबंध शिवालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1k_5G-_CW2QHCPfd5AZyV4A_ZF5nbYhZSCQ&s",
        "description": "यह मंदिर पौराणिक मान्यताओं से जुड़ा हुआ है और सावन माह में शिवभक्तों की भीड़ रहती है।"
      }
    ],
    "Sheikhpura (शेखपुरा)": [
      {
        "name": "Arghauti Pokhar (अर्घौटी पोखर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzoiGN0k91FPVcbHlkpi5k_A2fAr7RqP_2tw&s",
        "description": "A historic pond known for its cultural and local significance. | एक ऐतिहासिक पोखर जो सांस्कृतिक और स्थानीय महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Girihinda Pahar (गिरिहिंदा पहाड़ - शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30bb4aec1710521c12ee76289d9440817/uploads/bfi_thumb/2018030527-1024x311-olw6y6axo7ulvi7j9itnrpzd0di015uqstjohjhu5c.jpg",
        "description": "A hill with an ancient Shiva temple, popular among devotees and nature lovers. | एक पहाड़ी जिस पर भगवान शिव का प्राचीन मंदिर है, जो भक्तों और प्रकृति प्रेमियों के लिए आकर्षण का केंद्र है।"
      },
      {
        "name": "Samas (समस - विष्णु मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30bb4aec1710521c12ee76289d9440817/uploads/bfi_thumb/2018040564-olw6ycvt023m4rxz73o1r6bl62lkj1kv5q42uh82xs.jpg",
        "description": "A religious site dedicated to Lord Vishnu, located in Sheikhpura. | भगवान विष्णु को समर्पित एक धार्मिक स्थल, जो शेखपुरा में स्थित है।"
      },
      {
        "name": "Tripurai Temple, Akhara Village (त्रिपुराई मंदिर, अखाड़ा गाँव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOkxFnvbMqEKS8QB8mwlSTTqdZcUdCGXtFx0Yi8ZjFRLmOiuOgE97RrEcVAbEcw7gM8LQ&usqp=CAU",
        "description": "Famous temple in Akhara village (Chewara block), dedicated to Goddess Tripurai. Accessible via Chewara city or Ariyari, 14 km from Sheikhpura. | अखाड़ा गाँव (चेवाड़ा प्रखंड) का प्रसिद्ध मंदिर, जो देवी त्रिपुराई को समर्पित है। शेखपुरा से 14 किमी दूर चेवाड़ा या अरियरी मार्ग से पहुँचा जा सकता है।"
      },
      {
        "name": "Sitaram Mandir, Khariyapar (सीताराम मंदिर, खरियापर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2_LcUmYfxkM8WDkP8aSbNpHlz6yOVVI9ghA&s",
        "description": "A local temple dedicated to Lord Rama and Sita, known for religious importance. | भगवान राम और सीता को समर्पित स्थानीय मंदिर, जो धार्मिक महत्व के लिए प्रसिद्ध है।"
      }
    ],
    "Supaul (सुपौल)": [

      {
        "name": "Vishnu Mandir, Vishnupur (विष्णुपुर विष्णु मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-hGLqUMY3V0sphl3lVEJoARRf2XndVTw73AwncRAzTjclzXqtwAU2E_MaQLedmL6d30s&usqp=CAU",
        "description": "सुपौल का यह प्राचीन विष्णु मंदिर धार्मिक और सांस्कृतिक दृष्टि से बेहद महत्वपूर्ण है। Vishnu Mandir in Vishnupur is an ancient temple of great religious and cultural importance."
      },
      {
        "name": "Durga Mandir, Supaul Town (दुर्गा मंदिर, सुपौल)",
        "image": "https://www.jagranimages.com/images/newimg/27092022/27_09_2022-budhiya_maa_supaul_23102016.webp",
        "description": "शहर के बीच स्थित दुर्गा मंदिर नवरात्रि और त्योहारों में खास आकर्षण का केंद्र है। Durga Mandir in Supaul town is a major attraction during Navratri and other festivals."
      },
      {
        "name": "Koshi River Bank (कोसी तट क्षेत्र)",
        "image": "https://cdnbbsr.s3waas.gov.in/s39a49a25d845a483fae4be7e341368e36/uploads/2021/08/2021080579.jpg",
        "description": "कोसी नदी के किनारे का यह क्षेत्र प्राकृतिक सुंदरता और पक्षी विहार के लिए जाना जाता है। This part of the Koshi riverbank is famous for natural beauty and bird watching."
      }
    ],
    "Munger (मुंगेर)": [
      {
        "name": "Goyanka Shivalaya (गोयनका शिवालय - मिर्ची तालाब)",
        "image": "https://cdn.s3waas.gov.in/s3e0c641195b27425bb056ac56f8953d24/uploads/bfi_thumb/2018022865-olwdhue6r23mfp3ymfhkqaw58tnsf3rjl1jfb4a502.jpg",
        "description": "One of the oldest and most beautiful temples in Munger, part of a chain of Shivalayas, popularly known as Goenka Shivalaya. | मुंगेर के प्राचीन और सुंदर मंदिरों में से एक, जिसे गोयनका शिवालय कहा जाता है। यह शिवालय श्रृंखला का महत्वपूर्ण हिस्सा है और धार्मिक महत्व रखता है।"
      },
      {
        "name": "Mir Kasim Tunnel (मीर कासिम सुरंग)",
        "image": "https://cdn.s3waas.gov.in/s3e0c641195b27425bb056ac56f8953d24/uploads/bfi_thumb/2018031039-olwdigybb2yi6c76yp8me577i2klju93o572trcouq.jpg",
        "description": "Historical tunnels near the riverside, said to have been used by Princess Gul and Prince Bahar to hide. | नदी किनारे बनी ऐतिहासिक सुरंगें, जिनका प्रयोग राजकुमारी गुल और राजकुमार बहार के छिपने के लिए किया जाता था।"
      },
      {
        "name": "Manpatthar (Sita Charan) (मनपत्थर - सीता चरण)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ZyYU-Zi7JPJA_F9SEGTLTKevy9CMtCnMbg&s",
        "description": "A rock in the bed of river Ganga, believed to bear the footprints of Goddess Sita, located close to Kastaharni Ghat. | गंगा नदी की धारा में स्थित एक चट्टान, जिस पर माता सीता के चरणों के निशान माने जाते हैं। यह कष्टहरणी घाट के पास स्थित है।"
      },
      {
        "name": "Kastaharni Ghat (कष्टहरणी घाट)",
        "image": "https://cdn.s3waas.gov.in/s3e0c641195b27425bb056ac56f8953d24/uploads/bfi_thumb/2018022847-olwdhue6r23mfp3ymfhkqaw58tnsf3rjl1jfb4a502.jpg",
        "description": "A sacred bathing ghat on the Ganga, mentioned since the 6th century. Associated with sage Mudgal Muni. | गंगा नदी पर स्थित पवित्र स्नान घाट, जिसका उल्लेख छठी शताब्दी से मिलता है। यह ऋषि मुद्गल मुनि से जुड़ा हुआ है।"
      },
      {
        "name": "Chandi Asthan (चंडी स्थान)",
        "image": "https://cdn.s3waas.gov.in/s3e0c641195b27425bb056ac56f8953d24/uploads/bfi_thumb/2018022434-olwdi4qeu8hrzeoxy1ygzqa7s28trrwlagprl5ut3m.jpg",
        "description": "A highly revered temple dedicated to Goddess Chandika, one of the Shakti Peethas, located in Munger. | देवी चंडिका को समर्पित अत्यंत पूजनीय मंदिर, जो शक्तिपीठों में से एक है और मुंगेर का प्रमुख धार्मिक स्थल है।"
      },
      {
        "name": "Pir Shah Nafah Shrine (पीर शाह नफाह दरगाह)",
        "image": "https://cdn.s3waas.gov.in/s3e0c641195b27425bb056ac56f8953d24/uploads/bfi_thumb/2018022884-olwdhvc0xw4wrb2lgxw7asnlu7j5msv9x66wse8qtu.jpg",
        "description": "Located inside Munger Fort, this is one of the oldest structures, a revered Muslim shrine built on an elevated platform. | मुंगेर किले के भीतर स्थित यह सबसे प्राचीन इमारतों में से एक है। ऊँचे प्लेटफॉर्म पर बनी यह एक पवित्र मुस्लिम दरगाह है।"
      },
      {
        "name": "Sita Kund (सीता कुंड)",
        "image": "https://cdn.s3waas.gov.in/s3e0c641195b27425bb056ac56f8953d24/uploads/bfi_thumb/2018022847-1-olwdhue6r23mfp3ymfhkqaw58tnsf3rjl1jfb4a502.jpg",
        "description": "A sacred hot water spring associated with Goddess Sita, considered one of the most visited religious sites in Munger. | माता सीता से जुड़ा एक पवित्र गर्म पानी का कुंड, जो मुंगेर का सबसे प्रसिद्ध और अधिक दर्शनीय धार्मिक स्थल है।"
      }
    ],
    "Nawada (नवादा)": [
      {
        "name": "Indrasal Cave, Parvati (इंद्रसाल गुफा, पार्वती)",
        "image": "https://cdn.s3waas.gov.in/s3a4f23670e1833f3fdb077ca70bbd5d66/uploads/bfi_thumb/2018032844-olwbexn8hujsfueaan6ens61r5n7ddt34rya4q6z8q.jpeg",
        "description": "As per mythology, Lord Buddha once came to this place and took shelter in the cave, spending time in meditation. | मान्यता है कि भगवान बुद्ध इस गुफा में आए थे और यहाँ ध्यान लगाया था। यह स्थल धार्मिक और ऐतिहासिक दृष्टि से महत्वपूर्ण है।"
      },
      {
        "name": "Surya Mandir, Handiya (सूर्य मंदिर, हंडिया, नरदिगंज)",
        "image": "https://cdn.s3waas.gov.in/s3a4f23670e1833f3fdb077ca70bbd5d66/uploads/bfi_thumb/2018032828-olwbewpeb0ii48fng4rs3ael5rru5opcsnasng8dey.jpeg",
        "description": "An ancient temple dedicated to Lord Surya, located in Handiya village of Naradiganj block. | नरदिगंज प्रखंड के हंडिया गाँव में स्थित भगवान सूर्य को समर्पित प्राचीन मंदिर।"
      },
      {
        "name": "Jal Mandir (जल मंदिर, श्री गुनवन जी तीर्थ)",
        "image": "https://cdn.s3waas.gov.in/s3a4f23670e1833f3fdb077ca70bbd5d66/uploads/bfi_thumb/2018031359-olwber2d60as6knud2c0obttlgjmvi2yrvdvrsgqga.jpg",
        "description": "Located in Gonawan village, this Jain temple is dedicated to Muni Gandhar Gautam Swami. | गोणावां गाँव में स्थित यह जैन मंदिर मुनि गंधार गौतम स्वामी को समर्पित है।"
      },
      {
        "name": "JP Ashram, Shekhodewra (जेपी आश्रम, शेखोदवरा आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s3a4f23670e1833f3fdb077ca70bbd5d66/uploads/bfi_thumb/2018031330-olwbep6osc87jcqko1irjcaweoswg3vi3m2wt8jisq.jpg",
        "description": "Located in Sekhodevara village, around 55 km from district HQ. This scenic Ashram is associated with Jayaprakash Narayan’s freedom movement. | जिला मुख्यालय से लगभग 55 किमी दूर शेखोदवरा गाँव में स्थित यह आश्रम जयप्रकाश नारायण के स्वतंत्रता आंदोलन से जुड़ा है।"
      },
      {
        "name": "Budhauli Math (बुढ़ौली मठ - 52 कोठी 53 द्वार)",
        "image": "https://cdn.s3waas.gov.in/s3a4f23670e1833f3fdb077ca70bbd5d66/uploads/bfi_thumb/2018031364-olwber2d60as6knud2c0obttlgjmvi2yrvdvrsgqga.jpeg",
        "description": "Situated in Budhauli village of Pakribarwan block, this monastery was once a major religious and cultural center. | पकरीबरावाँ प्रखंड के बुढ़ौली गाँव में स्थित यह मठ कभी धर्म और संस्कृति का प्रमुख केंद्र था।"
      },
      {
        "name": "Kakolat Waterfall (ककोलत जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnfYyh4-3p-8mZ_FM7cnSgVmmcC2GXNzF40w&s",
        "description": "A picturesque waterfall, famous for its scenic surroundings and popular among tourists. | मनमोहक जलप्रपात, जो अपनी सुंदर प्राकृतिक छटा और पर्यटन के लिए प्रसिद्ध है।"
      }
    ],
    "Saran (सारण)": [
  {
    "name": "Naini Mandir (नैनी मंदिर)",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT77hM0OV1BS74hPtF_JUIJ9a5-yNd6lJYuGw&s",
    "description": "A local religious temple of great significance for the people of Saran district. | सारण जिले का एक धार्मिक महत्व वाला मंदिर।"
  },
  {
  "name": "Aami Temple (आमी मंदिर)",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6gwDRO_Pt4htevAdrTjnU2YRDWD07jLaP4Q&s",
  "description": "Located 37 km east of Chapra and 4 km west of Dighwara, this ancient Amba Asthan temple has a sacred well that never dries up. Devotees throng during Navratra in April and October. | छपरा से 37 किमी पूर्व और दिघवाड़ा से 4 किमी पश्चिम स्थित अम्बा स्थान मंदिर में एक कुआँ है जो कभी सूखता नहीं है। नवरात्र में लाखों श्रद्धालु जल अर्पण करते हैं।"
},
{
"name": "Sonepur / Hariharnath Temple (सोनेपुर - हरिहरनाथ मंदिर)",
"image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/32/61/fa/harihar-nath-temple.jpg?w=1200&h=-1&s=1",
"description": "Famous worldwide for the Sonepur Mela held on Kartik Purnima, the Hariharnath temple is associated with the legend of Gaj-Grah. The fair is one of the largest in Asia. | कार्तिक पूर्णिमा पर लगने वाले विश्व प्रसिद्ध सोनपुर मेले का मुख्य केंद्र हरिहरनाथ मंदिर है, जो गज-ग्रह की कथा से जुड़ा है।"
},
{
"name": "Dhorh Ashram (ढोरह आश्रम)",
"image": "https://www.nativeplanet.com/photos/212x302x100/2018/12/photo-92-111123-1.jpg",
"description": "Situated near Parsagarh on the bank of Gandaki river, this ashram has archaeological remains and a giant Shivling at the temple of Bhagwan Dhadheswar Nath. | गंडक नदी तट पर पारसगढ़ के पास स्थित इस स्थल पर पुरातात्विक अवशेष और भगवान धाधेश्वर नाथ का विशाल शिवलिंग है।"
},
{
"name": "Gautam Asthan (गौतम स्थान)",
"image": "https://www.nativeplanet.com/photos/325x244x90/2013/07/_13734286440.jpg",
"description": "5 km west of Chapra, the ashram of Gautam Rishi is located here. As per Ramayana, this is where Ahalya was freed from curse by Lord Rama. | छपरा से 5 किमी पश्चिम स्थित गौतम ऋषि आश्रम, जहाँ भगवान राम ने अहिल्या का उद्धार किया था।"
},
{
"name": "Silhauri (सिलहौरी)",
"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnvWT5ZwkoMoUOFK2RYOV2G-Gzkl3xug2s9Q&s",
"description": "28 km from Marhowra, Silhauri is linked with Shiv Puran and Ramcharitmanas episodes. A grand Shivratri Mela is organized here every year. | मरहौरा से 28 किमी दूर सिलहौरी, शिवपुराण व रामचरितमानस की कथाओं से जुड़ा स्थल है। यहाँ हर वर्ष महाशिवरात्रि मेला लगता है।"
},
{
"name": "Chirand (चिरांद)",
"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaronQsXNZTqzk6IAXCIbZtrao3VNgXweCtg&s",
"description": "Located 11 km southeast of Chapra near Doriganj, Chirand is an archaeological site revealing Neolithic (New Stone Age) culture over 4000 years old. | छपरा से 11 किमी दक्षिण-पूर्व डोरीगंज के पास चिरांद, नवपाषाण युग की 4000 वर्ष पुरानी संस्कृति का प्रमुख पुरातात्विक स्थल है।"
},
      {
        "name": "Dutch Cemetery, Karinga (डच कब्रिस्तान, करिंगा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWtk00HgWqAU4N1bnnysr1RjOGvCs2D3u4Kw&s",
        "description": "Situated 5 km north of Chapra on NH-101, this 300+ year-old Dutch cemetery houses the tomb of Governor Jacobus Van Hoorn. It reflects the Dutch trading presence in Bihar. | छपरा से 5 किमी उत्तर स्थित यह 300 वर्ष पुराना डच कब्रिस्तान डच गवर्नर जैकबस वान होर्न की समाधि के लिए प्रसिद्ध है।"
      }
    ],
    "Sitamarhi (सीतामढ़ी)": [
      {
        "name": "Janaki Temple (जानकी  मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3140f6969d5213fd0ece03148e62e461e/uploads/bfi_thumb/2018052212-1024x573-olw6xu317ddvokpa8vjidb2dad6893i8f52d8xzye8.jpg",
        "description": "About 1.5 kms off the railway station, this is the birthplace of Sita. Janaki-Kund is adjacent to the south of the temple. | रेलवे स्टेशन से लगभग 1.5 किमी दूर स्थित यह मंदिर माता सीता का जन्मस्थल है। मंदिर के दक्षिण में जनकीकुंड स्थित है।"
      },
      {
        "name": "Janaki Temple, Punaura (जानकी मंदिर, पुनौरा)",
        "image": "https://static.langimg.com/photo/imgsize-76664,msid-112285188/navbharat-times.jpg",
        "description": "This is about 5 kms west of Sitamarhi. This place also claims the honour of being the birthplace of Sita. | सीतामढ़ी से लगभग 5 किमी पश्चिम में स्थित, यह स्थल भी माता सीता के जन्मस्थल के रूप में प्रसिद्ध है।"
      },
      {
        "name": "Haleshwar Sthan (हलेश्वर स्थान)",
        "image": "https://cdn.s3waas.gov.in/s3140f6969d5213fd0ece03148e62e461e/uploads/bfi_thumb/2018052287-olw6xv13d0nn2xnjpx739cnvuewnl83ixhltc0skga.jpg",
        "description": "3 kms north-west of Sitamarhi. King Videha had founded a temple of Lord Shiva on the occasion of Putra Yeshti Yajna, named Haleshwarnath temple. | सीतामढ़ी से 3 किमी उत्तर-पश्चिम में स्थित, राजा विदेह ने पुत्र यष्टि यज्ञ के अवसर पर भगवान शिव का मंदिर बनवाया था, जिसे हलेश्वर्नाथ मंदिर कहा गया।"
      },
      {
        "name": "Panth-Pakar (पंथ-पकर)",
        "image": "https://images.news18.com/ibnkhabar/uploads/2025/08/HYP_5375492_cropped_12082025_152654_hyp_4971928_cropped_120220_2.jpg?impolicy=website&width=640&height=480",
        "description": "8 kms north-east of Sitamarhi. After her marriage, Sita was carried to Ayodhya via this route. An old Banyan tree still stands here under which she is said to have rested. | सीतामढ़ी से 8 किमी उत्तर-पूर्व में, विवाह के बाद माता सीता को अयोध्या इस मार्ग से ले जाया गया था। यहाँ एक पुराना बरगद का पेड़ है, जिसके नीचे वह कुछ समय विश्राम करती थीं।"
      },
      {
        "name": "Bagahi Math (बगही मठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKZnR5weX39CfETN-oYrWrGSjkARAIu1UKIQ&s",
        "description": "7 kms north-west of Sitamarhi, in Bagahi village. A big Hindu monastery with 108 rooms, famous for worship and performing Yajna. | सीतामढ़ी से 7 किमी उत्तर-पश्चिम में, बगही गाँव में स्थित यह बड़ा हिंदू मठ है जिसमें 108 कमरे हैं। पूजा और यज्ञ के लिए प्रसिद्ध।"
      },
      {
        "name": "Pupri (पुपरी)",
        "image": "https://www.jagranimages.com/images/newimg/18072022/18_07_2022-pupri_nageshwarnath_22901715.jpg",
        "description": "Famous Baba Nageshwarnath (Lord Shiva) temple. It is said that Lord Shiva appeared here as Nageshwar Nath Mahadeo. | प्रसिद्ध बाबा नागेश्वरनाथ (भगवान शिव) मंदिर। कहा जाता है कि भगवान शिव यहाँ नागेश्वरनाथ महादेव के रूप में प्रकट हुए।"
      },
      {
        "name": "Goraul Sharif (गोरौल शरीफ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKnyTFTz8wZhlup6cYziDGPQUl3QyN8RWvkQ&s",
        "description": "Situated 26 kms from Sitamarhi town. A very sacred place for Muslims, after Biharsharif and Phulwarisharif in Bihar. | सीतामढ़ी से 26 किमी दूर। यह बिहार में बिहारशरीफ और फुलवारीशरीफ के बाद मुस्लिमों के लिए एक पवित्र स्थल है।"
        }
      ],

    "Vaishali (वैशाली)": [
      {
        "name": "Japanese Peace Pagoda (जापानी पीस पगोडा)",
        "image": "https://www.shutterstock.com/image-photo/patna-bihar-india-world-peace-260nw-136707029.jpg",
        "description": "Built by the Japanese Buddhist order Nipponzan Myohoji, this stupa symbolizes peace and marks the historical site related to Lord Buddha. | जापानी बौद्ध संस्था निप्पोंजन म्योहोजी द्वारा निर्मित यह स्तूप शांति का प्रतीक है और भगवान बुद्ध से संबंधित ऐतिहासिक स्थल को दर्शाता है।"
      },
      {
        "name": "Ashokan Pillar (अशोक स्तंभ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkeEtYJV7ZRcx3CEQeMIc7seonw_CBrtGGfg&s",
        "description": "One of the best-preserved pillars erected by Emperor Ashoka, made from a single piece of red sandstone with a lion capital on top. | सम्राट अशोक द्वारा स्थापित यह स्तंभ बहुत अच्छी तरह संरक्षित है, यह लाल बलुआ पत्थर से बना है और शीर्ष पर सिंहमस्तक है।"
      },
      {
        "name": "Buddha’s Relic Stupa (Stupa I) (बुद्ध के अवशेष स्तूप, स्तूप I)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXxin5ZnqmxvQxVszby3kv7oYwENsvBzH2nw&s",
        "description": "An ancient stupa believed to house the relics of Lord Buddha. Archaeological evidence dates back to the 5th century BCE. | यह प्राचीन स्तूप माना जाता है कि भगवान बुद्ध के अवशेषों को समेटे हुए है। पुरातात्विक प्रमाण 5वीं शताब्दी ईसा पूर्व के हैं।"
      },
      {
        "name": "Kundalpur (Birthplace of Lord Mahavira) (कुंडलपुर, भगवान महावीर का जन्मस्थल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzs6XutJBBa2qAB5pVlrsCFxeL42WpqAddg&s",
        "description": "Considered the birthplace of Lord Mahavira, the 24th Tirthankara of Jainism. A sacred and peaceful destination for Jain pilgrims. | जैन धर्म के 24वें तीर्थंकर भगवान महावीर का जन्मस्थल माना जाता है। जैन तीर्थयात्रियों के लिए यह पवित्र और शांतिपूर्ण स्थल है।"
      },
      {
        "name": "Bawan Pokhar Temple (बावन पोखर मंदिर)",
        "image": "https://dynamic.tourtravelworld.com/hotspot-images/bawan-pokhar-temple-250x250-4091.jpg",
        "description": "A beautiful Shiva temple located beside a large pond, known for its ancient architecture and spiritual ambiance. | यह सुंदर शिव मंदिर एक बड़े तालाब के किनारे स्थित है और अपने प्राचीन वास्तुकला और आध्यात्मिक वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Abhishek Pushkarini (Coronation Tank) (अभिषेक पुष्करिणी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt0JdiMF7VXftUC9RARN1FWdnRvP9m12GhzA&s",
        "description": "A sacred water tank where elected Lichchhavi rulers were ceremonially anointed. It holds both historical and spiritual significance. | यह पवित्र जलाशय है जहाँ निर्वाचित लिच्छवि शासकों का अभिषेक समारोहपूर्वक किया जाता था। ऐतिहासिक और धार्मिक महत्व दोनों है।"
      },
      {
        "name": "Chaumukhi Mahadev Temple (चौमुखी महादेव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3DKRz1GCD4r0e9fel36op_lWSXdYmwgTzwQ&s",
        "description": "Dedicated to Lord Shiva, this temple is famous for its unique four-faced (chaumukhi) Shivling, symbolizing different aspects of Shiva. | भगवान शिव को समर्पित यह मंदिर अपने अनोखे चारमुखी शिवलिंग के लिए प्रसिद्ध है, जो शिव के विभिन्न पहलुओं का प्रतीक है।"
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
