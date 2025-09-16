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
    "Mumbai (मुंबई)": [
      {
        "name": "Gateway of India (गेटवे ऑफ इंडिया)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/25/b1/24/gateway-of-india.jpg?w=900&h=500&s=1",
        "description": "मुंबई का प्रतिष्ठित स्मारक। Gateway of India is an iconic monument of Mumbai."
      },
      {
        "name": "Marine Drive (मरीन ड्राइव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkJj7sq6B0sPNgdZDTvHnRPvamlpRuyf6CtQ&s",
        "description": "समुद्र किनारे की खूबसूरत सड़क। Beautiful seaside promenade."
      },
      {
        "name": "Elephanta Caves (एलिफेंटा गुफाएं)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSKlqa2jwP6oEjuc6-KeaD7Ek6tXtVn3Rg6g&s",
        "description": "यूनेस्को वर्ल्ड हेरिटेज गुफाएं। UNESCO World Heritage caves."
      },
      {
        "name": "Chhatrapati Shivaji Terminus (छत्रपति शिवाजी टर्मिनस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsAUdbgYQbZMa6Sl0vjCF-BBXBxCc63CMqmw&s",
        "description": "विक्टोरियन गोथिक स्टाइल का ऐतिहासिक रेलवे स्टेशन। Historic Victorian Gothic railway station."
      },
      {
        "name": "Juhu Beach (जुहू बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr4h_r_2W8E13sMiztDA6yL0Y_G-FQGE7I8Q&s",
        "description": "लोकप्रिय समुद्र तट और सूर्यास्त स्थल। Popular beach and sunset spot."
      },
      {
        "name": "Siddhivinayak Temple (सिद्धिविनायक मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/00/24/a9/facts1-shree-siddhivinayak.jpg?w=700&h=400&s=1",
        "description": "प्रसिद्ध गणपति मंदिर। Famous Lord Ganesha temple."
      },
      {
        "name": "Haji Ali Dargah (हाजी अली दरगाह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFMx5tmcHf_nxFmTJ6P01oBm921ilhQGX6okeZ_PpDA1EM8cwZ29k-iOZJCf9ildweFjQ&usqp=CAU",
        "description": "समुद्र के बीच स्थित धार्मिक स्थल। Iconic mosque in the sea."
      },
      {
        "name": "Chowpatty Beach (चौपाटी बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL9EyrDvmvpXAAVdU62Dhq5bLDM4NqBCqcgg&s",
        "description": "लोकप्रिय बीच और स्ट्रीट फूड हब। Famous for street food & sunsets."
      },
      {
        "name": "Colaba Causeway (कुलाबा कॉजवे)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUCE1FCHJv7U86w_lf8oIBfyDqfJ3ZpUPQsg&s",
        "description": "शॉपिंग और कैफे के लिए मशहूर। Famous shopping street with cafes."
      },
      {
        "name": "Bandra-Worli Sea Link (बांद्रा-वर्ली सी लिंक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoQtzApcM_2mdMTs8qNFv4gLc-RlzpWRWyUQ&s",
        "description": "समुद्र पर बना अद्भुत ब्रिज। Stunning cable-stayed bridge."
      },
      {
        "name": "Prince of Wales Museum (प्रिंस ऑफ वेल्स म्यूज़ियम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3ceaNDNmVKOPECbA-TX_SQDtcV963YQeecw&s",
        "description": "समृद्ध कला और ऐतिहासिक संग्रहालय। Rich art & history museum."
      },
      {
        "name": "Powai Lake (पवई लेक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0rKXrhYOxHprATEEBuMPXS0poChKbuEJsAA&s",
        "description": "शांत वातावरण वाला सुंदर झील। Scenic and peaceful lake."
      },
      {
        "name": "Aksa Beach (अक्सा बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3HY1IaQHidhvTkBscwMdJVOpJopjoUmergw&s",
        "description": "भीड़ से दूर शांत बीच। Serene and less-crowded beach."
      },
      {
        "name": "Kanheri Caves (कन्हेरी गुफाएं)",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/12/5f/ef/66.jpg",
        "description": "प्राचीन बौद्ध गुफाएं। Ancient Buddhist caves in Sanjay Gandhi National Park."
      },
      {
        "name": "Sanjay Gandhi National Park (संजय गांधी नेशनल पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7aD_k1Ek6AN9Rs89_m7iOvYVqikPoJgR-2w&s",
        "description": "हरी-भरी प्रकृति और सफारी। Lush greenery and wildlife safari."
      },
      {
        "name": "Film City (फिल्म सिटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzRY9nnV6UbM50AdxQikBCHiuXdRHQHguq4w&s",
        "description": "बॉलीवुड शूटिंग हब। Hub of Bollywood film shoots."
      },
      {
        "name": "Girgaum Chowpatty (गिरगांव चौपाटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHsH1Mr7pYx_Fha2sjt2L-qGe6FjA2g5dsSw&s",
        "description": "गणेश विसर्जन के लिए प्रसिद्ध बीच। Famous for Ganesh Visarjan celebrations."
      },
      {
        "name": "Nehru Science Centre (नेहरू साइंस सेंटर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIOxQAHeRjWLjr14v4uPJk_4Ion6yecI_XxQ&s",
        "description": "विज्ञान और टेक्नोलॉजी प्रदर्शनी। Science & technology museum."
      },
      {
        "name": "Mahalaxmi Temple (महालक्ष्मी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWaGR3LUwZeQOpnN8NdoQrb5aUGq2347ninQ&s",
        "description": "देवी महालक्ष्मी को समर्पित। Dedicated to Goddess Mahalaxmi."
      },
      {
        "name": "Mount Mary Church (माउंट मेरी चर्च)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQVZyJjxidn3qfiHk5UgaoHmMqJD8dLIBr1Q&s",
        "description": "बांद्रा में प्रसिद्ध चर्च। Famous church in Bandra."
      },
      {
        "name": "Rajabai Clock Tower (राजाबाई क्लॉक टावर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuaxaM8n1qEOasPSV2vy0KcdWJ62zCr-ughg&s",
        "description": "गॉथिक स्टाइल का ऐतिहासिक टावर। Gothic-style historic tower."
      },
      {
        "name": "Taraporewala Aquarium (तारापोरवाला एक्वेरियम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKrtxcGHZ9eTW67pdmcmmxzfg4nNNkd7VPMg&s",
        "description": "भारत का सबसे पुराना एक्वेरियम। India’s oldest aquarium."
      },
      {
        "name": "Jehangir Art Gallery (जहांगीर आर्ट गैलरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS00rbvROIHsdPr0eXJV84Wmht17x-1p2cCyg&s",
        "description": "आर्ट लवर्स के लिए खास। Iconic gallery for art lovers."
      },
      {
        "name": "Global Vipassana Pagoda (ग्लोबल विपश्यना पगोडा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAPOwROikriqVqpTamrexUN6PxDnrnpaqS-Q&s",
        "description": "शांति और ध्यान का केंद्र। Peaceful meditation center."
      }
    ],
    "Pune (पुणे)": [
      {
        "name": "Shaniwar Wada (शनिवार वाड़ा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9m4L5_GngRVh-3lfVV8dDpox0oyUjAQ1wzg&s",
        "description": "पेशवा काल का ऐतिहासिक किला और पुणे का मुख्य आकर्षण। Major historic fort and Pune’s landmark."
      },
      {
        "name": "Aga Khan Palace (आगा खान पैलेस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8s3FEEwIcTjqVd5stKunBA-E89mchECRjNg&s",
        "description": "महात्मा गांधी से जुड़ा राष्ट्रीय स्मारक। Iconic memorial linked to Mahatma Gandhi."
      },
      {
        "name": "Sinhagad Fort (सिंहगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-7iZFwk_AMV9n31aGCynYqFAa5hZC5KUJzA&s",
        "description": "ट्रेकिंग और इतिहास प्रेमियों का हॉटस्पॉट। Famous hill fort for trekking & history."
      },
      {
        "name": "Dagdusheth Halwai Ganpati (दगडूशेठ हलवाई गणपति)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK4jTEgnHNEyc9TENMUdQpwwABTKxeuGp6sOd9bT26a3dXEXMHAurHLN0m31hYMb8veJs&usqp=CAU",
        "description": "पुणे का सबसे प्रसिद्ध गणपति मंदिर, सालभर लाखों श्रद्धालु। Most visited Ganesha temple."
      },
      {
        "name": "Osho International Meditation Resort (ओशो आश्रम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbUokcMNQ6XbirV5phhRDh0Ubf0zOjzuB1Lw&s",
        "description": "विश्व प्रसिद्ध ध्यान और वेलनेस सेंटर। World-famous meditation & wellness center."
      },
      {
        "name": "Parvati Hill (पर्वती हिल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/00/2e/c9/parvati-temple-domes.jpg?w=1200&h=-1&s=1",
        "description": "शहर का शानदार पैनोरमिक व्यू और मंदिर। Hilltop temple with panoramic city view."
      },
      {
        "name": "Raja Dinkar Kelkar Museum (राजा दिनकर केलकर म्यूज़ियम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs_sY63CRKXl67PEHyvgD8ohFRp9bYAsZimw&s",
        "description": "भारतीय कला व ऐतिहासिक वस्तुओं का विशाल संग्रह। Large collection of Indian art & artifacts."
      },
      {
        "name": "Pataleshwar Cave Temple (पातालेश्वर गुफा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQemiGk2xWlEqQQ1Vt6xs_Ax6rgSa2DJZqqL2n9e7xYijlIPOo6_KyUXi-Pr-g7wWIhG_M&usqp=CAU",
        "description": "8वीं सदी का रॉक-कट शिव मंदिर, हमेशा भीड़ रहती है। 8th-century rock-cut Shiva temple."
      }
    ],
    "Nagpur (नागपुर)": [
      {
        "name": "Deekshabhoomi (दीक्षाभूमि)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2C1berMX9S7a-s2Kh3OsO30Y79dogT2JHMg&s",
        "description": "डॉ. भीमराव आंबेडकर द्वारा बौद्ध धर्म दीक्षा स्थल, लाखों श्रद्धालुओं का वार्षिक आगमन। Historic Buddhist stupa where Dr. B.R. Ambedkar embraced Buddhism."
      },
      {
        "name": "Futala Lake (फुताला लेक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/df/20/ac/images-3-largejpg.jpg?w=600&h=400&s=1",
        "description": "नागपुर का प्रसिद्ध झील किनारा, शाम के नज़ारे और स्ट्रीट फूड के लिए मशहूर। Iconic evening spot with fountain and street food."
      },
      {
        "name": "Ambazari Lake & Garden (अंबाझरी लेक और गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAza4N8y93qCzwW3YQ6QQn6ZxXz3nvVxrqMg&s",
        "description": "शहर का सबसे बड़ा झील और हरियाली से घिरा गार्डन। Largest lake of Nagpur with lush surroundings."
      },
      {
        "name": "Sitabuldi Fort (सीताबुल्दी किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/53/7e/2f/caption.jpg?w=1200&h=-1&s=1",
        "description": "ऐतिहासिक ब्रिटिश काल का किला, शहर का महत्वपूर्ण स्मारक। Historic British-era fort and city landmark."
      },
      {
        "name": "Raman Science Centre (रमन साइंस सेंटर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfLyQ8sGFdm-4j8JTtwEIgtUmZYv8y1FUESg&s",
        "description": "इंटरएक्टिव विज्ञान संग्रहालय और प्लैनेटेरियम, बच्चों व पर्यटकों में लोकप्रिय। Interactive science museum and planetarium."
      },
      {
        "name": "Maharajbagh Zoo (महाराजबाग जू)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKiXAxOWfccHhB54XcKBlYmwBu8N-murbkNw&s",
        "description": "पारिवारिक घूमने की लोकप्रिय जगह। Popular family-friendly zoo."
      },
      {
        "name": "Dragon Palace Temple (ड्रैगन पैलेस मंदिर, कामटी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/c6/85/9a/close-view-of-dragon.jpg?w=1200&h=-1&s=1",
        "description": "बौद्ध वास्तुकला का भव्य मंदिर, शांति और ध्यान का प्रमुख केंद्र। Grand Buddhist temple known for peace and meditation."
      },
      {
        "name": "Gorewada International Zoo (गोरवाड़ा इंटरनेशनल जू)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSInne5JL-sJ9S2Y-YszdQuNdmAx1WtesgwQ&s",
        "description": "विशाल सफारी पार्क और वाइल्डलाइफ़ स्पॉट। Large safari-style international zoo."
      }
    ],
    "Thane (ठाणे)": [
      {
        "name": "Upvan Lake (उपवन लेक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnmkAFSnKYURDGo_v3paNoRWQy9Q2HjM1Sng&s",
        "description": "ठाणे का सबसे प्रसिद्ध झील किनारा, झील महोत्सव और शाम की सैर के लिए मशहूर। Most popular lake, famous for Upvan Lake Festival and evening walks."
      },
      {
        "name": "Masunda Lake / Talao Pali (मसुंदा लेक / तलावपाली)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsLEljdZCsmF5PPV9pUJ1r4FgIb9P-syrToA&s",
        "description": "ठाणे का दिल माना जाता है, नौका विहार और स्ट्रीट फूड के लिए लोकप्रिय। Iconic lake in city center with boating and street food."
      },
      {
        "name": "Yeoor Hills (येओर हिल्स)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXNYs869iftWkvFSVK4vYpuX1hRiXSWCv0Q&s",
        "description": "हरी-भरी जंगल ट्रेकिंग और पिकनिक के लिए हर साल हजारों लोग आते हैं। Green hills for trekking, nature walks, and picnics."
      },
      {
        "name": "Tikuji-Ni-Wadi (टिकुजी-नी-वादी)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/11/91/1c/f9/tikuji-ni-wadi.jpg",
        "description": "फैमिली थीम पार्क और वाटर पार्क, गर्मियों में भारी भीड़। Famous family theme & water park."
      },
      {
        "name": "Suraj Water Park (सूरज वाटर पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtwZl-xWT1RJCOHpeTF0NW2rrf3yVWKRE3Uw&s",
        "description": "रोमांचक वाटर राइड्स और समर सीज़न का हॉटस्पॉट। Popular summer destination with thrilling water rides."
      },
      {
        "name": "Vasai Fort (वासई किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/1f/39/01/vasai-fort.jpg?w=600&h=400&s=1",
        "description": "ऐतिहासिक पुर्तगाली किला और फोटोस्पॉट, हजारों पर्यटक सालभर आते हैं। Historic Portuguese fort and top photo spot."
      },
      {
        "name": "Kachrali Lake (कचराली लेक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgx9DCYZ8g7ivSxWPgFQqYnSQ7NsLbl691Ew&s",
        "description": "सुंदर और शांत झील, मॉर्निंग वॉकर्स और पिकनिक के लिए लोकप्रिय। Beautiful lake for morning walks and picnics."
      }
    ],
    "Nashik (नासिक)": [
      {
        "name": "Trimbakeshwar Jyotirlinga Temple (त्र्यंबकेश्वर ज्योतिर्लिंग मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/da/da/04/img-20181226-132051-largejpg.jpg?w=900&h=500&s=1",
        "description": "बारह ज्योतिर्लिंगों में से एक, हर साल लाखों श्रद्धालु आते हैं। One of the 12 Jyotirlingas, visited by millions of devotees."
      },
      {
        "name": "Panchavati & Kalaram Temple (पंचवटी और कालाराम मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/27/cd/13/the-beautiful-temple.jpg?w=900&h=500&s=1",
        "description": "रामायण से जुड़ा पवित्र स्थल और प्रमुख कालाराम मंदिर। Holy site from Ramayana with famous Kalaram Temple."
      },
      {
        "name": "Sula Vineyards (सुला वाइनयार्ड्स)",
        "image": "https://images.moneycontrol.com/static-mcnews/2024/02/sula.png?impolicy=website&width=1600&height=900",
        "description": "भारत का प्रमुख वाइन टूरिज़्म हब, वाइन टेस्टींग और फेस्टिवल के लिए मशहूर। India’s top wine tourism destination."
      },
      {
        "name": "Muktidham Temple (मुक्तिधाम मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/49/5b/8c/temple-front-view.jpg?w=200&h=-1&s=1",
        "description": "सफेद संगमरमर का सुंदर मंदिर, तीर्थ समान महत्व। Marble temple complex of great religious importance."
      },
      {
        "name": "Pandav Leni Caves (पांडव लेणी गुफाएं)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/78/20/43/pandavleni-caves.jpg?w=1200&h=1200&s=1",
        "description": "प्राचीन बौद्ध गुफाएं और शहर का शानदार व्यू पॉइंट। Ancient Buddhist caves with panoramic city view."
      },
      {
        "name": "Anjaneri Hill (अंजनेरी हिल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOVr_hniiGiNx9FT76DaGqj1NvT-2s-iubVQ&s",
        "description": "हनुमान जी का जन्मस्थान माना जाता है, ट्रेकिंग के लिए लोकप्रिय। Believed birthplace of Lord Hanuman, famous for trekking."
      },
      {
        "name": "Ramkund (रामकुंड)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/2e/11/4f/ramkund.jpg?w=1200&h=-1&s=1",
        "description": "गोदावरी नदी का पवित्र घाट, कुंभ मेले का मुख्य स्थल। Sacred ghat on Godavari River, key site of Kumbh Mela."
      },
      {
        "name": "Someshwar Waterfall (सोमेश्वर जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/e1/f9/aa/waterfall.jpg?w=900&h=500&s=1",
        "description": "बरसात के मौसम का लोकप्रिय पिकनिक स्पॉट। Famous monsoon picnic spot."
      }
    ],
    "Aurangabad (औरंगाबाद)": [
      {
        "name": "Ajanta Caves (अजंता गुफाएं)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/11/d6/c1/40/complete-view-of-the.jpg",
        "description": "यूनेस्को विश्व धरोहर स्थल, प्राचीन बौद्ध चित्रकला और मूर्तिकला का अद्भुत संग्रह। UNESCO World Heritage site with ancient Buddhist art."
      },
      {
        "name": "Ellora Caves (एलोरा गुफाएं)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/11/d6/c1/40/complete-view-of-the.jpg",
        "description": "कैलाशनाथ मंदिर सहित 34 शानदार गुफाएं, हर साल लाखों पर्यटक। 34 magnificent caves including Kailasa Temple, visited by millions."
      },
      {
        "name": "Bibi Ka Maqbara (बीबी का मकबरा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6nhoiyeP1Xn3EeuYoWIhkU4-z4zbQ4lVBnQ&s",
        "description": "ताजमहल की तर्ज पर बना ऐतिहासिक मकबरा, ‘मिनी ताज’ कहलाता है। Historic mausoleum known as the Mini Taj of the Deccan."
      },
      {
        "name": "Daulatabad Fort (दौलताबाद किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/27/b5/34/daulatabad-fort.jpg?w=900&h=500&s=1",
        "description": "अजेय पहाड़ी किला और पैनोरमिक व्यू। Impregnable hill fort with panoramic views."
      },
      {
        "name": "Aurangabad Caves (औरंगाबाद गुफाएं)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/fd/6b/5b/caption.jpg?w=1200&h=-1&s=1",
        "description": "बौद्ध कला का सुंदर उदाहरण। Beautiful example of ancient Buddhist architecture."
      },
      {
        "name": "Grishneshwar Jyotirlinga Temple (गृहेश्वर ज्योतिर्लिंग)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/19/db/5f/cross-angle-click.jpg?w=900&h=-1&s=1",
        "description": "12 ज्योतिर्लिंगों में से एक, शिव भक्तों का प्रमुख तीर्थ। One of the 12 Jyotirlingas, major pilgrimage site."
      },
      {
        "name": "Panchakki (पंचक्की)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO_-bBWKDRCZmgjDhCPnZimcXW-wm7gBjMLg&s",
        "description": "17वीं सदी की अनोखी वॉटर मिल और सूफी दरगाह। 17th-century water mill with Sufi shrine."
      },
      {
        "name": "Salim Ali Lake & Bird Sanctuary (सलीम अली लेक और बर्ड सैंक्चुअरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkJOxNldEzwwwd5SpfAviKlAqtYP37TvqxXQ&s",
        "description": "पक्षी प्रेमियों के लिए आकर्षण का केंद्र। Popular birdwatching spot and scenic lake."
      }
    ],
    "Solapur (सोलापुर)": [
      {
        "name": "Siddheshwar Temple (सिद्धेश्वर मंदिर)",
        "image": "https://l450v.alamy.com/450v/2c6mjbp/siddheshwar-temple-gramdaivata-of-solapur-city-district-solapur-state-maharashtra-india-asia-2c6mjbp.jpg",
        "description": "सोलापुर का प्रमुख आकर्षण और वार्षिक मेला लाखों भक्तों को खींचता है। Famous Shiva temple with grand fair attracting lakhs of devotees."
      },
      {
        "name": "Great Indian Bustard Sanctuary (ग्रेट इंडियन बस्टर्ड अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS16-_1rFmpxa96p6yQpC488NjRyUszSIrm9g&s",
        "description": "दुर्लभ पक्षियों को देखने का लोकप्रिय स्थल। Popular sanctuary to spot the endangered Great Indian Bustard."
      },
      {
        "name": "Pandharpur Vitthal Rukmini Mandir (पंढरपुर विट्ठल रुक्मिणी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/5b/3a/af/vitthal-mandir-pandharpur.jpg?w=1200&h=-1&s=1",
        "description": "सोलापुर ज़िले में विट्ठल भक्तों का सबसे बड़ा तीर्थ, आषाढ़ और कार्तिक वारी में लाखों श्रद्धालु। Major pilgrimage for Vithoba devotees drawing millions during Ashadhi & Kartiki yatras."
      },
      {
        "name": "Hipparga Lake (हिप्परगा झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Wh80WVaKHQI-SCAAGPGgsrrwJMD8zK9Jbg&s",
        "description": "शांत वातावरण में बोटिंग और पिकनिक के लिए प्रसिद्ध। Scenic lake ideal for boating and family outings."
      },
      {
        "name": "Solapur Bhuikot Fort (भुईकोट किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTecGBiBsyzJGCCT2isRehDmI8EZssclHUNQ&s",
        "description": "ऐतिहासिक किला, खूबसूरत मस्जिद और उद्यान के साथ। Historic fort with beautiful mosque and gardens."
      },
      {
        "name": "Kambar Talav / Sambhaji Lake (कंबर तालाब)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPkLAtYGd2uEBAT9fW_aV4-ZhETuxA1Wysrw&s",
        "description": "स्थानीयों और पर्यटकों का पसंदीदा पिकनिक स्पॉट। Popular picnic spot with boating facilities."
      },
      {
        "name": "Akkalkot Swami Samarth Maharaj Temple (अक्कलकोट स्वामी समर्थ मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/04/84/76/d3/akkalkot-swami-samarth.jpg",
        "description": "श्री स्वामी समर्थ का प्रमुख तीर्थस्थान। Major pilgrimage center dedicated to Swami Samarth Maharaj."
      },

    ],
    "Amravati (अमरावती)": [
      {
        "name": "Ambadevi Temple (अंबादेवी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/4f/68/c4/this-is-exterior-of-the.jpg?w=900&h=500&s=1",
        "description": "अमरावती का सबसे प्रसिद्ध देवी मंदिर जहाँ नवरात्रि पर भारी भीड़ होती है। The most visited temple of Amravati, especially during Navratri."
      },
      {
        "name": "Melghat Tiger Reserve (मेलघाट टाइगर रिज़र्व)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/5e/e7/70/drone-view-of-vip-rest.jpg?w=900&h=-1&s=1",
        "description": "विदर्भ का प्रमुख टाइगर सफारी और जंगल ट्रेकिंग स्थल, हर साल हजारों प्रकृति प्रेमी आते हैं। Premier tiger reserve attracting wildlife enthusiasts from all over India."
      },
      {
        "name": "Chikhaldara Hill Station (चिखलदरा हिल स्टेशन)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/c8/07/8b/bhimkund-kichakdara.jpg?w=500&h=500&s=1",
        "description": "विदर्भ का एकमात्र हिल स्टेशन, झरने और व्यू पॉइंट्स के कारण सालभर भीड़। Only hill station in Vidarbha with waterfalls and viewpoints."
      },
      {
        "name": "Gawilgarh Fort (गविलगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/54/8a/26/gawilgadh-fort.jpg?w=1200&h=1200&s=1",
        "description": "सतरपुडा पहाड़ियों में ऐतिहासिक किला और ट्रेकिंग पॉइंट। Historic fort in Satpura ranges popular for trekking."
      },
      {
        "name": "Wadali Talao (वडाली तलाव)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/a0/44/43/wadali-garden.jpg?w=1200&h=-1&s=1",
        "description": "शहर का खूबसूरत झील क्षेत्र, बोटिंग और पिकनिक के लिए प्रसिद्ध। Scenic lake popular for boating and family outings."
      },
      {
        "name": "Satpura National Park (सतपुड़ा राष्ट्रीय उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/4c/c3/78/caption.jpg?w=800&h=400&s=1",
        "description": "मेलघाट के पास का हरियाली और वन्यजीव क्षेत्र। Green wilderness near Melghat known for rich wildlife."
      },
      {
        "name": "Muktagiri Jain Temple (मुक्तागिरी जैन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/bf/84/33/img-20171228-125418-largejpg.jpg?w=1200&h=1200&s=1",
        "description": "पहाड़ी पर बने 52 जैन मंदिरों का समूह, धार्मिक पर्यटन का बड़ा केंद्र। Hilltop complex of 52 Jain temples attracting devotees year-round."
      }
    ],
    "Kolhapur (कोल्हापुर)": [
      {
        "name": "Mahalaxmi Temple (महालक्ष्मी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/d7/3e/d0/caption.jpg?w=900&h=-1&s=1",
        "description": "सप्तर्षि शक्तिपीठों में से एक, नवरात्रि और त्यौहारों में लाखों भक्त। One of the Shakti Peethas, draws millions of devotees especially during Navratri."
      },
      {
        "name": "Rankala Lake (रंकाला लेक)",
        "image": "https://www.kolhapurtourism.org/wp-content/uploads/2015/02/rankala2.jpg",
        "description": "शहर का खूबसूरत झील किनारा, बोटिंग और शाम की सैर के लिए लोकप्रिय। Scenic lake famous for boating and evening walks."
      },
      {
        "name": "Panhala Fort (पन्हाला किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0a/51/dd/63/andhar-bavdi-panhala.jpg",
        "description": "ऐतिहासिक मराठा किला, ट्रेकिंग और इतिहास प्रेमियों के लिए प्रमुख आकर्षण। Historic Maratha fort attracting trekkers and history lovers."
      },
      {
        "name": "Jyotiba Temple (ज्योतिबा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5mofHD_efkIdS6zTRRxA29ADhLYqkaWhtdA&s",
        "description": "पहाड़ी पर स्थित प्रसिद्ध मंदिर, चैत्र यात्रा में विशाल भीड़। Hilltop temple famous for grand Chaitra Yatra."
      },
      {
        "name": "New Palace & Chhatrapati Museum (न्यू पैलेस और छत्रपति म्यूज़ियम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWlRgUmVBfKN71MdJSu5c3DrDpv0oo9Bzjtw&s",
        "description": "शानदार शाही महल और मराठा साम्राज्य का इतिहास प्रदर्शित करने वाला संग्रहालय। Royal palace and museum showcasing Maratha legacy."
      },
      {
        "name": "Radhanagari Wildlife Sanctuary (राधानगरी वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/3e/b9/e3/radhanagari-wildlife.jpg?w=1200&h=1200&s=1",
        "description": "बायसन और समृद्ध वन्यजीवों के लिए यूनेस्को बायोस्फियर रिज़र्व। UNESCO Biosphere Reserve famous for Indian bison and rich wildlife."
      },
      {
        "name": "Shalini Palace (शालिनी पैलेस)",
        "image": "https://i0.wp.com/eindiatourism.in/wp-content/uploads/2023/05/Shalini_Palace.jpg",
        "description": "रंकाला झील के किनारे बना सुंदर महल, शादी व शूटिंग के लिए लोकप्रिय। Elegant lakeside palace used for weddings and film shoots."
      },
      {
        "name": "Gaganbawda Hill Station (गगनबावडा हिल स्टेशन)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/39/47/93/view-of-gagangiri-math.jpg?w=600&h=400&s=1",
        "description": "हरी-भरी घाटियाँ, ट्रेकिंग और मॉनसून व्यू के लिए प्रसिद्ध। Lush green hill station known for trekking and monsoon views."
      }
    ],
    "Satara (सातारा)": [
      {
        "name": "Kaas Plateau – Valley of Flowers (कास पठार – फूलों की घाटी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/7c/6f/2f/img-20190930-132929-01.jpg?w=1200&h=700&s=1",
        "description": "यूनेस्को वर्ल्ड हेरिटेज साइट, मॉनसून में लाखों पर्यटक। UNESCO World Natural Heritage site famous for seasonal wildflowers."
      },
      {
        "name": "Thoseghar Waterfalls (ठोसेघर झरने)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/78/10/d4/thoseghar-waterfall.jpg?w=900&h=500&s=1",
        "description": "सैकड़ों फीट ऊँचा झरना, बरसात में अद्भुत नज़ारा। Spectacular monsoon waterfall attracting thousands of visitors."
      },
      {
        "name": "Sajjangad Fort (सज्जनगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/40/01/58/caption.jpg?w=800&h=400&s=1",
        "description": "संत रामदास जी का समाधि स्थल, धार्मिक और ऐतिहासिक महत्व। Historic fort and Samadhi of Saint Ramdas, major pilgrimage."
      },
      {
        "name": "Ajinkyatara Fort (अजिंक्यतारा किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/87/44/71/ajinkyatara-fort.jpg?w=1200&h=1200&s=1",
        "description": "सातारा शहर के ऊपर स्थित ऐतिहासिक किला और ट्रेकिंग स्पॉट। Hilltop fort with panoramic city views and popular trek."
      },
      {
        "name": "Mahabaleshwar (महाबलेश्वर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/10/c8/81/a9/waterfall-in-mahabaleshwar.jpg",
        "description": "सातारा ज़िले का सबसे प्रसिद्ध हिल स्टेशन, हर साल लाखों पर्यटक। Famous hill station known for viewpoints, strawberries, and cool climate."
      },
      {
        "name": "Panchgani (पंचगनी)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/01/25/47/90/a-bend-in-the-river.jpg",
        "description": "टेबल लैंड और प्राकृतिक सौंदर्य के लिए प्रसिद्ध हिल स्टेशन। Picturesque hill station with Table Land and colonial charm."
      },
      {
        "name": "Kas Lake (कास झील)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/02/da/f8/0e/kaas-lake.jpg",
        "description": "कास पठार के पास शांत झील, पिकनिक और नेचर फोटोग्राफी के लिए लोकप्रिय। Serene lake near Kaas Plateau ideal for photography."
      },
      {
        "name": "Venna Lake (वेण्णा लेक, महाबलेश्वर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_fv24RSacnLULYLRRNwBui3CvRMWgwbumkA&s",
        "description": "बोटिंग और पिकनिक के लिए मशहूर लेक, पर्यटकों की भीड़। Famous boating lake in Mahabaleshwar with heavy tourist footfall."
      }
    ],
    "Sangli (सांगली)": [
      {
        "name": "Ganapati Temple (गणपति मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8PIEWyuk_T5_xblNtXwwl1e1wpHwi418haA&s",
        "description": "सांगली का सबसे प्रसिद्ध मंदिर, गणेश चतुर्थी और उत्सवों पर हजारों भक्त। Iconic Ganapati temple, attracts large crowds during Ganesh festivals."
      },
      {
        "name": "Sagareshwar Wildlife Sanctuary (सागरश्वर वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/a3/86/db/sagareshwar-wildlife.jpg?w=200&h=-1&s=1",
        "description": "प्रकृति प्रेमियों और ट्रेकिंग के लिए लोकप्रिय। Popular for nature walks, deer, and scenic trails."
      },
      {
        "name": "Krishna River Ghats (कृष्णा नदी घाट)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/a8/6d/dd/photo-of-krishna-river.jpg?w=900&h=-1&s=1",
        "description": "कृष्णा नदी के सुंदर घाट धार्मिक और सांस्कृतिक आयोजनों के लिए मशहूर। Scenic river ghats hosting religious and cultural events."
      },
      {
        "name": "Dandoba Hill Forest (दंडोबा हिल फॉरेस्ट)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/05/52/a7/4d/dandoba-hills-forest.jpg",
        "description": "मॉनसून ट्रेकिंग और बर्ड वॉचिंग के लिए हरी-भरी पहाड़ियाँ। Green hills famous for monsoon trekking and bird watching."
      },
      {
        "name": "Irwin Bridge & Riverside (इर्विन ब्रिज और रिवरसाइड)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/64/a6/12/img20201204181729-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "ब्रिटिशकालीन पुल और आसपास का नदी किनारा शाम की सैर के लिए लोकप्रिय। Historic bridge with beautiful riverside views."
      },
      {
        "name": "Haripur Datta Mandir (हरीपुर दत्त मंदिर)",
        "image": "https://c8.alamy.com/comp/2Y5028A/main-entrance-gate-of-sangmeshwar-mandir-temple-at-haripur-sangli-maharashtra-india-2Y5028A.jpg",
        "description": "कृष्णा और वारणा नदियों के संगम पर स्थित पवित्र मंदिर। Holy temple at the confluence of Krishna and Warna rivers."
      },
      {
        "name": "Kupwad Wildlife Reserve (कुपवाड वाइल्डलाइफ़ रिज़र्व)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwP0bOgWAutxu0MDX6XLl2WqJj29shWbrNUQ&s",
        "description": "स्थानीय वन्यजीव और पक्षियों को देखने के लिए आकर्षक स्थल। Local wildlife reserve popular among bird watchers."
      },
      {
        "name": "Sangli Fort (सांगली किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTokIomUkn1Ug4SISyjgpMe5LdADioAhh1Dfg&s",
        "description": "ऐतिहासिक किला और पुरानी इमारतें, फोटोग्राफी और इतिहास प्रेमियों के लिए आकर्षक। Historic fort and heritage site popular with photographers."
      }
    ],
    "Jalgaon (जलगाँव)": [
      {
        "name": "Ajanta Caves (अजंता गुफाएँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO6_9DK477NuOcaX4P8PcY1uyF2naLUhpdNw&s",
        "description": "यूनेस्को वर्ल्ड हेरिटेज साइट, बौद्ध गुफाएँ और प्राचीन भित्ति चित्र। UNESCO World Heritage Site with ancient Buddhist caves and murals."
      },
      {
        "name": "Patnadevi Temple & Gautala Wildlife Sanctuary (पटनेदेवी मंदिर व गौतला वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/09/a0/87/img-20170927-093725555.jpg?w=1200&h=1200&s=1",
        "description": "सप्तश्रृंगी पहाड़ियों में प्राचीन मंदिर और आसपास का सुंदर वन्यजीव क्षेत्र। Ancient temple nestled in Satpura hills with scenic wildlife surroundings."
      },
      {
        "name": "Swinging Towers of Farkande (फरकांदे की झूलती मीनारें)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/b3/4c/97/not-worth-total-waste.jpg?w=700&h=400&s=1",
        "description": "अद्भुत स्थापत्य कला के लिए प्रसिद्ध, हल्का सा धक्का देने पर मीनारें हिलती हैं। Unique architectural marvel where minarets sway lightly."
      },

      {
        "name": "Omkareshwar Mandir (ओंकारेश्वर मंदिर, भुसावल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/a7/b9/23/omkareshwar-shivling.jpg?w=900&h=500&s=1",
        "description": "कृष्णा नदी के किनारे प्राचीन शिव मंदिर, हर साल हजारों भक्त। Ancient Shiva temple on Tapti riverbanks attracting devotees."
      },
      {
        "name": "Swinging Towers of Mehgaon (मेहगांव झूलता मीनार)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEeRAd6fpGpLT-oO6PaT9lypPFSMAI3iMY9Q&s",
        "description": "अनोखे स्थापत्य का उदाहरण, इंजीनियरिंग प्रेमियों के लिए आकर्षक। Another example of remarkable swaying minarets."
      },

      {
        "name": "Mehrun Lake (मेहरूण लेक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFmxGaEHJnjRpebL6jyOFjtakxap_KbVWZ8K38ATRrjcRRwPc&s",
        "description": "शांत और सुंदर झील, पिकनिक और स्थानीय मेले के लिए प्रसिद्ध। Serene lake popular for picnics and annual fairs."
      }
    ],
    "Latur (लातूर)": [
      {
        "name": "Shri Siddheshwar Temple (श्री सिद्धेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZY9e52ZLT4nBa5vS0YBK2-NzlaQuRmvSSNg&s",
        "description": "लातूर का प्रमुख शिव मंदिर, महाशिवरात्रि पर भारी भीड़। Major Shiva temple attracting large crowds during Maha Shivratri."
      },
      {
        "name": "Kharosa Caves (खरोसा गुफाएँ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/57/a9/3a/kharosa-caves.jpg?w=1200&h=1200&s=1",
        "description": "बौद्ध और हिन्दू धार्मिक गुफाएँ, ऐतिहासिक महत्व के साथ। Historical Buddhist and Hindu rock-cut caves visited by thousands each year."
      },
      {
        "name": "Udgir Fort (उदगीर किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0UHlLGdgRT54HNj0GEJqCosZKp2lFIZxklq1-hru0AUpe0vU&s",
        "description": "ऐतिहासिक किला, मराठा और आदिलशाही काल का स्मारक। Historic fort from Maratha and Adil Shahi era, popular among tourists."
      }
    ],
    "Chandrapur (चंद्रपुर)": [
      {
        "name": "Tadoba Andhari Tiger Reserve (ताडोबा आंधारी टाइगर रिज़र्व)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/57/e1/97/tadoba-andhari-tiger.jpg?w=1200&h=-1&s=1",
        "description": "भारत का प्रमुख बाघ अभयारण्य, जंगल सफारी और वन्यजीव प्रेमियों का हॉटस्पॉट। Famous tiger reserve attracting wildlife enthusiasts from all over India."
      },
      {
        "name": "Mahakali Mandir (महाकाली मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/18/2d/e0/mahakali-temple.jpg?w=1200&h=1200&s=1",
        "description": "चंद्रपुर का प्रमुख देवी मंदिर, नवरात्रि पर भारी भीड़। Major goddess temple attracting thousands of devotees during Navratri."
      },
      {
        "name": "Chandrapur Fort (चंद्रपुर किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWr5i68GA9YWoE9ZdsXUpuNGP3kHL-Tp0Q5Q&s",
        "description": "ऐतिहासिक किला और पुरानी इमारतें, शहर का प्रमुख आकर्षण। Historic fort and heritage site popular among tourists."
      }
    ],
    "Parbhani (परभणी)": [
      {
        "name": "Ausa Fort (औसा किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/80/20/35/caption.jpg?w=800&h=400&s=1",
        "description": "ऐतिहासिक किला, शहर का प्रमुख पर्यटन स्थल। Historic fort attracting tourists and history enthusiasts."
      },
      {
        "name": "Khandoba Mandir (खंडोबा मंदिर, Parbhani)",
        "image": "https://c8.alamy.com/comp/ET197A/khandoba-temple-beed-maharashtra-india-ET197A.jpg",
        "description": "प्रसिद्ध देवी/देवता मंदिर, स्थानीय और श्रद्धालुओं के लिए प्रमुख। Popular temple attracting devotees year-round."
      },
      {
        "name": "Panchakki & Waterfalls (पंचक्की और जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/31/bd/50/water-is-dropped-from.jpg?w=900&h=-1&s=1",
        "description": "प्राकृतिक सुंदरता के लिए लोकप्रिय स्थल। Scenic natural spot popular among locals and tourists."
      }
    ],
    "Akola (अकोला)": [
      {
        "name": "Balaji Temple (बालाजी मंदिर, Akola)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/13/c4/cb/caption.jpg?w=1200&h=1200&s=1",
        "description": "अकोला का प्रमुख धार्मिक स्थल, हर साल लाखों भक्त आते हैं। Major temple attracting thousands of devotees annually."
      },
      {
        "name": "Glass Garden (ग्लास गार्डन, Akola)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/8c/c7/9b/muskan-organic-strawberry.jpg?w=500&h=500&s=1",
        "description": "शहर का सुंदर बगीचा और पिकनिक स्थल। Popular city garden and picnic spot."
      },
      {
        "name": "Akola Fort (अकोला किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/6c/9c/bf/asadgad-fort-akola.jpg?w=1200&h=-1&s=1",
        "description": "ऐतिहासिक किला, पर्यटकों और इतिहास प्रेमियों के लिए आकर्षक। Historic fort popular among tourists and history enthusiasts."
      }
    ],
    "Beed (बीड)": [
      {
        "name": "Kankaleshwar Temple (कंकलेश्वर मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/15/d4/83/5c/kankaleshwar-temple-beed.jpg",
        "description": "बीड का प्रमुख शिव मंदिर, महाशिवरात्रि पर भारी भीड़। Major Shiva temple attracting thousands of devotees during Maha Shivratri."
      },
      {
        "name": "Rameshwar Temple (रामेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMSl02h2AXJ7xsNO1kt_S5OvGUOq6rhAMk5A&s",
        "description": "प्रसिद्ध धार्मिक स्थल और स्थानीय भक्तों का प्रमुख तीर्थ। Popular religious site visited by locals and pilgrims."
      },
      {
        "name": "Parli Vaijnath (परळी वैजनाथ, नज़दीकी तीर्थ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/bc/bb/f5/parli-vaijnath-temple.jpg?w=900&h=500&s=1",
        "description": "शिव भक्तों के लिए प्रमुख तीर्थ स्थल, लाखों श्रद्धालु हर साल आते हैं। Famous Shiva pilgrimage attracting millions annually."
      }
    ],
    "Bhandara (भंडारा)": [
      {
        "name": "Nagardhan Fort (नगरधन किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/19/80/ca/the-main-entrance.jpg?w=1200&h=-1&s=1",
        "description": "भंडारा का ऐतिहासिक किला, ट्रेकिंग और इतिहास प्रेमियों के लिए लोकप्रिय। Historic fort popular among trekkers and history enthusiasts."
      },
      {
        "name": "Ambadevi Temple (अंबादेवी मंदिर, Bhandara)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/4f/68/c4/this-is-exterior-of-the.jpg?w=900&h=500&s=1",
        "description": "प्रसिद्ध देवी मंदिर, नवरात्रि और अन्य त्योहारों में भारी भीड़। Famous temple attracting thousands of devotees during festivals."
      },
      {
        "name": "Gosikhurd Dam (गोसिखुर्द डैम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f1/29/06/dsc-1522-largejpg.jpg?w=900&h=500&s=1",
        "description": "विदर्भ का प्रमुख जलाशय और पिकनिक स्थल। Major reservoir and scenic picnic spot in Vidarbha."
      }
    ],
    "Gondia (गोंदिया)": [
      {
        "name": "Nagzira Wildlife Sanctuary (नागजिरा वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLwUaDIYHjf10OpITu-rhhUGp8WcbRqkNZ1g&s",
        "description": "बाघ और अन्य वन्यजीवों के लिए प्रसिद्ध, जंगल सफारी का प्रमुख केंद्र। Famous for tigers and wildlife, popular for jungle safaris."
      },
      {
        "name": "Chandrapur–Gondia River Ghats (नदी घाट)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/07/89/1f/57/vishnupad-temple.jpg",
        "description": "प्राकृतिक सुंदरता और धार्मिक आयोजन के लिए लोकप्रिय स्थल। Scenic river ghats used for religious and cultural events."
      },
      {
        "name": "Shri Gondeshwar Temple (श्री गोंदेश्वर मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/04/8c/41/01/gondeshwar-temple.jpg",
        "description": "स्थानीय और धार्मिक दृष्टि से महत्वपूर्ण मंदिर। Major local temple attracting devotees year-round."
      }
    ],
    "Yavatmal (यवतमाल)": [
      {
        "name": "Pusad Fort (पुसाद किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2vnIkFdNgA2y8aI8l6pr5aetTtylEBFekPg&s",
        "description": "ऐतिहासिक किला और ट्रेकिंग स्थल, इतिहास प्रेमियों के लिए लोकप्रिय। Historic fort popular among trekkers and history enthusiasts."
      },
      {
        "name": "Shree Sevagram Mandir (श्री सेवाग्राम मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/fe/3b/ff/sevagram-ashram.jpg?w=900&h=500&s=1",
        "description": "धार्मिक और सांस्कृतिक केंद्र, स्थानीय और श्रद्धालुओं के लिए प्रमुख। Religious and cultural center attracting devotees year-round."
      },
      {
        "name": "Hivra Dam (हिवरा डैम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/22/3e/30/bhiram-dam-view-in-monsoon.jpg?w=1200&h=-1&s=1",
        "description": "प्राकृतिक सुंदरता और पिकनिक स्थल के लिए लोकप्रिय। Scenic dam area popular for picnics and family outings."
      }
    ],

    "Wardha (वर्धा)": [
      {
        "name": "Bor Tiger Reserve (बोर टाइगर रिज़र्व)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRePAQOxtXyHuGSmnb73jn0DVU67znAQJcn2w&s",
        "description": "भारत के प्रमुख बाघ अभयारण्यों में से एक, जंगल सफारी और वन्यजीव प्रेमियों का हॉटस्पॉट। One of India’s major tiger reserves, popular for safaris and wildlife enthusiasts."
      },
      {
        "name": "Gandhi Ashram (गांधी आश्रम, Wardha)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/9c/a9/3e/gandhiji-ashram-bapu.jpg?w=900&h=-1&s=1",
        "description": "महात्मा गांधी का ऐतिहासिक आश्रम, राष्ट्रीय और अंतरराष्ट्रीय पर्यटकों के लिए प्रमुख। Historic ashram of Mahatma Gandhi, visited by thousands annually."
      },
      {
        "name": "Sevagram Ashram (सेवाग्राम आश्रम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/05/af/05/sevagram-ashram.jpg?w=700&h=400&s=1",
        "description": "धार्मिक और ऐतिहासिक दृष्टि से महत्वपूर्ण स्थल। Important religious and historical site attracting devotees and tourists."
      }
    ],
    "Dhule (धुले)": [
      {
        "name": "Laling Fort (लालिंग किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/80/20/35/caption.jpg?w=800&h=400&s=1",
        "description": "पहाड़ी की चोटी पर स्थित ऐतिहासिक किला, क्षेत्रीय इतिहास की झलक दिखाता है। Historic hilltop fort showcasing regional history."
      },
      {
        "name": "Rajwade Museum (राजवाड़े संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpOspJoUBrb7NUi2yrs22suzlJQcOX1t_TNw&s",
        "description": "पांडुलिपियाँ और मूर्तियों जैसी कलाकृतियों के साथ धुले की सांस्कृतिक विरासत प्रदर्शित करता है। Museum displaying cultural heritage with manuscripts and sculptures."
      },
      {
        "name": "Ekveera Devi Temple (एकवीरा देवी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/1e/12/8c/caption.jpg?w=900&h=500&s=1",
        "description": "पूजनीय मंदिर, आध्यात्मिक शांति और श्रद्धालुओं के लिए प्रमुख स्थल। Famous temple attracting devotees seeking spiritual peace."
      },
      {
        "name": "Santoshi Mata Temple (संतोषी माता मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB7XhAB7ulkWaIN-D9vqeR96kiwW9uMsFwcg&s",
        "description": "स्थापत्य कला में सुंदर, त्यौहारों के समय बहुत महत्वपूर्ण। Architecturally beautiful temple, major during festivals."
      },
      {
        "name": "Nakane Lake (नाकाने झील)",
        "image": "https://www.shutterstock.com/image-photo/lake-view-nakane-dhule-maharashtra-260nw-1657241386.jpg",
        "description": "पिकनिक, नौका विहार और आरामदायक सैर के लिए आदर्श। Ideal for picnics, boating, and leisure walks."
      }
    ],
    "Nanded (नांदेड)": [
      {
        "name": "Hazur Sahib (हज़ूर साहिब)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Takht_Sri_Hazur_Sahib.jpg/500px-Takht_Sri_Hazur_Sahib.jpg",
        "description": "सिखों का प्रमुख तीर्थ स्थल, हर साल लाखों श्रद्धालु आते हैं। Major Sikh pilgrimage site attracting millions of devotees annually."
      },
      {
        "name": "Takht Sachkhand Sri Hazur Abchalnagar Sahib (सचखंड श्री हज़ूर अभचलनगर साहिब)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/91/ef/24/photo2jpg.jpg?w=900&h=500&s=1",
        "description": "विश्व प्रसिद्ध सिख तीर्थ स्थल, धार्मिक और ऐतिहासिक महत्व का केंद्र। World-famous Sikh shrine with religious and historical significance."
      },
      {
        "name": "Keshavraj Mandir (केशवराज मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/61/48/ac/keshavraj-temple-dapoli.jpg?w=1200&h=-1&s=1",
        "description": "प्रमुख हिंदू मंदिर, भक्तों और पर्यटकों के लिए लोकप्रिय। Popular Hindu temple visited by devotees and tourists."
      }
    ],
    "Osmanabad (उस्मानाबाद)": [
      {
        "name": "Tulja Bhavani Temple (तुलजा भवानी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtma1SqfRPdfV7-93RyzwbTU-L-J4__Wo4CA&s",
        "description": "महाराष्ट्र के तुलजापुर में प्रसिद्ध देवी भवानी का मंदिर, सालाना हजारों श्रद्धालु आते हैं। Famous temple of Goddess Bhavani attracting thousands of devotees annually."
      },
      {
        "name": "Paranda Fort (परांदा किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0c/01/ff/90/paranda-fort.jpg",
        "description": "मध्ययुगीन किला और ऐतिहासिक स्थल, पर्यटकों के लिए आकर्षक। Medieval fort and historical site popular among tourists."
      },
      {
        "name": "Darashiv Caves (धाराशिव गुफाएँ)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0d/a9/db/9f/dharashiv-caves.jpg",
        "description": "प्राचीन गुफाओं का समूह, ऐतिहासिक और धार्मिक दृष्टि से महत्वपूर्ण। Ancient group of caves with historical and religious significance."
      },

      {
        "name": "Yedshi Ramling Sanctuary (येदशी रामलिंग अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9w4qZG2pG88acJwehKNkEmJiekeY85cS7Gw&s",
        "description": "1918 में स्थापित वन्यजीव अभयारण्य, प्रकृति और वन्यजीव प्रेमियों के लिए लोकप्रिय। Established in 1918, popular wildlife sanctuary attracting nature enthusiasts."
      },
      {
        "name": "Shri Yedeshwari Devi Temple (श्री येदेश्वरी देवी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbW8uc-5AscCgOAr_bG6iEiXvTel5x5sgkrQ&s",
        "description": "प्रसिद्ध देवी मंदिर, धार्मिक दृष्टि से प्रमुख स्थल। Famous temple attracting devotees for spiritual significance."
      },
      {
        "name": "Naldurg Fort (नलदुर्ग किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/3d/ed/01/naldurg-fort.jpg?w=1200&h=-1&s=1",
        "description": "ऐतिहासिक किला, पर्यटकों और इतिहास प्रेमियों के लिए आकर्षक। Historic fort popular among tourists and history enthusiasts."
      }
    ],
    "Hingoli (हिंगोली)": [
      {
        "name": "Aundha Nagnath Temple (औंधा नागनाथ मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/76/a2/ee/caption.jpg?w=1200&h=1200&s=1",
        "description": "भारत के 12 ज्योतिर्लिंगों में से एक, सैंकड़ों साल पुराना शिव मंदिर। One of the 12 Jyotirlingas of India, centuries-old Shiva temple attracting thousands annually."
      },
      {
        "name": "Bhadra Maruti Temple (भद्रा मारुति मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/c2/c7/c5/the-temple.jpg?w=1200&h=1200&s=1",
        "description": "प्रसिद्ध हनुमान मंदिर, स्थानीय और श्रद्धालुओं के लिए लोकप्रिय। Famous Hanuman temple popular among locals and devotees."
      },
      {
        "name": "Ausa Fort (औसा किला, Hingoli)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/80/20/35/caption.jpg?w=800&h=400&s=1",
        "description": "ऐतिहासिक किला, पर्यटकों और इतिहास प्रेमियों के लिए आकर्षक। Historic fort popular among tourists and history enthusiasts."
      }
    ],
    "Raigad (रायगड)": [
      {
        "name": "Raigad Fort (रायगड किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/80/20/35/caption.jpg?w=800&h=400&s=1",
        "description": "छत्रपति शिवाजी महाराज की राजधानी का ऐतिहासिक किला, महाराष्ट्र का प्रमुख पर्यटन स्थल। Historic fort and former capital of Chhatrapati Shivaji Maharaj, major tourist attraction in Maharashtra."
      },
      {
        "name": "Karnala Bird Sanctuary (कर्णाला पक्षी अभयारण्य)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/15/e5/97/97/fort.jpg",
        "description": "प्रसिद्ध पक्षी अभयारण्य, प्रकृति प्रेमियों और ट्रेकिंग के लिए लोकप्रिय। Famous bird sanctuary popular among nature lovers and trekkers."
      },
      {
        "name": "Murud-Janjira Beach & Fort (मुरुड-जंजीरा बीच और किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/7f/d3/da/murud-janjira-fort-in.jpg?w=900&h=500&s=1",
        "description": "समुद्र तट और ऐतिहासिक किला, पर्यटकों के लिए प्रमुख आकर्षण। Coastal beach and historic fort, major tourist spot."
      }
    ],
    "Ratnagiri (रत्नागिरी)": [
      {
        "name": "Ganpatipule Beach & Temple (गणपतिपुले बीच और मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/02/5a/f1/d9/ganapatipule-temple-located.jpg",
        "description": "प्रसिद्ध समुद्र तट और भगवान गणपति का मंदिर, हर साल लाखों श्रद्धालु और पर्यटक आते हैं। Famous beach and Ganpati temple attracting thousands of tourists and devotees annually."
      },
      {
        "name": "Ratnadurga Fort (रत्नादुर्ग किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/aa/67/fb/img-20180101-190041-570.jpg?w=1200&h=-1&s=1",
        "description": "मध्ययुगीन किला, ऐतिहासिक और फोटोग्राफी प्रेमियों के लिए लोकप्रिय। Medieval fort popular among history and photography enthusiasts."
      },
      {
        "name": "Thibaw Palace (थिबाव पैलेस, Ratnagiri)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/bc/d4/c9/thiba-palace.jpg?w=900&h=500&s=1",
        "description": "म्यानमार के राजा थिबाव का निर्वासन स्थल, ऐतिहासिक महत्व का। Exiled palace of King Thibaw of Myanmar, historically significant."
      }
    ],
    "Sindhudurg (सिंधुदुर्ग)": [
      {
        "name": "Sindhudurg Fort (सिंधुदुर्ग किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/be/a4/4d/konkan-extends-throughout.jpg?w=900&h=-1&s=1",
        "description": "महाराष्ट्र के तट पर स्थित ऐतिहासिक किला, समुद्र तट और इतिहास प्रेमियों के लिए प्रमुख। Historic fort located on the coast, popular among history lovers and beach tourists."
      },
      {
        "name": "Tarkarli Beach (तारकली बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/21/46/95/tarkarli-beach.jpg?w=1200&h=-1&s=1",
        "description": "साफ़ पानी, स्कूबा डाइविंग और पिकनिक के लिए प्रसिद्ध। Clean beach famous for scuba diving and picnics."
      },
      {
        "name": "Malvan Marine Sanctuary (मालवन समुद्री अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/52/cc/ac/malvan-marine-sanctuary.jpg?w=1200&h=-1&s=1",
        "description": "प्राकृतिक सुंदरता और समुद्री जीवन के लिए प्रमुख स्थल। Popular site for natural beauty and marine life exploration."
      }
    ],
    "Palghar (पालघर)": [
      {
        "name": "Hanuman Point (हनुमान प्वाइंट)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/01/7f/af/img-20180209-110611-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "प्राचीन हनुमान मंदिर, धार्मिक महत्व के कारण पर्यटकों को आकर्षित करता है। Ancient Hanuman temple attracting tourists."
      },
      {
        "name": "Shirpamal (शिरपामाळ, जव्हार)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/12/e7/b2/88/view-of-main-entrance.jpg",
        "description": "ऐतिहासिक स्थल, जहाँ छत्रपति शिवाजी महाराज का स्वागत हुआ था। Historical site where Chhatrapati Shivaji Maharaj was felicitated."
      },
      {
        "name": "Kalmandavi Waterfall (कलमंडवी जलप्रपात)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-m/1280/1c/52/35/08/one-of-the-water-fall.jpg",
        "description": "100 मीटर ऊँचा झरना, साहसिक और प्राकृतिक प्रेमियों के लिए लोकप्रिय। 100-meter-high waterfall popular among adventure and nature lovers."
      },
      {
        "name": "Hiradpada Waterfall (हिरडपाडा जलप्रपात)",
        "image": "https://i.ytimg.com/vi/61HhuM4xgcY/sddefault.jpg",
        "description": "जव्हार के पास स्थित प्रसिद्ध झरना। Famous waterfall near Jawhar."
      },
      {
        "name": "Jivdani Temple (जीवदानी मंदिर, Virar)",
        "image": "https://i.ytimg.com/vi/oMLtR1FmiG4/maxresdefault.jpg",
        "description": "विरार की प्रमुख धार्मिक स्थल और पहाड़ी मंदिर। Major hilltop temple in Virar."
      },
      {
        "name": "Kelva Fort (केळवा किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmD92PSgb_bkRsVV80NYqcTns9gAjIjTB7Qw&s",
        "description": "16वीं सदी में पुर्तगालियों द्वारा निर्मित ऐतिहासिक किला। Historical fort built by Portuguese in 16th century."
      },
      {
        "name": "Suruchi Beach, Vasai (सुरुची बीच, वसई)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxiHrUQR3t8hqOZujlbCUmcpMYxQYWtdD_Iw&s",
        "description": "स्वच्छ और प्राकृतिक समुद्र तट, समुद्र प्रेमियों के लिए आदर्श। Clean and scenic beach, perfect for beach lovers."
      }
    ],
    "Ahmednagar (अहमदनगर)": [
      {
        "name": "Shaniwar Wada, Ahmednagar",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/82/bf/aa/caption.jpg?w=800&h=800&s=1",
        "description": "ऐतिहासिक किला और प्रमुख पर्यटक स्थल। Historic fort and major tourist attraction."
      },
      {
        "name": "Bhandardara Lake (भंडारदरा झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/e3/2d/23/wilson-dam.jpg?w=1200&h=-1&s=1",
        "description": "प्राकृतिक सुंदरता और शांत वातावरण। Scenic lake with peaceful surroundings."
      },
      {
        "name": "Ahmednagar Fort (अहमदनगर किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/ce/2f/88/one-of-the-bastion.jpg?w=1200&h=-1&s=1",
        "description": "सैन्य और ऐतिहासिक दृष्टि से महत्वपूर्ण किला। Military and historical importance fort."
      },
      {
        "name": "Harishchandragad Fort (हरीशचंद्रगड किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/33/f7/cb/img-20171024-141916091.jpg?w=900&h=500&s=1",
        "description": "ट्रेकिंग और प्राकृतिक दृश्य के लिए प्रसिद्ध किला। Famous fort for trekking and scenic views."
      },
      {
        "name": "Kalsubai Peak (कळसुबाई शिखर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/41/0d/ab/view.jpg?w=1200&h=-1&s=1",
        "description": "महाराष्ट्र की सबसे ऊँची चोटी, ट्रेकिंग प्रेमियों के लिए लोकप्रिय। Highest peak in Maharashtra, popular among trekkers."
      }
    ],
    "Gadchiroli (गडचिरोली)": [
      {
        "name": "Tadoba Andhari Tiger Reserve (ताडोबा अंधारी टाइगर रिज़र्व)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/5d/c6/ea/caption.jpg?w=800&h=400&s=1",
        "description": "वन्यजीव प्रेमियों के लिए प्रमुख अभयारण्य। Major wildlife sanctuary popular among nature lovers."
      },
      {
        "name": "Sirpur Caves (सिरपुर गुफाएं)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-c/1280x250/03/e9/ae/cb/surang-tila.jpg",
        "description": "प्राचीन गुफाएँ और ऐतिहासिक स्थल। Ancient caves and historical site."
      },
      {
        "name": "Chandrapur Fort (चंद्रपुर किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0f/99/22/ac/india-chandrapur-ballalpur.jpg",
        "description": "ऐतिहासिक किला और पर्यटकों के लिए प्रमुख स्थल। Historic fort and major tourist spot."
      },
],
    "Washim (वाशीम)": [
      {
        "name": "Balaji Temple, Washim (बाळाजी मंदिर, वाशीम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzpx4HyuJ0W75sV8ovQIm5i-sKAaLjz7eDXQ&s",
        "description": "धार्मिक दृष्टि से प्रमुख मंदिर। Important religious temple attracting pilgrims."
      },
      {
        "name": "Wan Dam (वान डैम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp2DDRSZAjdNtacYAX9iwCT4pXq01N8-ds-A&s",
        "description": "प्राकृतिक सुंदरता और पिकनिक स्थल। Scenic spot and picnic area."
      },
      {
        "name": "Washim Fort (वाशीम किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/73/58/b4/gomukh-temple-lonar.jpg?w=400&h=-1&s=1",
        "description": "ऐतिहासिक और सैन्य महत्व का किला। Historic fort with military significance."
      },
      {
        "name": "Shingavi Lake (शिंगवी झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYxaZf_57UcsbifPBe-j5BAPcYEGKN12x0wg&s",
        "description": "शांत वातावरण और प्राकृतिक दृश्य। Peaceful environment with scenic beauty."
      }
    ],
    "Jalna (जालना)": [
      {
        "name": "Jalna Fort (जालना किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/d8/20/a1/caption.jpg?w=300&h=300&s=1",
        "description": "ऐतिहासिक किला और पर्यटकों के लिए प्रमुख स्थल। Historic fort and major tourist spot."
      },
      {
        "name": "Shirdi Sai Baba Temple (शिरडी साई बाबा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/4b/61/3d/photo2jpg.jpg?w=1200&h=-1&s=1",
        "description": "धार्मिक दृष्टि से प्रमुख स्थल। Major religious pilgrimage site."
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
