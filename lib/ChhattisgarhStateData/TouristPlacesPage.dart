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

    "Balod (बालोद)": [
      {
        "name": "Ganga Maiya Temple (गंगा मइया मंदिर, झलमला)",
        "image": "https://cdn.s3waas.gov.in/s3c45147dee729311ef5b5c3003946c48f/uploads/2019/01/2019011790.jpg",
        "description": "Ganga Maiya Temple is located at Jhalmala, near Balod–Durg road. Originally built as a small hut by a fisherman, it later developed into a grand temple with the help of devotees. It is one of the most revered temples in Chhattisgarh. | गंगा मइया मंदिर झलमला, बालोद-दुर्ग मार्ग पर स्थित है। प्रारंभ में इसे एक मछुआरे ने झोपड़ी के रूप में बनाया था, बाद में श्रद्धालुओं के सहयोग से यह एक भव्य मंदिर बना। यह छत्तीसगढ़ के प्रमुख धार्मिक स्थलों में से एक है।"
      },
      {
        "name": "Siya Devi Temple & Waterfall (सिया देवी मंदिर एवं जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3c45147dee729311ef5b5c3003946c48f/uploads/2019/01/2019011757-768x512.jpg",
        "description": "Siya Devi Temple is dedicated to Goddess Sita and is surrounded by dense forests. According to belief, Lord Rama, Sita, and Laxman visited this place during exile. The natural waterfall near the temple attracts both pilgrims and tourists. | सिया देवी मंदिर माता सीता को समर्पित है और यह घने जंगलों से घिरा हुआ है। मान्यता है कि भगवान राम, सीता और लक्ष्मण वनवास के दौरान यहाँ आए थे। मंदिर के पास का प्राकृतिक जलप्रपात तीर्थयात्रियों और पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Tandula Dam (तांदुला बांध)",
        "image": "https://cdn.s3waas.gov.in/s3c45147dee729311ef5b5c3003946c48f/uploads/2019/01/2019011735-768x178.jpg",
        "description": "Tandula Dam, located 5 km from Balod, supplies water to the Bhilai Steel Plant. The dam area is scenic and popular for picnics, especially during sunrise and sunset. A nearby resort managed by Chhattisgarh Tourism provides dining facilities. | तांदुला बांध बालोद से लगभग 5 किमी दूर स्थित है और भिलाई स्टील प्लांट को जल आपूर्ति करता है। बांध का क्षेत्र प्राकृतिक सौंदर्य से भरपूर है और सूर्योदय व सूर्यास्त के समय विशेष रूप से आकर्षक लगता है। छत्तीसगढ़ पर्यटन द्वारा संचालित समीपस्थ रिसॉर्ट भोजन सुविधा प्रदान करता है।"
      }
    ],

    "Baloda Bazar (बलौदा बाजार)": [
      {
        "name": "Mawali Mata Mandir, Singarpur (मावली माता मंदिर, सिंगारपुर)",
        "image": "https://cdn.s3waas.gov.in/s304ecb1fa28506ccb6f72b12c0245ddbc/uploads/bfi_thumb/2018061039-olw707mc1i9wowh2vfvuz9blt17f7g9cso2p36ovki.jpg",
        "description": "Mawali Mata Temple is located in Singarpur village, Bhatapara tehsil of Baloda Bazar district, about 11.8 km away. It is an important religious site dedicated to Maa Mawali. | मावली माता मंदिर बलौदा बाजार जिले के भाटापारा तहसील के सिंगारपुर गाँव में स्थित है, जो लगभग 11.8 किमी दूर है। यह माता मावली को समर्पित एक महत्वपूर्ण धार्मिक स्थल है।"
      },
      {
        "name": "Damakheda – Kabir Panth Ashram (दमखेडा – कबीर पंथ आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s304ecb1fa28506ccb6f72b12c0245ddbc/uploads/bfi_thumb/2018061027-olw707mc1i9wowh2vfvuz9blt17f7g9cso2p36ovki.jpg",
        "description": "Damakheda is a famous pilgrimage center of Kabirpantis, located in Baloda Bazar–Bhatapara district near Raipur. It is known for religious gatherings and spiritual significance. | दमखेडा कबीरपंथियों का प्रसिद्ध तीर्थ स्थल है, जो बलौदा बाजार-भाटापारा जिले में रायपुर के पास स्थित है। यह धार्मिक सभाओं और आध्यात्मिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Turturiya – Balmiki Ashram (तुरतुरिया – वाल्मीकि आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s304ecb1fa28506ccb6f72b12c0245ddbc/uploads/bfi_thumb/2019101750-olw70afum0drnqczez3qoqlzl6tiujkjt215j0kp1u.jpg",
        "description": "Turturiya is believed to be the ashram of Rishi Valmiki and the birthplace of Lav-Kush. It is located 29 km from Baloda Bazar and 84 km from Raipur, surrounded by natural beauty. | तुरतुरिया को ऋषि वाल्मीकि का आश्रम और लव-कुश का जन्मस्थान माना जाता है। यह बलौदा बाजार से 29 किमी और रायपुर से 84 किमी दूर प्राकृतिक सौंदर्य से घिरा हुआ है।"
      },
      {
        "name": "Siddheshwar Mandir, Palari (सिद्धेश्वर मंदिर, पलारी)",
        "image": "https://cdn.s3waas.gov.in/s304ecb1fa28506ccb6f72b12c0245ddbc/uploads/bfi_thumb/2018061074-olw708k68cb70ifppyahjr32ef2sf5d34sq6kgnhea.jpg",
        "description": "Siddheshwar Temple is an ancient Shiva temple situated on the embankment of Balasamund pond in Palari village, 25 km from Baloda Bazar. | सिद्धेश्वर मंदिर एक प्राचीन शिव मंदिर है जो पलारी गाँव में बलासमुद्र तालाब के किनारे स्थित है, बलौदा बाजार से 25 किमी दूर।"
      },
      {
        "name": "Son Barsa Nature Safari (सन बरसा नेचर सफारी)",
        "image": "https://cdn.s3waas.gov.in/s304ecb1fa28506ccb6f72b12c0245ddbc/uploads/bfi_thumb/2018060718-olw705qnnu7c1ojt6f2lu9som9gos21w4erq4mrnwy.jpeg",
        "description": "Sonbarasa Reserve Forest, located in Gram Panchayat Latua just 3 km from Baloda Bazar headquarters, has been developed as a nature safari and eco-tourism site. | ग्राम पंचायत लतुआ में स्थित सनबरसा आरक्षित वन, जो बलौदा बाजार मुख्यालय से मात्र 3 किमी दूर है, को नेचर सफारी और इको-टूरिज्म स्थल के रूप में विकसित किया गया है।"
      },
      {
        "name": "Giraudpuri Dham (गिरौदपुरी धाम)",
        "image": "https://cdn.s3waas.gov.in/s304ecb1fa28506ccb6f72b12c0245ddbc/uploads/bfi_thumb/2018050279-olw6zm01obgb9vchdojfvws0565zaevj1p2j1tkxjm.jpg",
        "description": "Giraudpuri Dham is situated at the confluence of the Mahanadi and Jonk rivers, about 40 km from Baloda Bazar and 80 km from Bilaspur. It is a major pilgrimage site for followers of Guru Ghasidas. | गिरौदपुरी धाम महानदी और जोंक नदियों के संगम पर स्थित है, बलौदा बाजार से 40 किमी और बिलासपुर से 80 किमी दूर। यह गुरु घासीदास जी के अनुयायियों के लिए प्रमुख तीर्थ स्थल है।"
      },
      {
        "name": "Bar Navapara Wildlife Sanctuary (बर नवापारा वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s304ecb1fa28506ccb6f72b12c0245ddbc/uploads/bfi_thumb/2018051052-olw6zm01obgb9vchdojfvws0565zaevj1p2j1tkxjm.jpg",
        "description": "Bar Navapara Wildlife Sanctuary, spread over 245 sq. km in Baloda Bazar district, is rich in flora and fauna. It is a popular destination for nature lovers and eco-tourism. | बलौदा बाजार जिले में फैला बर नवापारा वन्यजीव अभयारण्य 245 वर्ग किमी क्षेत्र में विस्तृत है और यहाँ जैव विविधता प्रचुर मात्रा में पाई जाती है। यह प्रकृति प्रेमियों और इको-टूरिज्म के लिए लोकप्रिय स्थल है।"
      }
    ],

    "Balrampur (बलरामपुर)": [
      {
        "name": "Tatapani (टाटापानी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1rImaNK-Z_ZiKh_mqk224maqtVhYtcrAVuA&s",
        "description": "Tatapani is a famous hot water spring in Balrampur district, believed to have medicinal properties. It is a popular tourist and pilgrimage spot. | टाटापानी बलरामपुर जिले का प्रसिद्ध गर्म पानी का कुंड है, जिसके पानी को औषधीय गुणों वाला माना जाता है। यह एक प्रमुख पर्यटन और धार्मिक स्थल है।"
      },
      {
        "name": "Semersot Sanctuary (सेमरसोत अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh-YZYb_iE_DTR2z2sNfPIPW541JUnCaXapA&s",
        "description": "Semersot Wildlife Sanctuary, spread over dense forests, is home to various wild animals and birds. It is an ideal place for nature lovers and eco-tourism. | सेमरसोत वन्यजीव अभयारण्य घने जंगलों में फैला हुआ है और यहाँ कई प्रकार के वन्य जीव एवं पक्षी पाए जाते हैं। यह प्रकृति प्रेमियों और इको-टूरिज्म के लिए आदर्श स्थल है।"
      },
      {
        "name": "Dipadih (दिपादिह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLMaaNE-uDQMxbl5dBnjE2ZRt6JPRuzIld-Q&s",
        "description": "Dipadih is an archaeological site in Balrampur district, known for ancient temples and ruins of the Kalachuri period. | दिपादिह बलरामपुर का एक पुरातात्विक स्थल है, जो कलचुरी काल के प्राचीन मंदिरों और खंडहरों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Pawai Waterfall (पवाई जलप्रपात)",
        "image": "https://staticimg.amarujala.com/assets/images/2023/12/24/100-fata-uucaii-sa-garata-ha-pavaii-jharana_1703415871.jpeg",
        "description": "Pawai Waterfall is a natural scenic waterfall surrounded by lush greenery, making it a popular picnic and tourist spot. | पवाई जलप्रपात प्राकृतिक सौंदर्य से भरपूर है और हरी-भरी वादियों से घिरा हुआ है। यह पिकनिक और पर्यटन के लिए प्रसिद्ध स्थल है।"
      },
      {
        "name": "Ramanujganj Van Vatika (रामानुजगंज वन वाटिका)",
        "image": "https://i.ytimg.com/vi/uenvw7nJWXs/maxresdefault.jpg",
        "description": "Ramanujganj Van Vatika is a nature park and eco-tourism spot developed for recreation and awareness about forest conservation. | रामानुजगंज वन वाटिका एक नेचर पार्क और इको-टूरिज्म स्थल है, जिसे वन संरक्षण के प्रति जागरूकता और मनोरंजन हेतु विकसित किया गया है।"
      }
    ],

    "Bastar (बस्तर)": [
      {
        "name": "Kailash Cave (कैलाश गुफा)",
        "image": "https://cdn.s3waas.gov.in/s324681928425f5a9133504de568f5f6df/uploads/bfi_thumb/2018082451-olw7p3eiymc61abwkp3bhh9vx8k7z01jvtsffvsouq.jpg",
        "description": "Kailash Cave is located inside the Kanger Valley National Park, famous for its stalactite and stalagmite formations. | कैलाश गुफा कांगेर घाटी राष्ट्रीय उद्यान में स्थित है और यह अपनी स्टैलेग्टाइट व स्टैलेग्माइट संरचनाओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Chitrakote Waterfall (चित्रकोट जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s324681928425f5a9133504de568f5f6df/uploads/bfi_thumb/2018061251-olw7ouxz940l4so6y3fod1eqkrpx1q3yunx24e58eq.jpg",
        "description": "Chitrakote Waterfall, also known as the 'Niagara of India', is situated on the Indravati River and is the widest waterfall in India. | चित्रकोट जलप्रपात, जिसे 'भारत का नियाग्रा' कहा जाता है, इंद्रावती नदी पर स्थित है और भारत का सबसे चौड़ा जलप्रपात है।"
      },
      {
        "name": "Narayanpal Temple (नारायणपाल मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s324681928425f5a9133504de568f5f6df/uploads/bfi_thumb/2018082423-olw7p3eiymc61abwkp3bhh9vx8k7z01jvtsffvsouq.jpg",
        "description": "Narayanpal Temple is an ancient temple of Lord Vishnu, known for its historical and cultural importance in Bastar. | नारायणपाल मंदिर भगवान विष्णु का प्राचीन मंदिर है, जो बस्तर की ऐतिहासिक और सांस्कृतिक धरोहर का हिस्सा है।"
      },
      {
        "name": "Tamda Ghumar Waterfall (टामडा घुमार जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s324681928425f5a9133504de568f5f6df/uploads/bfi_thumb/2018082411-olw7p3eiymc61abwkp3bhh9vx8k7z01jvtsffvsouq.jpg",
        "description": "Tamda Ghumar is a perennial waterfall near Chitrakote, surrounded by lush greenery and natural beauty. | टामडा घुमार जलप्रपात चित्रकोट के पास स्थित एक झरना है, जो हरियाली और प्राकृतिक सुंदरता से घिरा हुआ है।"
      },
      {
        "name": "Mendri Ghumar Waterfall (मेंद्री घुमार जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s324681928425f5a9133504de568f5f6df/uploads/bfi_thumb/2018082423-1-olw7p3eiymc61abwkp3bhh9vx8k7z01jvtsffvsouq.jpg",
        "description": "Mendri Ghumar is a seasonal waterfall, known for its misty flow and scenic surroundings. | मेंद्री घुमार एक मौसमी झरना है, जो अपनी धुंधली धार और प्राकृतिक दृश्यों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Chitradhara Waterfall (चित्रधारा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s324681928425f5a9133504de568f5f6df/uploads/bfi_thumb/2018082470-olw7p3eiymc61abwkp3bhh9vx8k7z01jvtsffvsouq.jpg",
        "description": "Chitradhara Waterfall is a scenic cascade, popular among tourists for its beauty and peaceful environment. | चित्रधारा जलप्रपात एक सुंदर जलप्रपात है, जो अपनी खूबसूरती और शांत वातावरण के कारण पर्यटकों में लोकप्रिय है।"
      },
      {
        "name": "Teerathgarh Waterfall (तीरथगढ़ जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s324681928425f5a9133504de568f5f6df/uploads/bfi_thumb/2018080874-olw7p1iuky9le2emvoa2chqyqgthjlu37khghbvh76.jpg",
        "description": "Teerathgarh Waterfall, located 35 km from Jagdalpur, is a major tourist attraction known for its stunning multi-tiered cascade. | तीरथगढ़ जलप्रपात, जो जगदलपुर से 35 किमी दूर स्थित है, अपनी बहु-स्तरीय धाराओं के कारण एक प्रमुख आकर्षण है।"
      },
      {
        "name": "Kotumsar Cave (कोटुमसर गुफा)",
        "image": "https://cdn.s3waas.gov.in/s324681928425f5a9133504de568f5f6df/uploads/bfi_thumb/2018061274-olw7ovvtfy1vgemtsluaxj6765la9f7p6skjlo3u8i.jpg",
        "description": "Kotumsar Cave is a limestone cave famous for its natural formations and unique ecosystem. | कोटुमसर गुफा चूना पत्थर से बनी है और यह अपनी प्राकृतिक संरचना और विशिष्ट पारिस्थितिकी तंत्र के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kanger Valley National Park (कांगेर घाटी राष्ट्रीय उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s324681928425f5a9133504de568f5f6df/uploads/bfi_thumb/2018082595-olw7p3eiymc61abwkp3bhh9vx8k7z01jvtsffvsouq.jpg",
        "description": "Kanger Valley National Park is one of the most beautiful national parks of India, rich in biodiversity, caves, waterfalls, and dense forests. | कांगेर घाटी राष्ट्रीय उद्यान भारत के सबसे सुंदर राष्ट्रीय उद्यानों में से एक है, जो जैव विविधता, गुफाओं, झरनों और घने जंगलों से भरपूर है।"
      }
    ],

    "Bemetara (बेमेतरा)": [
      {
        "name": "Maa Bhadrakali Temple (मां भद्रकाली मंदिर), Bemetara",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/06/maa-bhadrakali-temple-bemetara.jpg",
        "description": "The Maa Bhadrakali Temple is one of the oldest temples of Bemetara, considered the city's Kuldevi temple. It is believed that Goddess Bhadrakali appeared in a devotee’s dream and the temple was constructed thereafter. | मां भद्रकाली मंदिर बेमेतरा के सबसे प्राचीन मंदिरों में से एक है और इसे नगर की कुलदेवी माना जाता है। मान्यता है कि देवी ने एक भक्त के स्वप्न में प्रकट होकर मंदिर निर्माण का आदेश दिया।"
      },
      {
        "name": "Sita Devi Temple (सीता देवी मंदिर), Deorbija",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/06/sita-devi-temple-deorbija.jpg",
        "description": "An ancient temple built by the Kalchuri kings in the 12th century, dedicated to Goddess Sita. It follows Sapta Ratha architecture with Nagara style spire. | यह मंदिर कलचुरी राजाओं द्वारा 12वीं शताब्दी में बनवाया गया था और माता सीता को समर्पित है। इसका निर्माण सप्त रथ शैली में हुआ है और शिखर नागर शैली का है।"
      },
      {
        "name": "Bhoramdeo Temple (भोरमदेव मंदिर)",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/06/bhoramdeo-temple.jpg",
        "description": "Known as the 'Khajuraho of Chhattisgarh', this Shiva temple showcases erotic sculptures and dates back to the Kalchuri period. | 'छत्तीसगढ़ का खजुराहो' कहलाने वाला यह शिव मंदिर कलचुरी काल का है और इसकी दीवारों पर अनेक शृंगारिक मूर्तियाँ उकेरी गई हैं।"
      },
      {
        "name": "Mahadev Temple (महादेव मंदिर), Deobaloda",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/06/mahadev-temple-deobaloda-scaled.jpg",
        "description": "A 13th-century Shiva temple belonging to the Kalchuri period, now protected by the Archaeological Survey of India. Famous for its legends and carvings. | यह 13वीं शताब्दी का शिव मंदिर कलचुरी काल का है और वर्तमान में भारतीय पुरातत्व विभाग द्वारा संरक्षित है। यह अपने शिल्प और लोककथाओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Urja Park (ऊर्जा पार्क), Raipur",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/06/urja-park-raipur.jpg",
        "description": "A theme park in Raipur that promotes solar energy. It has boating and fun activities for families, and entry is free. | यह रायपुर का एक थीम पार्क है जो सौर ऊर्जा को बढ़ावा देता है। यहाँ बोटिंग और परिवार के लिए मनोरंजन की सुविधाएँ हैं, और प्रवेश निःशुल्क है।"
      },
      {
        "name": "Shadani Darbar (शदानी दरबार), Raipur",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/06/shadani-darbar-raipur.jpg",
        "description": "One of the biggest pilgrimage centres in Raipur, spread over 12 acres, with religious statues, musical fountains and sacred symbols. | रायपुर का यह 12 एकड़ में फैला धार्मिक स्थल है, जहाँ मूर्तियाँ, संगीतमय फव्वारे और पवित्र प्रतीक मौजूद हैं।"
      },
      {
        "name": "Achanakmar Wildlife Sanctuary (अचनाकमार वन्यजीव अभयारण्य), Bilaspur",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/06/achanakmar-wildlife-sanctuary-bilaspur.jpg",
        "description": "A wildlife sanctuary near Bemetara, home to tigers, leopards, sloth bears, reptiles, and rare birds. Tourists can explore it with their own vehicles. | बेमेतरा के पास स्थित यह अभयारण्य बाघ, तेंदुआ, भालू, सरीसृप और दुर्लभ पक्षियों का घर है। यहाँ पर्यटक अपनी गाड़ी से भी भ्रमण कर सकते हैं।"
      }
    ],

    "Raipur (रायपुर)": [
      {
        "name": "Mahant Ghasidas Memorial Museum (महंत घासीदास स्मारक संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7EMMLnYG3YDYvklUazdasIsMxdaMvnk5AQw&s",
        "description": "One of the oldest museums in Chhattisgarh, established in 1875 by King Mahant Ghasidas. It has two floors and five galleries displaying artifacts of archaeology, anthropology, and natural history. | छत्तीसगढ़ के सबसे पुराने संग्रहालयों में से एक, जिसे 1875 में राजा महंत घासीदास ने स्थापित किया था। इसमें दो मंजिलें और पाँच गैलरियाँ हैं, जहाँ पुरातत्व, मानव विज्ञान और प्राकृतिक इतिहास की कलाकृतियाँ प्रदर्शित हैं।"
      },
      {
        "name": "Purkhauti Muktangan (पुरखौती मुक्तांगन)",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/04/purkhauti-muktangan.jpg",
        "description": "A cultural open-air museum showcasing the traditional art, culture, and tribal life of Chhattisgarh. | छत्तीसगढ़ की पारंपरिक कला, संस्कृति और आदिवासी जीवन को प्रदर्शित करने वाला एक खुला सांस्कृतिक संग्रहालय।"
      },
      {
        "name": "Banjari Mata Temple (बंजारी माता मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWekHFmhvH6WwmMIE6aZ5LJzE8FJJ8iYUcjg&s",
        "description": "A revered temple of Goddess Banjari Mata, known as the protector of travelers. | बंजारी माता को समर्पित एक पूजनीय मंदिर, जिन्हें यात्रियों की रक्षक माना जाता है।"
      },
      {
        "name": "Nandanvan Jungle Safari (नंदनवन जंगल सफारी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/9d/de/67/nandan-van-zoo-safari.jpg?w=1200&h=-1&s=1",
        "description": "A sprawling zoo-cum-safari park offering a close view of wildlife, including tigers, lions, bears, and various birds. | एक विशाल चिड़ियाघर और सफारी पार्क जहाँ बाघ, शेर, भालू और विभिन्न पक्षियों सहित वन्यजीवों को करीब से देखा जा सकता है।"
      },
      {
        "name": "Swami Vivekanand Sarovar (स्वामी विवेकानंद सरोवर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Swami_Vivekanand_Sarovar_%28Budha_Talab%29%2C_Raipur.jpg/1200px-Swami_Vivekanand_Sarovar_%28Budha_Talab%29%2C_Raipur.jpg",
        "description": "Also known as Budha Talab, it is one of the largest lakes in Raipur with a huge statue of Swami Vivekananda in the center. | बूढ़ा तालाब के नाम से भी जाना जाने वाला यह रायपुर की सबसे बड़ी झीलों में से एक है, जिसके केंद्र में स्वामी विवेकानंद की एक विशाल प्रतिमा है।"
      },
      {
        "name": "Urja Park (ऊर्जा पार्क)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/e0/c7/14/urja-park.jpg?w=1200&h=-1&s=1",
        "description": "A theme park that promotes solar energy. It has boating and fun activities for families, and entry is free. | यह एक थीम पार्क है जो सौर ऊर्जा को बढ़ावा देता है। यहाँ बोटिंग और परिवार के लिए मनोरंजन की सुविधाएँ हैं, और प्रवेश निःशुल्क है।"
      },
      {
        "name": "Shadani Darbar (शदानी दरबार)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/b5/ca/98/shadani-darbar.jpg?w=1200&h=1200&s=1",
        "description": "One of the biggest pilgrimage centres in Raipur, spread over 12 acres, with religious statues, musical fountains and sacred symbols. | यह 12 एकड़ में फैला धार्मिक स्थल है, जहाँ मूर्तियाँ, संगीतमय फव्वारे और पवित्र प्रतीक मौजूद हैं।"
      },
      {
        "name": "Vivekananda Ashram (विवेकानंद आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s30584ce565c824b7b7f50282d9a19945b/uploads/2017/06/2018060784-150x150.jpg",
        "description": "A spiritual center associated with the teachings and philosophy of Swami Vivekananda. | स्वामी विवेकानंद की शिक्षाओं और दर्शन से जुड़ा एक आध्यात्मिक केंद्र।"
      },
      {
        "name": "Nagar Clock (नागर क्लॉक टॉवर)",
        "image": "https://cdn.s3waas.gov.in/s30584ce565c824b7b7f50282d9a19945b/uploads/2017/06/2018060645-150x150.jpg",
        "description": "A historic landmark in Raipur, representing the city's heritage. | रायपुर का एक ऐतिहासिक धरोहर स्थल, जो शहर की विरासत को दर्शाता है।"
      },
      {
        "name": "Solar Energy Park (सोलर एनर्जी पार्क)",
        "image": "https://cdn.s3waas.gov.in/s30584ce565c824b7b7f50282d9a19945b/uploads/2017/06/2018060779-150x150.jpg",
        "description": "A park dedicated to promoting renewable solar energy with educational exhibits. | सौर ऊर्जा को बढ़ावा देने वाला पार्क जहाँ शैक्षणिक प्रदर्शनी लगाई गई हैं।"
      },
      {
        "name": "Dudhadhari Temple (दूधाधारी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30584ce565c824b7b7f50282d9a19945b/uploads/2017/06/2018060731-150x150.jpg",
        "description": "An ancient temple of Lord Rama, famous for its murals and religious importance. | भगवान राम को समर्पित प्राचीन मंदिर, जो अपनी भित्तिचित्रों और धार्मिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Mahamaya Temple (माँ महामाया मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZI7wpJk_wRRv4caKeMSgTP6iD3i7SrO_iMg&s",
        "description": "A revered temple of Goddess Mahamaya, considered one of the prominent Shaktipeeths of the region. | माँ महामाया का प्रसिद्ध मंदिर, जिसे क्षेत्र का प्रमुख शक्तिपीठ माना जाता है।"
      },
      {
        "name": "Kankali Talab (कंकाली तालाब)",
        "image": "https://cdn.s3waas.gov.in/s30584ce565c824b7b7f50282d9a19945b/uploads/2017/06/2018060742-150x150.jpg",
        "description": "A scenic pond with historical and religious significance, popular among locals. | ऐतिहासिक और धार्मिक महत्व वाला तालाब, जो स्थानीय लोगों के बीच लोकप्रिय है।"
      },
      {
        "name": "Hatkeshwar Mahadev Temple (हटकेश्वर महादेव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30584ce565c824b7b7f50282d9a19945b/uploads/2017/06/2018060790-150x150.jpg",
        "description": "A famous Shiva temple located in the heart of Raipur city. | रायपुर शहर के मध्य में स्थित प्रसिद्ध शिव मंदिर।"
      }
    ],

    "Bijapur (बीजापुर)": [
      {
        "name": "Bhairamgarh Wildlife Sanctuary (भैरमगढ़ वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD3DP9rWNQCYcEtb493OjHQXo_85yhQwYSJw&s",
        "description": "Famous for wild buffaloes, tigers, leopards, nilgai, and migratory birds, this sanctuary is spread over 138 sq km in Bijapur district. | जंगली भैंसे, बाघ, तेंदुए, नीलगाय और प्रवासी पक्षियों के लिए प्रसिद्ध, यह अभयारण्य बीजापुर जिले में 138 वर्ग किमी क्षेत्र में फैला है।"
      },
      {
        "name": "Mendri Ghumar Waterfall (मेंद्री घुमर जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpb19qiQJ8-5N7_Lggx1j6vU9QCfszAws0FQ&s",
        "description": "A seasonal waterfall near Bailadila hills, surrounded by dense forest. | बैलाडिला पहाड़ियों के पास स्थित यह एक मौसमी जलप्रपात है, जिसके चारों ओर घना जंगल है।"
      },
      {
        "name": "Bhairamgarh Fort (भैरमगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/55/55/2b/bhainsrorgarh-fort-bhainsrorga.jpg?w=1000&h=1000&s=1",
        "description": "An old fort in Bijapur known for historical importance, now in ruins but still attracts tourists. | बीजापुर का एक पुराना किला, जो ऐतिहासिक महत्व के लिए जाना जाता है। वर्तमान में खंडहर है लेकिन पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Indravati River (इंद्रावती नदी तट)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/9/9c/Chitrakot_waterfalls0054.jpg",
        "description": "The lifeline of Bastar, flowing through Bijapur. Popular for boating and scenic views. | बस्तर की जीवनरेखा, जो बीजापुर से होकर बहती है। यहाँ नौकायन और प्राकृतिक दृश्य लोकप्रिय हैं।"
      },
      {
        "name": "Tular Caves (तुलार गुफाएँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR40YpLrKYwTiSLAapOAH_2JcRAbt9Wtef3Rw&s",
        "description": "Ancient caves with tribal legends, located in dense forest areas. | घने जंगलों में स्थित प्राचीन गुफाएँ, जिनसे कई जनजातीय कथाएँ जुड़ी हैं।"
      },
      {
        "name": "Ganga Munda Lake (गंगा मुंडा तालाब)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2YO8Uh59QQESWCd4-5n9Wue26CxZjd2PnPw&s",
        "description": "A natural lake near Bijapur town, popular among locals for picnic and relaxation. | बीजापुर नगर के पास स्थित एक प्राकृतिक तालाब, जो स्थानीय लोगों के पिकनिक और विश्राम के लिए लोकप्रिय है।"
      },
      {
        "name": "Peerless beauty of Teemed (तीमेड की अनुपम सुंदरता)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa6LQxAQrgGZ5bB6Ahine18hY3Yc2_xPcFBA&s",
        "description": "The Indravati river forms the border between Chhattisgarh and Maharashtra, near Teemed village adjacent to Bhopalpatnam. | इंद्रावती नदी छत्तीसगढ़ और महाराष्ट्र की सीमा बनाती है, जो भीमापटनम से लगे तीमेड गाँव के पास है।"
      },
      {
        "name": "Lankapalli (लंका पल्लि)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2021011899-p1jhf09yyag4trmrhb7981rs5xrjvn5na1512wm4eq.jpg",
        "description": "Located 15 km from Awapalli in Usur block, known for scenic surroundings. | उसूर ब्लॉक के मुख्यालय आवापल्ली से 15 किमी दूर स्थित यह स्थान प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Dobe (डोबे)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2021012012-p1mzrskoj9e5rk9lrjrfo6futtdlslisofk4sw3102.jpeg",
        "description": "The adventurous route from Usur to Neelam Sarai makes Dobe a perfect destination for thrill-seekers. | उसूर से नीलम सरई तक का रोमांचक रास्ता डोबे को साहसिक पर्यटकों के लिए खास बनाता है।"
      },
      {
        "name": "Nambi (नम्बी)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2021011832-p1jpaqu3ywv3g9hjngi1dy5vk59aegkqmeij8tww5u.jpeg",
        "description": "A village located 3 km east of Usur, surrounded by dense forest and small waterfalls. | उसूर गाँव से 3 किमी पूर्व स्थित यह गाँव घने जंगल और छोटे झरनों से घिरा है।"
      },
      {
        "name": "Neelam Sarai (नीलम सरई)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2021011814-p1jjkw6j932gukhxoh7dbw7s6bvgorcybj6fnb4qtu.jpeg",
        "description": "A popular tourist spot in Usur block with a beautiful water stream. | उसूर ब्लॉक में स्थित यह जलधारा अब बीजापुर जिले का प्रमुख पर्यटन स्थल बन चुका है।"
      },
      {
        "name": "Mattimarka (मट्टीमरका)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2021011836-p1jgdxj5djoyvhhjza90vel8msic9fysuirjlzl5ua.jpeg",
        "description": "About 20 km from Bhopalpatnam, known for its natural beauty. | भोपालपट्टनम से लगभग 20 किमी दूर स्थित यह गाँव प्राकृतिक सुंदरता के लिए लोकप्रिय है।"
      },
      {
        "name": "Inchampally Dam (इंचमपल्ली बांध)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2021011853-p1jinlqb7bhvnqur2l61isn2s1yh2o76qrecrihp76.jpg",
        "description": "A historic dam project on the Godavari river, bordering Chhattisgarh and Telangana. | गोदावरी नदी पर बना यह ऐतिहासिक बांध परियोजना छत्तीसगढ़ और तेलंगाना की सीमा पर स्थित है।"
      },
      {
        "name": "Chiktraj (चिकत्राज)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2021011890-p1jpibfb0v88z6hlfqbuh1djtvxqeomwbvpcf2oq1e.jpeg",
        "description": "The deity of the residents of Bijapur, having religious and cultural significance. | बीजापुर नगरवासियों की आराध्य देवी-देवता, जिनका धार्मिक और सांस्कृतिक महत्व है।"
      },
      {
        "name": "Mahadev-Ghat (महादेव घाट)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2021011571-p1ecxjylvqss12powi8dlzvunwn55l1q5w1tnryok2.jpeg",
        "description": "A scenic valley route from Bijapur to Bhopalpatnam, with a Shiva temple located in the valley. | बीजापुर से भोपालपट्टनम तक की सुंदर घाटी का मार्ग, जहाँ शिव मंदिर स्थित है।"
      },
      {
        "name": "Indravati National Park (इंद्रावती राष्ट्रीय उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2018051693-olwcqrnjvv1a02ftq85gemv58945oz9w710wn6fe8i.jpg",
        "description": "A protected area in Bijapur, home to wild buffaloes, tigers, leopards and diverse flora & fauna. | बीजापुर जिले में स्थित यह राष्ट्रीय उद्यान जंगली भैंसे, बाघ, तेंदुए और विविध वनस्पति व जीवों का घर है।"
      },
      {
        "name": "Sakal Narayan Cave and Temple (सकल नारायण गुफा एवं मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2018060646-olwcr043ldcuwk3jctt3j2qakpygm97h86w9yo2uoi.jpg",
        "description": "Located 50 km from Bijapur in Sakalnarayan hills. After a 1 km trek through forest terrain, a cave and temple dedicated to Lord Vishnu is found. | बीजापुर से 50 किमी दूर सकल नारायण पहाड़ियों में स्थित यह गुफा और मंदिर भगवान विष्णु को समर्पित है। जंगल और पहाड़ी रास्ता पार करने के बाद गुफा तक पहुँचा जा सकता है।"
      },
      {
        "name": "Bhadrakali Temple (भद्रकाली मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2018060656-olwcr11xs7e586267c7q3khr63tttyb7kbjrfy1gia.jpg",
        "description": "Situated in Bhadrakali village, 20 km from Bhopalpatnam, this temple is dedicated to Goddess Kali and holds great local religious faith. | भोपालपट्टनम से 20 किमी दूर भद्रकाली गाँव में स्थित यह मंदिर देवी काली को समर्पित है और स्थानीय धार्मिक आस्था का केंद्र है।"
      },
      {
        "name": "Bhairamdev Temple (भैरमदेव मंदिर, प्राचीन मूर्ति)",
        "image": "https://cdn.s3waas.gov.in/s3d395771085aab05244a4fb8fd91bf4ee/uploads/bfi_thumb/2018060692-olwcr11xs7e586267c7q3khr63tttyb7kbjrfy1gia.jpg",
        "description": "One of the important temples of Bijapur district, famous for its ancient idol of Lord Shiva, needing more exploration. | बीजापुर जिले का एक प्रमुख मंदिर, जो भगवान शिव की प्राचीन मूर्ति के लिए प्रसिद्ध है और जिसे और अध्ययन की आवश्यकता है।"
      }
    ],

    "Bilaspur (बिलासपुर)": [
      {
        "name": "Rudrashiv Tala (रुद्रशिव ताला)",
        "image": "https://cdn.s3waas.gov.in/s3d82c8d1619ad8176d665453cfb2e55f0/uploads/bfi_thumb/2018061821-olwd0hbii8bxz0bx0fao66mm7l8p8du1j3pj640xxu.jpg",
        "description": "It takes you back to the past with timeless sculptures. A site blending history and natural beauty. | यह स्थान प्राचीन मूर्तियों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है, जो अतीत की झलक कराता है।"
      },
      {
        "name": "Lutra Sharif Dargah (लूतरा शरीफ दरगाह)",
        "image": "https://cdn.s3waas.gov.in/s3d82c8d1619ad8176d665453cfb2e55f0/uploads/bfi_thumb/2018060813-olwd0ffu4k9dbsenbehf173p0thyszmkuuek7k3qaa.jpg",
        "description": "The Dargah of Baba Sayed Insan Ali Shah is one of the biggest pilgrim attractions in Chhattisgarh, drawing devotees from far-off places. | बाबा सैयद इंसान अली शाह की दरगाह छत्तीसगढ़ के प्रमुख तीर्थ स्थलों में से एक है, जहाँ दूर-दराज़ से श्रद्धालु आते हैं।"
      },
      {
        "name": "Dedneshwari Devi Temple, Malhar (देदनेश्वरी देवी मंदिर, मल्हार)",
        "image": "https://cdn.s3waas.gov.in/s3d82c8d1619ad8176d665453cfb2e55f0/uploads/bfi_thumb/2018052329-e1527077132521-olwd08uysq0d2io7dtn11qrgv4eeb3wghxu5umdhhu.jpg",
        "description": "Located in Malhar city, about 14 km from Bilaspur, this temple is an important historic and religious site. | बिलासपुर से लगभग 14 किमी दूर मल्हार नगर में स्थित यह मंदिर ऐतिहासिक और धार्मिक महत्व रखता है।"
      },
      {
        "name": "Mahamaya Devi Temple, Ratanpur (माँ महामाया देवी मंदिर, रतनपुर)",
        "image": "https://cdn.s3waas.gov.in/s3d82c8d1619ad8176d665453cfb2e55f0/uploads/bfi_thumb/2018051878-e1526630113766-olwczrxvdpd79jcs4mbqsv1666psgk1afm3f7n2klu.jpg",
        "description": "Located 25 km from Bilaspur on Korba road, Ratanpur is an ancient holy city famous for the Mahamaya Devi Temple. | बिलासपुर से 25 किमी दूर रतनपुर नगर में स्थित माँ महामाया मंदिर एक प्राचीन और पौराणिक धार्मिक स्थल है।"
      },
      {
        "name": "Kanan Pendari Zoo (कनन पेंडारी चिड़ियाघर)",
        "image": "https://cdn.s3waas.gov.in/s3d82c8d1619ad8176d665453cfb2e55f0/uploads/bfi_thumb/2018041834-olwczr016vbwxxe5a3x48d9pksuf8uxk3hfxqd3ys2.jpg",
        "description": "A small zoo located near Sakri, about 10 km from Bilaspur, popular among families for recreation. | सकरी के पास, बिलासपुर से 10 किमी दूर स्थित यह छोटा चिड़ियाघर परिवारों के मनोरंजन और पिकनिक के लिए प्रसिद्ध है।"
      }
    ],

    "Dantewada (दंतेवाड़ा)": [
      {
        "name": "Samlur Shiva Temple (सामलूर शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3556f391937dfd4398cbac35e050a2177/uploads/bfi_thumb/2018061160-olw8o04r3ilta68y7c6zfqgjhlpynrzreajhse543m.jpg",
        "description": "Located about 9 km from Dantewada HQ, this ancient Shiva temple is almost intact and holds great religious significance. | दंतेवाड़ा मुख्यालय से लगभग 9 किमी दूर स्थित यह प्राचीन शिव मंदिर आज भी लगभग सुरक्षित है और धार्मिक महत्व रखता है।"
      },
      {
        "name": "Shiv Temple, Bacheli (बचेली शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3556f391937dfd4398cbac35e050a2177/uploads/bfi_thumb/2018061054-olw8ny92puj8myboibdqaqxmatz88dsaq18itu7wg2.jpg",
        "description": "Situated 28 km from Dantewada, Bacheli is known for its finest iron ore mines and also houses an ancient Shiv temple. | दंतेवाड़ा से 28 किमी दूर बचेली लौह अयस्क खदानों के लिए प्रसिद्ध है और यहाँ एक प्राचीन शिव मंदिर भी स्थित है।"
      },
      {
        "name": "Vijayaditya Temple, Barsur (विजयादित्य मंदिर, बारसूर)",
        "image": "https://cdn.s3waas.gov.in/s3556f391937dfd4398cbac35e050a2177/uploads/bfi_thumb/2018061044-olw8ny92puj8myboibdqaqxmatz88dsaq18itu7wg2.jpg",
        "description": "Barsur, once the capital of Nagavanshi ruler Banasur, is an archaeological treasure famous for ancient temples and sculptures. | बारसूर, जो नागवंशी शासक बाणासुर की राजधानी रहा है, प्राचीन मंदिरों और मूर्तिकला के लिए प्रसिद्ध पुरातात्विक स्थल है।"
      },
      {
        "name": "Fulpad Waterfall (फुलपाड़ जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3556f391937dfd4398cbac35e050a2177/uploads/bfi_thumb/2018061161-olw8o04r3ilta68y7c6zfqgjhlpynrzreajhse543m.jpg",
        "description": "Located in lush green hilly terrain, Fulpad waterfall is an adventure spot for trekking and nature lovers. | हरे-भरे पहाड़ी इलाके में स्थित फुलपाड़ जलप्रपात ट्रैकिंग और प्रकृति प्रेमियों के लिए आकर्षक स्थान है।"
      },
      {
        "name": "Dholkal Ganesh Idol (ढोलकल गणेश प्रतिमा)",
        "image": "https://cdn.s3waas.gov.in/s3556f391937dfd4398cbac35e050a2177/uploads/bfi_thumb/2018061095-olw8ny92puj8myboibdqaqxmatz88dsaq18itu7wg2.png",
        "description": "Situated at 3000 feet height in the Bailadila mountain range, this 3-feet high idol of Lord Ganesh is a stunning attraction. | बैलाडीला पर्वतमाला में समुद्र तल से 3000 फीट ऊँचाई पर स्थित भगवान गणेश की 3 फीट ऊँची प्रतिमा आकर्षण का केंद्र है।"
      },
      {
        "name": "Danteshwari Temple (दंतेश्वरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3556f391937dfd4398cbac35e050a2177/uploads/bfi_thumb/2018061057-olw8ny92puj8myboibdqaqxmatz88dsaq18itu7wg2.jpg",
        "description": "One of the 52 Shakti Peethas, this temple in Dantewada is dedicated to Goddess Danteshwari, the most revered deity of Bastar. | 52 शक्तिपीठों में से एक, यह मंदिर बस्तर की सबसे पूज्य देवी माँ दंतेश्वरी को समर्पित है।"
      }
    ],

    "Dhamtari (धमतरी)": [
      {
        "name": "Gangrel Dam (गंगरेल बांध)",
        "image": "https://cdn.s3waas.gov.in/s3b5dc4e5d9b495d0196f61d45b26ef33e/uploads/bfi_thumb/2018042841-olwbu1vsg8m28uqk9jombc8afumgac2obbyd5epxwg.jpg",
        "description": "Known as the lifeline of Chhattisgarh, Gangrel Dam is a popular tourist spot offering scenic views, boating, and water sports. | छत्तीसगढ़ की जीवन रेखा कहे जाने वाला गंगरेल बांध नौकायन और जलक्रीड़ा के लिए प्रसिद्ध पर्यटन स्थल है।"
      },
      {
        "name": "Tourist Cottage, Gangrel (नया टूरिस्ट कॉटेज, गंगरेल)",
        "image": "https://cdn.s3waas.gov.in/s3b5dc4e5d9b495d0196f61d45b26ef33e/uploads/bfi_thumb/2018052867-olwbsvl1wp05qeg04jeep4wjpiexnyer5ilijygnog.jpg",
        "description": "Beautiful cottages and resorts near Gangrel Dam for tourists to stay and enjoy nature. | गंगरेल बांध के पास बने आकर्षक कॉटेज और रिजॉर्ट, पर्यटकों के ठहरने और प्राकृतिक सौंदर्य का आनंद लेने हेतु।"
      },
      {
        "name": "Gangrel Sunset View (गंगरेल सूर्यास्त दृश्य)",
        "image": "https://cdn.s3waas.gov.in/s3b5dc4e5d9b495d0196f61d45b26ef33e/uploads/bfi_thumb/2018052830-olwbsun7puyveshda0zs4n5344jkg9b0tdy12oi1uo.jpg",
        "description": "Mesmerizing sunset view at Gangrel Dam making it a perfect evening spot. | गंगरेल बांध का मनमोहक सूर्यास्त, शाम बिताने के लिए आदर्श स्थान।"
      },
      {
        "name": "Murumsilli Dam (मुरूमसिली बांध)",
        "image": "https://cdn.s3waas.gov.in/s3b5dc4e5d9b495d0196f61d45b26ef33e/uploads/bfi_thumb/2018042880-1024x768-olwbu1vsg8m28uqk9jombc8afumgac2obbyd5epxwg.jpg",
        "description": "Asia’s first mud dam located near Dhamtari, a peaceful place for nature lovers. | एशिया का पहला मिट्टी का बांध, धमतरी के पास स्थित यह स्थल प्रकृति प्रेमियों के लिए खास है।"
      },
      {
        "name": "Rudri Barrage (रूद्री बैराज)",
        "image": "https://cdn.s3waas.gov.in/s3b5dc4e5d9b495d0196f61d45b26ef33e/uploads/bfi_thumb/2018052823-olwbsun7puyveshda0zs4n5344jkg9b0tdy12oi1uo.jpg",
        "description": "A scenic barrage built on the Mahanadi River, known for its calm surroundings. | महानदी नदी पर बना रमणीय रूद्री बैराज, शांति और सुकून का स्थान।"
      },
      {
        "name": "Narhara Waterfall (नरहरा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3b5dc4e5d9b495d0196f61d45b26ef33e/uploads/bfi_thumb/2018052867-1-olwbsvl1wp05qeg04jeep4wjpiexnyer5ilijygnog.jpg",
        "description": "A hidden gem in Dhamtari, Narhara Waterfall attracts trekkers and adventure lovers. | धमतरी का छिपा हुआ रत्न, नरहरा जलप्रपात साहसिक पर्यटकों और ट्रेकिंग प्रेमियों को आकर्षित करता है।"
      },
      {
        "name": "New Garden, Gangrel Dam (नया गार्डन, गंगरेल बांध)",
        "image": "https://cdn.s3waas.gov.in/s3b5dc4e5d9b495d0196f61d45b26ef33e/uploads/bfi_thumb/2020031383-1024x461-omi2e6i6104s1z5dtlr4ap8u5vse9mgymf5w9xmi1s.jpg",
        "description": "A newly developed garden near Gangrel Dam, perfect for family picnics. | गंगरेल बांध के पास विकसित नया गार्डन, परिवारिक पिकनिक के लिए उपयुक्त।"
      }
    ],

    "Durg (दुर्ग)": [
      {
        "name": "Jagannath Mandir (जगन्नाथ मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/a3/77/9e/jagannath-temple-sector.jpg?w=1200&h=800&s=1",
        "description": "Temple dedicated to Lord Jagannath, Balabhadra and Subhadra, famous for cultural and religious significance. | भगवान जगन्नाथ, बलभद्र और सुभद्रा को समर्पित यह मंदिर सांस्कृतिक और धार्मिक महत्व रखता है।"
      },
      {
        "name": "Tandula Dam (तांदुला बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/8d/23/fa/12-september-2014.jpg?w=1200&h=800&s=1",
        "description": "Located near Balod, this dam is a major source of water supply and a scenic picnic spot. | बालोद के पास स्थित यह बांध प्रमुख जल स्रोत होने के साथ-साथ पिकनिक स्थल भी है।"
      },
      {
        "name": "Maitri Bagh Zoo (मैत्री बाग चिड़ियाघर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/62/08/ed/maitribagh-bhilai-cgtourism.jpg?w=1200&h=800&s=1",
        "description": "A zoo and garden built as a symbol of Indo-Russian friendship, popular among families. | भारत-रूस मैत्री के प्रतीक स्वरूप बनाया गया यह चिड़ियाघर और गार्डन परिवारों के बीच लोकप्रिय है।"
      },
      {
        "name": "Siyadevi Temple (सीयादेवी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/9e/9f/7b/photo0jpg.jpg?w=1200&h=-1&s=1",
        "description": "Temple dedicated to Goddess Sita, located amidst scenic natural surroundings. | सीता माता को समर्पित यह मंदिर प्राकृतिक सुंदरता के बीच स्थित है।"
      },
      {
        "name": "Shiv Mandir (शिव मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/18/51/3f/chandkhuri-power-plant.jpg?w=1200&h=800&s=1",
        "description": "An ancient temple dedicated to Lord Shiva, known for religious importance. | भगवान शिव को समर्पित प्राचीन मंदिर, धार्मिक दृष्टि से महत्वपूर्ण।"
      },
      {
        "name": "Pasharwanath Tirth (पार्श्वनाथ तीर्थ, नागपुरा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/b0/72/5b/pasharwanath-tirth.jpg?w=300&h=200&s=1",
        "description": "A Jain pilgrimage site in Nagpura, attracting devotees from across India. | नागपुरा स्थित यह जैन तीर्थस्थल पूरे भारत से श्रद्धालुओं को आकर्षित करता है।"
      },
      {
        "name": "Chandi Mandir (चंडी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9JYnNnV1oeQQ5oF-eLCRAuLbMwNwCMKZzPm5VCDLl_fuyO_RVR4q_y88zuIxEguWRvuQ&usqp=CAU",
        "description": "A holy shrine dedicated to Goddess Chandi, popular for local religious gatherings. | देवी चंडी को समर्पित यह पवित्र स्थल स्थानीय धार्मिक आयोजनों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Arjuna's Rath (अर्जुन का रथ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/e3/5c/08/arjuna-s-rath.jpg?w=1200&h=800&s=1",
        "description": "A monument depicting Lord Krishna giving teachings to Arjuna during Mahabharata. | महाभारत काल का दृश्य, जिसमें भगवान कृष्ण अर्जुन को उपदेश देते हुए दर्शाए गए हैं।"
      },
      {
        "name": "Karkabhat Megalithic Site (कर्काभाठ मेगालिथिक स्थल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/de/5c/46/karkabhat-megalithic.jpg?w=700&h=-1&s=1",
        "description": "An archaeological site known for megalithic structures and ancient burial grounds. | पुरातात्विक दृष्टि से महत्वपूर्ण स्थल, जो प्राचीन समाधि स्थलों और मेगालिथिक संरचनाओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Sita Maiya Temple (सीता मइया मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/b0/8d/e4/sita-maiya-temple.jpg?w=300&h=200&s=1",
        "description": "A temple dedicated to Goddess Sita, located in Durg district. | देवी सीता को समर्पित यह मंदिर दुर्ग जिले में स्थित है।"
      },
      {
        "name": "Ganga Maiya Temple (गंगा मइया मंदिर, झलमला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/b0/95/89/ganga-maiya-temple.jpg?w=300&h=200&s=1",
        "description": "A famous temple located in Jhalmala village, dedicated to Goddess Ganga. | झलमला गाँव में स्थित यह प्रसिद्ध मंदिर देवी गंगा को समर्पित है।"
      },
      {
        "name": "Uwasaggaharam Parshwa Teerth (उवासग्गहरं पार्श्व तीर्थ, नागपुरा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/b0/93/d4/uwasaggaharam-parshwa.jpg?w=300&h=-1&s=1",
        "description": "One of the most important Jain pilgrimage sites in Nagpura, known for its peaceful and spiritual atmosphere. | नागपुरा का प्रमुख जैन तीर्थस्थल, जो शांति और आध्यात्मिक वातावरण के लिए प्रसिद्ध है।"
      }
    ],

    "Gariaband (गरियाबंद)": [
      {
        "name": "Udanti Sitanadi Tiger Reserve (उदंती-सीतानदी बाघ अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlOjpcXfINfCz6JP2nCGeW810P9yR7T1GpWg&s",
        "description": "Declared as a Tiger Reserve, this sanctuary is home to the endangered wild buffalo and rich biodiversity of flora & fauna. | यह अभयारण्य बाघ आरक्षित क्षेत्र के रूप में घोषित है और संकटग्रस्त जंगली भैंसे सहित समृद्ध जैव विविधता का घर है।"
      },
      {
        "name": "Sikaser Dam (सिकासेर बांध)",
        "image": "https://cdn.s3waas.gov.in/s3f033ab37c30201f73f142449d037028d/uploads/bfi_thumb/2018052646-olwdkxb5gwsqjx9d3tb0r37wohp3gucydz1lnbtgxu.jpg",
        "description": "Located 50 km from Gariaband headquarters, this dam on the Pairi river is a year-round accessible picnic spot. | गरियाबंद मुख्यालय से 50 किमी दूर पैरी नदी पर बना यह बांध पूरे वर्ष सुगम पिकनिक स्थल है।"
      },
      {
        "name": "Bhooteshwarnath Temple (भूतश्वरनाथ मंदिर, शिवलिंग)",
        "image": "https://cdn.s3waas.gov.in/s3f033ab37c30201f73f142449d037028d/uploads/bfi_thumb/2018052627-1-olwdkxb5gwsqjx9d3tb0r37wohp3gucydz1lnbtgxu.jpg",
        "description": "Situated in Marauda village, 3 km from Gariaband, famous for the world's largest natural Shivling. | गरियाबंद से 3 किमी दूर मरौदा गाँव में स्थित यह मंदिर विश्व के सबसे बड़े प्राकृतिक शिवलिंग के लिए प्रसिद्ध है।"
      },
      {
        "name": "Ghatarani Temple & Waterfall (घटारानी मंदिर एवं जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3f033ab37c30201f73f142449d037028d/uploads/bfi_thumb/2018052656-olwdky8znqu0vj7zybpnbkzd9vkgojgoq3p34ls2rm.jpg",
        "description": "A large waterfall located 25 km from Jatmai Temple, popular during monsoon and Navratri festival. | जतमाई मंदिर से 25 किमी दूर स्थित यह झरना वर्षा ऋतु और नवरात्रि पर्व के समय विशेष रूप से प्रसिद्ध है।"
      },
      {
        "name": "Jatmai Temple (जतमाई मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f033ab37c30201f73f142449d037028d/uploads/bfi_thumb/2018052624-olwdkxb5gwsqjx9d3tb0r37wohp3gucydz1lnbtgxu.jpg",
        "description": "Located 85 km from Raipur, this temple dedicated to Mata Jatmai is surrounded by scenic beauty and forests. | रायपुर से 85 किमी दूर स्थित यह मंदिर माँ जतमाई को समर्पित है और सुंदर प्राकृतिक दृश्यों व जंगलों से घिरा हुआ है।"
      },
      {
        "name": "Rajiv Lochan Temple (राजीव लोचन मंदिर, राजिम)",
        "image": "https://cdn.s3waas.gov.in/s3f033ab37c30201f73f142449d037028d/uploads/bfi_thumb/2018052616-olwdkwdba2rg8baq9awe6lgg33tq95981ue461uv42.jpg",
        "description": "Located on the right bank of Mahanadi river in Rajim, this Vishnu temple is famous for its unique architecture and sacred confluence of Mahanadi, Pairi and Sondur rivers. | महानदी के तट पर स्थित यह विष्णु मंदिर अपनी अनोखी स्थापत्य कला और महानदी, पैरी व सोंडूर नदियों के संगम के लिए प्रसिद्ध है।"
      }
    ],

    "Gaurela-Pendra-Marwahi (गौरेला-पेंड्रा-मरवाही)": [
      {
        "name": "Shivghat Manaura (शिवघाट मनौरा)",
        "image": "https://cdn.s3waas.gov.in/s3821fa74b50ba3f7cba1e6c53e8fa6845/uploads/bfi_thumb/2020061155-scaled-oqumhd4uz3gg3vzjlfii2clmx3a30hhldwr1l573rm.jpg",
        "description": "Situated on the banks of the Son River in Manaura Gram Panchayat, about 3 km from the block headquarters, this spot is popular for picnics and natural beauty. | सोन नदी के किनारे मनौरा ग्राम पंचायत में, ब्लॉक मुख्यालय से लगभग 3 किमी दूर स्थित यह स्थल पिकनिक और प्राकृतिक सौंदर्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Jaleshwar Mahadev Temple (जलेश्वरधाम)",
        "image": "https://cdn.s3waas.gov.in/s3821fa74b50ba3f7cba1e6c53e8fa6845/uploads/bfi_thumb/2020060790-oqnn8vhbrc8bvjm42eeoh71l9of6v8hlju6yspjx76.jpg",
        "description": "Located 25 km en route Gaurela–Amarkantak, this 12th-century Kalchuri temple dedicated to Lord Shiva is of great religious importance. | गौरेला-अमरकंटक मार्ग पर 25 किमी दूर स्थित यह 12वीं शताब्दी का कलचुरी शिव मंदिर धार्मिक दृष्टि से अत्यंत महत्वपूर्ण है।"
      },
      {
        "name": "Laxman Dhara (लक्ष्मणधारा)",
        "image": "https://cdn.s3waas.gov.in/s3821fa74b50ba3f7cba1e6c53e8fa6845/uploads/bfi_thumb/2020060689-oqm5c7x1j7mdmeiu4jhxjwvcwtnsvy83ehnr4izbo2.jpg",
        "description": "Located about 18 km near Khodri Gram Panchayat, this place is known for its natural beauty and recreational value. | खोडरी ग्राम पंचायत के पास लगभग 18 किमी दूर स्थित यह स्थल प्राकृतिक सुंदरता और मनोरंजन के लिए प्रसिद्ध है।"
      },
      {
        "name": "Jhojha Waterfall (झोज्हा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3821fa74b50ba3f7cba1e6c53e8fa6845/uploads/bfi_thumb/2020060745-oqnnty12yn2q4v0a10alvdmknmkeez4zg4nt30b7pu.jpg",
        "description": "Located about 45 km away near Bastibgara Gram Panchayat, this waterfall is a major tourist attraction in the region. | बस्तिबगरा ग्राम पंचायत के पास लगभग 45 किमी दूर स्थित यह जलप्रपात क्षेत्र का प्रमुख पर्यटन आकर्षण है।"
      },
      {
        "name": "Shaktipeeth Dhanpur (शक्तिपीठ धनपुर)",
        "image": "https://cdn.s3waas.gov.in/s3821fa74b50ba3f7cba1e6c53e8fa6845/uploads/bfi_thumb/2020060736-oqnoa4t0nx8i33hri07atakcyiryzbekc94umkb4k2.jpg",
        "description": "Located 23 km on the Pendra–Seoni road, this temple of Maa Adishakti Durga holds immense religious and historic significance. | पेंड्रा–सिवनी मार्ग पर 23 किमी दूर स्थित माँ आदिशक्ति दुर्गा का यह मंदिर धार्मिक और ऐतिहासिक दृष्टि से महत्वपूर्ण है।"
      },
      {
        "name": "Sonkund Pendra (सोनकुंड पेंड्रा)",
        "image": "https://cdn.s3waas.gov.in/s3821fa74b50ba3f7cba1e6c53e8fa6845/uploads/bfi_thumb/2020061778-or51bi1wxvwuqn01bcg2m5gjocec7y9xbonkvxb176.jpg",
        "description": "Located about 17 km from Gaurela–Pendra road towards Bilaspur, this sacred tirtha hosts a huge fair and is associated with religious beliefs. | गौरेला–पेंड्रा मार्ग से बिलासपुर रोड पर लगभग 17 किमी दूर स्थित यह पवित्र तीर्थ स्थल धार्मिक मान्यताओं से जुड़ा है और यहाँ विशाल मेला आयोजित होता है।"
      }
    ],

    "Janjgir-Champa (जांजगीर-चांपा)": [
      {
        "name": "Nahariya Baba Hanuman Temple (नहरिया बाबा हनुमान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018051718-olw89kbzsqcyvklh1jmtsbb9nbnzlpb41593otg1ci.jpg",
        "description": "Located at the district headquarters, this temple is dedicated to Lord Hanuman and is a major religious attraction. | जिला मुख्यालय में स्थित यह मंदिर भगवान हनुमान को समर्पित है और एक प्रमुख धार्मिक आकर्षण है।"
      },
      {
        "name": "Tripur Singhar Devi Temple, Ghatadai (त्रिपुर सिंघार देवी मंदिर, घाटाडाई)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018060173-olw89p16qwjehmena3nyms4km90to6trpsij3792he.jpg",
        "description": "Situated 25 km north of Janjgir, this temple of Tripur Singhar Devi is surrounded by forests, making it spiritually and scenically significant. | जांजगीर से 25 किमी उत्तर में स्थित त्रिपुर सिंघार देवी का यह मंदिर जंगलों से घिरा हुआ है, जो धार्मिक व प्राकृतिक महत्व रखता है।"
      },
      {
        "name": "Shiv Mandir, Pithampur (पिथमपुर शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018051751-olw89m7o6efjisiqqkg2xau6u3eq13ikpek2ndd902.jpg",
        "description": "Located 10 km east of Janjgir on the bank of a river, this temple is dedicated to Lord Shiva. | जांजगीर से 10 किमी पूर्व नदी तट पर स्थित यह मंदिर भगवान शिव को समर्पित है।"
      },
      {
        "name": "Madanpur Garh Temple (मदनपुरगढ़ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018040615-olw89fmsuk6j9isaszloxuhyoeb5j7sgchzoafn07m.jpg",
        "description": "Located 10 km north-east of Janjgir on the bank of the Hasdeo river, this temple is historically and religiously important. | जांजगीर से 10 किमी उत्तर-पूर्व हसदेव नदी के तट पर स्थित यह मंदिर धार्मिक व ऐतिहासिक दृष्टि से महत्वपूर्ण है।"
      },
      {
        "name": "Adbhar Devi Temple (अडभार देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018060127-olw89p16qwjehmena3nyms4km90to6trpsij3792he.jpg",
        "description": "Situated 11 km from Sakti, this ancient temple of Goddess Devi features an idol with eight hands. | सक्ती से 11 किमी दूर स्थित यह प्राचीन देवी मंदिर आठ भुजाओं वाली प्रतिमा के लिए प्रसिद्ध है।"
      },
      {
        "name": "Crocodile Park (क्रोकोडाइल पार्क, अकलतरा)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018030841-olw89dr4gw3ymav13ysfsuz1hmkf3tkzo8opbvpsk2.jpg",
        "description": "Located in Akaltara, 35 km from the district headquarters, this park also features Energy Park and Science Park, making it an educational and recreational spot. | अकलतरा में जिला मुख्यालय से 35 किमी दूर स्थित यह पार्क शैक्षणिक व मनोरंजन का केंद्र है, जिसमें एनर्जी पार्क और साइंस पार्क भी हैं।"
      },
      {
        "name": "Chandrahasini Temple, Dabhara (चन्द्रहासिनी मंदिर, डभरा)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018060133-olw89p16qwjehmena3nyms4km90to6trpsij3792he.jpg",
        "description": "Located 22 km east of Dabhara, this temple is dedicated to Goddess Chandrahasini and is a revered religious site. | डभरा से 22 किमी पूर्व स्थित यह मंदिर माँ चन्द्रहासिनी को समर्पित है और एक प्रमुख धार्मिक स्थल है।"
      },
      {
        "name": "Damudhara (डामुधारा)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018040657-olw894cqkjr3e78omuq63xcfjruqyujoay5uj43qaa.jpg",
        "description": "Located 20 km on the Sakti–Korba road, this beautiful place is surrounded by natural scenery and is popular among tourists. | सक्ती-कोरबा मार्ग पर 20 किमी दूर स्थित यह स्थल प्राकृतिक सौंदर्य से भरपूर है और पर्यटकों के बीच लोकप्रिय है।"
      },
      {
        "name": "Dewar Ghata (देवार घाटा)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018040671-olw894cqkjr3e78omuq63xcfjruqyujoay5uj43qaa.jpg",
        "description": "Located 22 km south-west of Pamgarh, this is a holy confluence (sangam) site. | पामगढ़ से 22 किमी दक्षिण-पश्चिम स्थित यह स्थल एक पवित्र संगम स्थल है।"
      },
      {
        "name": "Laxmaneshwar Temple (लक्ष्मणेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s335f4a8d465e6e1edc05f3d8ab658c551/uploads/bfi_thumb/2018040659-olw894cqkjr3e78omuq63xcfjruqyujoay5uj43qaa.jpg",
        "description": "Located 20 km south of Pamgarh, this temple is associated with Hindu mythology and holds immense religious significance. | पामगढ़ से 20 किमी दक्षिण स्थित यह मंदिर हिंदू पौराणिक कथाओं से जुड़ा है और अत्यंत धार्मिक महत्व रखता है।"
      }
    ],

    "Jashpur (जशपुर)": [
      {
        "name": "Badalkhol Abhyaran (बदलखोल अभ्यारण्य)",
        "image": "https://cdn.s3waas.gov.in/s385fc37b18c57097425b52fc7afbb6969/uploads/bfi_thumb/2018032724-olwamsd7fz0visszedt3ut3skzm1hrmzqyly3z3176.jpg",
        "description": "Badalkhol Abhyaran is spread across 104 sq km under the forest department. The area is rich in biodiversity and has a pleasant climate, making it an ideal spot for nature lovers. | बदलखोल अभ्यारण्य वन विभाग के अंतर्गत 104 वर्ग किमी में फैला हुआ है। यहाँ की जैव विविधता और सुखद जलवायु इसे प्रकृति प्रेमियों के लिए आदर्श स्थल बनाते हैं।"
      },
      {
        "name": "Sograh Aghor Ashram (सोग्राह अघोर आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s385fc37b18c57097425b52fc7afbb6969/uploads/bfi_thumb/2018032712-olwamrfd94zl76ucjvehabcbzlqoa2j9etygmp4fde.jpg",
        "description": "Located 18 km from Jashpur Nagar, this Ashram is dedicated to Avdhoot Bhagwan Shri Ram and attracts devotees throughout the year. | जशपुर नगर से 18 किमी दूर स्थित यह आश्रम अवधूत भगवान श्रीराम को समर्पित है और सालभर श्रद्धालुओं को आकर्षित करता है।"
      },
      {
        "name": "Khuriarani Cave (खुरियारानी गुफा)",
        "image": "https://cdn.s3waas.gov.in/s385fc37b18c57097425b52fc7afbb6969/uploads/bfi_thumb/2018032731-olwamsd7fz0visszedt3ut3skzm1hrmzqyly3z3176.jpg",
        "description": "Khuriarani Cave is an important historic and religious site in Jashpur Nagar, known for its cultural heritage and natural setting. | खुरियारानी गुफा जशपुर नगर का एक महत्वपूर्ण ऐतिहासिक व धार्मिक स्थल है, जो सांस्कृतिक धरोहर और प्राकृतिक वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Damera Site (डैमरा स्थल)",
        "image": "https://cdn.s3waas.gov.in/s385fc37b18c57097425b52fc7afbb6969/uploads/bfi_thumb/2018032717-olwamsd7fz0visszedt3ut3skzm1hrmzqyly3z3176.jpg",
        "description": "Located 12 km south of Jashpur Nagar near Badhyee Khana village, Damera is known for its serene surroundings. | जशपुर नगर से 12 किमी दक्षिण बदहीखेना गांव के पास स्थित डैमरा शांत वातावरण के लिए जाना जाता है।"
      },
      {
        "name": "Cathedral (Mahagirja Ghar) Kunkuri (कुँकुरी महागिरजाघर)",
        "image": "https://cdn.s3waas.gov.in/s385fc37b18c57097425b52fc7afbb6969/uploads/bfi_thumb/2018032799-olwamu8vtn3g60q93emczsmprrcrx5ugf7wx2j08uq.jpg",
        "description": "This cathedral in Kunkuri is the second largest in Asia and is an architectural marvel, attracting thousands of visitors. | कुँकुरी का यह महागिरजाघर एशिया का दूसरा सबसे बड़ा गिरजाघर है, जो अपनी अद्वितीय वास्तुकला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Rani Dah Waterfall (रानी दाह जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s385fc37b18c57097425b52fc7afbb6969/uploads/bfi_thumb/2018032722-olwamsd7fz0visszedt3ut3skzm1hrmzqyly3z3176.jpg",
        "description": "A scenic picnic spot located in the middle of forests and hills, Rani Dah waterfall is a popular destination for families. | जंगलों और पहाड़ियों के बीच स्थित रानी दाह जलप्रपात पिकनिक के लिए एक सुंदर स्थल है।"
      },
      {
        "name": "Danpuri Waterfall (दनपुरी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s385fc37b18c57097425b52fc7afbb6969/uploads/bfi_thumb/2018032785-olwamu8vtn3g60q93emczsmprrcrx5ugf7wx2j08uq.jpg",
        "description": "Located in dense forests, Danpuri waterfall is an adventurous spot where one can trek for two hours to reach the base. | घने जंगलों में स्थित दनपुरी जलप्रपात रोमांचक स्थल है, जहाँ पहुँचने के लिए लगभग दो घंटे की ट्रैकिंग करनी पड़ती है।"
      },
      {
        "name": "Rajpuri Waterfall (राजपुरी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s385fc37b18c57097425b52fc7afbb6969/uploads/bfi_thumb/2018032795-olwamu8vtn3g60q93emczsmprrcrx5ugf7wx2j08uq.jpg",
        "description": "Rajpuri Waterfall is rich in natural beauty and attracts nature lovers from distant places. | प्राकृतिक सौंदर्य से भरपूर राजपुरी जलप्रपात दूर-दूर से आने वाले पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Kailash Cave (कैलाश गुफा)",
        "image": "https://cdn.s3waas.gov.in/s385fc37b18c57097425b52fc7afbb6969/uploads/bfi_thumb/2018032797-olwamu8vtn3g60q93emczsmprrcrx5ugf7wx2j08uq.jpg",
        "description": "Built by cutting rocks in the mountains, Kailash Cave has fountains and plantations around, enhancing its charm. Sweet water also flows from the cave, making it unique. | पर्वत की चट्टानों को काटकर बनी कैलाश गुफा अपने आसपास के फव्वारों और हरियाली के कारण आकर्षक लगती है। यहाँ से मीठा पानी भी बहता है, जो इसे खास बनाता है।"
      }
    ],

    "Kabirdham (कबीरधाम)": [
      {
        "name": "Bhoramdev Temple (भोरमदेव मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/b/b1/Bhoramdeo_Temple%2C_Kawardha.jpg",
        "description": "Known as the 'Khajuraho of Chhattisgarh', Bhoramdev Temple is dedicated to Lord Shiva and is famous for its exquisite stone carvings. | 'छत्तीसगढ़ का खजुराहो' कहलाने वाला भोरमदेव मंदिर भगवान शिव को समर्पित है और अपनी अद्भुत पत्थर की नक्काशी के लिए प्रसिद्ध है।"
      },
      {
        "name": "Buda Mahadev Temple (बूढ़ा महादेव मंदिर)",
        "image": "https://etvbharatimages.akamaized.net/etvbharat/prod-images/08-03-2024/20925449_kwd.jpg",
        "description": "An ancient Shiva temple located in the dense forests of Kabirdham, visited by devotees and nature lovers alike. | कबीरधाम के घने जंगलों में स्थित यह प्राचीन शिव मंदिर श्रद्धालुओं और प्रकृति प्रेमियों के लिए खास आकर्षण है।"
      },
      {
        "name": "Sarodha Dam (सरोधा बांध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLR_fpWGVnVe7BDmPrK_rFnZZINlWT0OajEg&s",
        "description": "A scenic dam area ideal for picnics and relaxation, surrounded by natural beauty. | प्राकृतिक सुंदरता से घिरा यह बांध पिकनिक और विश्राम के लिए आदर्श स्थल है।"
      },
      {
        "name": "Vrindavan Garden (वृंदावन गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFIzUpY_pvbwdnxDfKWMUAPu9qHB2y3nGAHw&s",
        "description": "A well-maintained garden in Kabirdham, popular among locals for leisure and family outings. | कबीरधाम का यह सुसज्जित बगीचा स्थानीय लोगों के लिए सैर और पारिवारिक घूमने का प्रमुख स्थल है।"
      },
      {
        "name": "Chilphi Valley (चिल्फी घाटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ19aa4GR8Dd2Kl_m7I1LQYNz26ZWO6Pi_T-g&s",
        "description": "A picturesque valley with lush green hills and scenic beauty, making it a must-visit destination for travelers. | हरी-भरी पहाड़ियों और प्राकृतिक सुंदरता से भरपूर यह घाटी पर्यटकों के लिए आकर्षक गंतव्य है।"
      },
      {
        "name": "Rani Dahara Waterfall (रानी दहारा जलप्रपात)",
        "image": "https://etvbharatimages.akamaized.net/etvbharat/prod-images/768-512-17394418-thumbnail-3x2-img.jpg",
        "description": "A stunning waterfall in Kabirdham district, surrounded by dense forests, perfect for nature enthusiasts. | कबीरधाम जिले का यह मनमोहक जलप्रपात घने जंगलों से घिरा है और प्रकृति प्रेमियों के लिए विशेष स्थल है।"
      },
      {
        "name": "Peedaghat (पीड़ाघाट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG9BmZCInzDm5-V5tciYS4f3xe2XSKx3zwLg&s",
        "description": "A scenic riverbank area in Kabirdham, known for its calm atmosphere and natural surroundings. | कबीरधाम का यह खूबसूरत नदी किनारा शांत वातावरण और प्राकृतिक परिवेश के लिए प्रसिद्ध है।"
      }
    ],

    "Kanker (कांकेर)": [
      {
        "name": "Gadia Mountain (गाड़िया पर्वत)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgaM1uIOaCDbmHoWyCHEkm7CSFbGEeImgMTg&s",
        "description": "Located near Kanker town, Gadia Mountain is a popular scenic spot known for its panoramic views and historical importance. | कांकेर नगर के पास स्थित गाड़िया पर्वत अपने मनोरम दृश्यों और ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Malanjhkudum Waterfall (मलांझकुड़ुम जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTybkvVLA0KcvngavzDS3sxouqevauaeewkIg&s",
        "description": "A beautiful natural waterfall located around 15 km from Kanker, surrounded by lush greenery. | कांकेर से लगभग 15 किमी दूर स्थित यह खूबसूरत जलप्रपात हरी-भरी प्रकृति से घिरा है।"
      },
      {
        "name": "Charre-Marre Waterfall (चारे-मारे जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/dc/c7/13/charee-marre-falls.jpg?w=1200&h=-1&s=1",
        "description": "A picturesque waterfall located about 17 km from Antagarh, perfect for nature lovers and trekkers. | अंतागढ़ से लगभग 17 किमी दूर स्थित यह आकर्षक जलप्रपात प्रकृति प्रेमियों और ट्रेकिंग के शौकीनों के लिए आदर्श है।"
      },
      {
        "name": "Shivani Temple (शिवानी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbdw8cljfTqXT9T0Wtw4fUXzlpueyXFe2zDQ&s",
        "description": "An important religious site in Kanker district, dedicated to Goddess Shivani, attracting many devotees. | कांकेर जिले का यह प्रमुख धार्मिक स्थल देवी शिवानी को समर्पित है, जहाँ श्रद्धालु बड़ी संख्या में आते हैं।"
      }
    ],

    "Kondagaon (कोंडागांव)": [
      {
        "name": "Katulkasa Waterfall, Honhed (काटुलकसा जलप्रपात, होनहेड)",
        "image": "https://cdn.s3waas.gov.in/s36ea9ab1baa0efb9e19094440c317e21b/uploads/bfi_thumb/2022080342-scaled-pspq12zokbfjgmo2f3ixsp42cz6pna2c6eceo8m38q.jpg",
        "description": "A perennial spring waterfall in the middle of forests, located about 1 km from Honhed. | यह झरना जंगलों के बीच स्थित है और सालभर पानी गिरता है।"
      },
      {
        "name": "Manjhingarh (मंझीगढ़)",
        "image": "https://cdn.s3waas.gov.in/s36ea9ab1baa0efb9e19094440c317e21b/uploads/bfi_thumb/2022080337-psprguxn0sb4zdgl2z84n4r4c1zkn2m2ao09bxuei2.jpg",
        "description": "A popular eco-tourism destination of Kondagaon, known for dense forests and rich wildlife. | यह क्षेत्र घने जंगलों और वन्यजीवों के लिए प्रसिद्ध है और इको-टूरिज्म हेतु आकर्षण का केंद्र है।"
      },
      {
        "name": "Cherbeda Falls (चेरबेड़ा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s36ea9ab1baa0efb9e19094440c317e21b/uploads/bfi_thumb/2022080310-scaled-pspoitr22l5paxh98n86ve07yalzc8o41upff926ei.jpg",
        "description": "Also known as Honabedgo Falls, it resembles Mendri Ghoomar waterfall of Bastar. Ideal for trekking. | इसे मेन्द्री घूमर जैसा दिखने वाला झरना कहा जाता है, और ट्रेकिंग के लिए उपयुक्त स्थान है।"
      },
      {
        "name": "Keshkal Valley (केशकाल घाटी)",
        "image": "https://cdn.s3waas.gov.in/s36ea9ab1baa0efb9e19094440c317e21b/uploads/bfi_thumb/2021092773-pdqasu3vbiuk515u4mm1q6vhazvxluayl1gc7jnmqy.jpg",
        "description": "A picturesque valley on NH-30 between Kondagaon and Kanker, known for scenic beauty and adventure. | यह सुंदर घाटी राष्ट्रीय राजमार्ग 30 पर स्थित है और रोमांच व प्राकृतिक सौंदर्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Gobrahin Shiv Temple, Gad Dhanora (गोबरहीन शिव मंदिर, गढ़ धनोरा)",
        "image": "https://cdn.s3waas.gov.in/s36ea9ab1baa0efb9e19094440c317e21b/uploads/bfi_thumb/2022080369-pspp9emrbxjllyvc14uedojgojln046v1etpyxnega.jpeg",
        "description": "An archaeological and religious site at Keshkal, Dhanora once known as the capital of Karna. | केशकाल स्थित यह प्राचीन धार्मिक और पुरातात्विक स्थल कर्ण की राजधानी माना जाता है।"
      },
      {
        "name": "Jatayu Rock (जटायु शिला)",
        "image": "https://cdn.s3waas.gov.in/s36ea9ab1baa0efb9e19094440c317e21b/uploads/bfi_thumb/2022080341-scaled-psppkh6btop6cmsfdx47qvywjx19ns51w7flg98h62.jpg",
        "description": "Located 3 km from Kondagaon-Farasgaon road, this huge rock formation is linked with Ramayan legends. | यह विशाल चट्टान संरचना रामायण की कथाओं से जुड़ी मानी जाती है।"
      },
      {
        "name": "Tatamari Hill Station (टाटामारी हिल स्टेशन)",
        "image": "https://cdn.s3waas.gov.in/s36ea9ab1baa0efb9e19094440c317e21b/uploads/bfi_thumb/2022080312-pspll6o1ywjkgmxg3zbnn1p8hbaw8va4uz6vppp1pm.jpeg",
        "description": "A scenic hill station and spiritual site dedicated to Mataji Mahalaxmi Shakti Peeth in Tapovan area. | यह प्रसिद्ध हिल स्टेशन देवी महालक्ष्मी शक्तिपीठ और प्राकृतिक सुंदरता के लिए जाना जाता है।"
      }
    ],

    "Khairagarh-Chhuikhadan-Gandai (खैरागढ़-छुईखदान-गांदाई)": [
      {
        "name": "Khairagarh Fort (खैरागढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5n0tqKLan4Q4rjeZPrf5FizmVjSS0zpCpNA&s",
        "description": "A historical fort perched on a hill accessible via a short hike; offers panoramic views and cultural heritage. | पहाड़ी पर स्थित ऐतिहासिक किला, जिसे चढ़कर देखा जा सकता है; यहाँ से खूबसूरत दृश्य और सांस्कृतिक धरोहर का अनुभव होता है।"
      },
      {
        "name": "Baital Rani Ghati (बैताल रानी घाटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9UaEmZQNnaXKgl4M39qtUSuegnZzNFdSOt9GFa09xegBdqzxjk0pYa5TCrQt9V-g_Zqk&usqp=CAU",
        "description": "A scenic valley with hairpin bends—a perfect drive for nature lovers and trekkers, especially during monsoon. | मोड़ों से सजी यह घाटी एक खूबसूरत मार्ग है जो मॉनसून में और भी आकर्षक हो जाता है; ट्रेकिंग व प्रकृति प्रेमियों के बीच लोकप्रिय।"
      },
      {
        "name": "Chhindari Dam (छिंदाड़ी बांध)",
        "image": "https://i.ytimg.com/vi/gTCG1xFszGY/sddefault.jpg",
        "description": "The largest dam in the district, offering opportunities for boating, fishing, and enjoying tranquil lakeside views. | जिले का सबसे बड़ा बांध जो नौका विहार, मछली पकड़ना और शांतिपूर्ण जलाशय दृश्य के लिए आदर्श स्थान है।"
      },
      {
        "name": "Nathela Waterfall (नथेला जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-uDYg8FJe2f4Om7YPAh85BJXyNxSav1DqcQ&s",
        "description": "A hidden gem nestled in forests—most beautiful during and just after the monsoon, ideal for trekking and photography. | जंगलों में स्थित यह निमिष स्थल खासकर मानसून के दौरान और बाद में अद्भुत दिखता है; ट्रेकिंग और फोटोग्राफी के लिए उपयुक्त।"
      },
      {
        "name": "Indira Kala Sangeet Vishwavidyalaya (इंदिरा कला & संगीत विश्वविद्यालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbGJPQPjntkYTqocQNUxFjKvxFMl9fi3O-KA&s",
        "description": "Asia's first university dedicated to music and arts, housed in a palace donated by the royal family. | एशिया का प्रथम संगीत एवं कला विश्वविद्यालय, जो महाराज परिवार द्वारा दान किए गए महल में है।"
      },
      {
        "name": "Chhuikhadan Ancient Caves (छुईखदान प्राचीन गुफाएँ)",
        "image": "https://miro.medium.com/v2/resize:fit:1400/0*Vci3qULilfxsOaMG",
        "description": "Historic caves used by early tribes, featuring ancient carvings—an exciting blend of archaeology and adventure. | शुरुआती जनजातियों द्वारा उपयोग की गई ये ऐतिहासिक गुफाएं पुरानी खुदाइयों से जुड़ी हैं और रोमांच व इतिहास का संगम हैं।"
      },
      {
        "name": "Shankar Dev Temple (शंकरदेव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTHLRcd3yQnKnF2jxuQiolH3BgoJAPNdlH0g&s",
        "description": "A revered Shiva temple in the district, known for its serene atmosphere and spiritual importance. | जिले का एक पूजनीय शिव मंदिर, शांति और धार्मिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Dongeshwar Mahadev Temple (दोंगेश्वर महादेव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzh9bGsTI7AJHl_ZYEroavyo7b9nNt5sTSeA0q040cPhNkwQQubLaS9cqV9xPHBaOta_A&usqp=CAU",
        "description": "A cave temple dedicated to Lord Shiva near Gandai, set amidst hills and forests. | गंडई के पास पहाड़ियों व जंगल में स्थित यह शिव गुफा मंदिर धार्मिक और दृश्यात्मक दृष्टि से विशेष है।"
      },
    ],

    "Korba (कोरबा)": [
      {
        "name": "Devapahari (देवपहाड़ी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060445-olwcmeoi6j2e56ru6uarc8h60wluziypxg2thyw53m.jpg",
        "description": "Located 58 km north-east from Korba on the banks of Chornai river, this waterfall is a serene natural attraction. | कोरबा से 58 किमी उत्तर-पूर्व में चोर्नई नदी के किनारे स्थित यह जलप्रपात प्राकृतिक सुंदरता का शांत स्थल है।"
      },
      {
        "name": "Kudurmal (कुदुरमाल मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060597-olwcmgk6k74ysep3vv40h8037oclex66lpdsgitcr6.jpg",
        "description": "A small village 15 km from Korba HQ, known for its ancient Shiva temple of historical significance. | कोरबा मुख्यालय से 15 किमी दूर यह गाँव अपने ऐतिहासिक शिव मंदिर के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kanki (कांकी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060446-olwcmeoi6j2e56ru6uarc8h60wluziypxg2thyw53m.jpg",
        "description": "Situated on the banks of Hasdeo river near Urga, 20 km from Korba; famous for temples and scenic beauty. | उरगा के पास हसदेव नदी के किनारे बसा यह गाँव अपने प्राचीन मंदिर और प्राकृतिक दृश्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Mouhargarh Fort (मौहरगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018042438-olwcm83muotdvx1e99gdcs4xv7iahn8lkjif515wb6.gif",
        "description": "Fort remnants found on Pouna Khara hill at 2000 ft height, located about 15 km from Korba. | पौनाखारा पहाड़ी पर 2000 फीट ऊँचाई पर स्थित किले के अवशेष ऐतिहासिक महत्व दर्शाते हैं।"
      },
      {
        "name": "Tuman Fort (तुमन किला)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060559-olwcmgk6k74ysep3vv40h8037oclex66lpdsgitcr6.gif",
        "description": "A small village 10 km from Katghora, 30 km from Korba, known for its ancient fort ruins. | कोरबा से 30 किमी और कटघोरा से 10 किमी दूर स्थित यह गाँव अपने प्राचीन किले के लिए प्रसिद्ध है।"
      },
      {
        "name": "Chaithurgarh (चैथुरगढ़/लफागढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060473-olwcmeoi6j2e56ru6uarc8h60wluziypxg2thyw53m.jpg",
        "description": "Located 70 km from Korba and 25 km north of Pali; a hill fort with scenic surroundings and temples. | कोरबा से 70 किमी दूर और पाली से 25 किमी उत्तर स्थित यह पहाड़ी किला सुंदर वातावरण व मंदिरों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Madwarani Temple (मदवारानी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060476-olwcmfmcdd3ogsqh1cpdwq8mmah8782g9kqaz8uqxe.jpg",
        "description": "Situated 22 km from Korba HQ on Korba–Champa road, dedicated to Goddess Madwarani. | कोरबा से 22 किमी दूर कोरबा–चांपा मार्ग पर स्थित यह मंदिर देवी मदवारानी को समर्पित है।"
      },
      {
        "name": "Sarvamangala Temple (सर्वमंगला मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060559-olwcmgk6k74ysep3vv40h8037oclex66lpdsgitcr6.jpg",
        "description": "One of the most famous temples of Korba, dedicated to Goddess Durga, built by the Hayhay kings. | कोरबा का प्रमुख दुर्गा मंदिर, जिसकी स्थापना हैहय वंश के राजाओं ने की थी।"
      },
      {
        "name": "Kosagaigarh (कोसगाईगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060576-olwcmgk6k74ysep3vv40h8037oclex66lpdsgitcr6.gif",
        "description": "Located 25 km off Korba–Katghora road on Putka Pahad hillocks; built by Raja. | कोरबा–कटघोरा मार्ग से 25 किमी दूर पुटका पहाड़ पर स्थित यह किला राजा द्वारा निर्मित है।"
      },
      {
        "name": "Kendai Waterfall (केन्दाई जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060552-olwcmgk6k74ysep3vv40h8037oclex66lpdsgitcr6.jpg",
        "description": "Located 85 km from Korba on Bilaspur–Ambikapur highway, a scenic perennial waterfall. | कोरबा से 85 किमी दूर बिलासपुर–अंबिकापुर मार्ग पर स्थित यह खूबसूरत जलप्रपात सालभर बहता रहता है।"
      },
      {
        "name": "Pali Shiv Temple (पाली शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018060533-olwcmfmcdd3ogsqh1cpdwq8mmah8782g9kqaz8uqxe.jpg",
        "description": "Located 50 km from Korba; famous for the ancient Shiva temple built during the Ratanpur Kalchuri dynasty. | कोरबा से 50 किमी दूर स्थित प्राचीन शिव मंदिर, जिसकी स्थापना रतनपुर के कलचुरी राजाओं ने की थी।"
      },
      {
        "name": "Sitamani Caves (सीतामणि गुफाएँ)",
        "image": "https://cdn.s3waas.gov.in/s3d2ddea18f00665ce8623e36bd4e3c7c5/uploads/bfi_thumb/2018061148-olwcmhi0r16940nqqdin1prjt27ymm9wxu19xsryky.jpg",
        "description": "Located in Korba city near railway station; consists of three caves believed to be linked with Ramayana period. | कोरबा शहर में रेलवे स्टेशन के पास स्थित तीन गुफाएँ, जिनका संबंध रामायण काल से माना जाता है।"
      }
    ],

    "Koriya (कोरिया)": [
      {
        "name": "Baniyadhara Waterfall (बनियाधारा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s37750ca3559e5b8e1f44210283368fc16/uploads/bfi_thumb/2025022817-r26403cskmmxtlvpbuintjqt07yrlabvgx0liu384q.jpg",
        "description": "Located 60 km from district HQ Baikunthpur and 25 km from block HQ Sonhat, this is a scenic waterfall on the Baniyadhar river. | जिला मुख्यालय बैकुंठपुर से 60 किमी और सोनहत से 25 किमी दूर बनियाधार नदी पर स्थित यह खूबसूरत जलप्रपात है।"
      },
      {
        "name": "Balam Gadi Hill (बालमगढ़ी पहाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s37750ca3559e5b8e1f44210283368fc16/uploads/bfi_thumb/2025022514-scaled-r20iio85z5928dvm7ilxux98h75fhcr5jtj00ct3ai.jpeg",
        "description": "Situated on the Tropic of Cancer at a height of 1350 feet, this hill offers a 180-degree panoramic view. | कर्क रेखा पर 1350 फीट की ऊँचाई पर स्थित यह पहाड़ी 180 डिग्री का मनमोहक दृश्य प्रदान करती है।"
      },
      {
        "name": "Amhar Resort & Ghunghutta Dam (अमहद रिज़ॉर्ट एवं घुघुट्टा बांध)",
        "image": "https://cdn.s3waas.gov.in/s37750ca3559e5b8e1f44210283368fc16/uploads/bfi_thumb/2025022441-r1yyukk2flscasy4r8drmngwm143xklwofpw5sb5re.jpeg",
        "description": "Located 4 km from Sonhat block HQ on the Rajauli road, this reservoir and resort is a popular eco-tourism destination. | सोनहत से 4 किमी दूर राजाौली मार्ग पर स्थित यह जलाशय और पर्यटन स्थल इको-टूरिज़्म के लिए प्रसिद्ध है।"
      },
      {
        "name": "Jhumka Dam (झुमका बांध)",
        "image": "https://cdn.s3waas.gov.in/s37750ca3559e5b8e1f44210283368fc16/uploads/bfi_thumb/2020091666-ovjfujpvmcvfsos11mg91qx8o7q3rjxf2ixjof2h2i.jpeg",
        "description": "Located 5 km from Baikunthpur railway station, this dam looks scenic especially in the evenings. | बैकुंठपुर रेलवे स्टेशन से 5 किमी दूर स्थित यह बाँध खासकर शाम के समय बेहद सुंदर दिखाई देता है।"
      },
      {
        "name": "Gaurghat Waterfall (गौरघाट जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s37750ca3559e5b8e1f44210283368fc16/uploads/bfi_thumb/2018041282-olw9uemnhj6082i9dpj47jp3ny9jgoe7ozk24o0bfu.jpg",
        "description": "Situated on the Hasdeo river, about 35 km from district HQ Korea, this waterfall is a natural beauty spot. | हसदेव नदी पर, जिला मुख्यालय से 35 किमी दूर स्थित यह जलप्रपात प्राकृतिक सुंदरता का केंद्र है।"
      },
      {
        "name": "Guru Ghasidas–Tamor Pingla Tiger Reserve (गुरु घासीदास–तमोर पिंगला टाइगर रिज़र्व)",
        "image": "https://cdn.s3waas.gov.in/s37750ca3559e5b8e1f44210283368fc16/uploads/bfi_thumb/2025022575-r20iirziqhe7itq5lk8g4wb2uqmwc562wc4xxgnilm.jpeg",
        "description": "A newly announced tiger reserve known for its dense forests, wildlife, and eco-tourism opportunities. | हाल ही में घोषित यह टाइगर रिज़र्व घने जंगलों, वन्यजीव और इको-टूरिज़्म के लिए प्रसिद्ध है।"
      }
    ],

    "Mahasamund (महासमुंद)": [
      {
        "name": "Shivling of white  Ganga, Bamhani Temple (श्वेत गंगा बम्हनी शिवलिंग)",
        "image": "https://cdn.s3waas.gov.in/s300ac8ed3b4327bdd4ebbebcb2ba10a00/uploads/bfi_thumb/2018041970-olw6xgxa3wistugfvr817g87fkpvr8djf3kpp4r7pu.jpg",
        "description": "Located 10 km west of Mahasamund in Bamhani village, where a pond called Shwet Ganga has continuous flow into the river and a famous Shivling is worshipped. | महासमुंद से 10 किमी पश्चिम स्थित बम्हनी गाँव में श्वेत गंगा नामक तालाब है, जिससे निरंतर नदी में जल प्रवाहित होता है और यहाँ शिवलिंग की पूजा होती है।"
      },
      {
        "name": "Khallari Mata Temple (खल्लारी माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s300ac8ed3b4327bdd4ebbebcb2ba10a00/uploads/bfi_thumb/2018041999-olw6xaces29skkpzy6dn7zvz9vmb9cnf270bc70yxe.jpg",
        "description": "Situated 25 km south of Mahasamund in Khallari village, this temple is located on a hilltop and is dedicated to Khallari Mata. | महासमुंद से 25 किमी दक्षिण स्थित खल्लारी गाँव की पहाड़ी पर बना यह मंदिर खल्लारी माता को समर्पित है।"
      },
      {
        "name": "Gaudhara (Daldali Swamp) (गौधारा दलदली क्षेत्र)",
        "image": "https://cdn.s3waas.gov.in/s300ac8ed3b4327bdd4ebbebcb2ba10a00/uploads/bfi_thumb/2018041974-olw6xgxa3wistugfvr817g87fkpvr8djf3kpp4r7pu.jpg",
        "description": "A scenic spot 10 km east of Mahasamund, where an ancient Shiva temple is situated amidst marshland. | महासमुंद से 10 किमी पूर्व स्थित यह प्राकृतिक दलदली क्षेत्र है, जहाँ प्राचीन शिव मंदिर स्थित है।"
      },
      {
        "name": "Sirpur (सिरपुर)",
        "image": "https://cdn.s3waas.gov.in/s300ac8ed3b4327bdd4ebbebcb2ba10a00/uploads/bfi_thumb/2018041910-olw6xc835qcd7sn9n76wczewgnd1oquvqgbaaqy6ky.jpg",
        "description": "Sirpur is world-famous for its archaeological and historical significance, with monuments dating back to the 5th–8th century. | सिरपुर अपनी पुरातात्विक और ऐतिहासिक धरोहरों के लिए विश्व प्रसिद्ध है, जहाँ 5वीं–8वीं शताब्दी के स्मारक मिलते हैं।"
      },
      {
        "name": "Chandi Temple (Birkoni) (चंडी मंदिर, बिरकोनी)",
        "image": "https://cdn.s3waas.gov.in/s300ac8ed3b4327bdd4ebbebcb2ba10a00/uploads/bfi_thumb/2018042030-olw6xqbo08vo1y2scvaawdutdffjw7euse3khwd9zm.jpg",
        "description": "Situated in Birkoni village, about 10 km north of Mahasamund on NH 6, this temple is dedicated to Goddess Chandi. | बिरकोनी गाँव में, महासमुंद से 10 किमी उत्तर राष्ट्रीय राजमार्ग 6 पर स्थित यह मंदिर देवी चंडी को समर्पित है।"
      },
      {
        "name": "Chandi Temple (Ghunchapali) (चंडी मंदिर, घुंचापाली)",
        "image": "https://cdn.s3waas.gov.in/s300ac8ed3b4327bdd4ebbebcb2ba10a00/uploads/bfi_thumb/2018042071-olw6xisyhkldh2dpks1acfr4mcgm6ml03cvonoofde.jpg",
        "description": "Located in Ghunchapali village, Bagbahara block, 40 km south of Mahasamund, this is a natural temple of Goddess Chandi. | महासमुंद से 40 किमी दक्षिण, बाघबहारा ब्लॉक के घुंचापाली गाँव में स्थित यह प्राकृतिक चंडी माता का मंदिर है।"
      }
    ],

    "Manendragarh-Chirmiri-Bharatpur (मनेन्द्रगढ़-चिरमीरी-भरतपुर)": [
      {
        "name": "Amritdhara Waterfall (अमृतधारा जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpD3rWDOw1Ai7dnUvC8lXOpak4XXINOT3EAA&s",
        "description": "Located 26 km from Manendragarh on the Hasdeo river, this 90 ft waterfall looks like flowing milk. A Shiva temple is here and Mahashivratri fair is organized. | मनेन्द्रगढ़ से 26 किमी दूर हसदेव नदी पर स्थित यह 90 फीट ऊँचा जलप्रपात दूध की धारा जैसा प्रतीत होता है। यहाँ शिव मंदिर है और महाशिवरात्रि मेला लगता है।"
      },
      {
        "name": "Ramdaha Falls (रामदाहा जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQmhDxE1UlnQzWS1GeY9KKlEqQ-tf1phdW7A&s",
        "description": "Situated in Janakpur block, about 80 km from headquarters, this 70 ft waterfall of Banas river is surrounded by black rocks. | जनकपुर ब्लॉक में, मुख्यालय से लगभग 80 किमी दूर स्थित यह 70 फीट ऊँचा जलप्रपात बनास नदी पर है, जो काले पत्थरों से घिरा हुआ है।"
      },
      {
        "name": "National Marine Gondwana Fossils Park (राष्ट्रीय समुद्री गोंडवाना जीवाश्म उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf7-IwrvzYBP-YyXrEbsL6VBEO3ZX6XcNw3g&s",
        "description": "Just 2 km from Manendragarh, fossils from 280 million years ago can still be seen on Hasdeo river banks. | मनेन्द्रगढ़ से मात्र 2 किमी दूर हसदेव नदी के किनारे 28 करोड़ वर्ष पुराने समुद्री जीवाश्म देखे जा सकते हैं।"
      },
      {
        "name": "Siddh Baba Mountain (सिद्ध बाबा पर्वत)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgu3klqpYUIMt-xI4-CT7HiSwN5X1ha_bFZA&s",
        "description": "Located 1 km inside NH-43, this 80 m high hill has a grand Shiva temple built on the lines of Kedarnath. | राष्ट्रीय राजमार्ग 43 से 1 किमी भीतर स्थित 80 मीटर ऊँची पहाड़ी पर केदारनाथ की तर्ज पर भव्य शिव मंदिर बन रहा है।"
      },
      {
        "name": "Chang Devi (चांग देवी)",
        "image": "https://etvbharatimages.akamaized.net/etvbharat/prod-images/31-08-2023/768-512-19399542-thumbnail-16x9-samp.jpg",
        "description": "Located about 120 km away, this Kuldevi of Changbhakhar and Korea states is represented by a sacred stone slab in the forest. | मुख्यालय से लगभग 120 किमी दूर यह चांगभाखर और कोरिया राज्य की कुलदेवी हैं, जिन्हें जंगल में एक पत्थर की पट्टी के रूप में पूजा जाता है।"
      },
      {
        "name": "Rock Paintings (शैल चित्र)",
        "image": "https://staticimg.amarujala.com/assets/images/2025/03/08/vakasata-ha-raha-jarasaka-raka-garadana_6b437b96227ec23cd6e29376adff1c0c.jpeg",
        "description": "In Janakpur tehsil, ancient rock paintings of animals, humans and symbols are found in Bhanwankhoh and Tilauli villages. | जनकपुर तहसील के भंवरखोह और तिलौली गाँव में प्राचीन शैल चित्र मिले हैं जिनमें पशु, मानव और प्रतीक चिन्ह दर्शाए गए हैं।"
      },
      {
        "name": "Ancient Temple of Ghaghra (घाघरा का प्राचीन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHq7aRd9A2__WNns_jEhwo8Sxbii-reTDP0A&s",
        "description": "Located 140 km away in Ghaghra village, this 10th-century stone temple is believed to be Buddhist-era or Shaiva heritage. | मुख्यालय से 140 किमी दूर घाघरा गाँव का पत्थरों से बना यह 10वीं शताब्दी का मंदिर बौद्ध या शैव धरोहर माना जाता है।"
      },
      {
        "name": "Jatashankar Cave (जटाशंकर गुफा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9VSPkJwQ5-rXWKC5AkymBnT6_iyGfb4KIlA&s",
        "description": "About 50 km away near Bairagi village, this 50 ft deep cave houses a Shivling shaped like matted hair. | मुख्यालय से लगभग 50 किमी दूर बैरागी गाँव के पास 50 फीट गहरी गुफा में जटाओं के आकार का शिवलिंग स्थित है।"
      },
      {
        "name": "Mahamaya Temple, Khargawan (माँ महामाया मंदिर, खर्गवां)",
        "image": "https://live.staticflickr.com/5717/22518965226_2444a8a34c_c.jpg",
        "description": "Located 50 km away in Chanwaridand tehsil, this temple of Maa Mahamaya is a major pilgrimage site, especially during Navratri. | चनवारीदंड तहसील के खर्गवां में स्थित यह माँ महामाया का प्राचीन मंदिर है, जहाँ नवरात्रि पर विशेष श्रद्धालु जुटते हैं।"
      }
    ],

    "Mohla-Manpur-Ambagarh Chowki (मोहरा-मांपुर-अम्बागढ़ चौकी)": [
      {
        "name": "Shivlok Manpur (शिवलोक मानपुर)",
        "image": "https://cdn.s3waas.gov.in/s35f93f983524def3dca464469d2cf9f3e/uploads/bfi_thumb/2023011672-scaled-q0qhs22v70bxq7kwotg4i77rugpy1l6lufrrhm1txu.jpg",
        "description": "Located 25 km from district headquarters Mohla, Shivlok is a forest-covered spiritual site dedicated to Lord Shiva. | जिला मुख्यालय मोहला से 25 किमी दूर स्थित शिवलोक, घने जंगलों से घिरा भगवान शिव को समर्पित धार्मिक स्थल है।"
      },
      {
        "name": "Mongra Barrage (मोंगरा बैराज)",
        "image": "https://cdn.s3waas.gov.in/s35f93f983524def3dca464469d2cf9f3e/uploads/bfi_thumb/2023011654-scaled-q0qjrwupn2p1937h3vlf42gamuk2gmfx234073ieaa.jpg",
        "description": "Situated near Ambagarh Chowki, this barrage in Mongra village is about 10 km from Chilhati-Korchatola road, popular for eco-tourism. | अंबागढ़ चौकी के पास मोंगरा गाँव में स्थित यह बैराज चिल्हाटी-कोरचटोला मार्ग से 10 किमी दूर है और इको-टूरिज्म के लिए प्रसिद्ध है।"
      },
      {
        "name": "Maa Churiya Devi Temple (माँ चुरिया देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s35f93f983524def3dca464469d2cf9f3e/uploads/bfi_thumb/2023011618-q0qk3fdjd0ghh4hcvcrw5nuklrsxr55jn2t4u4fs2a.jpg",
        "description": "Located in Mohla village, Maa Churiya Devi Temple is one of the famous shrines in Chhattisgarh. | मोहला गाँव में स्थित माँ चुरिया देवी मंदिर छत्तीसगढ़ के प्रसिद्ध धार्मिक स्थलों में से एक है।"
      },
      {
        "name": "Third Nala Dhobendand (थर्ड नाला धोबेंड़ांड)",
        "image": "https://cdn.s3waas.gov.in/s35f93f983524def3dca464469d2cf9f3e/uploads/bfi_thumb/2023011636-e1675152487271-q1gonwwm6wwtt08heqio0345pprul2xucxeqab5n82.jpeg",
        "description": "Located on Mohla–Manpur road, Third Nala takes the form of a scenic waterfall, ideal for adventure lovers. | मोहला-मानपुर मार्ग पर स्थित थर्ड नाला सुंदर जलप्रपात का रूप लेता है और रोमांच प्रेमियों के लिए उपयुक्त स्थल है।"
      },
      {
        "name": "Suspension Bridge (सस्पेंशन ब्रिज)",
        "image": "https://cdn.s3waas.gov.in/s35f93f983524def3dca464469d2cf9f3e/uploads/bfi_thumb/2023011656-1-scaled-q0qked7wwlfmlql9zl0koegpi7vqcbl2t85kx27tn6.jpg",
        "description": "A suspension bridge built under Pradhan Mantri Gram Sadak Yojana, located 10 km inside Ambagarh Chowki region. | प्रधानमंत्री ग्राम सड़क योजना के अंतर्गत निर्मित यह सस्पेंशन ब्रिज अंबागढ़ चौकी क्षेत्र के अंदर 10 किमी पर स्थित है।"
      }
    ],

    "Mungeli (मुंगेली)": [
      {
        "name": "Shiv Ghat (शिव घाट, लोरमी)",
        "image": "https://cdn.s3waas.gov.in/s3051e4e127b92f5d98d3c79b195f2b291/uploads/bfi_thumb/2018032680-olw6vxgswoevsuozvl91mc80dub8539djh32dt1fwy.jpg",
        "description": "Situated on the banks of Maniyari river in ancient town Lormi, Shivghat is known for the oldest temple of Lord Shiva. | प्राचीन नगर लोरमी में मणियारी नदी के तट पर स्थित शिवघाट भगवान शिव के प्राचीनतम मंदिर के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kharraghat (खर्राघाट)",
        "image": "https://cdn.s3waas.gov.in/s3051e4e127b92f5d98d3c79b195f2b291/uploads/bfi_thumb/2018050939-olw6veo13zp5cngaxd4i8gysi4vvv56qsw1cs9tbde.jpg",
        "description": "Located on the banks of Agar river, Kharraghat is a Siddha temple of Lord Mahadev, linked with Shaiv sect saints since 1890. | अगर नदी के तट पर स्थित खर्राघाट भगवान महादेव का सिद्ध मंदिर है, जिसका संबंध 1890 से शैव संप्रदाय के महात्माओं से है।"
      },
      {
        "name": "Setganga (सेतगंगा)",
        "image": "https://cdn.s3waas.gov.in/s3051e4e127b92f5d98d3c79b195f2b291/uploads/bfi_thumb/2018050939-olw6wci7y0zgym35frr2q8fdw093k8x2xjiu28f55e.jpg",
        "description": "A major cultural and religious site in South Kaushal Chhattisgarh, Setganga is known for art, music, history, and devotion. | दक्षिण कौशल छत्तीसगढ़ का प्रमुख सांस्कृतिक और धार्मिक स्थल सेतगंगा कला, संगीत, इतिहास और आस्था के लिए प्रसिद्ध है।"
      },
      {
        "name": "Rajiv Gandhi Reservoir - Khudiya (राजीव गांधी जलाशय - खुड़िया)",
        "image": "https://cdn.s3waas.gov.in/s3051e4e127b92f5d98d3c79b195f2b291/uploads/bfi_thumb/2018042363-olw6w8qv6oubo68m1q4kg9djigrmpgi5l0ww54kpua.jpg",
        "description": "Constructed by joining three natural hills, this reservoir has Maniyari river passing through, offering scenic beauty. | तीन प्राकृतिक पहाड़ियों को मिलाकर बना यह जलाशय, जिसके बीच से मणियारी नदी बहती है, प्राकृतिक सुंदरता का अनोखा स्थल है।"
      },
      {
        "name": "Satyanarayana Temple (सत्यनारायण मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3051e4e127b92f5d98d3c79b195f2b291/uploads/bfi_thumb/2018032664-olw6vjd825vkyp9h5x5n2xs3h28pxmpehjas6nmcia.jpg",
        "description": "One of the few temples dedicated to Lord Satyanarayana in Chhattisgarh, located in Mungeli. | छत्तीसगढ़ के कुछ गिने-चुने सत्यनारायण मंदिरों में से एक, यह मंदिर मुंगेली में स्थित है।"
      },
      {
        "name": "Achanakmar Tiger Reserve (अचानकमार टाइगर रिजर्व)",
        "image": "https://cdn.s3waas.gov.in/s3051e4e127b92f5d98d3c79b195f2b291/uploads/bfi_thumb/2018052174-olw6vwiypudlh8qd12uf1ugjsgfuxe5n7cfkwj2u36.jpg",
        "description": "Spread over 553 sq km in the Satpura hills, Achanakmar Tiger Reserve is rich in natural beauty, biodiversity, and panoramic views. | सतपुड़ा की पहाड़ियों में फैला 553 वर्ग किमी क्षेत्र का अचानकमार टाइगर रिजर्व प्राकृतिक सुंदरता और जैव विविधता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Madku Island (मड़कू द्वीप)",
        "image": "https://cdn.s3waas.gov.in/s3051e4e127b92f5d98d3c79b195f2b291/uploads/bfi_thumb/2018052155-olw6wdg24v0ra81saa5paq6uhe4gry0t9o6bjidqz6.jpg",
        "description": "Located on Shivnath river, Madku Island is full of natural beauty, divided into two parts by the flowing stream. | शिवनाथ नदी पर स्थित मड़कू द्वीप प्राकृतिक सुंदरता से भरपूर है और नदी की धारा से दो भागों में बंटा हुआ है।"
      },
      {
        "name": "Motipur (Amrit Island) (मोतीपुर - अमृत द्वीप)",
        "image": "https://cdn.s3waas.gov.in/s3051e4e127b92f5d98d3c79b195f2b291/uploads/bfi_thumb/2018052197-olw6wdg24v0ra81saa5paq6uhe4gry0t9o6bjidqz6.jpg",
        "description": "Known for its unique natural structure and religious faith, Motipur (Amrit Island) is an emerging tourist and spiritual site. | अपनी प्राकृतिक संरचना और धार्मिक आस्था के लिए प्रसिद्ध मोतीपुर (अमृत द्वीप) पर्यटन और आस्था का प्रमुख केंद्र है।"
      },
      {
        "name": "Hathnikala Temple (हाथनीकला मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3051e4e127b92f5d98d3c79b195f2b291/uploads/bfi_thumb/2018032621-olw6vjd825vkyp9h5x5n2xs3h28pxmpehjas6nmcia.jpg",
        "description": "Surrounded by greenery, Hathnikala Devi temple is becoming a major centre of tourism, religious faith, and devotion. | हरियाली से घिरा हाथनीकला देवी मंदिर पर्यटन, आस्था और भक्ति का प्रमुख केंद्र बनता जा रहा है।"
      }
    ],

    "Narayanpur (नारायणपुर)": [
      {
        "name": "Pahadi Mata Mandir (पहाड़ी माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32afe4567e1bf64d32a5527244d104cea/uploads/2020/05/2020051139.jpg",
        "description": "Situated on a hill, Pahadi Mata Mandir is both a religious and adventurous destination. | पहाड़ी पर स्थित पहाड़ी माता मंदिर धार्मिक आस्था और साहसिक पर्यटन का प्रमुख स्थल है।"
      },
      {
        "name": "Ramkrishna Mission Ashram (रामकृष्ण मिशन आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s32afe4567e1bf64d32a5527244d104cea/uploads/bfi_thumb/2018122783-olw7non941ehvqus26ixvwucn89vt8vhvcn47eqaju.jpg",
        "description": "Established in 1985, this Ashram works for the upliftment of tribal people of Abujhmad, providing education, healthcare, and social service. | 1985 में स्थापित यह आश्रम अबूझमाड़ के आदिवासी समाज के उत्थान के लिए शिक्षा, स्वास्थ्य और सेवा कार्य करता है।"
      },
      {
        "name": "Handawada Waterfall (हांड़वाड़ा जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBXOA50_iOVOKKj1nccgkAncrbQ2ZZuKItJg&s",
        "description": "Located in Orchha block, this scenic waterfall of Abujhmad region is rich in natural beauty and a favourite for eco-tourism. | ओरछा ब्लॉक के अबूझमाड़ क्षेत्र में स्थित यह सुरम्य झरना प्राकृतिक सुंदरता से भरपूर है और इको-टूरिज्म के लिए लोकप्रिय है।"
      }
    ],

    "Raigarh (रायगढ़)": [
      {
        "name": "Gomarda Sanctuary (गोमार्दा अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s351d92be1c60d1db1d2e5e7a07da55b26/uploads/bfi_thumb/2018060759-olw9un3700vsp8o9wlyfzpnm2m4h6vunyt2ulu8o0g.jpg",
        "description": "Located near Sarangarh, Gomarda Sanctuary is spread over 275 sq. km. The region has rich plateau areas and is home to diverse wildlife including wild buffaloes, deer, and birds. | सारंगढ़ के पास स्थित गोमार्दा अभयारण्य लगभग 275 वर्ग किलोमीटर क्षेत्र में फैला हुआ है। यहाँ के पठारी क्षेत्रों में जंगली भैंसे, हिरण और विभिन्न पक्षी पाए जाते हैं।"
      },
      {
        "name": "Ram Jharna / Ram Waterfall (राम झरना / राम जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s351d92be1c60d1db1d2e5e7a07da55b26/uploads/bfi_thumb/2018060158-olw9um5ct6uidmpn23jtf7w5h893z6qxmofd4ka26o.jpg",
        "description": "About 18 km from Raigarh district headquarters, Ram Jharna is a natural waterfall surrounded by greenery. It is associated with Shri Ram’s exile period and is a popular picnic and religious spot. | रायगढ़ मुख्यालय से लगभग 18 किमी दूर स्थित राम झरना एक प्राकृतिक जलप्रपात है जो हरियाली से घिरा हुआ है। इसका संबंध श्रीराम के वनवास काल से माना जाता है और यह धार्मिक एवं पिकनिक स्थल के रूप में प्रसिद्ध है।"
      }
    ],

    "Rajnandgaon (राजनांदगांव)": [
      {
        "name": "Patal Bhairavi Temple (पाताल भैरवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s34ffce04d92a4d6cb21c1494cdfcd6dc1/uploads/bfi_thumb/2018071677-olw9scde35cjhh0z68243hobxpo26oryw9xsjc82qa.png",
        "description": "Barfani Dham is a famous temple in Rajnandgaon city. A huge Shiv Linga is installed at the top, making it an important religious site. | बरफानी धाम राजनांदगांव शहर का प्रसिद्ध मंदिर है। इसके शिखर पर एक विशाल शिवलिंग स्थापित है, जो इसे धार्मिक दृष्टि से विशेष बनाता है।"
      },
      {
        "name": "Mangata Wildlife Park (मंगाटा वाइल्डलाइफ़ पार्क)",
        "image": "https://cdn.s3waas.gov.in/s34ffce04d92a4d6cb21c1494cdfcd6dc1/uploads/bfi_thumb/2018071741-olw9sqgyxnvubmghvw5imw48uhqke5bxy7q2qhn64y.png",
        "description": "This environmental park houses around 250 spotted deer, 150 wild boars, peacocks, hyenas, rabbits, wild cats and several other small animals. | इस पर्यावरणीय पार्क में लगभग 250 चीतल, 150 जंगली सूअर, मोर, लकड़बग्घा, खरगोश, जंगली बिल्लियाँ और कई अन्य छोटे जीव पाए जाते हैं।"
      },
      {
        "name": "Khara Reserve Forest (खारा रिज़र्व फ़ॉरेस्ट)",
        "image": "https://cdn.s3waas.gov.in/s34ffce04d92a4d6cb21c1494cdfcd6dc1/uploads/bfi_thumb/2018071765-olw9scde35cjhh0z68243hobxpo26oryw9xsjc82qa.png",
        "description": "Khara Reserve Forest is a protected area with dense forest cover, offering rich biodiversity and scenic surroundings. | खारा रिज़र्व फ़ॉरेस्ट एक संरक्षित क्षेत्र है, जहाँ घना जंगल, विविध वन्यजीव और प्राकृतिक सौंदर्य पर्यटकों को आकर्षित करते हैं।"
      },
      {
        "name": "Maa Bamleshwari Temple (माँ बम्लेश्वरी मंदिर, डोंगरगढ़)",
        "image": "https://cdn.s3waas.gov.in/s34ffce04d92a4d6cb21c1494cdfcd6dc1/uploads/bfi_thumb/2018071664-olw9scde35cjhh0z68243hobxpo26oryw9xsjc82qa.png",
        "description": "Located in Dongargarh, this temple dedicated to Maa Bamleshwari is one of the most famous pilgrimage sites in Chhattisgarh. It is also surrounded by scenic hills. | डोंगरगढ़ स्थित माँ बम्लेश्वरी का यह मंदिर छत्तीसगढ़ के सबसे प्रसिद्ध धार्मिक स्थलों में से एक है। यह प्राकृतिक पर्वत श्रृंखलाओं से घिरा हुआ है।"
      },
      {
        "name": "Kharkhara Dam (खरखरा डैम)",
        "image": "https://cdn.s3waas.gov.in/s34ffce04d92a4d6cb21c1494cdfcd6dc1/uploads/bfi_thumb/2018071794-olw9sqgyxnvubmghvw5imw48uhqke5bxy7q2qhn64y.png",
        "description": "Kharkhara Dam is situated about 99 km from Rajnandgaon and is a popular spot for picnic and scenic views. | खरखरा डैम राजनांदगांव से लगभग 99 किमी दूर स्थित है और यह पिकनिक व प्राकृतिक सौंदर्य का प्रमुख केंद्र है।"
      }
    ],

    "Sarangarh-Bilaigarh (सरंगड़-बिलाईगढ़)": [
      {
        "name": "Samaleswari Temple (समलेश्वरी मंदिर)",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/07/samaleswari-temple.jpg",
        "description": "This temple is located inside the historic Sarangarh Giri Vilas complex and is dedicated to Maa Samaleswari. | यह मंदिर ऐतिहासिक सारंगढ़ गिरी विलास परिसर के भीतर स्थित है और माँ समलेश्वरी को समर्पित है।"
      },
      {
        "name": "Tripura Bala Sundari Kali Temple (त्रिपुरा बाला सुंदरी काली मंदिर)",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/07/tripura-bala-sundari-kali-temple.jpg",
        "description": "Situated on the banks of Ghoghara drain, this temple is dedicated to Goddess Kali. | घोघरा नाले के तट पर स्थित यह मंदिर देवी काली को समर्पित है।"
      },
      {
        "name": "Nathaladai Temple (नाथलादाई मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0wCdRB6GuGKdyFna1sMvWplnx8_iSKAOa_A&s",
        "description": "Located at Timalga in the lap of Mahanadi, this temple is surrounded by serene natural beauty. | यह मंदिर महानदी की गोद में तिमलगाँव में स्थित है और प्राकृतिक सुंदरता से घिरा हुआ है।"
      },
      {
        "name": "Gopalji Temple (गोपालजी मंदिर)",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/07/famous-places-to-visit-in-sarangarh.jpg",
        "description": "This temple is situated in a small monastery of Sarangarh. | यह मंदिर सारंगढ़ के एक छोटे मठ में स्थित है।"
      },
    ],

    "Sakti (सक्ती)": [
      {
        "name": "Turridham (Shiva Temple) (तुर्रीधाम शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c042f4db68f23406c6cecf84a7ebb0fe/uploads/bfi_thumb/2024011687-qie3f07d1kunfssrsid5ojnvrcancvpgropcnw3nwy.jpeg",
        "description": "Situated 13 km from Sakti tehsil, Turridham is dedicated to Lord Shiva and is one of the prominent religious sites of the region. | सक्ती तहसील से 13 किमी दूर स्थित तुर्रीधाम भगवान शिव को समर्पित प्रमुख धार्मिक स्थल है।"
      },
      {
        "name": "Burden Temple (बुर्देन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c042f4db68f23406c6cecf84a7ebb0fe/uploads/bfi_thumb/2024011669-qie2vrgb4oibr6r15ox44wh5yd54rybagfwhyymtaq.jpg",
        "description": "Located 11 km from Sakti in Malkharoda tehsil, this ancient temple houses the idol of an eight-armed Goddess. | सक्ती से 11 किमी दूर मलक्हरोदा तहसील में स्थित यह प्राचीन मंदिर आठ भुजाओं वाली देवी की प्रतिमा को समर्पित है।"
      },
      {
        "name": "Damaudhara (दमौधारा)",
        "image": "https://cdn.s3waas.gov.in/s3c042f4db68f23406c6cecf84a7ebb0fe/uploads/bfi_thumb/2024011653-qie0qooqpqzvqapj8difocogcx1llgbnuy35a4wziq.jpeg",
        "description": "Located 20 km from Sakti on the Sakti–Korba road, Damaudhara is a scenic adventure spot that attracts many tourists. | सक्ती से 20 किमी दूर सक्ती-कोरबा मार्ग पर स्थित दमौधारा एक सुंदर एडवेंचर स्थल है जो पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Chandrahasini Devi Temple (चन्द्रहासिनी देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c042f4db68f23406c6cecf84a7ebb0fe/uploads/bfi_thumb/2024011698-qidxrqlt4cleri1zq5ajzc8f6o65t7r3tlybkrhjgy.jpeg",
        "description": "Located 22 km from Dabhra tehsil headquarters, this temple is situated on the banks of the Mahanadi river and is dedicated to Goddess Chandrahasini. | तहसील मुख्यालय डभरा से 22 किमी दूर महानदी नदी के तट पर स्थित यह मंदिर देवी चन्द्रहासिनी को समर्पित है।"
      }
    ],

    "Sukma (सुकमा)": [
      {
        "name": "Tongpal Waterfall (टोंगपाल जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s358d4d1e7b1e97b258c9ed0b37e02d087/uploads/bfi_thumb/2019010839-e1546947671383-olw8t1jltm0oq2s2k23zlh4hlkfaht2bk208dpeoru.jpg",
        "description": "Tongpal Waterfall is located near Tongpal village in Sukma. It is a beautiful natural spot, especially attractive during the monsoon season. | टोंगपाल जलप्रपात सुकमा के टोंगपाल गाँव के पास स्थित है। यह प्राकृतिक स्थल खासकर बरसात में बेहद आकर्षक होता है।"
      },
      {
        "name": "Dornapal Bridge (डोर्नापाल पुल)",
        "image": "https://cdn.s3waas.gov.in/s358d4d1e7b1e97b258c9ed0b37e02d087/uploads/bfi_thumb/2019010890-olw8t76mym8enqjvn4jr0fp95vnhrzopktx59d6bqi.jpg",
        "description": "Dornapal Bridge is located about 37 KM from Sukma headquarters, connecting Chhattisgarh and Odisha in an LWE affected area. | डोर्नापाल पुल सुकमा मुख्यालय से लगभग 37 किमी दूर स्थित है, जो छत्तीसगढ़ और ओडिशा को जोड़ता है और एलडब्ल्यूई प्रभावित क्षेत्र में आता है।"
      },
      {
        "name": "Dudhma Tourist Place (डुधमा पर्यटन स्थल)",
        "image": "https://cdn.s3waas.gov.in/s358d4d1e7b1e97b258c9ed0b37e02d087/uploads/bfi_thumb/2018122119-olw8sodv5xio7jb6owf7mkg1a685i1m2u8vfnty76y.jpg",
        "description": "Dudhma is one of the most visited tourist places near Sukma, known for its natural beauty and peaceful surroundings. | डुधमा सुकमा के पास सबसे अधिक देखे जाने वाले पर्यटन स्थलों में से एक है, जो अपनी प्राकृतिक सुंदरता और शांत वातावरण के लिए प्रसिद्ध है।"
      }
    ],

    "Surajpur (सूरजपुर)": [
      {
        "name": "Kudargarh Temple (कुदरगढ़ मंदिर)",
        "image": "https://wanderon-images.gumlet.io/blogs/new/2024/08/kudargarh.jpg",
        "description": "Kudargarh Temple, dedicated to Goddess Kudargarhi, is about 25 km from Surajpur district headquarters and is especially visited during Chaitra Navratra. | कुदरगढ़ मंदिर, जो देवी कुदरगढ़ी को समर्पित है, सुरजपुर जिला मुख्यालय से लगभग 25 किमी दूर स्थित है और चैत्र नवरात्र में विशेष रूप से दर्शनार्थियों द्वारा देखा जाता है।"
      },
      {
        "name": "Shivpur Shiva Temple (शिवपुर शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s345645a27c4f1adc8a7a835976064a86d/uploads/bfi_thumb/2018091146-olw8mb18ucspiokbw5a8q6bkc5mlbwbkmpoykbe9d6.jpg",
        "description": "Shivpur Shiva Temple is located in village Shivpur, about 4 km from Pratappur and 45 km from Ambikapur. It is an important religious site in the region. | शिवपुर शिव मंदिर प्रतापपुर से लगभग 4 किमी और अंबिकापुर से 45 किमी दूर स्थित है। यह क्षेत्र का एक प्रमुख धार्मिक स्थल है।"
      },
      {
        "name": "Mahamaya Temple (महामाया मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s345645a27c4f1adc8a7a835976064a86d/uploads/bfi_thumb/2018041933-olw8m79w30nk88psi3nqg79pym54h3wna730n7ju22.jpg",
        "description": "Mahamaya Temple is situated at Devipur, 4 km away from Surajpur. It is one of the most famous and oldest temples of the district. | महामाया मंदिर देविपुर में सुरजपुर से लगभग 4 किमी दूर स्थित है। यह जिले के प्रसिद्ध और प्राचीन मंदिरों में से एक है।"
      },
      {
        "name": "Hanuman Temple (हनुमान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s345645a27c4f1adc8a7a835976064a86d/uploads/bfi_thumb/2018100186-olw8mcx585h0bfs1gklo8l2w86q3zx9lkx5ua53dze.jpg",
        "description": "Hanuman Temple of Surajpur is located near Aggarwal Dharamshala. It is a popular spiritual site in the heart of the city. | सुरजपुर का हनुमान मंदिर अग्रवाल धर्मशाला के पास स्थित है। यह शहर के बीचोंबीच एक प्रसिद्ध धार्मिक स्थल है।"
      },
      {
        "name": "Dugdugi Rock (डुगडुगी शिला)",
        "image": "https://cdn.s3waas.gov.in/s345645a27c4f1adc8a7a835976064a86d/uploads/bfi_thumb/2018041946-olw8m79w30nk88psi3nqg79pym54h3wna730n7ju22.jpg",
        "description": "Dugdugi Rock is a unique natural structure located on the hill of Jam Jamari near Bhayyathan. | डुगडुगी शिला भैयाथान मुख्यालय के पास जम जमारी की पहाड़ी पर स्थित एक अद्भुत प्राकृतिक संरचना है।"
      }
    ],

    "Surguja (सरगुजा)": [
      {
        "name": "Maheshpur Stone Carving (महेशपुर शिल्पकला)",
        "image": "https://cdn.s3waas.gov.in/s38c7bbbba95c1025975e548cee86dfadc/uploads/bfi_thumb/2018051059-olwaakgqzzahup140716kyvfdglqtbk28zdm6y1mga.jpg",
        "description": "At Maheshpur, a huge stone figure of a man is found, believed to be of Samni’s era. It is an ancient site with remarkable stone carvings. | महेशपुर में एक विशाल पत्थर की आकृति पाई जाती है, जिसे सामनी काल का माना जाता है। यह प्राचीन स्थल अद्भुत शिल्पकला का उदाहरण है।"
      },
      {
        "name": "Deogarh Temple (देवगढ़ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38c7bbbba95c1025975e548cee86dfadc/uploads/bfi_thumb/2018051558-olwaao83rbfn54vne8nouxx9r037o3yzlhzk41w1re.jpg",
        "description": "Deogarh is a village in Ambikapur tehsil, situated on the banks of the Rihand river. It is known for its ancient idols and peaceful scenic beauty. | देवगढ़ अंबिकापुर तहसील का एक गाँव है, जो रिहंद नदी के किनारे स्थित है। यहाँ प्राचीन मूर्तियों और शांत प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Ramgarh Hill (रामगढ़ पहाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s38c7bbbba95c1025975e548cee86dfadc/uploads/bfi_thumb/2018051581-olwaao83rbfn54vne8nouxx9r037o3yzlhzk41w1re.jpg",
        "description": "Ramgarh Hill, located on Ambikapur–Bilaspur road, is one of the most ancient historical places of Surguja. | रामगढ़ पहाड़ी, जो अंबिकापुर-बिलासपुर मार्ग पर स्थित है, सरगुजा के सबसे प्राचीन ऐतिहासिक स्थलों में से एक है।"
      },
      {
        "name": "Kailash Caves (कैलाश गुफाएँ)",
        "image": "https://cdn.s3waas.gov.in/s38c7bbbba95c1025975e548cee86dfadc/uploads/bfi_thumb/2018051599-olwaao83rbfn54vne8nouxx9r037o3yzlhzk41w1re.jpg",
        "description": "Kailash Caves are located at Sabarbar, around 60 km east of Ambikapur. These caves were created by Saint Rameshwar Gahir. | कैलाश गुफाएँ सबरबर में अंबिकापुर से लगभग 60 किमी पूर्व स्थित हैं। इन गुफाओं का निर्माण संत रमेश्वर गहीर द्वारा किया गया था।"
      },
      {
        "name": "Buddha Temple, Mainpat (बौद्ध मंदिर, मैनपाट)",
        "image": "https://cdn.s3waas.gov.in/s38c7bbbba95c1025975e548cee86dfadc/uploads/bfi_thumb/2018051543-olwaao83rbfn54vne8nouxx9r037o3yzlhzk41w1re.jpg",
        "description": "Mainpat, known as the Shimla of Surguja, is home to Tibetan refugees who built beautiful Buddha temples and run small industries like designer mat weaving. | मैनपाट, जिसे सरगुजा का शिमला कहा जाता है, तिब्बती शरणार्थियों का निवास है। यहाँ सुंदर बौद्ध मंदिर और कालीन जैसी छोटी उद्योग इकाइयाँ हैं।"
      },
      {
        "name": "Thin-Thini Stone (थिन-थिनी पत्थर)",
        "image": "https://cdn.s3waas.gov.in/s38c7bbbba95c1025975e548cee86dfadc/uploads/bfi_thumb/2018051559-olwaao83rbfn54vne8nouxx9r037o3yzlhzk41w1re.jpg",
        "description": "Thin-Thini Patthar is a cylindrical rock weighing around 200 quintals, balanced mysteriously on ground rocks. | थिन-थिनी पत्थर लगभग 200 क्विंटल का बेलनाकार शिला है, जो आश्चर्यजनक रूप से अन्य चट्टानों पर संतुलित है।"
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
