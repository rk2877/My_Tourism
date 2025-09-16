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
    "Ahmedabad (अहमदाबाद)": [
      {
        "name": "Sabarmati Ashram (साबरमती आश्रम)",
        "description": "Mahatma Gandhi का आश्रम, इतिहास और शांति का प्रतीक।",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/sabarmati-gandhi-ashram-ahmedabad-gujarat-1-attr-hero?qlt=82",
      },
      {
        "name": "Kankaria Lake (कांकड़िया झील)",
        "description": "मनोरंजन पार्क और झील का लोकप्रिय spot।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/eb/b8/4d/lake-view.jpg?w=1200",
      },
      {
        "name": "Sidi Saiyyed Mosque (सिद्दी सैय्यद मस्जिद)",
        "description": "जाली की नक्काशी के लिए विश्व प्रसिद्ध।",
        "image": "https://www.gujarattourism.com/content/dam/gujrattourism/images/heritage-sites/siddi-sayed-mosque/Siddi-Sayed-Mosque-1.jpg",
      },

      {
        "name": "Law Garden (लॉ गार्डन)",
        "description": "Street shopping और handicrafts का केंद्र।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9VZ_6y-VVHJwjSmQUJm6TzX2tyXAknafXow&s",
      },
      {
        "name": "Calico Museum of Textiles (कैलिको वस्त्र संग्रहालय)",
        "description": "विश्व प्रसिद्ध वस्त्र संग्रहालय।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZEnhMot6ds80ka8yJUU4AIsUPBNv5eDe4qQ&s",
      },
      {
        "name": "Jama Masjid (जामा मस्जिद)",
        "description": "1424 की बनी ऐतिहासिक मस्जिद।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/4f/01/c1/exterior-look.jpg?w=900",
      },
      {
        "name": "Bhadra Fort (भद्र किला)",
        "description": "सुल्तान अहमद शाह द्वारा बनवाया गया किला।",
        "image": "https://www.gujarattourism.com/content/dam/gujrattourism/images/heritage-sites/bhadra-fort/Bhadra-Fort-Banner.jpg",
      },
      {
        "name": "Hutheesing Jain Temple (हठीसिंह जैन मंदिर)",
        "description": "1848 का शानदार जैन मंदिर।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpimHMEIt90JaHxF4zpTGPUKsZpbSkDSphOQ&s",
      },
      {
        "name": "Sardar Vallabhbhai Patel National Museum",
        "description": "सरदार पटेल को समर्पित संग्रहालय।",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/sardar-vallabhbhai-patel-national-museum-ahmedabad-gujarat-2-attr-hero?qlt=82",
      },
      {
        "name": "ISKCON Temple (इस्कॉन मंदिर)",
        "description": "कृष्ण मंदिर, लाखों श्रद्धालु आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/0e/5e/b5/iskcon-temple-ahmedabad.jpg?w=700",
      },

      {
        "name": "Science City (साइंस सिटी)",
        "description": "Technology park, IMAX और exhibitions।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/12/a3/7b/gujarat-science-city.jpg?w=1200",
      },
      {
        "name": "Auto World Vintage Car Museum",
        "description": "दुनिया की बड़ी vintage car collections।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/f6/fa/a8/dsc05497-01-largejpg.jpg?w=900",
      },

      {
        "name": "Kite Museum (पतंग संग्रहालय)",
        "description": "पतंगों का अनोखा संग्रहालय।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/13/d6/99/kite-museum.jpg?w=1200",
      },

      {
        "name": "Sarkhej Roza (सरखेज रोज़ा)",
        "description": "इस्लामिक स्थापत्य का बड़ा केंद्र।",
        "image": "https://i0.wp.com/somanytraveltales.com/wp-content/uploads/2022/11/QUeens-Palace-2_edited-1-scaled.jpg",
      },
      {
        "name": "Camp Hanuman Mandir (कैंप हनुमान मंदिर)",
        "description": "भारत के सबसे बड़े हनुमान मंदिरों में से एक।",
        "image": "https://upload.wikimedia.org/wikipedia/commons/1/1f/Camp_Hanuman_Ji.jpg",
      },
      {
        "name": "Shreyas Folk Museum (श्रेयस लोक संग्रहालय)",
        "description": "लोक कला और शिल्प का संग्रह।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/41/ee/dd/best-capture-of-museum.jpg?w=1200",
      },
      {
        "name": "Nehru Bridge (नेहरू ब्रिज)",
        "description": "साबरमती नदी पर iconic पुल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/eb/02/f5/caption.jpg?w=900",
      },
      {
        "name": "Teen Darwaza (तीन दरवाजा)",
        "description": "अहमदाबाद का सबसे पुराना gate।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/3b/9c/8e/teen-darwaza.jpg?w=1200",
      },
      {
        "name": "Rani no Hajiro (रानी नो हजिरो)",
        "description": "Queens’ tombs और heritage bazaar।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/41/82/bd/rani-no-hajiro.jpg?w=700",
      },
      {
        "name": "Ahmedabad Riverfront (अहमदाबाद रिवरफ्रंट)",
        "description": "Sabarmati नदी किनारे modern attraction।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/0f/e7/50/images-10-largejpg.jpg?w=800",
      },
    ],

    "Amreli (अमरेली)": [
      {
        "name": "Nagnath Temple (नागनाथ मंदिर)",
        "description":
        "This 203-year-old Shiva temple, built in 1802, is located in the heart of Amreli city. यह मंदिर लोगों की आस्था और विश्वास का केंद्र है।",
        "image":
        "https://media-cdn.tripadvisor.com/media/photo-s/16/9c/b7/9f/nagnath-temple.jpg",
      },
      {
        "name": "Gir Lion Sanctuary (गिर शेर अभयारण्य)",
        "description":
        "Spread over 379.9 sq km, Gir is the only home of the Asiatic Lion. गिर एशियाई शेरों का विश्व का एकमात्र निवास है।",
        "image":
        "https://i.ytimg.com/vi/a7BIbAk-u18/maxresdefault.jpg",
      },
      {
        "name": "Bhurakhiya Hanuman Mandir (भूराखिया हनुमान मंदिर, लाठी)",
        "description":
        "About 400 years old temple, famous for its fairs during Chaitra month. भक्त यहाँ अपनी मनोकामना पूर्ण करने आते हैं।",
        "image":
        "https://cdn.s3waas.gov.in/s3b056eb1587586b71e2da9acfe4fbd19e/uploads/bfi_thumb/2018072069-olwbgaj2dd0fd3pq8mt6mv2fcgb2q9xoxg1fudyf7u.jpg",
      },
      {
        "name": "Khodiyar Mandir, Dhari (खोडियार मंदिर, धारी)",
        "description":
        "Located near Khodiyar Dam on Shetrunji river, built in 1967. यह स्थान धार्मिक और प्राकृतिक सौंदर्य से भरपूर है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT834KFsq-EdneoiMtWqBosFyyN4vVYhJKTQQ&s",
      },
      {
        "name": "Rajmahel (राजमहल)",
        "description":
        "170-year-old palace of the Gaekwad rulers of Vadodara. गायकवाड़ शाही परिवार का विरासत स्थल।",
        "image":
        "https://pbs.twimg.com/media/GX7esuTXMAAVv6Z?format=jpg&name=large",
      },

      {
        "name": "Clock Tower, Amreli (घड़ी टावर, अमरेली)",
        "description":
        "Historic Clock Tower built during the Gaekwad rule. गायकवाड़ शासनकाल का ऐतिहासिक स्मारक।",
        "image":
        "https://i.ytimg.com/vi/CQZ9aKWUCkk/sddefault.jpg",
      },
      {
        "name": "Pipavav Port, Rajula (पीपावाव पोर्ट, राजुला)",
        "description":
        "A major port connected to Mumbai, located about 100 km from Amreli. यह गुजरात के बड़े बंदरगाहों में से एक है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdt5-ZWdhj2nQiFy-o-iUtYlQ1vYwgVLLpPw&s",
      },
      {
        "name": "Ambardi Safari Park (अम्बारडी सफारी पार्क)",
        "description":
        "Part of Gir forest near Dhari, famous for jeep safaris. यह पार्क गिर का हिस्सा है जहाँ शेर और अन्य जानवर देखे जाते हैं।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWNtJIuo4I1aAByyFGEXqHkbUPSiXjH_8ZYw&s",
      },
      {
        "name": "Shiyalbet Island (शियालबेट द्वीप)",
        "description":
        "A unique island village in Amreli district, accessible only by boat. यह द्वीप अपनी प्राकृतिक सुंदरता और मछली पालन के लिए प्रसिद्ध है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVB_DQ6xBzIA5mzfxjtHORR3UhdL9BqlKw7A&s",
      },
      {
        "name": "Hanumanji Temple, Rajula (हनुमानजी मंदिर, राजुला)",
        "description":
        "Ancient temple of Hanumanji located in Rajula town. यह मंदिर धार्मिक दृष्टि से बहुत महत्वपूर्ण है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT26CSdJopLF1rUEDfL7QqYPm6cQ3F9xeU9sA&s",
      },
      {
        "name": "Shetrunji River & Dam (शेत्रुंजी नदी और बांध)",
        "description":
        "The Shetrunji river flows through Amreli and is dammed at Dhari. यह नदी और बांध प्राकृतिक सौंदर्य और जलस्रोत के लिए प्रसिद्ध है।",
        "image":
        "https://cdn.s3waas.gov.in/s3b056eb1587586b71e2da9acfe4fbd19e/uploads/2018/06/2018062811.jpg",
      },
    ],
    "Anand (आणंद)": [
      {
        "name": "Amul Dairy & Chocolate Factory (अमूल डेयरी और चॉकलेट फैक्टरी)",
        "description": "World-famous cooperative dairy and chocolate factory – iconic of Anand’s ‘Milk Capital’ legacy.",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/37/e8/8b/amul.jpg?w=900&h=500&s=1", // अहं काल्पनिक URL; अपनी पसंद के source से बदलें
      },

      {
        "name": "Flo Art Gallery (फ्लो आर्ट गैलरी)",
        "description": "Modern traditional gallery for handicrafts, paintings, antiques—art lovers’ delight. 2 km from Anand city centre.",
        "image": "https://avathioutdoors.gumlet.io/travelGuide/dev/anjar52925.jpg",
      },
      {
        "name": "Dokor Temple (डोकोर मंदिर)",
        "description": "Historic Krishna pilgrimage at the bank of Gomti River built in 1772; popular for musical aarti.",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/94/64/d4/ranchhodrai-dakor-temple.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Galteshwar Temple (गाल्टेश्वर मंदिर)",
        "description": "About 19 km from Anand – Lord Shiva temple with beautiful stone carvings depicting human life cycles.",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/db/7c/01/harsh-studio-galteshwar.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Lambhvel Hanumanji Temple (लंभवेल हनुमानजी मंदिर)",
        "description": "Ancient Swayambhu Hanumanji temple (self-manifested idol), 2 km from Anand, major crowds on Saturdays and Tuesdays.",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/26/c1/fe/hanumanji-temple-lambhvel.jpg?w=900&h=500&s=1",
      },
      {
        "name": "BAPS Swaminarayan Temple (स्वामीनारायण मंदिर, बोचासन)",
        "description": "Grand Swaminarayan temple in Bochasan – spiritual calm and stunning architecture.",
        "image": "https://c8.alamy.com/comp/M356P1/baps-swaminarayan-mandir-anand-gujarat-india-asia-M356P1.jpg",
      },
      {
        "name": "IRMA (Institute of Rural Management Anand)",
        "description": "Premiere management institution: landmark of rural management education and research.",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOzQAnoEOvrQLvosryGeq807Y49I0huvf-Pw&s",
      },

      {
        "name": "Sardar Patel Memorial, Karamsad (सरदार पटेल स्मारक, करमसद)",
        "description": "Memorial dedicated to Sardar Patel, his ancestral village and legacy.",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/75/29/ce/20180902-162740-largejpg.jpg?w=900&h=500&s=1",
      },

    ],
    "Aravalli (अरावली)": [
      {
        "name": "Shamlaji Temple (शामलाजी मंदिर)",
        "description":
        "अद्भुत वास्तुकला वाला 11–16वीं सदी का विष्णु मंदिर, मैशवो नदी तट पर स्थित, जहाँ कार्तिकी पूर्णिमा पर बड़ा मेला लगता है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/3d/d9/be/temple-view-from-outside.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Devni Mori (देवनी मोरी)",
        "description":
        "3–4वीं शताब्दी का बौद्ध स्तूप और मठस्थल, जहाँ बुद्ध के अवशेष मिले — अब विकासाधीन बौद्ध सर्किट का हिस्सा।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqx0zZS5NM0Y8ZeLHL-9enUEyyFUYOjs3Pxw&s",
      },
      {
        "name": "Zanzari Waterfall (ज़ांज़री झरना)",
        "description":
        "Bayad तालुका के करीब Vatrak नदी के किनारे एक खूबसूरत झरना — खासकर वीकेंड पर भीड़ रहती है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/34/5f/32/zanzari-falls.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Bhavnath Temple, Mau (भवनाथ मंदिर, मऊ)",
        "description":
        "Bhiloda तालुका के Mau गांव में 1300 वर्ष पुराना शिवमंदिर और Bhrigukund — श्रावण सोमवार और महाशिवरात्रि पर बड़ी संख्या में श्रद्धालु आते हैं।",
        "image": "https://c8.alamy.com/comp/3BRAMFM/24-feb-2017-vintage-old-shri-bhavnath-mahadev-shiva-temple-in-mau-village-meditimba-bhiloda-sabarkantha-aravalli-district-gujarat-indiaasia-3BRAMFM.jpg", // placeholder if actual image available
      },
    ],
    "Banaskantha (बनासकांठा)": [
      {
        "name": "Ambaji Temple (अम्बाजी मंदिर)",
        "description":
        "One of the 51 Shakti Pithas and a major pilgrimage site, attracting millions of devotees every year. यह 51 शक्तिपीठों में से एक प्रमुख तीर्थस्थल है, जहाँ हर साल लाखों श्रद्धालु आते हैं।",
        "image": "https://www.astroved.com/astropedia/assets/images/temples/ambaji-temple.jpg",
      },
      {
        "name": "Balaram Palace (बलराम पैलेस)",
        "description":
        "A royal hunting retreat built between 1922–1936, now a heritage resort in Aravalli hills. 1922-1936 के बीच बना यह शाही शिकार महल अब अरावली की पहाड़ियों में हेरिटेज रिज़ॉर्ट है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/69/f6/10/balaram-palace-resort.jpg?w=600&h=400&s=1",
      },
      {
        "name": "Balaram Ambaji Wildlife Sanctuary (बलराम अंबाजी वन्यजीव अभयारण्य)",
        "description":
        "Spread across 542 sq km, this sanctuary is home to leopards, antelopes, and rich flora. 542 वर्ग किमी में फैला यह अभयारण्य तेंदुए, मृग और विविध वनस्पतियों का घर है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/4d/14/95/fb-img-1451111229916.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Jessore Sloth Bear Sanctuary (जेसोर स्लॉथ बीयर अभयारण्य)",
        "description":
        "A protected area famous for sloth bears, also housing leopards and hyenas. स्लॉथ भालुओं के लिए प्रसिद्ध यह संरक्षित क्षेत्र तेंदुए और लकड़बग्घों का भी निवास है।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/07/73/2e/a5/jessore-sloth-bear-sanctuary.jpg",
      },
      {
        "name": "Kirti Stambh, Palanpur (कीर्ति स्तंभ, पालनपुर)",
        "description":
        "Built in 1918 by Nawab Taley Mohammed Khan, it is a symbol of Palanpur’s heritage. 1918 में बने इस स्मारक को पालनपुर की धरोहर माना जाता है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/73/ea/ea/keerti-stambh.jpg?w=600&h=400&s=1",
      },

      {
        "name": "Dantiwada Dam (दंतिवाड़ा बांध)",
        "description":
        "Built on the Banas River for irrigation and flood control, surrounded by scenic beauty. बनास नदी पर बना यह बांध सिंचाई और बाढ़ नियंत्रण के लिए महत्वपूर्ण है और प्राकृतिक सुंदरता से घिरा है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/01/0e/cc/dantiwada-dam.jpg?w=800&h=500&s=1",
      },
      {
        "name": "Gabbar Hill (गब्बर हिल)",
        "description":
        "Sacred hill near Ambaji believed to be original seat of Goddess Amba. अंबाजी के पास यह पवित्र पहाड़ी देवी अंबा का मूल स्थान मानी जाती है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/22/6a/97/place-where-gabbar-walkway.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Seema Darshan – Nada Bet (सीमा दर्शन – नाडा बेट)",
        "description":
        "Border viewing point offering BSF parade, camel show, and exhibitions. भारत-पाक सीमा पर स्थित यह स्थल बीएसएफ परेड और ऊँट शो के लिए प्रसिद्ध है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/39/c0/3b/recently-i-visited-nadabet.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Kumbharia Jain Temples (कुम्भारिया जैन मंदिर)",
        "description":
        "Ancient group of Jain temples known for fine carvings and pilgrimage value. प्राचीन जैन मंदिरों का समूह, अपनी अद्भुत नक्काशी और धार्मिक महत्व के लिए प्रसिद्ध है।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0a/51/43/85/kumbhariya-jain-temple.jpg",
      },
      {
        "name": "Taranga Hill & Jain Temple (तारंगा हिल और जैन मंदिर)",
        "description":
        "A serene hill with a 12th-century Jain temple, an important pilgrimage site. 12वीं सदी का जैन मंदिर वाला यह शांतिपूर्ण पहाड़ी क्षेत्र धार्मिक दृष्टि से महत्वपूर्ण है।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/11/6b/7c/8f/main-temple-of-taranga.jpg",
      },
    ],
    "Bhavnagar (भावनगर)": [
      {
        "name": "Victoria Park (विक्टोरिया पार्क)",
        "description":
        "Historic urban forest with diverse flora and fauna—ideal for morning walks and birdwatching. ऐतिहासिक शहरी वन जिसमें विविध पौधे और जीव जंतु हैं—सुबह की सैर और पक्षी दर्शन के लिए आदर्श।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/f8/8a/48/img-20180710-214655-152.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Gaurishankar Lake (गौरिशंकर झील / बोर तालाव)",
        "description":
        "A scenic lake with boating, musical fountain, planetarium and picnic areas. नौकायन, संगीत फव्वारा, वेधालय और पिकनिक क्षेत्र सहित मनोहारी झील।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/93/81/77/img-20180212-180507908.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Takhteshwar Temple (तख्तेश्वर मंदिर)",
        "description":
        "White marble Shiva temple on a hill, offering panoramic views of the city. पहाड़ी पर स्थित सफेद संगमरमर का शिव मंदिर जो शहर का मनोरम दृश्य पेश करता है।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/07/fa/fe/caption.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Nilambagh Palace (निलमबाग पैलेस)",
        "description":
        "19th-century royal palace converted into a heritage hotel. 19वीं सदी का शाही महल जो अब हेरिटेज होटल में परिवर्तित है।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/53/0c/d2/beautiful-view.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Gandhi Smriti (गांधी स्मृति)",
        "description":
        "Memorial museum dedicated to Mahatma Gandhi with his photographs and memorabilia. महात्मा गांधी को समर्पित संग्रहालय जिसमें उनकी तस्वीरें और स्मृतिचिन्ह हैं।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/d4/23/c8/side-view-of-gandhi-smriti.jpg?w=200&h=-1&s=1",
      },
      {
        "name": "Velavadar Blackbuck National Park (वेलावदर ब्लैकबक राष्ट्रीय उद्यान)",
        "description":
        "Grassland reserve famous for blackbucks, wolves, and bird watching. ब्लैकबक, भेड़िए और पक्षी दर्शन के लिए प्रसिद्ध घास के मैदानों का अभयारण्य।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/32/71/27/this-image-is-taken-from.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Gogha Beach (घोघा बीच)",
        "description":
        "Coastal beach with golden sands and serene sunrise/sunset views. सुनहरी रेत और शांत सूर्यास्त/उदय दृश्य वाला तटीय समुद्र तट।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/09/99/15/ghoga-beach.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Piram Island (पीराम द्वीप)",
        "description":
        "Island reachable by boat from Ghogha; natural beauty and lighthouse views. घोघा से नाव द्वारा जाने योग्य द्वीप—प्राकृतिक सुंदरता और लाइटहाउस दृश्यों के लिए प्रसिद्ध।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/1d/37/9b/piram-bet-island.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Talaja Caves (तलाजा गुफाएँ)",
        "description":
        "Ancient rock-cut Buddhist caves with Chaitya windows from 2nd century BCE. द्वितीय शताब्दी ईसा पूर्व की चैत्य़ खिड़कियों वाली बौद्ध गुफाएँ।",
        "image":
        "https://media-cdn.tripadvisor.com/media/photo-s/28/9e/c0/1b/beautiful-caves-of-tal.jpg",
      },

    ],
    "Botad (बोटाद)": [
      {
        "name": "Shri Kashtabhanjan Dev Hanumanji Mandir, Salangpur (संतानपुर मातरा हनुमानजी मंदिर, सालंगपुर)",
        "description":
        "A sacred Hanuman temple revered in Swaminarayan tradition; known for its healing atmosphere. स्वामिनारायण परंपरा में पूजित यह पवित्र हनुमान मंदिर अपनी उपचारात्मक वातावरण के लिए प्रसिद्ध है।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/a5/ee/23/temple.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "BAPS Shri Swaminarayan Mandir, Sarangpur (बीएपीएस श्री स्वामिनारायण मंदिर, सारंगपुर)",
        "description":
        "Second tallest Swaminarayan mandir in Gujarat, built in 1916 with 108 ft shikhar. गुजरात का दूसरा सबसे ऊँचा स्वामिनारायण मंदिर, 1916 में 108 फीट ऊँचे शिखर के साथ निर्मित।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/b9/f3/af/baps-swaminarayan-mandir.jpg?w=1200&h=-1&s=1",
      },

      {
        "name": "Tajiyo Building, Botad (ताजियो भवन, बोताड़)",
        "description":
        "Distinctive heritage structure built by engineer-entrepreneur Tulsi Mistri. इंजीनियर-उद्यमी तुलसी मिश्रि द्वारा निर्मित विशिष्ट हेरिटेज संरचना।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/5e/65/76/taj-bawdi.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Chamardi Stepwell (चमार्दी बावड़ी)",
        "description":
        "Ancient vav built as a water-storage system with traditional architecture. पारंपरिक वास्तुकला के साथ जल भंडारण प्रणाली के रूप में निर्मित प्राचीन बावड़ी।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/58/5d/fd/photo2jpg.jpg?w=1200&h=1200&s=1",
      },


      {
        "name": "Rampara Wildlife Sanctuary (रामपारा वन्यजीव अभयारण्य)",
        "description":
        "Nearby wildlife refuge home to deer, birds—ideal for nature lovers. हिरण, पक्षियों का आवास, प्रकृति प्रेमियों के लिए आदर्श वन्यजीव अभयारण्य।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/83/62/a7/caption.jpg?w=800&h=400&s=1",
      },
    ],
    "Chhota Udaipur (छोटा उदयपुर)": [
      {
        "name": "Kusum Vilas Palace (कुसुम विलास पैलेस)",
        "description":
        "Built in the 1920s and now a heritage hotel, this grand palace showcases elegant arcades and Italian marble fountains. 1920 के दशक में बना यह शाही महल, अब हेरिटेज होटल, अपने शानदार आर्केड्स और इतालवी संगमरमर के फव्वारों के लिए प्रसिद्ध है।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZRLClO2_ZzyhdojiTJe_85Zgvnpq7wv5IoA&s",
      },
      {
        "name": "Chhota Udaipur Tribal Museum (छोटा उदयपुर जनजातीय संग्रहालय)",
        "description":
        "Displays the rich tribal heritage, including Rathwa culture, Pithora paintings, and terracotta crafts. यह संग्रहालय राठवा संस्कृति, पिथोरा चित्रकला और मिट्टी के शिल्प सहित जनजातीय धरोहर को प्रदर्शित करता है।",
        "image": "https://cdn.s3waas.gov.in/s3e2a2dcc36a08a345332c751b2f2e476c/uploads/bfi_thumb/2018100478-olwcvq94czfaowzzvv882vshlis5y04wo17z9houq2.jpg",
      },
      {
        "name": "Kali Niketan Palace (काली निकेतन पैलेस)",
        "description":
        "Formerly the royal family's summer residence noted for its architecture and artistic motifs. कभी शाही परिवार का गर्मियों में रहने का निवास, अपनी वास्तुकला और कलात्मक आकृतियों के लिए प्रसिद्ध।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIqgJCCU6ySacvcamymqKsI5boVoA9-E6sEg&s",
      },
      {
        "name": "Sukhi Dam (सूखी बाँध)",
        "description":
        "Built on Sukhi River, this scenic dam area is ideal for peaceful strolls and enjoying nature. सूखी नदी पर बना यह सुरम्य बाँध क्षेत्र, शांति पूर्ण सैर और प्राकृतिक सुंदरता के लिए उत्तम है।",
        "image": "https://cdn.s3waas.gov.in/s3e2a2dcc36a08a345332c751b2f2e476c/uploads/bfi_thumb/2021102569-pf2lt2u5y7xuykap724qrngi2wwep7jm57wl6dhx1m.jpeg",
      },

      {
        "name": "Kwant Fair (कवंत मेला)",
        "description":
        "A tribal fair held after Holi in Kwant village showcasing Rathwa music, dance and peacock-feather attire. होली के बाद कवंत गाँव में होने वाला यह जनजातीय मेला राठवा नृत्य, संगीत और मोर-पंख पहनावे के लिए प्रसिद्ध है।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkUMJ91S-oYUrKdGCsN3DNfrOiTzYcscf4IQ&s",
      },
      {
        "name": "Tribal Villages & Weekly Haat (जनजातीय गाँव और साप्ताहिक हाट)",
        "description":
        "Experience Rathwa tribal culture, Pithora paintings and vibrant markets every Saturday. राठवा जनजातीय संस्कृति, पिथोरा चित्रकला और जीवंत बाजारों का अनुभव हर शनिवार मिलता है।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhYnAGN9H0LxOC8VpeXsLrIuIBVDSk4HBu0Q&s",
      },
      {
        "name": "Narmada River Bank (नर्मदा नदी तट)",
        "description":
        "The serene banks of Narmada offer scenic views; perfect for boating or quiet reflection. नर्मदा नदी के शांत तट सुरम्य दृश्य प्रदान करते हैं—नाव विहार या मौन मनन के लिए उत्तम।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/c7/66/95/ahilyabai-ghats.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Nearby Jambughoda Wildlife Sanctuary (नज़दीकी जम्बुघोदा वन्यजीव अभयारण्य)",
        "description":
        "Just outside the district, this sanctuary offers glimpses of sloth bears, leopards and diverse birdlife. जिले से थोड़ी दूरी पर स्थित यह अभयारण्य स्लॉथ भालू, तेंदुए और विविध पक्षी जीवन का घर है।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/28/4a/7e/f3/bhanu-the-fern-forest.jpg",
      },
      {
        "name": "Pavagadh & Champaner (पावागढ़ और चमपनेर)",
        "description":
        "UNESCO World Heritage site nearby—explore historic temples and forts. निकटवर्ती यूनेस्को धरोहर स्थल—प्राचीन मंदिर और किलों की खोज करें।",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0b/1b/61/90.jpg",
      },
    ],
    "Dahod (दाहोद)": [
      {
        "name": "Ratanmahal Sloth Bear Sanctuary (रतनमहाल स्लॉथ बीयर अभयारण्य)",
        "description":
        "Largest population of sloth bears in Gujarat; dense deciduous forests. गुजरात का सबसे बड़ा स्लॉथ भालू आबादी वाला अभयारण्य, घने पर्णपाती वनों में।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/a2/c1/06/ratanmahal.jpg?w=900&h=-1&s=1",
      },
      {
        "name": "Mangadh Hill (मंगढ पहाड़ी)",
        "description":
        "A sacred tribal hill associated with Guru Govindsinh; peaceful and spiritual. जनजातीय आस्था से जुड़ी पवित्र पहाड़ी—शांत और आध्यात्मिक स्थल।",
        "image":
        "https://cdn.s3waas.gov.in/s33b5dca501ee1e6d8cd7b905f4e1bf723/uploads/bfi_thumb/2018102354-olw82esg6q5xxcr5xy6pbmaqdt1on62o66qvmqo616.jpeg",
      },
      {
        "name": "Bavka Shiva Temple (भवका शिव मंदिर)",
        "description":
        "12th–13th century Maru-Gurjara style Panchayatana temple; protected ASI monument. 12–13वीं सदी का मारु-गुजरज स्थापत्य शैली का पंचायतन मंदिर; एएसआई द्वारा संरक्षित स्मारक।",
        "image":
        "https://cdn.s3waas.gov.in/s33b5dca501ee1e6d8cd7b905f4e1bf723/uploads/bfi_thumb/2019051531-olw82go4ke8ikkofmyzygltnkksf2ka4ug1ulaldoq.jpg",
      },
      {
        "name": "Dahod Fort (दाहोद का किला)",
        "description":
        "Historical landmark linked to Aurangzeb’s birthplace and Mughal history. औरंगज़ेब के जन्मस्थान और मुगलकालीन इतिहास से जुड़ा ऐतिहासिक किला।",
        "image":
        "https://cdn.s3waas.gov.in/s33b5dca501ee1e6d8cd7b905f4e1bf723/uploads/2019/05/2019051679.jpg",
      },
      {
        "name": "Chab Lake (चाब तालाब)",
        "description":
        "Tranquil lake ideal for birdwatching and relaxing. पक्षी दर्शन और विश्राम के लिए शांति-पूर्ण तालाब।",
        "image":
        "https://portal.dahodsmartcity.in/CitizenPortalApplication-Dahod/sites/default/files/gallery/IMG-20230424-WA0017.jpg",
      },

      {
        "name": "Hathila Waterfalls (हथिला झरना)",
        "description":
        "Scenic waterfall especially beautiful during monsoon—perfect for picnics. मानसून में अत्यंत सुंदर यह झरना—पिकनिक के लिए उत्तम स्थल।",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/50/cb/14/hathni-mata.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Jambughoda Wildlife Sanctuary (जम्बुघोड़ा वन्यजीव अभयारण्य)",
        "description":
        "Nearby lush sanctuary with sloth bears, leopards and birds. नज़दीकी हरा-भरा अभयारण्य जहाँ स्लॉथ भालू, तेंदुए और विविध पक्षी रहते हैं।",
        "image":
        "https://media-cdn.tripadvisor.com/media/photo-s/06/ee/a2/4c/jambughoda-wildlife-sanctuary.jpg",
      },
    ],
    "Dang (डांग)": [
      {
        "name": "Gira Waterfalls (गिरा जलप्रपात)",
        "description": "One of the highest waterfalls in Gujarat; lush greenery and ideal picnic spot. गुजरात का एक ऊँचा जलप्रपात, हरियाली से भरपूर और पिकनिक के लिए आदर्श स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/ae/e3/68/gira-waterfalls.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Saputara Hill Station (सपुतारा हिल स्टेशन)",
        "description": "Popular hill station in Dang, known for scenic views, lake, and garden. डांग में लोकप्रिय हिल स्टेशन, खूबसूरत दृश्य, झील और बाग के लिए प्रसिद्ध।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/27/6f/95/a-view-of-the-lake-from.jpg?w=900&h=500&s=1",
      },
    ],
    "Devbhoomi Dwarka (देवभूमि द्वारका)": [
      {
        "name": "Dwarkadhish Temple (द्वारकाधीश मंदिर)",
        "description": "Famous Krishna temple and major pilgrimage site. प्रसिद्ध भगवान कृष्ण का मंदिर और प्रमुख तीर्थ स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/1d/77/5f/other-side-view-from.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Bet Dwarka Island (बेत द्वारका द्वीप)",
        "description": "Island associated with Lord Krishna; accessible by boat. भगवान कृष्ण से जुड़ा द्वीप, नाव से पहुँचा जा सकता है।",
        "image": "https://www.shutterstock.com/image-photo/view-island-bet-dwarka-gujarat-600w-1942945255.jpg",
      },
      {
        "name": "Rukmini Temple (रुक्मिणी मंदिर)",
        "description": "Temple dedicated to Rukmini, Lord Krishna's consort. भगवान कृष्ण की पत्नी रुक्मिणी को समर्पित मंदिर।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBprIdf5tSG1pHPg2_QGVNNgOmO_yqopn8GQ&s",
      },
      {
        "name": "Nageshwar Jyotirlinga (नागेश्वर ज्योतिर्लिंग)",
        "description": "One of the 12 Jyotirlingas of Lord Shiva. भगवान शिव के 12 ज्योतिर्लिंगों में से एक।",
        "image": "https://www.gujarattourism.com/content/dam/gujrattourism/images/religious-sites/nageshwar-jyotirlinga/Nageshwar-Jyotirlinga-Thumbnail.jpg",
      },
      {
        "name": "Gomti Ghat (गोमती घाट)",
        "description": "Sacred riverfront ghat for rituals and evening aarti. पवित्र नदी किनारा, धार्मिक अनुष्ठान और शाम की आरती के लिए प्रसिद्ध।",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/gomti-ghat-1-attr-hero?qlt=82&ts=1726734729680",
      },
    ],
    "Gandhinagar (गांधीनगर)": [
      {
        "name": "Akshardham Temple (अक्षरधाम मंदिर)",
        "description": "Famous spiritual and cultural complex dedicated to Lord Swaminarayan. भगवान स्वामीनारायण को समर्पित प्रसिद्ध आध्यात्मिक और सांस्कृतिक परिसर।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZJKaWwwWo5d8pMw5o6tATQ5UrY_VtfQ0ZMQ&s",
      },
      {
        "name": "Indroda Nature Park (इन्द्रोदा नेचर पार्क)",
        "description": "Also known as Gujarat's Jurassic Park; features dinosaur fossils and biodiversity. गुजरात का जुरासिक पार्क, डायनासोर जीवाश्म और जैव विविधता।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/3f/4e/15/indroda-nature-park.jpg?w=200&h=-1&s=1",
      },
      {
        "name": "Sarita Udhyan (सरिता उद्यान)",
        "description": "Scenic garden ideal for family outings and relaxation. परिवार और विश्राम के लिए सुंदर उद्यान।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/2d/92/e4/sarita-udhyan.jpg?w=900&h=-1&s=1",
      },
      {
        "name": "Mahatma Mandir (महात्मा मंदिर)",
        "description": "Convention center and landmark dedicated to Mahatma Gandhi. महात्मा गांधी को समर्पित सम्मेलन केंद्र और ऐतिहासिक स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/2c/6e/17/caption.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Hutheesing Jain Temple (हठीसिंह जैन मंदिर, गांधी नगर)",
        "description": "Famous Jain temple with intricate architecture. जटिल वास्तुकला वाला प्रसिद्ध जैन मंदिर।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHrxpOX96oN-DRnjKyFFpUAs_pLMy5PLivMw&s",
      },
    ],
    "Gir Somnath (गिर सोमनाथ)": [
      {
        "name": "Somnath Temple (सोमनाथ मंदिर)",
        "description": "One of the 12 Jyotirlinga shrines of Lord Shiva; historic and spiritual site. भगवान शिव के 12 ज्योतिर्लिंगों में से एक; ऐतिहासिक और धार्मिक स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/ef/71/00/somnath-jyotirling-12.jpg?w=700&h=700&s=1",
      },
      {
        "name": "Bhalka Tirth (भालका तीर्थ)",
        "description": "Where Lord Krishna is said to have been struck by an arrow; pilgrimage site. वह स्थल जहाँ भगवान कृष्ण पर तीर चला; तीर्थ स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/bc/2b/60/caption.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Gir National Park (गिर राष्ट्रीय उद्यान)",
        "description": "Famous wildlife sanctuary; home to Asiatic lions and diverse flora and fauna. प्रसिद्ध वन्यजीव अभयारण्य; एशियाई शेरों और विविध जैवविविधता का घर।",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/06/75/9b/26.jpg",
      },
      {
        "name": "Triveni Sangam, Veraval (त्रिवेणी संगम, वेरावल)",
        "description": "Confluence of Hiran, Kapila and Saraswati rivers; religious significance. हिरण, कपिला और सरस्वती नदियों का संगम; धार्मिक महत्व।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/01/57/c2/triveni-sangam.jpg?w=900&h=-1&s=1",
      },
      {
        "name": "Devaliya Safari Park (देवलिया सफारी पार्क)",
        "description": "Safe haven for Asiatic lions; offers safari experience. एशियाई शेरों के लिए सुरक्षित अभयारण्य; सफारी अनुभव।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/5d/d6/5a/caption.jpg?w=300&h=300&s=1",
      },
    ],
    "Bharuch (भरुच)": [
      {
        "name": "Golden Bridge (गोल्डन ब्रिज)",
        "description": "Built in 1881 over the Narmada River; connects Bharuch and Ankleshwar. लाखों लोग हर साल इस ऐतिहासिक ब्रिज को देखने आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/93/20/20/golden-bridge-entrance.jpg?w=600&h=-1&s=1",
      },
      {
        "name": "Kabirvad (कबीरवड)",
        "description": "Island on the Narmada River with a gigantic banyan tree linked to Saint Kabir. संत कबीर से जुड़ा यह स्थल हर साल लाखों श्रद्धालुओं को आकर्षित करता है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/92/e9/e6/banyan-tree.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Nilkantheshwar Temple (नीलकंठेश्वर मंदिर)",
        "description": "Ancient Lord Shiva temple on the banks of the Narmada River. शिव भक्तों और पर्यटकों की बड़ी संख्या हर साल यहाँ दर्शन के लिए आती है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/34/c8/9e/photo5jpg.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Shoolpaneshwar Wildlife Sanctuary (शूलपाणेश्वर वन्यजीव अभयारण्य)",
        "description": "Rich in flora, fauna, and waterfalls; a paradise for nature lovers. हर साल लाखों नेचर लवर्स और ट्रैकर्स यहाँ घूमने आते हैं।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYB5mytoI70qN8I2SAwKbqsB-0_H9WRd5LNw&s",
      },
      {
        "name": "Narmada Park (नर्मदा पार्क)",
        "description": "Peaceful park near the riverbank; ideal for family picnics and evening walks. यह पार्क हर साल हजारों-लाखों फैमिली विज़िटर्स को आकर्षित करता है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/f4/22/e6/access-from-temple.jpg?w=900&h=500&s=1",
      },
    ],
    "Jamnagar (जामनगर)": [
      {
        "name": "Dwarkadhish Temple (द्वारकाधीश मंदिर)",
        "description": "One of the Char Dham pilgrimage sites dedicated to Lord Krishna. हर साल लाखों श्रद्धालु दर्शन के लिए आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/1d/77/5f/other-side-view-from.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Beyt Dwarka (बेट द्वारका)",
        "description": "An island associated with Lord Krishna, accessible by boat. यह पवित्र द्वीप लाखों भक्तों और पर्यटकों को आकर्षित करता है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/15/b9/02/beyt-dwarka-beach.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Nageshwar Jyotirlinga Temple (नागेश्वर ज्योतिर्लिंग मंदिर)",
        "description": "One of the 12 Jyotirlingas of Lord Shiva, highly sacred. भगवान शिव का पवित्र ज्योतिर्लिंग, जहाँ लाखों भक्त आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/17/ac/e5/nageshwar-shiva-temple.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Marine National Park (मरीन नेशनल पार्क)",
        "description": "India’s first marine national park with coral reefs and marine life. प्रकृति प्रेमियों और टूरिस्ट्स के लिए आकर्षण, जहाँ हर साल लाखों लोग आते हैं।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5ea_0w18KOBJ1BdcEUz_GKsP1l7-NA-9cyQ&s",
      },
      {
        "name": "Lakhota Lake & Palace (लखोटा झील और महल)",
        "description": "Beautiful lake with a palace in the middle; perfect for family visits. यह जगह हर साल हजारों-लाखों पर्यटकों को आकर्षित करती है।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAjcdscYLTA8LseOetYzIYO07-B4k5R4_ALQ&s",
      },
    ],
    "Junagadh (जूनागढ़)": [
      {
        "name": "Gir National Park (गिर राष्ट्रीय उद्यान)",
        "description": "Home of the Asiatic Lions, world-famous wildlife sanctuary. एशियाई शेरों का एकमात्र घर; हर साल लाखों पर्यटक सफारी के लिए आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/5d/d6/5a/caption.jpg?w=500&h=400&s=1",
      },
      {
        "name": "Somnath Temple (सोमनाथ मंदिर)",
        "description": "One of the 12 Jyotirlingas of Lord Shiva, highly sacred pilgrimage site. भगवान शिव का ज्योतिर्लिंग, हर साल लाखों श्रद्धालुओं का आस्था स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/a3/d9/81/somnath-temple-sun-kissing.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Girnar Hill & Temples (गिरनार पर्वत और मंदिर)",
        "description": "Ancient hill with Jain and Hindu temples; famous for Girnar ropeway and religious treks. धार्मिक महत्व और एडवेंचर के कारण लाखों लोग आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/ce/5f/7a/girnar.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Uparkot Fort (ऊपरकोट किला)",
        "description": "Historic fort with Buddhist caves, stepwells, and ancient architecture. यह किला हर साल हजारों-लाखों इतिहास प्रेमियों को आकर्षित करता है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/f7/f2/98/uperkot-fort.jpg?w=800&h=500&s=1",
      },
      {
        "name": "Madhavpur Beach (माधवपुर बीच)",
        "description": "Beautiful beach linked to Lord Krishna’s legends. हर साल हजारों-लाखों पर्यटक प्राकृतिक सुंदरता का आनंद लेने आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/87/6c/1c/sun-set-at-madhavpur.jpg?w=900&h=500&s=1",
      },
    ],
    "Kheda (खेड़ा)": [
      {
        "name": "Ranchhodrai Dakor Temple (रंचोड़राय डakor मंदिर)",
        "description": "Famous Lord Krishna temple at Dakor; one of the biggest pilgrimage centers in Gujarat. हर साल लाखों श्रद्धालु दर्शन करने आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/94/64/d4/ranchhodrai-dakor-temple.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Galteshwar Mahadev Temple (गालतेश्वर महादेव मंदिर)",
        "description": "Ancient Lord Shiva temple at the confluence of Mahi and Galti rivers. पवित्र स्थल जहाँ हजारों-लाखों भक्त आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/c6/96/88/galteshwar-mahadev-mandir.jpg?w=900&h=-1&s=1",
      },
      {
        "name": "Vadtal Swaminarayan Temple (वडताल स्वामीनारायण मंदिर)",
        "description": "One of the most important Swaminarayan temples; spiritual hub for devotees. स्वामीनारायण भक्तों के लिए पवित्र तीर्थ, लाखों लोग दर्शन करते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/b7/32/4f/vadtal-temple-view.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Santaram Maharaj Temple, Nadiad (संतराम महाराज मंदिर, नडियाद)",
        "description": "Famous temple dedicated to Santaram Maharaj; attracts devotees year-round. संत संताराम महाराज को समर्पित मंदिर; लाखों श्रद्धालु हर साल आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/2a/b1/09/photo0jpg.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Mahemdavad Heritage Stepwells (मह्मदावाद बावड़ी)",
        "description": "Historic stepwells and heritage structures showcasing ancient architecture. ऐतिहासिक बावड़ियाँ और स्थापत्य कला; पर्यटकों को आकर्षित करती हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/a1/6b/5d/one-of-the-fine-and-clean.jpg?w=900&h=-1&s=1",
      },
    ],
    "Kutch (कच्छ)": [
      {
        "name": "Rann of Kutch (रण कच्छ)",
        "description": "World-famous White Desert, especially during Rann Utsav. लाखों लोग हर साल रण उत्सव और सफेद रेगिस्तान की खूबसूरती देखने आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/a5/60/fc/rann-of-kutch.jpg?w=900&h=-1&s=1",
      },
      {
        "name": "Kala Dungar (काला डूंगर)",
        "description": "Highest point in Kutch offering panoramic desert views. कच्छ की सबसे ऊँची पहाड़ी, जहाँ लाखों पर्यटक सुंदर दृश्य देखने आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/c7/be/ea/a-view-of-the-great-rann.jpg?w=900&h=-1&s=1",
      },
      {
        "name": "Kutch Desert Wildlife Sanctuary (कच्छ डेजर्ट वाइल्डलाइफ सैंक्चुरी)",
        "description": "Famous for flamingos, wild asses, and desert wildlife. हर साल नेचर लवर्स और बर्ड वॉचर्स यहाँ लाखों की संख्या में आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/6e/26/e6/kutch-is-alwaya-royal.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Aina Mahal, Bhuj (आईना महल, भुज)",
        "description": "Historic palace with Indo-European architecture and museums. भुज का प्रसिद्ध महल, जो हर साल हजारों-लाखों पर्यटकों को आकर्षित करता है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/06/e6/cc/photo4jpg.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Mandvi Beach & Vijay Vilas Palace (मांडवी बीच और विजय विलास पैलेस)",
        "description": "Beautiful beach and royal palace; popular tourist spot. यह बीच और महल हर साल लाखों पर्यटकों को अपनी ओर खींचते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/fe/b2/8f/vijay-vilas-palace.jpg?w=900&h=500&s=1",
      },
    ],
    "Mahisagar (महिसागर)": [
      {
        "name": "Kaleshwari Temple, Lunawada (कालेेश्वरी मंदिर, लुनावाड़ा)",
        "description": "Ancient Shiva temple surrounded by hills and natural beauty. हर साल लाखों श्रद्धालु और पर्यटक यहाँ आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/f2/73/f5/img-20191027-135926-largejpg.jpg?w=200&h=-1&s=1",
      },
      {
        "name": "Kadana Dam (कडाना डैम)",
        "description": "Built on the Mahi River; a major source of water and electricity, also a picnic spot. नर्मदा नदी पर बना यह डैम पर्यटन और पिकनिक स्थल के रूप में लोकप्रिय है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/8b/20/68/upper-view-of-kadana.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Lunavada Jain Temples (लुनावाड़ा जैन मंदिर)",
        "description": "Group of beautiful Jain temples with historic and spiritual importance. धार्मिक महत्व के कारण हर साल हजारों-लाखों श्रद्धालु आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/ea/96/31/luna-vasahi-temple.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Teliya Talav, Lunawada (तेलिया तालाव, लुनावाड़ा)",
        "description": "Famous lake and natural spot, ideal for relaxation and family picnics. प्राकृतिक सुंदरता और शांति के लिए हजारों लोग आते हैं।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsHWHXsDDAZOCx5goA9OECS1uMpyLEcsJJ7A&s",
      },
      {
        "name": "Shamlaji Temple (शामलाजी मंदिर)",
        "description": "One of the most famous Vishnu temples of Gujarat, located on the banks of the Meshwo River. लाखों श्रद्धालु हर साल इस मंदिर में दर्शन करने आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/3d/d9/be/temple-view-from-outside.jpg?w=900&h=500&s=1",
      },
    ],
    "Mehsana (मेहसाणा)": [
      {
        "name": "Modhera Sun Temple (मोढेरा सूर्य मंदिर)",
        "description": "11th century temple dedicated to the Sun God; UNESCO World Heritage candidate. हर साल लाखों पर्यटक और श्रद्धालु यहाँ आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/41/a6/92/sun-temple-and-tank.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Bahuchar Mata Temple, Becharaji (बाहुचर माता मंदिर, बेचराजी)",
        "description": "One of the most important Shakti Peeths in Gujarat; highly revered by devotees. लाखों श्रद्धालु हर साल दर्शन करने आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/92/35/ff/bahuchar-mata-temple.jpg?w=200&h=-1&s=1",
      },
      {
        "name": "Thol Lake Bird Sanctuary (ठोल झील पक्षी अभयारण्य)",
        "description": "Popular bird sanctuary famous for migratory birds like flamingos and cranes. बर्ड वॉचर्स और प्रकृति प्रेमियों की पसंदीदा जगह।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/2b/18/24/sunset.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Dharoi Dam (धरोई डैम)",
        "description": "Dam built on the Sabarmati River; scenic picnic spot. हर साल हजारों-लाखों लोग यहाँ घूमने आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/97/d6/ed/dharoi-dam-view.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Taranga Hills Jain Temples (तरंगा पहाड़ जैन मंदिर)",
        "description": "Ancient Jain pilgrimage site in the Aravalli hills; spiritual and scenic. धार्मिक और प्राकृतिक महत्व के कारण हजारों-लाखों श्रद्धालु आते हैं।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-p/0a/50/4d/34/taranga-hill-jain-temple.jpg",
      },
    ],
    "Morbi (मोरबी)": [
      {
        "name": "Nehrubridge / Suspension Bridge (सस्पेंशन ब्रिज, मोरबी)",
        "description": "Built in 1879 over the Machhu River; iconic landmark of Morbi. लाखों पर्यटक हर साल इसे देखने आते हैं।",
        "image": "https://c8.alamy.com/comp/ET16RM/hotel-patang-on-nehru-bridge-sabarmati-river-at-ahmedabad-gujarat-ET16RM.jpg",
      },
      {
        "name": "Mani Mandir (मणि मंदिर)",
        "description": "Beautiful temple built by Thakur Saheb Waghji; famous for intricate architecture. धार्मिक और ऐतिहासिक महत्व से भरपूर।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/88/76/b6/mani-mandir.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Green Chowk (ग्रीन चौक)",
        "description": "Historical city square surrounded by beautiful Darbargadh palace and markets. पर्यटकों के लिए प्रमुख आकर्षण।",
        "image": "https://c8.alamy.com/comp/2NH641C/city-entrance-gate-known-as-green-tower-at-morbi-state-gujarat-india-2NH641C.jpg",
      },
      {
        "name": "Art Deco Palace (आर्ट डेको पैलेस)",
        "description": "Royal residence known for European-style architecture. History and heritage lovers के लिए महत्वपूर्ण स्थल।",
        "image": "https://c8.alamy.com/comp/F64GTX/the-art-nouveau-and-art-deco-palacio-de-bellas-artes-or-palace-of-F64GTX.jpg",
      },
      {
        "name": "Ajanta Clock Tower (अजंता क्लॉक टावर)",
        "description": "Iconic clock tower of Morbi city, symbol of its heritage. शहर की पहचान और हर पर्यटक की पसंद।",
        "image": "https://c8.alamy.com/comp/2JEKM65/huge-wall-clock-clock-tower-of-mahatma-gandhi-hall-ghanta-ghar-indore-madhya-pradesh-also-known-as-king-edward-hall-indian-architecture-2JEKM65.jpg",
      },
    ],
    "Narmada (नर्मदा)": [
      {
        "name": "Statue of Unity (स्टैच्यू ऑफ यूनिटी)",
        "description": "World’s tallest statue (182m) of Sardar Vallabhbhai Patel; iconic global tourist destination. दुनिया की सबसे ऊँची प्रतिमा, जहाँ हर साल लाखों लोग आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/65/2a/08/world-s-tallest-statue.jpg?w=900&h=-1&s=1",
      },
      {
        "name": "Sardar Sarovar Dam (सरदार सरोवर बांध)",
        "description": "One of the largest dams in India on the Narmada River; attracts lakhs of visitors. नर्मदा नदी पर स्थित विशाल बांध, प्रमुख पर्यटन स्थल।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVmdoBlnI_UpkatlbtnBBztB9JrKHjC28Akg&s",
      },
      {
        "name": "Valley of Flowers (वैली ऑफ फ्लावर्स, केवड़िया)",
        "description": "Beautiful garden with colorful flowers near Statue of Unity; favorite among families and tourists. स्टैच्यू ऑफ यूनिटी के पास स्थित फूलों की घाटी।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/ad/eb/cb/this-image-is-valley.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Shoolpaneshwar Wildlife Sanctuary (शूलपनेश्वर वन्यजीव अभयारण्य)",
        "description": "Dense forest area with rich flora and fauna; popular among nature lovers. प्रकृति और ट्रेकिंग प्रेमियों के लिए आदर्श स्थान।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/af/70/c5/aerial-view-of-shoolpaneshwar.jpg?w=700&h=-1&s=1",
      },
      {
        "name": "Zarwani Waterfalls (ज़रवाणी जलप्रपात)",
        "description": "Scenic waterfall located inside Shoolpaneshwar sanctuary; attracts tourists throughout the year. हरियाली और प्राकृतिक सुंदरता से भरपूर झरना।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/f5/69/8e/zarwani-waterfalls.jpg?w=1200&h=-1&s=1",
      },
    ],
    "Navsari (नवसारी)": [
      {
        "name": "Dandi Beach (डांडी बीच)",
        "description": "Historic site of Mahatma Gandhi’s Salt March (Dandi March). लाखों लोग इस ऐतिहासिक समुद्र तट को देखने आते हैं।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXyDyVDp-KOoxhCMBu1SglO8us8hd9-gr12Q&s",
      },
      {
        "name": "Unai Hot Springs (उनाई गरम पानी के कुंड)",
        "description": "Famous natural hot water springs with religious significance. धार्मिक और पर्यटक स्थल, जहाँ हर साल हजारों श्रद्धालु आते हैं।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0e/14/b0/c3/hot-water-spring.jpg",
      },

      {
        "name": "Andheshwar Mahadev Temple (अंधेश्वर महादेव मंदिर)",
        "description": "Ancient Shiva temple attracting devotees from all over Gujarat. शिवभक्तों का प्रमुख तीर्थस्थल।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/21/60/f7/19/temple-exterior.jpg",
      },
      {
        "name": "Ajmalgadh Hill (अजमलगढ़ हिल)",
        "description": "Scenic hill spot surrounded by greenery; popular among trekkers and nature lovers. प्रकृति और ट्रेकिंग प्रेमियों के लिए पसंदीदा जगह।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMJi3rHVzHB5NtuAgDrawrMTemsYa0sXJWUA&s",
      },
    ],
    "Panchmahal (पंचमहल)": [
      {
        "name": "Champaner-Pavagadh Archaeological Park (चंपानेर-पावागढ़ पुरातात्त्विक उद्यान)",
        "description": "UNESCO World Heritage Site; historic city ruins, mosques, and Hindu-Jain temples. यूनेस्को विश्व धरोहर स्थल, हर साल लाखों पर्यटक आते हैं।",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0b/1e/ea/7a.jpg",
      },
      {
        "name": "Pavagadh Hill & Kalika Mata Temple (पावागढ़ हिल और कालीका माता मंदिर)",
        "description": "Sacred hilltop temple of Goddess Kali; important pilgrimage attracting lakhs of devotees. माँ काली का प्रसिद्ध मंदिर।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/55/3a/cb/img-20170202-wa0005-largejpg.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Jami Masjid, Champaner (जामी मस्जिद, चंपानेर)",
        "description": "Magnificent mosque built in 16th century; architectural marvel. स्थापत्य कला का अद्भुत उदाहरण।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/72/ed/50/jama-masjid.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Kevada Mosque & Cenotaph (केवड़ा मस्जिद और स्मारक)",
        "description": "Famous historical mosque and cenotaph in Champaner heritage area. इतिहास और स्थापत्य प्रेमियों के लिए आकर्षण।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvnqN0ob3PlsJPbToZ9tv2LTBVhZBwf0n5Mg&s",
      },
      {
        "name": "Machi Haveli (माची हवेली)",
        "description": "Historic royal palace located on Pavagadh Hill. पुरानी राजसी हवेली, जो इतिहास प्रेमियों को आकर्षित करती है।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/35/4e/58/masa-haveli-a-boutique.jpg?w=900&h=500&s=1",
      },
    ],
    "Patan (पाटण)": [
      {
        "name": "Rani ki Vav (रानी की वाव)",
        "description": "UNESCO World Heritage Site; 11th-century stepwell built by Queen Udayamati. यूनेस्को विश्व धरोहर स्थल और पाटन का सबसे प्रसिद्ध आकर्षण।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/db/4d/dd/rani-ki-vav.jpg?w=900&h=-1&s=1",
      },
      {
        "name": "Sahastra Ling Talav (सहस्त्र लिंग तालाव)",
        "description": "Artificial tank constructed in the 11th century; dedicated to Lord Shiva. ऐतिहासिक और धार्मिक स्थल, जहाँ हर साल हजारों लोग आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/0c/9c/bc/sahastraling-talav.jpg?w=600&h=400&s=1",
      },
      {
        "name": "Patan Patola Heritage (पाटन पाटोला हेरिटेज)",
        "description": "Museum and workshop dedicated to famous Patola sarees of Patan. पाटन की पाटोला साड़ियों की विश्व प्रसिद्ध परंपरा।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNC-uPbyQOvXh_YAEwPAlBhCe7s-hjFnMR6g&s",
      },
      {
        "name": "Kundal (कुंडल)",
        "description": "Known for ancient temples and historical remains. धार्मिक और सांस्कृतिक महत्व वाला स्थान।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/ff/86/8c/khodiyar-mandir-recently.jpg?w=300&h=300&s=1",
      },
      {
        "name": "Hemachandra Jain Gnan Mandir (हेमचंद्र जैन ज्ञान मंदिर)",
        "description": "Famous Jain library with rare manuscripts; spiritual and educational site. जैन समुदाय और विद्वानों के लिए महत्वपूर्ण स्थल।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6_6HvtwZ-9hSgir_tPXsYFviTDUp2BHszJA&s",
      },
    ],
    "Rajkot (राजकोट)": [
      {
        "name": "Kaba Gandhi No Delo (कबा गांधी नो डेलो)",
        "description": "Childhood home of Mahatma Gandhi, now a museum. महात्मा गांधी का बाल्यकालीन घर, ऐतिहासिक महत्व का स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/3d/26/90/mahatma-gandhi-house.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Rotary Dolls Museum (रोटरी डॉल्स म्यूजियम)",
        "description": "Museum showcasing dolls from all over the world; favorite among children and families. दुनिया भर की गुड़ियों का अनोखा संग्रहालय।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/50/83/5d/img-20190112-180315-largejpg.jpg?w=900&h=500&s=1",
      },
      {
        "name": "Watson Museum (वॉटसन संग्रहालय)",
        "description": "Historic museum displaying artifacts of Gujarat’s history and culture. गुजरात की ऐतिहासिक और सांस्कृतिक धरोहर का खजाना।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/0b/3a/46/watson-museum.jpg?w=200&h=-1&s=1",
      },
      {
        "name": "Swaminarayan Temple (स्वामीनारायण मंदिर, राजकोट)",
        "description": "Famous spiritual temple of the Swaminarayan sect; attracts lakhs of devotees. स्वामीनारायण संप्रदाय का प्रसिद्ध धार्मिक स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/49/59/56/caption.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Aji Dam & Garden (अजी बांध और गार्डन)",
        "description": "Popular picnic spot with dam, garden, and zoo; family favorite. प्राकृतिक सुंदरता और मनोरंजन का प्रमुख स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/c0/a5/1a/aji-dam-garden.jpg?w=900&h=-1&s=1",
      },
    ],
    "Sabarkantha (साबरकांठा)": [
      {
        "name": "Polo Forest (पोला फॉरेस्ट)",
        "description": "Famous eco-tourism and archaeological site with ancient temples and scenic greenery. प्रकृति प्रेमियों और इतिहासकारों का पसंदीदा स्थान।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/38/4d/01/vanaj-dam.jpg?w=900&h=-1&s=1",
      },
      {
        "name": "Idar Hill (ईडर हिल)",
        "description": "Hill station with beautiful rock formations, temples, and trekking trails. प्राकृतिक और धार्मिक महत्व का स्थल।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmQaPibvx69k8nq0B7eobhuXYm8_tjAemBfw&s",
      },
      {
        "name": "Khedbrahma (खेडब्रह्मा)",
        "description": "Ancient town with Brahmaji temple, a rare shrine dedicated to Lord Brahma. भगवान ब्रह्मा का प्राचीन मंदिर।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/f7/ca/f8/khedbrahma.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Harnav Dam (हरनाव डैम, पोला फॉरेस्ट)",
        "description": "Scenic dam inside Polo Forest; popular among picnickers and nature lovers. शांत और सुंदर प्राकृतिक स्थल।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/07/93/f8/4c/polo-forest.jpg",
      },
      {
        "name": "Jessore Sloth Bear Sanctuary (जेसोर स्लॉथ बेयर सेंचुरी)",
        "description": "Wildlife sanctuary famous for sloth bears and rich biodiversity. वन्यजीव प्रेमियों के लिए आकर्षण।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/50/86/a4/jessore-sloth-bear-sanctuary.jpg?w=900&h=500&s=1",
      },
    ],
    "Surat (सूरत)": [
      {
        "name": "Dumas Beach (डुमस बीच)",
        "description": "Popular black sand beach on Arabian Sea, famous for sunset views. सूरत का सबसे प्रसिद्ध समुद्र तट।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/9c/39/12/sunset-at-dumas-beach.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Sarthana Nature Park & Zoo (सरथाना नेचर पार्क और जू)",
        "description": "One of the largest zoological parks in Gujarat; favorite among families. बच्चों और परिवारों के लिए आकर्षण।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/09/8a/a3/88/sarthana-national-park.jpg",
      },
      {
        "name": "Dutch Garden (डच गार्डन, सूरत)",
        "description": "Historic colonial garden with old mausoleums and greenery. ऐतिहासिक और प्राकृतिक सुंदरता का मिश्रण।",
        "image": "https://upload.wikimedia.org/wikipedia/commons/4/49/Canal%2C_Westbury_Court_Garden_-_geograph.org.uk_-_1416966.jpg",
      },
      {
        "name": "Ambika Niketan Temple (अंबिका निकेतन मंदिर)",
        "description": "Famous temple of Goddess Ambika situated on the banks of Tapi River. माँ अंबिका का पावन मंदिर।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0f/62/96/13/ambika-niketan-temple.jpg",
      },
      {
        "name": "Science Centre, Surat (साइंस सेंटर, सूरत)",
        "description": "Modern science museum with planetarium, art gallery, and fun activities. शिक्षा और मनोरंजन का संगम।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/62/d1/c5/science-center-and-science.jpg?w=1200&h=-1&s=1",
      },
    ],
    "Surendranagar (सुरेंद्रनगर)": [
      {
        "name": "Dholavira (धोलावीरा)",
        "description": "UNESCO World Heritage Site; Harappan Civilization archaeological site. हड़प्पा सभ्यता का प्रमुख स्थल, हर साल हजारों पर्यटक आते हैं।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEu-b8u5Qa5B8bkFjYqOJxQUNZUwk95OArHQ&s",
      },
      {
        "name": "Chamunda Mataji Temple, Chotila (चामुंडा माताजी मंदिर, चोटीला)",
        "description": "Famous Shakti Peeth temple of Goddess Chamunda on Chotila hill. लाखों श्रद्धालु दर्शन के लिए आते हैं।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc5A1Q-HQ6ejDhQilJ0oiijtHQjDuKeDBeOg&s",
      },
      {
        "name": "Wild Ass Sanctuary, Little Rann of Kutch (लिटिल रण ऑफ कच्छ - जंगली गधा अभयारण्य)",
        "description": "India’s only wild ass sanctuary, famous for unique desert ecosystem. वन्यजीव और प्रकृति प्रेमियों के लिए आकर्षण।",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/07/06/ff/83.jpg",
      },
      {
        "name": "Wadhwan (वढवान)",
        "description": "Historic town with old palaces, temples, and stepwells. ऐतिहासिक और धार्मिक महत्व का स्थल।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3vL3nPh8A7vhgSEEgA-xrDr-ydzdq2tW2xw&s",
      },
      {
        "name": "Sayla Palace (सायला पैलेस)",
        "description": "Heritage palace known for royal architecture and hospitality. इतिहास और संस्कृति का प्रतीक।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFMuriY1uc9XxttVARULa_NFjSqMecTNMUhw&s",
      },
    ],
    "Tapi (तापी)": [
      {
        "name": "Ukai Dam & Garden (उकाई डैम और गार्डन)",
        "description": "One of the largest dams in Gujarat on Tapi River; scenic picnic spot. प्राकृतिक सुंदरता और मनोरंजन का प्रमुख स्थल।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9bBaWonrI9JFYV1g-zPdxgV_a-3RuhBKELg&s",
      },
      {
        "name": "Ghogha Forest (घोघा फॉरेस्ट)",
        "description": "Dense forest area ideal for nature lovers and trekking. प्रकृति प्रेमियों और ट्रेकिंग के लिए लोकप्रिय।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2cKOxu5M55BSD3XQxGRJbM2Iix2eed11QyQ&s",
      },
      {
        "name": "Songadh Fort (सोंगढ किला)",
        "description": "Historic fort with panoramic views of surrounding hills and Tapi valley. ऐतिहासिक महत्व और खूबसूरत नज़ारे।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/17/f1/aa/fall.jpg?w=1400&h=1400&s=1",
      },
      {
        "name": "Ukai Thermal Power Station Visit (उकाई थर्मल पावर स्टेशन)",
        "description": "Industrial tourism spot; educational visits for students and enthusiasts. औद्योगिक पर्यटन और शिक्षा का केंद्र।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-CqQpBycQckmmRaechWqoX8dplceDuSU8_Q&s",
      },
      {
        "name": "Khodiyar Temple, Songadh (खोडियार मंदिर, सोंगढ)",
        "description": "Famous temple dedicated to Goddess Khodiyar; attracts devotees from all over Gujarat. धार्मिक और सांस्कृतिक महत्व का स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/ff/86/8c/khodiyar-mandir-recently.jpg?w=1200&h=-1&s=1",
      },
    ],
    "Vadodara (वडोदरा)": [
      {
        "name": "Laxmi Vilas Palace (लक्ष्मी विलास पैलेस)",
        "description": "Grand royal palace of the Gaekwad dynasty; showcases European architecture. ऐतिहासिक और स्थापत्य कला का प्रमुख स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/52/24/3b/lukshmi-vilas-palace.jpg?w=800&h=500&s=1",
      },
      {
        "name": "Sayaji Baug / Kamati Baug (सयाजी बाग / कमाती बाग)",
        "description": "Large public garden with zoo, planetarium, and museums; family-friendly attraction. परिवार और बच्चों के लिए लोकप्रिय स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/f2/91/19/sayaji-baug.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Baroda Museum & Picture Gallery (बारोडा संग्रहालय और चित्रशाला)",
        "description": "Museum with historical artifacts, art collections, and cultural exhibits. शिक्षा और सांस्कृतिक धरोहर का केंद्र।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/79/79/0f/baroda-museum-and-picture.jpg?w=1200&h=1200&s=1",
      },
      {
        "name": "Kirti Mandir (कीर्ति मंदिर, वडोदरा)",
        "description": "Memorial to the Gaekwad royal family; popular tourist and heritage site. ऐतिहासिक और धार्मिक महत्व का स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/39/87/7e/kirti-mandir-at-night.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "EME Temple (ईएमई मंदिर)",
        "description": "Unique temple of Indian Army with modern architecture; spiritual and architectural marvel. सेना का प्रमुख धार्मिक स्थल और स्थापत्य चमत्कार।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/51/90/c5/img-20190428-101316-largejpg.jpg?w=1200&h=-1&s=1",
      },
    ],
    "Valsad (वलसाड)": [
      {
        "name": "Tithal Beach (तिथल बीच)",
        "description": "Popular beach with black sand and temple nearby; attracts tourists and locals. प्राकृतिक सुंदरता और समुद्र तट का प्रमुख स्थल।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0f/d6/23/31/photo1jpg.jpg",
      },
      {
        "name": "Shri Swaminarayan Temple, Valsad (श्री स्वामीनारायण मंदिर, वलसाड)",
        "description": "Famous Swaminarayan temple attracting lakhs of devotees. धार्मिक और सांस्कृतिक महत्व का स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/92/4e/a3/20151113-181435-largejpg.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Parnera Fort (पर्नेड़ा किला)",
        "description": "Historic hill fort offering panoramic views of Valsad; popular trekking spot. ऐतिहासिक किला और ट्रेकिंग प्रेमियों के लिए आकर्षक।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4LYmslGbd3X_oT5-ezbiW_00voPPWZK-QaQ&s",
      },

      {
        "name": "Killa Pardi (किला पर्डी)",
        "description": "Ancient fort town near Valsad with historical significance. ऐतिहासिक और सांस्कृतिक महत्व का पुराना किला।",
        "image": "https://i.ytimg.com/vi/GYsHwMtEMh0/maxresdefault.jpg",
      },
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
