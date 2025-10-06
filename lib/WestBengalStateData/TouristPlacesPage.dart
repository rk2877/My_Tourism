import 'package:flutter/material.dart';
import 'TouristPlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;
  final String districtImage;

  TouristPlacesPage({required this.districtName, required this.districtImage});

  final Map<String, List<Map<String, String>>> touristPlaces = {
    "Alipurduar (अलीपुरद्वार)": [
      {
        "name": "Jayanti (जयन्ती)",
        "image": "https://cdn.s3waas.gov.in/s33636638817772e42b59d74cff571fbb3/uploads/bfi_thumb/2023022095-q2fhjst7gmntf3ksdii40cabn1ziugbkyq279n8qgu.jpg",
        "description": "Beautiful place along the Jayanti River forming the natural border with Bhutan hills. | जयन्ती नदी के किनारे स्थित सुंदर स्थल, जो भूटान की पहाड़ियों के साथ प्राकृतिक सीमा बनाता है।"
      },
      {
        "name": "Chilapata Wildlife Sanctuary (चिलापाटा वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s33636638817772e42b59d74cff571fbb3/uploads/bfi_thumb/2023022091-q2fhcfqpxckyh29tdbxbh76c4ea0jt39ya39xm5r7i.jpg",
        "description": "Wildlife sanctuary in Eastern Dooars at the Himalayan foothills, rich in biodiversity. | हिमालय की तलहटी में स्थित डुआर्स का वन्यजीव अभयारण्य, जैव विविधता से भरपूर।"
      },
      {
        "name": "Raymatang Tea Gardens (रायमाटंग चाय बगान)",
        "image": "https://cdn.s3waas.gov.in/s33636638817772e42b59d74cff571fbb3/uploads/bfi_thumb/2023022065-q2fh49j8i7e7j4563ar3arf26sk4mjnahtwaq09zb2.jpg",
        "description": "Small river and village in Western Buxa area, famous for scenic tea gardens. | पश्चिमी बुक्सा क्षेत्र की नदी और गांव, चाय बगानों की खूबसूरती के लिए प्रसिद्ध।"
      },
      {
        "name": "Jaigaon (जयगांव)",
        "image": "https://cdn.s3waas.gov.in/s33636638817772e42b59d74cff571fbb3/uploads/bfi_thumb/2023022026-q2fgxebokrzspo496tw7kzstygele5dvvubli8giri.jpg",
        "description": "Small border town near Bhutan in Alipurduar District. | अलीपुरद्वार जिले का छोटा सीमा नगर, भूटान की सीमा के पास।"
      },
      {
        "name": "Totopara (टोटोपाड़ा)",
        "image": "https://cdn.s3waas.gov.in/s33636638817772e42b59d74cff571fbb3/uploads/bfi_thumb/2023022024-q2fgmghb170nl20c2lnj296p20bssyycpoz5faoh6m.jpg",
        "description": "Home of the Toto tribe, once near extinction in the 1950s but now preserved. | टोटो जनजाति का घर, जो 1950 के दशक में विलुप्त होने के कगार पर थी, अब संरक्षित है।"
      },
      {
        "name": "Rajabhatkhawa (राजाभातखावा)",
        "image": "https://cdn.s3waas.gov.in/s33636638817772e42b59d74cff571fbb3/uploads/bfi_thumb/2023022015-q2fgeiqdbk5hjljef64y09akgvg7szfyaenjj6g5q6.jpg",
        "description": "Town just outside Buxa Tiger Reserve, known for adventure and natural beauty. | बुक्सा टाइगर रिजर्व के पास स्थित नगर, रोमांच और प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
      {
        "name": "Buxa Tiger Reserve (बुक्सा टाइगर रिजर्व)",
        "image": "https://cdn.s3waas.gov.in/s33636638817772e42b59d74cff571fbb3/uploads/bfi_thumb/2023022015-q2fgeiqdbk5hjljef64y09akgvg7szfyaenjj6g5q6.jpg",
        "description": "760 sq km tiger reserve in Himalayan foothills, rich in flora and fauna. | हिमालय की तलहटी में फैला 760 वर्ग किमी का टाइगर रिजर्व, जैव विविधता से भरपूर।"
      },
      {
        "name": "Jaldapara National Park (जलदापाड़ा राष्ट्रीय उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s33636638817772e42b59d74cff571fbb3/uploads/bfi_thumb/2023020820-q1urqcqyx5skw9w9a6ybo7ecm9hma6vqiaxtcb6mm6.jpg",
        "description": "National park famous for one-horned rhinoceros, elephants, and rich wildlife. | एक प्रसिद्ध राष्ट्रीय उद्यान, एक सींग वाले गैंडे, हाथियों और समृद्ध वन्यजीवन के लिए जाना जाता है।"
      }
    ],
    "Bankura (बांकुड़ा)": [
      {
        "name": "Susunia Hill (सुशुनिया हिल)",
        "image": "https://cdn.s3waas.gov.in/s38e82ab7243b7c66d768f1b8ce1c967eb/uploads/bfi_thumb/2020070641-scaled-os20o16aq0fllat5qyfosa61f59m4jgqj5hesro3cy.jpg",
        "description": "Ancient hill on the way to Bankura–Purulia, famous for rock climbing, natural beauty and historical significance. | बांकुड़ा–पुरुलिया मार्ग पर स्थित प्राचीन पहाड़ी, प्राकृतिक सुंदरता, शिलाचढ़ाई और ऐतिहासिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Mukutmanipur Dam & Boat Ride (मुकुटमणिपुर बाँध और नौकायन)",
        "image": "https://cdn.s3waas.gov.in/s38e82ab7243b7c66d768f1b8ce1c967eb/uploads/bfi_thumb/2020070328-scaled-orx5af0hb9ki4hostv0gti1qn49w22ujtnmt3wxhc2.jpg",
        "description": "Second largest earthen dam in India, surrounded by scenic hillocks and ideal for boating. | भारत का दूसरा सबसे बड़ा मिट्टी का बाँध, रहस्यमयी पहाड़ियों से घिरा हुआ, नौकायन के लिए प्रसिद्ध।"
      },
      {
        "name": "Biharinath Hill (बिहारीनाथ हिल)",
        "image": "https://cdn.s3waas.gov.in/s38e82ab7243b7c66d768f1b8ce1c967eb/uploads/bfi_thumb/2020070764-os3ub1jvu77smqelfdpk2zgiwuaerqgaqyuxgw0d1e.jpg",
        "description": "Picturesque hill located 57 km from Bankura, considered as the highest hill of Bankura district. | बांकुड़ा से 57 किमी दूर स्थित सुरम्य पहाड़ी, जिले की सबसे ऊँची पहाड़ी मानी जाती है।"
      },
      {
        "name": "Bishnupur Temples (बिष्णुपुर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38e82ab7243b7c66d768f1b8ce1c967eb/uploads/bfi_thumb/2020070651-scaled-os219wv1t6dvuj0zzex1treb81f7awbsvg6ayn86iq.jpg",
        "description": "Famous temple town with terracotta temples, rich heritage, and cultural pride. | टेराकोटा मंदिरों के लिए प्रसिद्ध नगर, समृद्ध विरासत और संस्कृति का प्रतीक।"
      },
      {
        "name": "Joyrambati (जयरामबती)",
        "image": "https://cdn.s3waas.gov.in/s38e82ab7243b7c66d768f1b8ce1c967eb/uploads/bfi_thumb/2020070731-os3w09rf0p16wbguwchp018fxei55yiuu0ojur85qa.jpg",
        "description": "Sacred village near Bishnupur, birthplace of Holy Mother Sri Sarada Devi. | विष्णुपुर के पास स्थित पवित्र गाँव, पवित्र माँ श्री शारदा देवी का जन्मस्थान।"
      },
      {
        "name": "Jhilimili – Sutan Forest & Lake (झिलिमिली – सुतान झील)",
        "image": "https://cdn.s3waas.gov.in/s38e82ab7243b7c66d768f1b8ce1c967eb/uploads/bfi_thumb/2020070374-scaled-orx5bm921n7oyjxztdpb074xyucrw5m7bln56n5ddu.jpg",
        "description": "Beautiful forest drive from Ranibandh to Jhilimili, known for dense forest and Sutan Lake. | रानीबांध से झिलिमिली तक का मनोहारी वनमार्ग, घने जंगल और सुतान झील के लिए प्रसिद्ध।"
      }
    ],
    "Birbhum (बीरभूम)": [
      {
        "name": "Maa Tara Temple, Tarapith (माँ तारा मंदिर, तारापीठ)",
        "image": "https://cdn.s3waas.gov.in/s3fc3cf452d3da8402bebb765225ce8c0e/uploads/bfi_thumb/2021060716-p8b1lyqfn4x5d9xog3km6vhbo9vgztiwbow9jg426w.jpg",
        "description": "Famous Shakti Peeth dedicated to Goddess Tara, located near the Dwarka River about 80 km from Bolpur. | द्वारका नदी के किनारे स्थित प्रसिद्ध शक्तिपीठ, देवी तारा को समर्पित, बोलपुर से लगभग 80 किमी दूर।"
      },
      {
        "name": "Khoai, Bolpur (खोवाई, बोलपुर)",
        "image": "https://cdn.s3waas.gov.in/s3fc3cf452d3da8402bebb765225ce8c0e/uploads/bfi_thumb/2021030391-p3nsx6df9im0eyuxort9peufpq8zuhu7md76x25096.jpg",
        "description": "Unique red laterite landscape near Bolpur, popular for Shantiniketan fairs and cultural activities. | बोलपुर के पास स्थित विशिष्ट लाल मिट्टी का भू-भाग, शांति निकेतन के मेले और सांस्कृतिक गतिविधियों के लिए प्रसिद्ध।"
      }
    ],
    "Cooch Behar (कूचबिहार)": [
      {
        "name": "Rasik Bill (रसिक बिल)",
        "image": "https://cdn.s3waas.gov.in/s3fbd7939d674997cdb4692d34de8633c4/uploads/bfi_thumb/2022053110-ppmb4bsr7u044fi2xwine2twew6vgh32gce25c4sm8.jpg",
        "description": "Scenic wetland and wildlife tourism spot, with a watchtower offering panoramic views of the area. | सुंदर जलाशय और वन्यजीव पर्यटन स्थल, जहाँ वॉचटावर से पूरे क्षेत्र का मनोरम दृश्य दिखता है।"
      },
      {
        "name": "Madan Mohan Temple (मदन मोहन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3fbd7939d674997cdb4692d34de8633c4/uploads/bfi_thumb/2022053123-ppm9p98fvw39b5op5tsdwysah7wx8ic3fkcbg3uuow.jpg",
        "description": "Historical temple in the heart of Cooch Behar town, built by Maharaja Nripendra Narayan (1885–1889). | कूचबिहार नगर के मध्य स्थित ऐतिहासिक मंदिर, महाराजा नृपेंद्र नारायण द्वारा 1885–1889 में निर्मित।"
      }
    ],
    "Dakshin Dinajpur (दक्षिण दिनाजपुर)": [
      {
        "name": "Hili International Check Post (हिली अंतर्राष्ट्रीय चेक पोस्ट)",
        "image": "https://cdn.s3waas.gov.in/s3a5bfc9e07964f8dddeb95fc584cd965d/uploads/bfi_thumb/2020040893-scaled-onrg9wjdptxc82felomlz3npxsdvghyvpy4862o900.jpg",
        "description": "Border land port and international checkpost on the India-Bangladesh border, being developed as an integrated checkpost. | भारत-बांग्लादेश सीमा पर स्थित सीमा स्थल और अंतर्राष्ट्रीय चेकपोस्ट, जिसे एकीकृत चेकपोस्ट के रूप में विकसित किया जा रहा है।"
      },
      {
        "name": "Angina Bird Sanctuary, Kumarganj (अंगीना पक्षी अभयारण्य, कुमारगंज)",
        "image": "https://cdn.s3waas.gov.in/s3a5bfc9e07964f8dddeb95fc584cd965d/uploads/bfi_thumb/2020042777-ooo95nwkqjbjwtq2s4jqbwniibbwdzpk7mhgzk29ow.jpg",
        "description": "A scenic bird sanctuary in Kumarganj block, popular during winter and new-year for birdwatching. | कुमारगंज ब्लॉक में स्थित रमणीय पक्षी अभयारण्य, शीतकाल और नववर्ष के समय पक्षी-दर्शन के लिए प्रसिद्ध।"
      },
      {
        "name": "Bangarh Excavation Site, Gangarampur (बंगढ़ पुरातत्व स्थल, गंगारामपुर)",
        "image": "https://cdn.s3waas.gov.in/s3a5bfc9e07964f8dddeb95fc584cd965d/uploads/bfi_thumb/2020043064-ootngb2rt0gl6rm3z3l0cbznjhmedqykvw9r4n19jk.jpg",
        "description": "Ancient historical site of Bangarh, once an important administrative city in West Bengal. | बंगढ़ का प्राचीन ऐतिहासिक स्थल, जो कभी पश्चिम बंगाल का एक प्रमुख प्रशासनिक नगर था।"
      }
    ],
    "Darjeeling (दार्जिलिंग)": [
      {
        "name": "Ava Art Gallery (एवा आर्ट गैलरी)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080412-otgnusdxodditp0vjs52vbfk1ugv5xhhuicvnxohw0.jpg",
        "description": "Established in 1965 by Late Ava Devi and Bhopal Rao, showcasing exquisite artworks. | 1965 में लेट एवा देवी और भोपाल राव द्वारा स्थापित, सुंदर कलाकृतियों का प्रदर्शन करती है।"
      },
      {
        "name": "Old Cemetery (पुराना कब्रिस्तान)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080445-otgo3cozy13klsl1jhepl5mqw899anhgcwc52ozd74.jpg",
        "description": "A historical colonial-era cemetery in Darjeeling, lesser known but of interest to history lovers. | दार्जिलिंग का ऐतिहासिक औपनिवेशिक काल का कब्रिस्तान, इतिहास प्रेमियों के लिए आकर्षक।"
      },
      {
        "name": "Pony Road (पोनी रोड, चौरास्ता)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/20200804100-otgnyd5too9t09ttntsyuwxpfmu5ggoq07qeeudk7k.jpg",
        "description": "Family-friendly recreational spot at Chowrasta with pony rides surrounded by snow-clad mountains. | चौরাসता पर स्थित पारिवारिक मनोरंजन स्थल, जहां बर्फ से ढके पर्वतों के बीच पोनी सवारी की जा सकती है।"
      },
      {
        "name": "Dhirdham Temple (धिर्धाम मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080415-1-otgoa1bojm8z5yviidf7bgwqyvb8160qlzcfxj2ky8.jpg",
        "description": "Hindu temple inspired by Tibetan and Buddhist architecture, built in 1939. | तिब्बती और बौद्ध वास्तुकला से प्रेरित हिंदू मंदिर, 1939 में निर्मित।"
      },
      {
        "name": "Jamuni Tourist Complex (जमूनी टूरिस्ट कॉम्प्लेक्स)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080450-otgoj7916gsmd3k9zu194nnjh4522xeivcbvdnhea8.jpg",
        "description": "A developing tourist destination located 12 km from Darjeeling. | दार्जिलिंग से 12 किमी दूर विकसित हो रहा पर्यटन स्थल।"
      },
      {
        "name": "Happy Valley Tea Estate (हैप्पी वैली चाय बागान)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080467-otgokotu00tyqvegaz6zks4tc2sz9ob82pijqf9yfk.jpg",
        "description": "Established in 1854, one of the oldest tea estates in Darjeeling. | 1854 में स्थापित, दार्जिलिंग के सबसे पुराने चाय बागानों में से एक।"
      },
      {
        "name": "Bhutia Busty Monastery (भूटिया बस्ती मठ)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080481-otgo7edzdcn0lcpewqdvtmv6yyb5fqjukxgegkzceo.jpg",
        "description": "Buddhist monastery of the Karma Dorjee Chyoling order located in Bhutia Busty. | भूटिया बस्ती में स्थित बौद्ध मठ, कर्मा दोर्जे च्योलिंग सम्प्रदाय का।"
      },
      {
        "name": "St. Andrew’s Church (सेंट एंड्रयू चर्च)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020081186-scaled-otsqgxusn5s0d0460f0cikd1w2ks6imhbrs6hsz3ps.jpg",
        "description": "Colonial-era church built in 1843, with British architecture influence. | 1843 में निर्मित औपनिवेशिक काल का चर्च, ब्रिटिश स्थापत्य का उदाहरण।"
      },
      {
        "name": "Lloyd Botanical Garden (लॉयड बॉटनिकल गार्डन)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080495-1-scaled-otgohqm2jqskaxoqj7a590xq7jci3vlk03soi5nfyo.jpg",
        "description": "Spread over 40 acres, established in 1878, rich in Himalayan flora. | 40 एकड़ में फैला, 1878 में स्थापित, हिमालयी वनस्पतियों से समृद्ध।"
      },
      {
        "name": "Nightingale Park (नाइटिंगेल पार्क)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020081054-otrevjpqt09t5swx0skcfxmw0zo78qknr9j7y1ftsg.jpg",
        "description": "A public park with scenic views and cultural programs. | मनोरम दृश्यों और सांस्कृतिक कार्यक्रमों वाला सार्वजनिक उद्यान।"
      },
      {
        "name": "Tibetan Refugee Self Help Centre (तिब्बती शरणार्थी स्वयं सहायता केंद्र)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020081226-otupyx4bopd17p9ls17rg13z73rcg357vscytoicuo.jpg",
        "description": "Established in 1959 to rehabilitate Tibetan refugees, known for handicrafts. | 1959 में स्थापित, तिब्बती शरणार्थियों के पुनर्वास हेतु, हस्तशिल्प के लिए प्रसिद्ध।"
      },
      {
        "name": "Tenzing & Gombu Rock (तेनजिंग और गोंबु शिला)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080494-otgnu8nboumi1vtjr1lwwyevkr65oab4rsnol4hrio.jpg",
        "description": "Natural rock formations used for mountaineering training. | पर्वतारोहण प्रशिक्षण के लिए उपयोग की जाने वाली प्राकृतिक शिलाएं।"
      },
      {
        "name": "Dali Monastery (डाली मठ)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080486-otgoo30uohh8o6gyhg0hkxaqk62p2bsbvibo4e8ryo.jpg",
        "description": "A Drukpa Kagyud Monastery, 5 km from Darjeeling town. | द्रुक्पा कग्युद सम्प्रदाय का मठ, दार्जिलिंग नगर से 5 किमी दूर।"
      },
      {
        "name": "Rock Garden & Ganga Maya Park (रॉक गार्डन और गंगा माया पार्क)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020081042-otrevc71abzikx7u8pbbvzj79wp9j5qt28bc3tqz68.jpg",
        "description": "Popular recreational spot with waterfalls and landscaped gardens. | जलप्रपातों और सुसज्जित उद्यानों वाला लोकप्रिय पर्यटन स्थल।"
      },
      {
        "name": "Roy Villa (रॉय विला)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020092184-ovsb7v7std8c1qseo7a8unwsczx2vq0hdmov6igivk.jpg",
        "description": "Historic building associated with Sister Nivedita. | ऐतिहासिक भवन, सिस्टर निवेदिता से जुड़ा हुआ।"
      },
      {
        "name": "Peace Pagoda (पीस पगोडा)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020081290-scaled-otupysf4qj6llngfjh6mlkao86eidlmk753jfapbps.jpg",
        "description": "Buddhist Peace Pagoda built in 1992 promoting peace and harmony. | 1992 में निर्मित बौद्ध शांति स्तूप, शांति और सद्भावना का प्रतीक।"
      },
      {
        "name": "Japanese Temple (जापानी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020082421-oufso1ydmyzf1jey9ab3anmvposp54e7r91afz1x8w.jpg",
        "description": "Nipponzan Myohoji Temple built in 1972, near Peace Pagoda. | 1972 में निर्मित निप्पोनजॉन म्योहो जी मंदिर, पीस पगोडा के पास।"
      },
      {
        "name": "Observatory Hill & Mahakal Temple (ऑब्जर्वेटरी हिल व महाकाल मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020081234-otupyw6hhvbqw3ayxit4vjcilpvz8e1hjnphcejr0w.jpg",
        "description": "Sacred hill with Mahakal temple, blending Hindu and Buddhist traditions. | महाकाल मंदिर सहित पवित्र पहाड़ी, हिंदू और बौद्ध परंपराओं का संगम।"
      },
      {
        "name": "Chowrasta Mall (चौरास्ता मॉल)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020081241-otuq2s8fs6ngxznj7pcjp20744po3ahhqwwtums39s.jpg",
        "description": "Famous public square where four roads meet, central hub of Darjeeling. | प्रसिद्ध चौक जहां चार सड़कें मिलती हैं, दार्जिलिंग का प्रमुख केंद्र।"
      },
      {
        "name": "Himalayan Mountaineering Institute (हिमालयन माउंटेनियरिंग इंस्टीट्यूट)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020082420-oufsyrc7h1mz9nv5qww4oydv9o16t0w5w8id7f6ids.jpg",
        "description": "Founded in 1954, premier institute for mountaineering training. | 1954 में स्थापित, पर्वतारोहण प्रशिक्षण का प्रमुख संस्थान।"
      },
      {
        "name": "Padmaja Naidu Zoological Park (पद्मजा नायडू प्राणी उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020082424-ouft88jmdwm2c43jeidpc2a6wjbff5iq75bmev4ln4.jpg",
        "description": "Specialized in breeding endangered Himalayan animals like red panda and snow leopard. | संकटग्रस्त हिमालयी प्रजातियों जैसे रेड पांडा और स्नो लेपर्ड के संरक्षण के लिए प्रसिद्ध।"
      },
      {
        "name": "Darjeeling Himalayan Railway (दार्जिलिंग हिमालयन रेलवे)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020071693-scaled-e1594883822422-osjje3pv958pfjc1x4d8jpzdwmhs1kkxd8ubo2gx3k.jpg",
        "description": "UNESCO World Heritage 'Toy Train' connecting New Jalpaiguri to Darjeeling. | यूनेस्को विश्व धरोहर 'टॉय ट्रेन', जो न्यू जलपाईगुड़ी से दार्जिलिंग तक जाती है।"
      },
      {
        "name": "Batasia Loop & Gorkha War Memorial (बाटासिया लूप व गोरखा युद्ध स्मारक)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080478-1-otgnuqi9apay6h3lurbtqbwmv2q4qja1691wpdra8g.jpg",
        "description": "Spiral railway loop offering panoramic views, with war memorial for Gorkha soldiers. | घुमावदार रेलवे लूप, विहंगम दृश्य और गोरखा सैनिकों का युद्ध स्मारक।"
      },
      {
        "name": "Senchal Lake & Wildlife Sanctuary (सेंचल झील व वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020081064-otret9xsaf5v3q7pab7sx09scgv9n2k0g0rz6yt2ts.jpg",
        "description": "Sanctuary and lake located 10–15 km from Darjeeling town. | दार्जिलिंग नगर से 10–15 किमी दूर स्थित झील और वन्यजीव अभयारण्य।"
      },
      {
        "name": "Tiger Hill (टाइगर हिल)",
        "image": "https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020080499-otgnueactuu7zjlcu41obwzn52ecygxiskklgs9ehc.jpg",
        "description": "Famous sunrise viewpoint where Kanchenjunga peaks glow before sunrise. | प्रसिद्ध सूर्योदय स्थल, जहां सूर्योदय से पहले कंचनजंघा शिखर सुनहरे रंग में चमकते हैं।"
      }
    ],
    "Hooghly (हुगली)": [
      {
        "name": "Swabuj Dweep (सबुज द्वीप)",
        "image": "https://cdn.s3waas.gov.in/s3aff1621254f7c1be92f64550478c56e6/uploads/bfi_thumb/2023082961-qbmjlzoqyk10748ilti3g0q0qs7g1hu7w02pca8wzi.jpeg",
        "description": "A scenic tourist island full of greenery in the middle of Hooghly. | हुगली जिले का एक सुंदर पर्यटन द्वीप, जो हरियाली से भरपूर है।"
      },
      {
        "name": "Baba Taraknath Temple (बाबा तारकनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aff1621254f7c1be92f64550478c56e6/uploads/bfi_thumb/2023082945-scaled-qbmjgvgdr10szjo4hlv7vb7ob9fi4tituo7ja1u2v2.jpg",
        "description": "Dedicated to Lord Shiva worshiped as Taraknath, one of the most visited temples in Hooghly. | भगवान शिव को समर्पित प्रसिद्ध मंदिर, जहां उन्हें तारकनाथ के रूप में पूजा जाता है।"
      },
      {
        "name": "Mahesh Jagannath Temple (महेश जगन्नाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aff1621254f7c1be92f64550478c56e6/uploads/bfi_thumb/2023082930-qbmjabiw3m1u1f6tr9vuzgqz7jqdgsi7a8gntljw8u.jpeg",
        "description": "Known for the famous Rathayatra of Mahesh, the oldest chariot festival in Bengal. | महेश का प्रसिद्ध रथयात्रा उत्सव, जो बंगाल का सबसे पुराना रथ उत्सव है।"
      },
      {
        "name": "Lahiri Baba Ashram (लाहिरी बाबा आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s3aff1621254f7c1be92f64550478c56e6/uploads/bfi_thumb/2023082156-scaled-qb8ls1fbyx3o6i1f2pnecwehdszec19hduct1gtbem.jpg",
        "description": "Also called Adharalay, this temple is unique in architecture and serene surroundings. | आधारालय नामक यह मंदिर अपने विशेष स्थापत्य और शांत वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kamarpukur Ramkrishna Math & Mission (कामारपुकुर रामकृष्ण मठ एवं मिशन)",
        "image": "https://cdn.s3waas.gov.in/s3aff1621254f7c1be92f64550478c56e6/uploads/bfi_thumb/2023082169-scaled-qb8lmk183plgge053cbqta7omw0bflhumpcu9cxzpa.jpg",
        "description": "Birthplace of Ramakrishna, a great religious prophet, now an important pilgrimage site. | महान संत रामकृष्ण परमहंस का जन्मस्थान, आज एक महत्वपूर्ण तीर्थ स्थल।"
      },
      {
        "name": "Hooghly Imambara (हुगली इमामबाड़ा)",
        "image": "https://cdn.s3waas.gov.in/s3aff1621254f7c1be92f64550478c56e6/uploads/bfi_thumb/2023082172-scaled-qb8lh1pa1o1yeo089glgp69fal5vbgmhjfpdzz4266.jpg",
        "description": "Built by Hazi Muhammad Mohsin, it is a grand Islamic monument and architectural marvel. | हाजी मोहम्मद मोहसिन द्वारा निर्मित भव्य इस्लामी स्मारक और स्थापत्य कला का अद्भुत नमूना।"
      },
      {
        "name": "Chandannagar Strand (चंदननगर स्ट्रैंड)",
        "image": "https://cdn.s3waas.gov.in/s3aff1621254f7c1be92f64550478c56e6/uploads/bfi_thumb/2023081824-qb2x07kmfrmg1o16dp5ksnliwdshkqm1ioc8553ke6.jpg",
        "description": "A 2 km long scenic riverside road along Hooghly river, popular for leisure walks. | हुगली नदी के किनारे लगभग 2 किमी लंबी सुंदर सड़क, सैर के लिए प्रसिद्ध।"
      },
      {
        "name": "Hangseswari Temple (हंसेश्वरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aff1621254f7c1be92f64550478c56e6/uploads/bfi_thumb/2021022780-p3h3bgc87geyui9v50f61tdj5lmm7je7egwwnfsef2.jpg",
        "description": "One of the most important temples of Hooghly, unique for its 13 spires symbolizing human nerves. | हुगली का प्रसिद्ध मंदिर, जिसकी 13 मीनारें मानव नसों का प्रतीक हैं।"
      },
      {
        "name": "Bandel Church (बैंडेल चर्च)",
        "image": "https://cdn.s3waas.gov.in/s3aff1621254f7c1be92f64550478c56e6/uploads/bfi_thumb/2021022767-p3h34wexp142dob1jsu9lemicyirpdgpw73vc221l6.jpg",
        "description": "Built by the Portuguese in 1599, one of the oldest Christian churches in West Bengal. | 1599 में पुर्तगालियों द्वारा निर्मित, पश्चिम बंगाल के सबसे पुराने ईसाई गिरजाघरों में से एक।"
      }
    ],
    "Howrah (हावड़ा)": [
      {
        "name": "The Railway Museum (रेलवे म्यूज़ियम)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021102794-pf6gdj4y77mz5f5eheficeb1k8jy8bjxkzyzckk076.png",
        "description": "Established in 2006, the Railway Museum showcases the history of railways in Eastern India. | 2006 में स्थापित, रेलवे म्यूज़ियम पूर्वी भारत में रेलवे के इतिहास को प्रदर्शित करता है।"
      },
      {
        "name": "Bangeshwar Mahadev Temple (बंगेश्वर महादेव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092766-pdqj61i198ntbhskis88fo4yndqqlq0471pngobgua.jpg",
        "description": "A popular Shiva temple in Salkia, visited by thousands of devotees. | सालकिया में स्थित भगवान शिव का लोकप्रिय मंदिर, जहाँ हजारों भक्त दर्शन करते हैं।"
      },
      {
        "name": "Narayan (Sridhar) Mandir (नारायण (श्रीधर) मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092777-pdqiag5bjpev3bon04lnmn57v5glvykwioc4rv5tz6.png",
        "description": "Located in Patihal village, dedicated to Narayan, known for its historic importance. | पाटीहाल गाँव में स्थित यह मंदिर नारायण को समर्पित है और ऐतिहासिक महत्व रखता है।"
      },
      {
        "name": "Bhot Bagan Math, Ghusuri (भोट बागान मठ, घुसुरी)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092722-pdqk4613dpdktu82919mgk4f1zjh24hajyd9pbpwxu.png",
        "description": "The first Tibetan Buddhist temple in Howrah, a peaceful monastery. | हावड़ा का पहला तिब्बती बौद्ध मंदिर, एक शांतिपूर्ण मठ।"
      },
      {
        "name": "Mullick Ghat Flower Market (मुल्लिक घाट फूल बाजार)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092713-pdqhzptnisq0jl9snzlznumrpscr0cz81k7kj52n0i.jpg",
        "description": "Asia’s largest flower market, established in 1855. | एशिया का सबसे बड़ा फूल बाजार, 1855 में स्थापित।"
      },
      {
        "name": "Garchumuk (गढ़चुमुक)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092936-pdtqm2wf89yr6swy69681wphtd5mbj6tlj32ei49aa.png",
        "description": "Famous for the Deer Park and picnic spot near the confluence of rivers. | हिरण उद्यान और पिकनिक स्थल के लिए प्रसिद्ध, नदियों के संगम के पास स्थित।"
      },
      {
        "name": "Santragachi Jheel (सांतरागाछी झील)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092948-pdtqdeu07a3k49i8sia323gglfvrc0rxqmhv2myyo2.png",
        "description": "Large lake attracting migratory birds, near Santragachi railway station. | विशाल झील जहाँ प्रवासी पक्षी आते हैं, सांतरागाछी रेलवे स्टेशन के पास।"
      },
      {
        "name": "Sarat Chandra Chattopadhyay Kuthi (शरतचंद्र चट्टोपाध्याय कुटी)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092922-pdtpxwhvfov8jw19csxox0cnqkbqbt7dluzg09ytc2.png",
        "description": "House museum dedicated to the famous Bengali novelist Sarat Chandra Chattopadhyay. | प्रसिद्ध बंगाली उपन्यासकार शरतचंद्र चट्टोपाध्याय को समर्पित गृह संग्रहालय।"
      },
      {
        "name": "Gadiara (गदियारा)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092925-pdtrfx9y7wtht3kcwnkspvlcss25pko0p8r1xrv9qa.png",
        "description": "A small town and picnic spot at the confluence of rivers Rupnarayan and Hooghly. | रूपनारायण और हुगली नदियों के संगम पर स्थित छोटा नगर और पिकनिक स्थल।"
      },
      {
        "name": "Vidyasagar Setu (विद्यासागर सेतु)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021091647-pd71ijfwz8b37imn9q4cpbfsvwm02aj6c4ej2uu03m.jpg",
        "description": "India’s longest cable-stayed bridge over the Hooghly River. | हुगली नदी पर भारत का सबसे लंबा केबल-स्टे ब्रिज।"
      },
      {
        "name": "Belur Math Temple (बेलूर मठ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092993-pdtpreg25xyu8zh8bhrl65evtmdc36e7pojjidlude.png",
        "description": "Headquarters of Ramakrishna Math & Mission, founded by Swami Vivekananda. | रामकृष्ण मठ और मिशन का मुख्यालय, स्वामी विवेकानंद द्वारा स्थापित।"
      },
      {
        "name": "Indian Botanical Garden (भारतीय वनस्पति उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092973-pdtorx1e63e5yx0qinlljlrgiz9iiiizu1yobc7v9e.png",
        "description": "Located in Shivpur, famous for the Great Banyan Tree. | शिवपुर में स्थित, महान बरगद के पेड़ के लिए प्रसिद्ध।"
      },
      {
        "name": "Andul Rajbari (आंदुल राजबाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021092797-pdqhnf3o3tvyn94vh68pjgcnxayvax5ncoxvhtb2f6.jpg",
        "description": "Historic palace in Andul, reflecting Bengal’s architectural heritage. | आंदुल में स्थित ऐतिहासिक राजबाड़ी, बंगाल की स्थापत्य धरोहर को दर्शाती।"
      },
      {
        "name": "Howrah Bridge (हावड़ा ब्रिज)",
        "image": "https://cdn.s3waas.gov.in/s353e3a7161e428b65688f14b84d61c610/uploads/bfi_thumb/2021082397-pc168wby827laaow5byoqjy3knc5lckppxhmrf3zlu.jpg",
        "description": "Iconic cantilever bridge over the Hooghly River, symbol of Kolkata. | हुगली नदी पर स्थित प्रतीकात्मक कैंटिलीवर पुल, कोलकाता का प्रतीक।"
      }
    ],
    "Jalpaiguri (जलपाईगुड़ी)": [
      {
        "name": "Jalpaiguri Tourism (जलपाईगुड़ी पर्यटन)",
        "image": "https://jalpaiguri.gov.in/wp-content/themes/district-theme-9/images/Tourist-Place.jpg",
        "description": "Known for its lush greenery, rivers, and scenic beauty in the foothills of the Himalayas. | हिमालय की तराई में हरी-भरी प्राकृतिक सुंदरता और नदियों के लिए प्रसिद्ध।"
      },
      {
        "name": "Bodaganj Teesta River (बोड़ागंज तीस्ता नदी)",
        "image": "https://cdn.s3waas.gov.in/s3fccb60fb512d13df5083790d64c4d5dd/uploads/bfi_thumb/2022031091-1-plnr87pcjbbvp6x6nfdj78hzozedwta3e4uz9saada.jpg",
        "description": "Popular spot for photography and nature views along the Teesta River. | तीस्ता नदी के किनारे फोटोग्राफी और प्राकृतिक नज़ारों के लिए प्रसिद्ध स्थल।"
      },
      {
        "name": "Monsoon Dooars (मानसून डुआर्स)",
        "image": "https://cdn.s3waas.gov.in/s3fccb60fb512d13df5083790d64c4d5dd/uploads/bfi_thumb/2022033165-pmnzmsthsy3eygydhj8p1eev7qi4t7m3lk48rqbkla.jpg",
        "description": "The Dooars region, known for its tea gardens, rivers, and rich biodiversity, is especially charming during monsoon. | डुआर्स क्षेत्र, चाय बागानों, नदियों और समृद्ध जैवविविधता के लिए प्रसिद्ध, मानसून में खास आकर्षक।"
      },
      {
        "name": "Khuttimari Forest (खुट्टिमारी वन)",
        "image": "https://cdn.s3waas.gov.in/s3fccb60fb512d13df5083790d64c4d5dd/uploads/bfi_thumb/2022031090-1-plnr3lbwxn04m7mumxgkfwhejs6f2dxlr9e1bt4yym.jpg",
        "description": "A scenic forest near Gayerkata in Dooars, home to elephants and other wildlife. | डुआर्स के गयरकाटा के पास स्थित रमणीय वन, हाथियों और अन्य वन्यजीवों का घर।"
      },
      {
        "name": "Gorumara National Park (गोरुमारा राष्ट्रीय उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s3fccb60fb512d13df5083790d64c4d5dd/uploads/bfi_thumb/2022031025-plnqp3nhkl5zmmom95ymi24kuxlpedekrjbjz8mgvy.jpg",
        "description": "National park famous for Indian rhinoceros, located in the Dooars region. | डुआर्स क्षेत्र में स्थित यह राष्ट्रीय उद्यान भारतीय गैंडे के लिए प्रसिद्ध।"
      },
      {
        "name": "Chapramari Wildlife Sanctuary (चापरामारी वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s3fccb60fb512d13df5083790d64c4d5dd/uploads/bfi_thumb/2022031022-plnglp9rcfp71uji9313irf524r3j0qfgvjmm3fugu.jpg",
        "description": "One of the oldest wildlife sanctuaries in West Bengal, rich in flora and fauna. | पश्चिम बंगाल के सबसे पुराने वन्यजीव अभयारण्यों में से एक, वनस्पति और जीव-जंतुओं से भरपूर।"
      },
      {
        "name": "Baikunthapur Forest (बै큉ठपुर वन)",
        "image": "https://cdn.s3waas.gov.in/s3fccb60fb512d13df5083790d64c4d5dd/uploads/bfi_thumb/2022033117-pmny5vimzrn78vtxj5nx597j3pd4eqi6nlr0zuskxq.jpg",
        "description": "Dense forest region near Jalpaiguri, known for mythological associations with Lord Krishna. | जलपाईगुड़ी के पास घना वन क्षेत्र, जो भगवान कृष्ण से जुड़ी पौराणिक मान्यताओं के लिए प्रसिद्ध है।"
      }
    ],
    "Jhargram (झारग्राम)": [
      {
        "name": "Gopiballavpur Eco Tourism Park (गोपीबल्लवपुर ईको टूरिज्म पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2021092681-pdo69hvehvxiv4823wbqnh7k7rdc9fg2z5oz1w91by.jpg",
        "description": "Beautiful eco-park on the bank of Subarnarekha river, ideal for relaxation and nature lovers. | सुवर्णरेखा नदी के किनारे स्थित सुंदर इको पार्क, प्रकृति प्रेमियों और सैर-सपाटे के लिए उपयुक्त।"
      },
      {
        "name": "Chilkigarh Raj Palace (चिल्कीगढ़ राज महल)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2019040916-olwbnju00ba2jenopnd0glew6hxu09nxj7gl48n5dq.jpg",
        "description": "Historic palace associated with King Jagatdeo of the Suryavansh dynasty. | सूर्यवंश वंश के राजा जगतदेव से जुड़ा ऐतिहासिक राजमहल।"
      },
      {
        "name": "Kodopal Agro Tourism Park (कोडोपल एग्रो टूरिज्म पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2021092548-pdmlrg2f7dgx0ssmj62hh9hizmy0gtepnjlxqy5o1q.jpg",
        "description": "Agro tourism park spread over 75 acres, surrounded by lush greenery. | 75 एकड़ भूमि पर फैला एग्रो टूरिज्म पार्क, चारों ओर हरियाली से घिरा।"
      },
      {
        "name": "Bandarvula Tribal Interpretation Centre (बंदरवुला जनजातीय व्याख्या केंद्र)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2019041143-olwbnnlcrnf7tui83oziqkgqk1fav22uvq2j1chkou.jpg",
        "description": "Museum dedicated to rich tribal art and culture of the region. | क्षेत्र की समृद्ध जनजातीय कला और संस्कृति को समर्पित संग्रहालय।"
      },
      {
        "name": "Tapavan (तपवन)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2021092555-scaled-pdmfz1anvs66tbiti2ydmus9e267ss18c0c94b63ni.jpg",
        "description": "Religious and scenic spot with temples of Ram, Sita, Hanuman, Luv & Kush, surrounded by forests. | धार्मिक एवं प्राकृतिक स्थल, जहां राम, सीता, हनुमान, लव और कुश के मंदिर हैं।"
      },
      {
        "name": "Rameswar Temple, Gopiballavpur (रामेश्वर मंदिर, गोपीबल्लवपुर)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2019041164-olwbnph15bhsh2fhspsrvjznqt61agabjzdhzwesce.jpg",
        "description": "Ancient Shiva temple, major pilgrimage spot especially during Shivratri. | प्राचीन शिव मंदिर, खासकर शिवरात्रि पर प्रमुख तीर्थ स्थल।"
      },
      {
        "name": "Jhilli Lake (झिल्ली झील)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2021092530-scaled-pdmwntt05mlzkqu7arzwc8wm64y1o74wxnitt8dam6.jpg",
        "description": "A scenic lake located 67 km from Jhargram, popular for picnics. | झारग्राम से 67 किमी दूर स्थित रमणीय झील, पिकनिक के लिए मशहूर।"
      },
      {
        "name": "Hatibari (हातिबाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2021092695-1-pdoc0wxalrvctexqxk00v4xb8p16syvrhs67g0pkam.jpg",
        "description": "Beautiful spot at the border of West Bengal, Odisha, and Jharkhand. | पश्चिम बंगाल, ओडिशा और झारखंड की सीमा पर स्थित सुंदर स्थल।"
      },
      {
        "name": "Kanak Durga Temple (कनक दुर्गा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2019041110-olwbnlpodzcn6mkyeo69lkxtd9okfnve7grk2skd1a.jpg",
        "description": "500-year-old temple built by King Gopinath, a revered religious place. | राजा गोपीनाथ द्वारा निर्मित 500 वर्ष पुराना मंदिर, पूजनीय धार्मिक स्थल।"
      },
      {
        "name": "Jhargram Zoological Park (झारग्राम प्राणी उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2019041147-olwbnnlcrnf7tui83oziqkgqk1fav22uvq2j1chkou.jpg",
        "description": "Small zoological park near town, popular for family visits. | नगर के पास स्थित छोटा प्राणी उद्यान, परिवार के साथ घूमने के लिए उपयुक्त।"
      },
      {
        "name": "Sabitri Temple (सावित्री मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2019041124-olwbnmniktdxi8jl96kw62p9ynjxncz4jlf1k2iyv2.jpg",
        "description": "350-year-old temple dedicated to Goddess Savitri. | देवी सावित्री को समर्पित 350 वर्ष पुराना मंदिर।"
      },
      {
        "name": "Jhargram Raj Palace (झारग्राम राज महल)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2019041190-olwbnph15bhsh2fhspsrvjznqt61agabjzdhzwesce.jpg",
        "description": "Historic royal palace, an iconic heritage of Jhargram. | ऐतिहासिक राजमहल, झारग्राम की धरोहर।"
      },
      {
        "name": "Ghagra (घाघरा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2021092054-scaled-pddzv6cdjbdkuzwebb5210c7o0s300sfh4ubyto4qm.jpg",
        "description": "Scenic waterfall near Belpahari, flowing through rocks. | बेलपहाड़ी के पास स्थित रमणीय जलप्रपात, चट्टानों के बीच बहता हुआ।"
      },
      {
        "name": "Kankrajhore (कांकराजोरे)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2021092051-scaled-pde2l7wce7l9urhit6t5lro29vjcvh0imeil0uatq6.jpg",
        "description": "Famous for sylvan beauty, hills, and meandering streams. | वनसंपन्न सौंदर्य, पहाड़ियों और बलखाती नदियों के लिए प्रसिद्ध।"
      },
      {
        "name": "Gadrasini Hill (गद्रासिनी पहाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2019041196-olwbnph15bhsh2fhspsrvjznqt61agabjzdhzwesce.jpg",
        "description": "Scenic hill near Belpahari, popular for trekking. | बेलपहाड़ी के पास स्थित सुंदर पहाड़ी, ट्रेकिंग के लिए मशहूर।"
      },
      {
        "name": "Khandarani Dam (खंडरानी बांध)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2021092053-scaled-pde1ksnhkbq9yqe6hy0lhgk1ld2blpeym4g8jub0u6.jpg",
        "description": "Picturesque dam amidst pristine nature. | स्वच्छ प्रकृति के बीच स्थित सुरम्य बांध।"
      },
      {
        "name": "Laljal Cave (लालजल गुफा)",
        "image": "https://cdn.s3waas.gov.in/s3aeb3135b436aa55373822c010763dd54/uploads/bfi_thumb/2021092614-1-pdocn6pmjgcxwsl3voksg0lhyd9a6sasw0ndt1oqv2.jpg",
        "description": "Natural cave near Belpahari, surrounded by forests. | बेलपहाड़ी के पास स्थित प्राकृतिक गुफा, चारों ओर जंगलों से घिरी।"
      }
    ],
    "Kalimpong (कालिम्पोंग)": [
      {
        "name": "Places of Interest (पर्यटन स्थल)",
        "image": "https://kalimpong.gov.in/wp-content/themes/district-theme-12/images/Tourist-Place.jpg",
        "description": "One of the newest districts of West Bengal, Kalimpong, has three development blocks and a municipality under its jurisdiction. | पश्चिम बंगाल का एक नया जिला, कालिम्पोंग, जिसमें तीन विकास खंड और एक नगरपालिका आती है।"
      },
      {
        "name": "Lolaygaon (लोलेगांव)",
        "image": "https://cdn.s3waas.gov.in/s368053af2923e00204c3ca7c6a3150cf7/uploads/bfi_thumb/2021022533-p3dskm45uqvofhsu7gm5ylhlpvooxqfq0n2b285wiq.jpg",
        "description": "A scenic hill station located 45 km from Kalimpong town, accessible by bus or taxi. | कालिम्पोंग नगर से 45 किमी दूर स्थित रमणीय हिल स्टेशन, जिसे बस या टैक्सी से पहुँचा जा सकता है।"
      },
      {
        "name": "Deolo Hill (दोलो हिल)",
        "image": "https://cdn.s3waas.gov.in/s368053af2923e00204c3ca7c6a3150cf7/uploads/bfi_thumb/2021022576-p3dscod8540ie1bwk13kwllh4qt3xqxblcqp63xl2a.jpg",
        "description": "One of the two hills on which Kalimpong town stands, offering panoramic views. | दो पहाड़ियों में से एक जिस पर कालिम्पोंग नगर बसा है, जो मनोरम दृश्य प्रस्तुत करता है।"
      },
      {
        "name": "Dr. Graham’s Homes (डॉ. ग्राहम्स होम्स)",
        "image": "https://cdn.s3waas.gov.in/s368053af2923e00204c3ca7c6a3150cf7/uploads/bfi_thumb/2021022594-p3dsooqzgwgeqnvuf7zyrkhidzlyailuksu1xe4hk2.gif",
        "description": "A colonial-era boarding school located 10 km from Kalimpong town, now a tourist attraction. | औपनिवेशिक युग का बोर्डिंग स्कूल, कालिम्पोंग से 10 किमी दूर स्थित, जो अब एक पर्यटन स्थल है।"
      },
      {
        "name": "Durpin Dara (दुर्पिन दारा)",
        "image": "https://cdn.s3waas.gov.in/s368053af2923e00204c3ca7c6a3150cf7/uploads/bfi_thumb/2021022576-p3dsqttr1bdx6orvx5bdg11b3l21tp3u7ebva2y7du.gif",
        "description": "Also called 'binocular hill', this point provides wide views of Kalimpong and its surroundings. | जिसे 'दूरबीन पहाड़ी' भी कहा जाता है, यह स्थल कालिम्पोंग और आसपास का व्यापक दृश्य दिखाता है।"
      },
      {
        "name": "Nimbong (निंबॉन्ग)",
        "image": "https://cdn.s3waas.gov.in/s368053af2923e00204c3ca7c6a3150cf7/uploads/bfi_thumb/2021022561-p3dssda88jhu7ojbxbad151i5bgpfu8030tilenz6q.gif",
        "description": "A picturesque village administered by Nimbong Gram Panchayat, known for its serene environment. | निंबॉन्ग ग्राम पंचायत द्वारा प्रशासित रमणीय गाँव, जो अपनी शांत वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Rikkisum (रिक्कीसुम)",
        "image": "https://cdn.s3waas.gov.in/s368053af2923e00204c3ca7c6a3150cf7/uploads/bfi_thumb/2021022578-p3dsu2dqkrth6c2l0jp417mgrd3kc5yjzf82se5dya.gif",
        "description": "A viewpoint offering a 360° view of Mount Kanchenjunga, Darjeeling, Kalimpong, and Sikkim. | एक व्यूपॉइंट जो कंचनजंघा, दार्जिलिंग, कालिम्पोंग और सिक्किम का 360° दृश्य प्रस्तुत करता है।"
      },
      {
        "name": "Silleri Gaon (सिल्लेरी गाँव)",
        "image": "https://cdn.s3waas.gov.in/s368053af2923e00204c3ca7c6a3150cf7/uploads/bfi_thumb/2021022557-p3dszkpomtcz822huffe5bkq3ny0gatx2ovj1rzbhe.gif",
        "description": "A small picturesque village under Cinchona Plantation area, popular for its natural charm. | सिंकोना प्लांटेशन क्षेत्र के अंतर्गत स्थित छोटा और सुंदर गाँव, जो अपनी प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Icchaye Gaon (इच्छाए गाँव)",
        "image": "https://cdn.s3waas.gov.in/s368053af2923e00204c3ca7c6a3150cf7/uploads/bfi_thumb/2021022512-p3dswvwb2vog07z4jrktii08wz77fh5kddoim9yvaa.gif",
        "description": "An emerging tourist destination known for homestays and views of Kanchenjunga. | उभरता हुआ पर्यटन स्थल, जो होमस्टे और कंचनजंघा के दृश्यों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Jhandi (झंडी)",
        "image": "https://cdn.s3waas.gov.in/s368053af2923e00204c3ca7c6a3150cf7/uploads/bfi_thumb/2021022599-p3dsy42q03cx5w6ydsoa9ouwu35gh90y7gcc6a5d5u.gif",
        "description": "A popular tourist spot in Gorubathan block, known for sunrise and sunset views. | गोरुबाथान ब्लॉक में प्रसिद्ध पर्यटन स्थल, जो सूर्योदय और सूर्यास्त के दृश्यों के लिए प्रसिद्ध है।"
      }
    ],
    "Kolkata (कोलकाता)": [
      {
        "name": "Victoria Memorial (विक्टोरिया मेमोरियल)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Victoria_Memorial_situated_in_Kolkata.jpg/1200px-Victoria_Memorial_situated_in_Kolkata.jpg ",
        "description": "A grand marble building and museum built in memory of Queen Victoria, one of the most iconic landmarks of Kolkata. | महारानी विक्टोरिया की स्मृति में निर्मित भव्य संगमरमर की इमारत और संग्रहालय, कोलकाता का सबसे प्रसिद्ध स्थल।"
      },
      {
        "name": "Dakshineswar Kali Temple (दक्षिणेश्वर काली मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/3/32/Dakhineshwar_Temple_beside_the_Hoogly%2C_West_Bengal.JPG",
        "description": "One of the most famous Hindu temples dedicated to Goddess Kali, located on the banks of the Hooghly River. | देवी काली को समर्पित प्रसिद्ध हिन्दू मंदिर, जो हुगली नदी के किनारे स्थित है।"
      },
      {
        "name": "Kalighat Temple (कालिघाट मंदिर)",
        "image": "https://thumbs.dreamstime.com/b/kalighat-mandir-famous-religious-minded-people-thousands-kali-devotees-visit-temple-every-day-offer-puja-322568271.jpg",
        "description": "An ancient temple in Kolkata, considered one of the 51 Shakti Peethas of India. | कोलकाता का प्राचीन मंदिर, जिसे भारत के 51 शक्तिपीठों में से एक माना जाता है।"
      },
      {
        "name": "Indian Museum (भारतीय संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIYvFJp4N2MxtxvKV8vYwuesdOd7ywn4cpPw&s",
        "description": "The largest and oldest museum in India, showcasing rare collections of antiques, fossils, and Mughal paintings. | भारत का सबसे बड़ा और प्राचीन संग्रहालय, जिसमें दुर्लभ प्राचीन वस्तुएँ, जीवाश्म और मुगल चित्रकला प्रदर्शित हैं।"
      },
      {
        "name": "Howrah Bridge (हावड़ा ब्रिज)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Howrah_bridge_at_night.jpg/330px-Howrah_bridge_at_night.jpg",
        "description": "An engineering marvel and one of the busiest cantilever bridges in the world, built over the Hooghly River. | इंजीनियरिंग का अद्भुत नमूना और विश्व का सबसे व्यस्त कैंटिलीवर पुल, जो हुगली नदी पर बना है।"
      },
      {
        "name": "Marble Palace (मार्बल पैलेस)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/8/84/Marble_Palace-_Kolkata-_West_Bengal-_DSC_0006.jpg",
        "description": "A 19th-century mansion with a collection of Western sculptures, paintings, and rare artifacts. | 19वीं शताब्दी का महल, जिसमें पश्चिमी मूर्तियों, चित्रों और दुर्लभ कलाकृतियों का संग्रह है।"
      },
      {
        "name": "Science City (साइंस सिटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkkxEJ1oVawyHUtJbQ3W_FB3-HuyKl0QWGA&s",
        "description": "India’s largest science museum, featuring space exploration, evolution, and 3D shows. | भारत का सबसे बड़ा विज्ञान संग्रहालय, जिसमें अंतरिक्ष, विकास और 3D शो की आकर्षक प्रस्तुतियाँ होती हैं।"
      },
      {
        "name": "Eden Gardens (ईडन गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDurX8i0RkUz2B-_KW3L0zPvizel3b6FBhcg&s",
        "description": "One of the most iconic cricket stadiums in the world, known as the 'Mecca of Indian Cricket'. | विश्व का सबसे प्रसिद्ध क्रिकेट स्टेडियमों में से एक, जिसे 'भारतीय क्रिकेट का मक्का' कहा जाता है।"
      },
      {
        "name": "Birla Planetarium (बिरला तारामंडल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk_TpP6HMMtiFERa48CVB4X18xF8f_yRp9tQ&s",
        "description": "One of the largest planetariums in Asia, offering shows about stars, planets, and the universe. | एशिया के सबसे बड़े तारामंडलों में से एक, जो तारों, ग्रहों और ब्रह्मांड पर आधारित शो प्रस्तुत करता है।"
      },
      {
        "name": "Eco Park (इको पार्क)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Lush_green_grass_along_the_lake.jpg/1200px-Lush_green_grass_along_the_lake.jpg",
        "description": "A vast urban park with boating, gardens, and replicas of the Seven Wonders of the World. | विशाल शहरी पार्क जिसमें नौकायन, उद्यान और विश्व के सात अजूबों की प्रतिकृतियाँ हैं।"
      }
    ],
    "Malda (मालदा)": [
      {
        "name": "Baroduari / Boro Sona Mosque (बारोदुआरी / बड़ो सोना मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/20220212100-1-pkeh2cumvl9xe74v05spg590j6rtd0dauzfwezqvm8.jpg",
        "description": "A gigantic rectangular mosque of brick and stone near Ramkeli, also known as Baroduari. | ईंट और पत्थर से निर्मित विशाल आयताकार मस्जिद, रामकेली के पास स्थित, जिसे बारोदुआरी भी कहा जाता है।"
      },
      {
        "name": "Dakhil Darwaja (दाखिल दरवाजा)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/20220212100-pkegmej8vtfqcgb35rjnmo6dkrejpy1b00u86xef80.jpg",
        "description": "Impressive gateway built in 1425, made of red bricks, an important Muslim monument. | 1425 में निर्मित भव्य द्वार, लाल ईंटों से बना, एक महत्वपूर्ण मुस्लिम स्मारक।"
      },
      {
        "name": "Firoz Minar (फिरोज मीनार)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022021272-pkegbbzoe2a5lsdzsz9u9gqxpdyx2a34588cpltci8.jpg",
        "description": "A tower built by Sultan Saifuddin Feroze Shah, located near Dakhil Darwaza. | सुल्तान सैफुद्दीन फिरोज शाह द्वारा निर्मित मीनार, दाखिल दरवाजे के पास स्थित।"
      },
      {
        "name": "Chika Mosque (चिका मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022021298-pkeg2fgpnk3dmrbksmq257mr4zur5hqn95rs290lg0.jpg",
        "description": "Built in 1475 by Sultan Yusuf Shah, earlier used as shelter for bats. | 1475 में सुल्तान युसुफ शाह द्वारा निर्मित, पहले चमगादड़ों के आश्रय स्थल के रूप में प्रसिद्ध।"
      },
      {
        "name": "Lukochuri Gate (लुकोचुरी गेट)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022021253-pkefik5j6mw67i6ltjiyxq4z2rsfftuwutb9uoh6z4.jpg",
        "description": "Built by Shah Shuja, located near Kadam Rasool Mosque, with hidden passageways. | शाह शुजा द्वारा निर्मित, क़दम रसूल मस्जिद के पास स्थित, छिपे रास्तों के लिए प्रसिद्ध।"
      },
      {
        "name": "Qadam Rasul Mosque (क़दम रसूल मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022021268-pkefbviul1qrnbw4unih7euz04qgpbbmlqayzudz80.jpg",
        "description": "A 17th-century mosque housing the tomb of Fateh Khan, a commander of Aurangzeb. | 17वीं शताब्दी की मस्जिद जिसमें औरंगज़ेब के सेनापति फतेह ख़ान की समाधि है।"
      },
      {
        "name": "Gumti Darwaza (गुमटी दरवाजा)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022021285-pkeett2j7p0ch64ycucn9yzzxhsgqrldgauywd6ets.jpg",
        "description": "Built in 1512 by Alauddin Hussein Shah, located northeast of Chika Mosque. | 1512 में अलाउद्दीन हुसैन शाह द्वारा निर्मित, चिका मस्जिद के उत्तर-पूर्व में स्थित।"
      },
      {
        "name": "Ramkeli (रामकेली)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022021269-pkeeao2u24t62zxr42j40av4i24f0mm4hko24jjzio.jpg",
        "description": "A small village near Malda, historically important pilgrimage site. | मालदा के पास स्थित छोटा गाँव, ऐतिहासिक और धार्मिक दृष्टि से महत्वपूर्ण।"
      },
      {
        "name": "Pirana Pir (पीराना पीर दरगाह)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022021144-pkct0wz3cefc2eqyav6oukt1048nd5ljoueun0jbm8.jpg",
        "description": "Dargah of Khawaja Akhi Siraj Aainae Hind in Malda. | ख्वाजा अखी सिराज आइना-ए-हिंद की दरगाह, मालदा में स्थित।"
      },
      {
        "name": "Eklakhi Mosque (एकलखी मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022020871-pk7oc989vkwu9capsy2s4cdvjqmxmmvpl19mrikjgw.jpg",
        "description": "Elegant square brick tomb in Pandua, one of the earliest in Bengal. | पांडुआ में स्थित सुंदर चौकोर ईंट का मकबरा, बंगाल के सबसे पुराने मकबरों में से एक।"
      },
      {
        "name": "Adina Eco Tourism Park (अदिना ईको पर्यटन पार्क)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2024052988-qouzt3tlk4ufwx3ofkz061yhzwhyjqzw2qgmf95xg0.jpeg",
        "description": "Upcoming eco-friendly attraction with greenery and an inside view tower. | हरे-भरे प्राकृतिक सौंदर्य से युक्त ईको-पर्यटन स्थल, जहाँ अंदर से देखने का विशेष टावर है।"
      },
      {
        "name": "Malda Museum (मालदा संग्रहालय)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022021138-pkcjbqvekyft93xq7fou46tsyb930uf40m6jto9500.jpg",
        "description": "Established in 1937, archaeological museum with rare collections under WB Directorate of Archaeology. | 1937 में स्थापित पुरातत्व संग्रहालय, जिसमें दुर्लभ ऐतिहासिक संग्रह सुरक्षित हैं।"
      },
      {
        "name": "Adina Mosque (अदिना मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022020819-pk7ohkzcls7c1sk6p8yo8zzwqcdt8w0ybeconyo87k.jpg",
        "description": "One of the largest mosques in Bengal, a masterpiece of medieval architecture. | बंगाल की सबसे बड़ी मस्जिदों में से एक, मध्यकालीन स्थापत्य कला का अद्भुत नमूना।"
      },
      {
        "name": "Jagjivanpur (जगजीवनपुर)",
        "image": "https://cdn.s3waas.gov.in/s349ae49a23f67c759bf4fc791ba842aa2/uploads/bfi_thumb/2022020843-pk79nx42eznqftqhx2iz461n7wqo3af5y0fgtfxuvk.jpg",
        "description": "Archaeological site in Habibpur block of Malda, known for ancient Buddhist relics. | मालदा के हबीबपुर ब्लॉक में स्थित पुरातात्विक स्थल, प्राचीन बौद्ध अवशेषों के लिए प्रसिद्ध।"
      }
    ],
    "Murshidabad (मुर्शिदाबाद)": [
      {
        "name": "Karnasuvarna / Karnasubarna (कर्नासुवर्ण / कर्नासुबर्ण)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021021772-p2zqp1oupk7wzj18ymzmfokgtk9khgx1h37edmlwqm.jpg",
        "description": "Capital of Gauda Kingdom during the reign of Shashanka. | शशांक के शासनकाल में गौड़ राज्य की राजधानी।"
      },
      {
        "name": "Sonarundi Rajbari (सोनरुंडी राजबाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021021764-p2zq6hdlqct1os00d43vov7qglrlgo7vx7d65w4tmm.jpg",
        "description": "Palace located in Sonarundi and Bonwaribad. | सोनरुंडी और बनवारीबाद में स्थित राजमहल।"
      },
      {
        "name": "Dahapara Dham (दहापारा धाम)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021021723-p2zgepa1zh8umgzbijzc14yf09nbqmoak1wbcvq0am.jpg",
        "description": "Religious site northwest of the Bhagirathi river at Dahapara Ashram. | भगीरथी नदी के उत्तर पश्चिम में दहापारा आश्रम के पास धार्मिक स्थल।"
      },
      {
        "name": "Bishnupur Kalibari (बिष्णुपुर कालीबाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021021566-p2w2br8eycw9v4vuwtczo6q8enrxmb1mb3a3985hby.jpg",
        "description": "Peaceful temple on the banks of Bishnupur jheel. | बिष्णुपुर झील के किनारे स्थित शांतिपूर्ण मंदिर।"
      },
      {
        "name": "Armenian Church, Berhampore (आर्मेनियन चर्च, बहरामपुर)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021021070-p2npx6s7r4kga5nce5q457eb8nelcdyjfy5x1b0q2m.jpg",
        "description": "Oldest Armenian Church of Eastern India, established in 1757 AD. | पूर्वी भारत का सबसे पुराना आर्मेनियन चर्च, 1757 ईस्वी में स्थापित।"
      },
      {
        "name": "Tomb of Azimunnisa Begum (अज़ीमुन्निसा बेगम का मकबरा)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020875-p2k5q5syjgxz5n8dwsdfhahti8abzbmd9onysbrlz2.jpg",
        "description": "Ruined mosque built by Azimunnisa Begum, daughter of Murshid Quli Khan. | मुरशिदकुली खान की पुत्री अज़ीमुन्निसा बेगम द्वारा निर्मित ध्वस्त मस्जिद।"
      },
      {
        "name": "Jafraganj Cemetery (जाफरगंज कब्रिस्तान)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020866-p2k3rtjr3snic5emndshw1i166zhyqdhlj5vww27lq.jpg",
        "description": "Built by Mir Jafar over 3.51 acres, historic cemetery. | मीर जाफर द्वारा निर्मित 3.51 एकड़ में फैला ऐतिहासिक कब्रिस्तान।"
      },
      {
        "name": "Futi Mosque (फूटी मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020877-2-p2k2br9kk5dr9p14nvmes6gwnvllm9opruboz5988u.jpg",
        "description": "Mosque in Kumarpur built by historic rulers. | कुमारपुर में स्थित ऐतिहासिक शासकों द्वारा निर्मित मस्जिद।"
      },
      {
        "name": "Nizamat Imambara (निज़ामत इमामबाड़ा)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020847-p2k1nx2x8eqytpnov2o11p12b33hem1s5updtilo1q.jpg",
        "description": "Shia Muslim congregation hall in Murshidabad. | मुर्शिदाबाद में शिया मुस्लिम सभा हॉल।"
      },
      {
        "name": "Katra Masjid (कटरा मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020874-p2jvpqktyfjvcermizrde8qxfcrkhgrmdr9e4q63um.jpg",
        "description": "Former caravanserai, mosque and tomb of Nawab Murshid Quli Khan. | पहले का कारवांसराई, मस्जिद और नवाब मुरशिद क़ुली खान का मकबरा।"
      },
      {
        "name": "Shaktipeeth Shri Kiriteswari Temple (शक्तिपीठ श्री किरीतेस्वरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020767-1-p2ibyfal29ovqsi2ttk35a4whsk3mwve2h7k94flku.jpg",
        "description": "Historic temple in Kiritkona village under Nabagram. | नबाग्राम के अंतर्गत किरीतकाना गाँव में ऐतिहासिक मंदिर।"
      },
      {
        "name": "Char Bangla Dham / Bhawaniswar Mandir (चार बंगला धाम / भवानीश्वर मंदिर, अजिमगंज)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020755-p2iastxon6r3zyx2pcbeb9zm6zke12qzclz2rc3qwu.jpg",
        "description": "Exquisite example of Bengal Temple architecture in Azimganj. | अजिमगंज में बंगाल मंदिर वास्तुकला का उत्कृष्ट उदाहरण।"
      },
      {
        "name": "The Dutch Cemetery (डच कब्रिस्तान)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020711-scaled-p2i9pfj866tfce5drt7dapx1sjridtc0xljdksitq6.jpg",
        "description": "Located near Cossimbazar railway station, historic cemetery. | कोसिंबाजार रेलवे स्टेशन के पास स्थित ऐतिहासिक कब्रिस्तान।"
      },
      {
        "name": "Cossimbazar Palace of the Roys (कोसिंबाजार राजबाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020593-p2ez2xcdxgtfmlaoiv0y1d7qdcjhaxq2gk5apwfz0e.jpg",
        "description": "European and Indian architecture, fine example of palace. | यूरोपीय और भारतीय वास्तुकला का अद्भुत उदाहरण।"
      },
      {
        "name": "Tomb of Siraj-ud-daulah (सिराज उद्दौला का मकबरा / खोशबाग)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020582-p2ewvsbkimhc4i91n5iqlu5lugly8cjn8usl47s8vy.jpg",
        "description": "Graves of Siraj ud-Daulah and Alivardi Khan in a square mausoleum. | चौकोर मकबरे में सिराज उद्दौला और अलीवर्दी खान की कब्रें।"
      },
      {
        "name": "House of Jagat Seth (जगत सेठ का घर)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021020571-p2evo4pf3mpwwhnwka6isuqwm7s8qf8fws0qpkihvi.jpg",
        "description": "Historic residence of the famous Bengali Jain banking family. | प्रसिद्ध बंगाली जैन बैंकिंग परिवार का ऐतिहासिक निवास।"
      },
      {
        "name": "Jahankosha Cannon (जहानकोशा तोप)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021012741-p1z1ouqobvdkb923q7nfcblgzqorsq4lrscsqinegu.jpg",
        "description": "The 'Destroyer of the World', historic cannon placed in Murshidabad. | 'विश्वविनाशक', मुर्शिदाबाद में स्थित ऐतिहासिक तोप।"
      },
      {
        "name": "Kathgola Bagan / Kathgola Palace (काठगोला बागान / काठगोला महल)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021012782-p1z2ihlhsty0co0foiszgcdn82mdh6ry6gswfkpkam.jpg",
        "description": "Four-storeyed palatial palace with ornamented gardens. | चार मंजिला भव्य महल और सुसज्जित बाग।"
      },
      {
        "name": "Nashipur Rajbari (नशीपुर राजबाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021012711-p1z23g6gg9cul9uvi0rvk50524qybj2k4118070bum.jpg",
        "description": "Court of Debi Singha, historic palace in Malda district. | देवी सिंघा का दरबार, मालदा जिले में ऐतिहासिक महल।"
      },
      {
        "name": "Hazarduari Palace (हजर्द्वारी महल)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021012785-p1z1y3hjj812h7mrr7hcuzmna54phktl1jaomgy1a6.jpg",
        "description": "Also known as Bara Kothi, located in Kila campus, historic palace. | बर काठी के नाम से प्रसिद्ध, किला परिसर में स्थित ऐतिहासिक महल।"
      },
      {
        "name": "Motijheel Park (मोतिज़ील पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3c9f0f895fb98ab9159f51fd0297e236d/uploads/bfi_thumb/2021011396-p1az60oh2tzz4zaonkn73qa6uo24xnsmjotrkpjjlq.png",
        "description": "Natural / Scenic beauty spot, historic site witnessing British rule in India. | प्राकृतिक सुंदरता वाला स्थल, भारत में ब्रिटिश शासन के ऐतिहासिक साक्षी।"
      }
    ],
    "Nadia (नदिया)": [
      {
        "name": "Mayapur (मयापुर)",
        "image": "https://cdn.s3waas.gov.in/s33c7781a36bcd6cf08c11a970fbe0e2a6/uploads/bfi_thumb/2021120834-ph7bxhu9q3atqll58i13opuzflc7uk269c4fozignm.jpg",
        "description": "Located on the banks of the Ganges river, at its confluence with the Jalangi. | गंगा नदी के किनारे, जलांगी नदी के संगम के पास स्थित।"
      },
      {
        "name": "Nabadwip (नवद्वीप धाम)",
        "image": "https://cdn.s3waas.gov.in/s33c7781a36bcd6cf08c11a970fbe0e2a6/uploads/bfi_thumb/2021120827-ph7bg108pxdzzgyk8g7oumjm0tfnt1pquvolmveuaa.jpg",
        "description": "On the western side of the Bhagirathi river, 20 km from Krishnagar. | भगीरथी नदी के पश्चिमी किनारे, कृष्णनगर से लगभग 20 कि.मी. दूर।"
      },
      {
        "name": "Shantipur (शांतिपुर तांत्रिक साड़ी)",
        "image": "https://cdn.s3waas.gov.in/s33c7781a36bcd6cf08c11a970fbe0e2a6/uploads/bfi_thumb/2021120833-ph7c2bqeufwvegkk1372zzz9bvj4ek8il8t9h6cmoi.jpg",
        "description": "Seat of Sanskrit learning and literature since 9th century, famous for handloom sarees. | 9वीं शताब्दी से संस्कृत शिक्षा और साहित्य का केंद्र, हाथ के ताने-बाने की साड़ियों के लिए प्रसिद्ध।"
      },
      {
        "name": "Krishnagar Rajbari (कृष्णनगर राजबाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s33c7781a36bcd6cf08c11a970fbe0e2a6/uploads/bfi_thumb/2022091696-puu4azqd9ljebwrvu2yo7bcett6jdh42xg5nn6sh5e.jpg",
        "description": "District headquarters on the bank of river Jalangi, named after Raja Krishna Chandra Rai. | नदी जलांगी के किनारे जिला मुख्यालय, राजा कृष्ण चंद्र राय के नाम पर।"
      },
      {
        "name": "Palashi (पलासी / Battle Ground)",
        "image": "https://cdn.s3waas.gov.in/s33c7781a36bcd6cf08c11a970fbe0e2a6/uploads/bfi_thumb/2022091629-scaled-puu4b2jvu3n9aqnsdm6jwsmslysn0kf9xu4430oamq.jpg",
        "description": "Historic site of the famous Battle of Plassey, 50 km from Krishnanagar. | प्रसिद्ध पलासी की लड़ाई का ऐतिहासिक स्थल, कृष्णनगर से 50 कि.मी. दूर।"
      },
      {
        "name": "Bethuadahari Wildlife Sanctuary (बेथुआदहरी वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s33c7781a36bcd6cf08c11a970fbe0e2a6/uploads/bfi_thumb/2021121495-phhq0mu7e6sqwjtelqufmbz9yfixyzo1thgwrnngsy.jpg",
        "description": "Wildlife sanctuary beside NH-34, 22 km north of Krishnanagar. | राष्ट्रीय राजमार्ग-34 के पास, कृष्णनगर से 22 कि.मी. उत्तर में स्थित वन्यजीव अभयारण्य।"
      },
      {
        "name": "Ballal Dhipi (बलाल ढिपी / Scattered Ruins)",
        "image": "https://cdn.s3waas.gov.in/s33c7781a36bcd6cf08c11a970fbe0e2a6/uploads/bfi_thumb/2021121455-phhs9njeh3phmk4qi9ls1dyl926wfsb5ahskx9iuhe.jpg",
        "description": "Historic ruins near Bamanpukur Bazar on the way to Mayapur, 25 km from Krishnanagar. | मयापुर जाने वाले रास्ते में बमनपुकुर बाजार के पास ऐतिहासिक खंडहर, कृष्णनगर से 25 कि.मी. दूर।"
      }
    ],
    "North 24 Parganas (उत्तरी 24 परगना)": [
      {
        "name": "Dakshineswar Kali Temple (दक्षिणेश्वर काली मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32823f4797102ce1a1aec05359cc16dd9/uploads/2024/09/2024090583-768x432.jpg",
        "description": "Most famous Hindu temple near Kolkata on the eastern bank of Hooghly River, built by Rani Rashmoni in 1855. | कोलकाता के पास, हॉगली नदी के पूर्वी किनारे स्थित सबसे प्रसिद्ध हिन्दू मंदिर, जिसे रानी रश्मोनी ने 1855 में बनवाया।"
      },

  {
  "name": "Adyapith (आद्यापीठ)",
  "image": "https://cdn.s3waas.gov.in/s32823f4797102ce1a1aec05359cc16dd9/uploads/2025/04/2025042226.png",
  "description": "Pilgrim center near Dakshineswar dedicated to Adya Ma, built in 1340 BS."
}

],
  };

  @override
  Widget build(BuildContext context) {
    final places = touristPlaces[districtName] ?? [];
    return Scaffold(
      appBar: AppBar(title: Text("$districtName Tourist Places")),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(place["image"]!, width: 60, height: 60, fit: BoxFit.cover),
              title: Text(place["name"]!),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlaceDetailsPage(
                      name: place["name"]!,
                      image: place["image"]!,
                      description: place["description"]!,
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
