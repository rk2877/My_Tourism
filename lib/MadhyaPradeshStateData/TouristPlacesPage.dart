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
    "Balaghat (बलाघाट)": [
      {
        "name": "Shankar Ghat (शंकर घाट)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025060333-r6ra24rkc3fv3qs8y2k8aqh9yzlfwmuax0r8zld342.jpg",
        "description": "An ancient and mysterious Shiva temple located on the banks of the Wainganga River, near Balaghat city. | वैनगंगा नदी के किनारे, बलाघाट शहर के पास स्थित प्राचीन और रहस्यमयी शिव मंदिर।"
      },
      {
        "name": "Kanha National Park (कान्हा नेशनल पार्क)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2019062991-olw8rrhifnr3q0sc8yp9esax136tg6x3wwhew8kf7m.jpg",
        "description": "Wildlife paradise spread across Balaghat and Mandla districts, famous for its rich flora and fauna. | बलाघाट और मंडला जिलों में फैला वन्यजीवों का स्वर्ग, अपनी समृद्ध वनस्पति और जीव-जंतुओं के लिए प्रसिद्ध।"
      },
      {
        "name": "Somji-Gomji (सोमजी-गोमजी)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025060298-r6pnycpfavya7l7lgvyuhl73bxpkd8meno9nluv5z6.jpg",
        "description": "Sacred and picturesque site above Jwala Devi Temple, ideal for spiritual and scenic visits. | ज्वाला देवी मंदिर के ऊपर स्थित पवित्र और सुरम्य स्थल, आध्यात्मिक और प्राकृतिक दृश्यों के लिए आदर्श।"
      },
      {
        "name": "Jwala Devi Temple, Bharveli (ज्वाला देवी मंदिर, भारवेली)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025060293-r6plb1uidlhp2vn3yoykomyn3jfty0a4vz3dxw64ua.jpg",
        "description": "A spiritual gem located amidst scenic hills near Bharveli village. | भारवेली गाँव के पास सुरम्य पहाड़ियों के बीच स्थित आध्यात्मिक स्थल।"
      },
      {
        "name": "Ramarma Waterfall (रामरमा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025052894-r6gzng6vqj9jzm5l4kxa872czujrgq2qkgwzhmtw5e.jpeg",
        "description": "A pristine waterfall surrounded by breathtaking natural beauty, popular with tourists. | मनमोहक प्राकृतिक सुंदरता से घिरा एक शुद्ध जलप्रपात, पर्यटकों में लोकप्रिय।"
      },
      {
        "name": "Bajrang Ghat (बजरंग घाट)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025052875-r6gxqdzrlqq4z0gxe892j4g5roxwxawpendp4r87b6.jpg",
        "description": "A natural retreat on the banks of the Wainganga River, ideal for adventure and relaxation. | वैनगंगा नदी के किनारे प्राकृतिक स्थल, साहसिक गतिविधियों और विश्राम के लिए आदर्श।"
      },
      {
        "name": "Sonewani (सोनवानी)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025052754-r6evma626gafi21k9fblewsiylp4uvpm8qzhqd979e.jpg",
        "description": "Heart of an ecological circle where conservation, community, and nature come together. | पारिस्थितिकीय केंद्र जहां संरक्षण, समुदाय और प्रकृति मिलकर आती हैं।"
      },
      {
        "name": "Hatta Ki Bawdi (हट्टा की बावड़ी)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025021899-r1o9e00xrdaksdl8egtmtcdjjhf6eyiqoywfo8i1vm.jpeg",
        "description": "A historical stepwell located in Hatta village, showcasing architectural heritage. | हट्टा गाँव में स्थित ऐतिहासिक बावड़ी, वास्तुशिल्प विरासत को प्रदर्शित करती है।"
      },
      {
        "name": "Lanji Fort & Mahamaya Vishnu Ganesh Temple (लांजी किला और महामाया विष्णु गणेश मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2019072233-olw8rtd6tbtod8plxziijrtu7uxjvl4kl5sdushmv6.jpg",
        "description": "A historical and cultural heritage site located in Lanji tehsil. | लांजी तहसील में स्थित ऐतिहासिक और सांस्कृतिक धरोहर स्थल।"
      },
      {
        "name": "Koteshwar Mahadev Temple, Lanji (कोटेश्वर महादेव मंदिर, लांजी)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025021847-r1o9nz3aa2y3zf3o5s149trmgo9e3c47ec3wzxpnuq.jpg",
        "description": "Majestic temple located in the heart of Lanji Tehsil. | लांजी तहसील के केंद्र में स्थित भव्य मंदिर।"
      },
      {
        "name": "Sanjay Sarovar (Dhuti Dam) (संजय सरोवर / धुती डैम)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025021839-r1o9xsilnsdx8suau0subckxtjvehj3a2xehfz5mv6.jpg",
        "description": "A beautiful tourist destination also known as Dhuti Dam. | धुती डैम के नाम से भी जाना जाने वाला खूबसूरत पर्यटन स्थल।"
      },
      {
        "name": "History and Archaeological Research Institute Museum & Geological Museum (इतिहास और पुरातात्त्विक अनुसंधान संस्थान एवं भूवैज्ञानिक संग्रहालय)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2022121099-scaled-pyxz4u1f01vh6lzec89qw9wklaqhilwmj6sfdpa4g2.jpg",
        "description": "Museums showcasing rich heritage and archaeological artifacts of Balaghat. | बलाघाट की समृद्ध विरासत और पुरातात्त्विक वस्तुओं को प्रदर्शित करने वाले संग्रहालय।"
      },
      {
        "name": "Gangulpara Reservoir and Waterfall (गंगुलपारा जलाशय और जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2018033016-olw8rkwn3ti3gr1wbduvfbyove38yb6zjzx0jau6f6.jpg",
        "description": "Unique destination for boating and nature lovers. | नौका विहार और प्रकृति प्रेमियों के लिए अद्वितीय स्थल।"
      },
      {
        "name": "Ram Mandeer, Rampayali (राम मंदिर, रामपायली)",
        "image": "https://cdn.s3waas.gov.in/s35d44ee6f2c3f71b73125876103c8f6c4/uploads/bfi_thumb/2025021487-r1ho7ra5ed2zjfv3qrj8mxtrnxc0x4adgl9qts8m4i.jpg",
        "description": "Historical and religious site located about 25 km from Balaghat city. | बलाघाट शहर से लगभग 25 किमी दूर ऐतिहासिक और धार्मिक स्थल।"
      }
    ],

    "Barwani (बड़वानी)": [
      {
        "name": "Bhilat Dev Temple at Nagalwadi (भिलाट देव मंदिर, नागलवाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s365b9eea6e1cc6bb9f0cd2a47751a186f/uploads/bfi_thumb/2019071733-olw8xpsppvwh9451hjc77a80gxui76jwqd84bbqnsy.jpg",
        "description": "Nagalwadi is an extremely scenic and beautiful place on the Madhya Pradesh – Maharashtra border. | मध्य प्रदेश – महाराष्ट्र सीमा पर स्थित अत्यंत सुरम्य और खूबसूरत स्थल।"
      },
      {
        "name": "Bawangaja Jain Temple (बावंगाजा जैन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s365b9eea6e1cc6bb9f0cd2a47751a186f/uploads/bfi_thumb/2019071755-olw8xpsppvwh9451hjc77a80gxui76jwqd84bbqnsy.jpg",
        "description": "Bawangaja (Chool Giri) is an important Jain pilgrimage centre, 6 km from Barwani district headquarters. | चूल गिरी स्थित बावंगाजा जैन तीर्थ स्थल, बारवानी जिला मुख्यालय से 6 किमी दूर।"
      }
    ],

    "Betul (बेतूल)": [
      {
        "name": "Kanak Fun City (कनक फन सिटी)",
        "image": "https://cdn.s3waas.gov.in/s31534b76d325a8f591b52d302e7181331/uploads/bfi_thumb/2025051346-r5qz4h2cwc06yl1dwlicvjwmg9df7yyjiu0dkiczr6.jpg",
        "description": "A water park and resort located on Indore Road in Khedi Sawalgarh, Betul, Madhya Pradesh. | इंदौर रोड, खेड़ी सावलगढ़, बेतुल, मध्य प्रदेश में स्थित एक जल-उद्यान और रिसॉर्ट।"
      },
      {
        "name": "Barsaali (बर्साली)",
        "image": "https://cdn.s3waas.gov.in/s31534b76d325a8f591b52d302e7181331/uploads/bfi_thumb/2025051383-r5qlz4i98u0ybulqxhmuqi155wg5z6spfz2sb6775u.jpg",
        "description": "A small village in Betul tehsil, famous for its geographical and historical significance. | बेतुल तहसील का एक छोटा गाँव, जो भौगोलिक और ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kukru (कुकरू)",
        "image": "https://cdn.s3waas.gov.in/s31534b76d325a8f591b52d302e7181331/uploads/bfi_thumb/2018061317-1-olw737psoedmljpggehbnroj007lrhscdlprvdho0k.jpg",
        "description": "The highest peak of Betul district, situated in the picturesque Satpura mountains, about 10 km from district headquarters. | सुरम्य सतपुड़ा पर्वत श्रृंखला में बेतुल जिले का सबसे ऊँचा शिखर, जिला मुख्यालय से लगभग 10 किमी दूर।"
      },
      {
        "name": "Tapti Surya Kund (ताप्ती सूर्य कुंड)",
        "image": "https://cdn.s3waas.gov.in/s31534b76d325a8f591b52d302e7181331/uploads/bfi_thumb/2019070668-olw73dctbv2vryidwcx6pixr0uutwa5ylzjbv840zm.jpg",
        "description": "Located in Multai, famous as the origin of the holy stream Maa Tapti. | मुळेई शहर में स्थित, पवित्र धारा मां ताप्ती के उद्गम स्थल के रूप में प्रसिद्ध।"
      },
      {
        "name": "Balajipuram (बलाजीपुरम)",
        "image": "https://cdn.s3waas.gov.in/s31534b76d325a8f591b52d302e7181331/uploads/bfi_thumb/2019070636-1-olw73cez511lgcjr1uik516afgzgol289uvudy5f5u.jpg",
        "description": "Famous for the huge temple of Lord Balaji, under Betul Bazar Nagar Panchayat. | भगवान बलाजी के विशाल मंदिर के लिए प्रसिद्ध, बेतुल बाजार नगर पंचायत के अंतर्गत।"
      },
      {
        "name": "Salbardi (सलबार्डी)",
        "image": "https://cdn.s3waas.gov.in/s31534b76d325a8f591b52d302e7181331/uploads/bfi_thumb/2019070689-olw73dctbv2vryidwcx6pixr0uutwa5ylzjbv840zm.jpg",
        "description": "Contains a cave of Lord Shiva; hosts a week-long fair every Shivaratri. | भगवान शिव की गुफा, हर साल शिवरात्रि पर एक सप्ताह तक मेला लगता है।"
      },
      {
        "name": "Muktagiri (मुक्तागिरी)",
        "image": "https://cdn.s3waas.gov.in/s31534b76d325a8f591b52d302e7181331/uploads/bfi_thumb/2019070644-olw73cez511lgcjr1uik516afgzgol289uvudy5f5u.jpg",
        "description": "A famous Jain pilgrimage in Thapoda village of Bhaisdehi block, known for its beauty and charm. | भैसदेही ब्लॉक के थापोड़ा गाँव में स्थित प्रसिद्ध जैन तीर्थ, अपनी सुंदरता और आकर्षण के लिए प्रसिद्ध।"
      }
    ],

    "Bhind (भिंड)": [
      {
        "name": "Chambal River (चंबल नदी)",
        "image": "https://cdn.s3waas.gov.in/s3fde9264cf376fffe2ee4ddf4a988880d/uploads/bfi_thumb/2025052328-r688d9di3xpmlwxs9edovdklri6qzwm028y6ffvaiq.jpg",
        "description": "Plays an important role in the history, geography, and culture of Bhind district. | भिंड जिले के इतिहास, भूगोल और संस्कृति में महत्वपूर्ण भूमिका निभाती है।"
      },
      {
        "name": "Pawai Mata Temple (पवई माता मंदिर)",
        "image": "hhttps://cdn.s3waas.gov.in/s3fde9264cf376fffe2ee4ddf4a988880d/uploads/bfi_thumb/2025052362-scaled-r6883kndoeg8yl0btpn3obkldjxko75l2ax1ds8cn6.jpg",
        "description": "Located in Ater block, with a history of about a thousand years. | अटेर ब्लॉक में स्थित, लगभग हजार साल पुराना मंदिर।"
      },
      {
        "name": "Chhatri of Malhar Rao Holkar, Alampur (अलंपुर, मल्हार राव होलकर की छत्री)",
        "image": "https://cdn.s3waas.gov.in/s3fde9264cf376fffe2ee4ddf4a988880d/uploads/bfi_thumb/2019061210-olwdxgholdydcr1zx8bxzxd5tfxa3k44406o058hz6.jpg",
        "description": "Built in 1766 AD by Maharani Ahilya Bai Holkar in honour of the great Maratha general. | महान मराठा सेनानी के सम्मान में 1766 ईस्वी में महारानी अहिल्या बाई होलकर द्वारा निर्मित।"
      },
      {
        "name": "Vankhandeshwar Temple (वंखंडेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3fde9264cf376fffe2ee4ddf4a988880d/uploads/bfi_thumb/2019061277-olwdxgholdydcr1zx8bxzxd5tfxa3k44406o058hz6.jpg",
        "description": "Dedicated to Lord Shiva; believed to be one of the oldest temples in India. | भगवान शिव को समर्पित, भारत के सबसे पुराने मंदिरों में से एक माना जाता है।"
      },
      {
        "name": "Ater Fort (अटेर किला)",
        "image": "https://cdn.s3waas.gov.in/s3fde9264cf376fffe2ee4ddf4a988880d/uploads/bfi_thumb/2019061266-olwdxgholdydcr1zx8bxzxd5tfxa3k44406o058hz6.jpg",
        "description": "Constructed by Bhadoria Raja Badan Singh, Maha Singh, and Bakhat Singh during 1664-1668. | 1664-1668 के दौरान भदोरिया राजा बदन सिंह, महा सिंह और बखत सिंह द्वारा निर्मित।"
      }
    ],

    "Bhopal (भोपाल)": [
      {
        "name": "Shaurya Smarak (शौर्य स्मारक)",
        "image": "https://cdn.s3waas.gov.in/s337a749d808e46495a8da1e5352d03cae/uploads/bfi_thumb/2023030650-q344x624s60g12iqcr3jfjfri7115vi2p0dct5kbuq.jpg",
        "description": "A war memorial on Arera Hill in the center of Bhopal city, commemorating the valor of immortal martyrs of India. | भोपाल शहर के केंद्र में अरेरा हिल पर स्थित युद्ध स्मारक, भारत के अमर शहीदों के शौर्य को समर्पित।"
      },
      {
        "name": "Bhimbetka Cave Paintings (भीमबेटका गुफा चित्र)",
        "image": "https://cdn.s3waas.gov.in/s337a749d808e46495a8da1e5352d03cae/uploads/bfi_thumb/2019071778-olw7yc5ehdgy9hj32qspupmfju85hb3m79971e7402.jpg",
        "description": "Rock shelters with cave paintings about 30,000 years old, home to ancient humans. | लगभग 30,000 साल पुराने गुफा चित्रों वाले शैल आश्रय, प्राचीन मानवों का निवास स्थल।"
      },
      {
        "name": "Taj-ul-Masjid (ताज-उल-मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s337a749d808e46495a8da1e5352d03cae/uploads/bfi_thumb/2019071090-olw7yb7kajfnxvkg88e3a7uyygcs9lzvv4lpk48i6a.png",
        "description": "A large mosque located in Bhopal, one of the largest mosques in India. | भोपाल में स्थित बड़ी मस्जिद, भारत की सबसे बड़ी मस्जिदों में से एक।"
      },
      {
        "name": "Van Vihar National Park (वन विहार नेशनल पार्क)",
        "image": "https://cdn.s3waas.gov.in/s337a749d808e46495a8da1e5352d03cae/uploads/bfi_thumb/2019070170-olw7y9bvwvd3ann6j7ku58c1rom1u7sf6vaqlkbaiq.png",
        "description": "A national park created from a deserted forest area to restore rich flora and fauna. | एक राष्ट्रीय उद्यान, जो परित्यक्त जंगल क्षेत्र से बनाया गया, समृद्ध वनस्पति और जीव-जंतुओं को पुनर्स्थापित करने के लिए।"
      }
    ],

    "Burhanpur (बुरहानपुर)": [
      {
        "name": "Dargah-e-Hakimi (दरगाह-ए-हाकिमी)",
        "image": "https://cdn.s3waas.gov.in/s3d81f9c1be2e08964bf9f24b15f0e4900/uploads/bfi_thumb/2025042977-r529nq5cjw0keyylkyb9rdkpqxk8z5t6quiby1uc5e.jpg",
        "description": "A sacred and beautiful pilgrimage site for the Bohra community from around the world. | दुनियाभर के बोहरा समुदाय के लिए एक पवित्र और खूबसूरत तीर्थ स्थल।"
      },
      {
        "name": "Tomb of Shah Nawaz Khan (शाह नवाज खान का मकबरा)",
        "image": "https://cdn.s3waas.gov.in/s3d81f9c1be2e08964bf9f24b15f0e4900/uploads/bfi_thumb/2018030713-olwcl7fxrjwhdd55odhe03pc1dqyywk5h6ld4ss1du.jpg",
        "description": "Holds a special place among Mughal-era buildings, also known as the Black Taj Mahal. | मुग़ल कालीन इमारतों में विशेष स्थान रखने वाला, जिसे ब्लैक ताज महल भी कहा जाता है।"
      },
      {
        "name": "Kundli Bhandaar (कुंडली भंडार)",
        "image": "https://cdn.s3waas.gov.in/s3d81f9c1be2e08964bf9f24b15f0e4900/uploads/bfi_thumb/2025042950-r52ill1uqmm5w5fz5ktd1nnsfp5vo2kdzwcqrymbk2.jpg",
        "description": "Medieval engineering marvel where water is squeezed out from stones. | मध्यकालीन इंजीनियरिंग का चमत्कार, जहाँ पत्थरों से पानी निकाला जाता है।"
      },
      {
        "name": "Ichchhadevi Temple (इच्छादेवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d81f9c1be2e08964bf9f24b15f0e4900/uploads/bfi_thumb/2025042919-r52h8aekbf4t0d1r09pqa3hiw84vziv5vwo0pjplvm.jpeg",
        "description": "Ancient temple located 23 km from Burhanpur near Maharashtra border; believed to fulfill wishes. | बुरहानपुर से 23 किमी दूर, महाराष्ट्र सीमा के पास प्राचीन मंदिर; कहा जाता है कि यहाँ इच्छाएँ पूरी होती हैं।"
      },
      {
        "name": "Gurdwara Badi Sangat (गुरुद्वारा बड़ी संगीत)",
        "image": "https://cdn.s3waas.gov.in/s3d81f9c1be2e08964bf9f24b15f0e4900/uploads/bfi_thumb/2019070975-1-olwcld2ywk47b0wyrfx5f2a3loz6936jhyia0gjoci.jpg",
        "description": "Located on the banks of Tapti River; a historical and religious heritage site. | ताप्ती नदी के किनारे स्थित; ऐतिहासिक और धार्मिक धरोहर स्थल।"
      },
      {
        "name": "Jama Masjid (जामा मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s3d81f9c1be2e08964bf9f24b15f0e4900/uploads/bfi_thumb/2025050112-r55v0x5yczd4dq4iu1ufs5emumuanejv1tlg8wkn42.jpg",
        "description": "Built of black Sangekhara stones, a masterpiece of architecture and unity. | काले संगेखड़ा पत्थरों से निर्मित, वास्तुकला और एकता का उत्कृष्ट उदाहरण।"
      },
      {
        "name": "Shahi Hamam (शाही हामाम)",
        "image": "https://cdn.s3waas.gov.in/s3d81f9c1be2e08964bf9f24b15f0e4900/uploads/bfi_thumb/2025052221-r66jvpjjfyt4apyamn2v1dh7pp242svv0dejjqjn5u.jpeg",
        "description": "Ancient royal spa built by Shah Jahan for Mumtaz Mahal. | शाहजहाँ द्वारा मुमताज़ महल के लिए निर्मित प्राचीन शाही स्नानागार।"
      },
      {
        "name": "Royal Fort / Shahi Qila (शाही क़िला)",
        "image": "https://cdn.s3waas.gov.in/s3d81f9c1be2e08964bf9f24b15f0e4900/uploads/bfi_thumb/2018022028-olwcl6i3kpv71r6itv2rflxvfzvlr7gf51xvnitfk2.jpg",
        "description": "A royal palace located east of the Tapti River with historical significance. | ताप्ती नदी के पूर्व में स्थित ऐतिहासिक शाही महल।"
      },
      {
        "name": "Asirgarh Fort (असिरगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3d81f9c1be2e08964bf9f24b15f0e4900/uploads/bfi_thumb/2018032045-1-olwcky1jv7jm59it79f4b62q3j1atxiu3w2ic15z42.jpg",
        "description": "Strategically important fort about 14 miles from Burhanpur, located on Satpura Hills. | बुरहानपुर से लगभग 14 मील दूर, सतपुड़ा पर्वत श्रृंखला पर स्थित रणनीतिक दृष्टि से महत्वपूर्ण किला।"
      }
    ],

    "Chhatarpur (छतरपुर)": [
      {
        "name": "Maharaja Chhatrasal Museum (महाराजा छत्रसाल संग्रहालय)",
        "image": "https://cdn.s3waas.gov.in/s3f1b6f2857fb6d44dd73c7041e0aa0f19/uploads/bfi_thumb/2025042980-r52a9j0l2juzpdaj9vkr3dilro3qifd22r8ro3iltu.png",
        "description": "Located in an old palace at Dhubela on the Chhatarpur-Jhansi Highway, showcasing historical artifacts. | छतरपुर-झांसी हाइवे पर धुबेळा स्थित पुराने महल में ऐतिहासिक कलाकृतियों का संग्रह।"
      },
      {
        "name": "Raneh Falls (रानेह जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3f1b6f2857fb6d44dd73c7041e0aa0f19/uploads/bfi_thumb/2025042918-r52a2rkdwglq6d45rgcdnky7wvfo4tiktaa0dfjkle.jpg",
        "description": "A natural waterfall on the Ken River, located in Khajuraho, Madhya Pradesh. | मध्य प्रदेश के खजुराहो में केन नदी पर स्थित प्राकृतिक जलप्रपात।"
      },
      {
        "name": "Adivrat Madhya Pradesh Tribal and Folk Art State Museum (आदिव्रत मध्यप्रदेश आदिवासी और लोक कला राज्य संग्रहालय)",
        "image": "https://cdn.s3waas.gov.in/s3f1b6f2857fb6d44dd73c7041e0aa0f19/uploads/bfi_thumb/2025042927-scaled-r529o72fywnq7ya0u5mk09b0fv8utpoct692l1591e.jpg",
        "description": "Museum showcasing prehistoric, historical, spiritual, and cultural heritage of Madhya Pradesh. | मध्य प्रदेश की प्रागैतिहासिक, ऐतिहासिक, आध्यात्मिक और सांस्कृतिक धरोहर को प्रदर्शित करने वाला संग्रहालय।"
      },
      {
        "name": "Bhim Kund / Neelkund (भीम कुंड / नीलकुंड)",
        "image": "https://cdn.s3waas.gov.in/s3f1b6f2857fb6d44dd73c7041e0aa0f19/uploads/bfi_thumb/2022010330-pigvzjn8gxw9koc9lsxuv866g1t7sv9q617npldqte.jpg",
        "description": "A natural water pool with a sacred fig tree, revered as a sacred site. | पवित्र पीपल के पेड़ वाला प्राकृतिक जलाशय, एक पवित्र स्थल के रूप में प्रतिष्ठित।"
      },
      {
        "name": "Khajuraho Temple (खजुराहो मंदिर समूह)",
        "image": "https://cdn.s3waas.gov.in/s3f1b6f2857fb6d44dd73c7041e0aa0f19/uploads/bfi_thumb/2019061721-olwdjfqcncre65f6so5aayqmtj16a3g96luxak0wsi.jpeg",
        "description": "A group of Hindu and Jain monuments, famous for its intricate sculptures and architecture. | हिंदू और जैन स्मारकों का समूह, जटिल मूर्तिकला और वास्तुकला के लिए प्रसिद्ध।"
      }
    ],

    "Chhindwara (छिंदवाड़ा)": [
      {
        "name": "Shri Badal Bhoi State Tribal Museum (श्री बादल भोई राज्य आदिवासी संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/5e/9f/97/shri-badal-bhoi-state.jpg?w=1200&h=1200&s=1",
        "description": "A cultural institution showcasing the rich heritage and diversity of tribal communities. | आदिवासी समुदायों की समृद्ध विरासत और विविधता को प्रदर्शित करने वाला प्रमुख सांस्कृतिक संस्थान।"
      },
      {
        "name": "Deogarh Fort (देवगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/8e/28/c8/img-20161103-164359-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Renowned historical fort located 24 miles south of Mohkhed, built on elevated terrain. | मोहखेड़ से 24 मील दक्षिण में स्थित प्रसिद्ध ऐतिहासिक किला, ऊँची भूमि पर निर्मित।"
      },
      {
        "name": "Anhoni Hot Spring, Tamia (अन्होनी हॉट स्प्रिंग, तामिया)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/95/c0/9f/caption.jpg?w=1200&h=-1&s=1",
        "description": "Natural hot spring located 13 km from Chhindwara via Zhirpa Chawalapani road. | झिरपा चावलापानी मार्ग से छिंदवाड़ा से 13 किमी दूर प्राकृतिक गर्म जल स्रोत।"
      },
      {
        "name": "Nagdwari Yatra (नागद्वारी यात्रा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOgbsT3fc_02J3ZQtP5ZiuEjiKFNkqxC9xJw&s",
        "description": "Annual adventure festival during Shravan on Nagpanchami, 10 days before the main event. | श्रावण माह में नागपंचमी के अवसर पर वार्षिक साहसिक उत्सव, मुख्य कार्यक्रम से 10 दिन पहले।"
      },
      {
        "name": "Devranidai’s Journey (देवरनिदाई यात्रा स्थल)",
        "image": "https://i.ytimg.com/vi/G7PKM0BSKyw/maxresdefault.jpg",
        "description": "A scenic natural destination located 50 km from Chhindwara city, on the way to Pachmarhi. | छिंदवाड़ा शहर से 50 किमी दूर, पचमढ़ी जाने के मार्ग पर प्राकृतिक सुंदर स्थल।"
      },
      {
        "name": "Hinglaj Temple, Ambada (हिंगलाज मंदिर, अंबड़ा)",
        "image": "https://img.naidunia.com/naidunia/ndnimg/18042021/18_04_2021-18chh_1.jpg",
        "description": "Ancient temple located in Ambada, Umreth police station area, about 35 km from Chhindwara district. | अंबड़ा, उमरेठ थाना क्षेत्र में स्थित प्राचीन मंदिर, छिंदवाड़ा जिले से लगभग 35 किमी दूर।"
      },
      {
        "name": "Chhota Mahadev Waterfall (छोटा महादेव जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/63/e4/1a/photo2jpg.jpg?w=1200&h=-1&s=1",
        "description": "Located 2 km from Tamia Resthouse in dense forests, near an ancient Mahadev temple. | घने जंगलों में तामिया रेस्टहाउस से 2 किमी दूर, प्राचीन महादेव मंदिर के पास।"
      },
      {
        "name": "Patalkot (पातालकोट)",
        "image": "https://cdn.s3waas.gov.in/s37ef605fc8dba5425d6965fbd4c8fbe1f/uploads/bfi_thumb/2019071111-olw9znk7k5u3uj16yfp4c7krlsutve5wa54mmdhmo2.jpg",
        "description": "A valley spread over 79 km² at an average height of 2750–3250 feet above sea level. | 79 किमी² क्षेत्र में फैला घाटी, समुद्र सतह से 2750–3250 फीट की औसत ऊँचाई पर।"
      },
      {
        "name": "Pench National Park (पेंच नेशनल पार्क)",
        "image": "https://cdn.s3waas.gov.in/s37ef605fc8dba5425d6965fbd4c8fbe1f/uploads/bfi_thumb/2018042189-olw9ziv0lzno8h80pvnzhqrgmvhzswn8lhv77zolj6.jpg",
        "description": "Nestled in the southern Satpura hills, named after the Pench river flowing through it. | सतपुड़ा की दक्षिणी पहाड़ियों में स्थित, इसके बीच बहने वाली पेंच नदी के नाम पर प्रसिद्ध।"
      },
      {
        "name": "Tamia Reservoir (तामिया जलाशय)",
        "image": "https://cdn.s3waas.gov.in/s37ef605fc8dba5425d6965fbd4c8fbe1f/uploads/bfi_thumb/2019071149-olw9zoi1qzve64ztsy3qwpc876q7339mm9s43ng8hu.jpg",
        "description": "A picturesque forest destination offering scenic and breathtaking views. | प्राकृतिक और अद्भुत दृश्यों वाला सुरम्य वन स्थल।"
      }
    ],

    "Damoh (दमोह)": [
      {
        "name": "Nidan Kund (निदान कुंड)",
        "image": "https://cdn.s3waas.gov.in/s30f28b5d49b3020afeecd95b4009adf4c/uploads/bfi_thumb/2025052396-r68f2nbf7a5i4wb5q8nloyp1mqf4pnwgx0646jymma.jpg",
        "description": "A beautiful waterfall located in the mountains about 7 km from Damoh city. | दमोह शहर से लगभग 7 किमी दूर पहाड़ों में स्थित सुंदर जलप्रपात।"
      },
      {
        "name": "Rani Durgawati Tiger Reserve (रानी दुर्गावती टाइगर रिजर्व)",
        "image": "https://cdn.s3waas.gov.in/s30f28b5d49b3020afeecd95b4009adf4c/uploads/bfi_thumb/2025052342-r687zv6apxdj5ye7h3y2u9950u7gb6fp7ya38hq96q.jpg",
        "description": "Named after Veerangana Rani Durgavati, known for its rich biodiversity. | वीरांगना रानी दुर्गावती के नाम पर, समृद्ध जैव विविधता के लिए प्रसिद्ध।"
      },
      {
        "name": "Jatashankar Temple (जटाशंकर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30f28b5d49b3020afeecd95b4009adf4c/uploads/bfi_thumb/2019082490-olw6p299anhr1nalg69mr4x5hpdoq5d1z618vlbrpe.jpg",
        "description": "Temple situated on the periphery of Damoh city, housing icons of Lord Shiva. | दमोह शहर के किनारे स्थित मंदिर, जिसमें भगवान शिव की प्रतिमाएं हैं।"
      },
      {
        "name": "Nohleshwar Temple, Nohta (नोहलश्वर मंदिर, नोठा)",
        "image": "https://cdn.s3waas.gov.in/s30f28b5d49b3020afeecd95b4009adf4c/uploads/bfi_thumb/2019082412-olw6p299anhr1nalg69mr4x5hpdoq5d1z618vlbrpe.jpg",
        "description": "A historic Shiv temple about 1 km from Nohta village, also called Mahadev or Nohleshwar. | नोठा गाँव से 1 किमी दूर ऐतिहासिक शिव मंदिर, जिसे महादेव या नोहलश्वर भी कहा जाता है।"
      },
      {
        "name": "Singourgarh Fort (सिंगौरगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s30f28b5d49b3020afeecd95b4009adf4c/uploads/bfi_thumb/2018062596-olw6oq1ctt10upscfizhcq05rp1wy30jlhjxmztvya.jpg",
        "description": "Ruins of a historically important fort about 6 km from Sigrampur. | सिग्रामपुर से लगभग 6 किमी दूर ऐतिहासिक महत्व का किला।"
      },
      {
        "name": "Bandakpur (बंदकपुर)",
        "image": "https://cdn.s3waas.gov.in/s30f28b5d49b3020afeecd95b4009adf4c/uploads/bfi_thumb/2018062527-olw6oq1ctt10upscfizhcq05rp1wy30jlhjxmztvya.jpg",
        "description": "A small town in Damoh district, famous for its religious significance. | दमोह जिले का एक छोटा शहर, धार्मिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Kundalpur (कुंडलपुर)",
        "image": "https://cdn.s3waas.gov.in/s30f28b5d49b3020afeecd95b4009adf4c/uploads/bfi_thumb/2025050258-r57rbmi18z57e0pyqc7zf7dhhi7bxafo39xis511c2.jpg",
        "description": "A historical Jain pilgrimage site located at Kundalgiri, Damoh district. | दमोह जिले के कुंडलगिरी में स्थित ऐतिहासिक जैन तीर्थ स्थल।"
      }
    ],

    "Datia (दतिया)": [
      {
        "name": "Shri Pitambara Peeth (श्री पीतांबरा पीठ)",
        "image": "https://cdn.s3waas.gov.in/s3c16a5320fa475530d9583c34fd356ef5/uploads/bfi_thumb/2019062166-olwbzrqfwkk2lia3ulwon0fwc1emfegiv2zq4mk9aa.jpg",
        "description": "A famous Shakti Peeth located in Datia city, established by Shri Golokvasi Swamiji Maharaj. | दतिया शहर में स्थित प्रसिद्ध शक्ति पीठ, जिसे श्री गोलोकवासी स्वामीजी महाराज ने स्थापित किया।"
      },
      {
        "name": "Ratangarh Mata Mandir (रतानगढ़ माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c16a5320fa475530d9583c34fd356ef5/uploads/bfi_thumb/2018031658-olwbzm3erkccnuiarjgx81v4rq6f57u4ub2t8ysmbm.jpg",
        "description": "Located 5 km from Rampura village and 55 km from Datia, a holy temple. | रामपुरा गाँव से 5 किमी और दतिया से 55 किमी दूर स्थित पवित्र मंदिर।"
      },
      {
        "name": "Sonagir Temple (सोनागिर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c16a5320fa475530d9583c34fd356ef5/uploads/bfi_thumb/2018031562-olwbzn18yedmzggxm1vjsjmld41scwxv6fqaq8r85e.jpg",
        "description": "A famous Jain pilgrimage site, visited in large numbers every year. | प्रसिद्ध जैन तीर्थ स्थल, जहाँ हर साल बड़ी संख्या में श्रद्धालु आते हैं।"
      },
      {
        "name": "Unav Balaji Sun Temple (उनाव बलाजी सूर्य मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c16a5320fa475530d9583c34fd356ef5/uploads/bfi_thumb/2018032277-olwbzowxc2g7moe7b2osxj5ijvsisb5bup19osofsy.jpg",
        "description": "Located 17 km from Datia, a very old temple believed to fulfill wishes. | दतिया से 17 किमी दूर स्थित प्राचीन मंदिर, जिसे इच्छाएं पूरी करने वाला माना जाता है।"
      }
    ],

    "Dewas (देवास)": [
      {
        "name": "Tekri Dewas / Dewas Mata Ji Hill (टेकरि देवास / देवास माता जी हिल)",
        "image": "https://cdn.s3waas.gov.in/s3735b90b4568125ed6c3f678819b6e058/uploads/bfi_thumb/2023011149-q0i01h5k7jmqj3vnv7qbh8jfh1zb706kallpqdq22q.png",
        "description": "A religious site amidst historical events and political developments, connecting common people and notable figures. | ऐतिहासिक घटनाओं और राजनीतिक विकास के बीच स्थित धार्मिक स्थल, आम लोगों और प्रमुख व्यक्तियों को जोड़ता है।"
      },
      {
        "name": "Gidiya Kho (गिड़िया खो)",
        "image": "https://cdn.s3waas.gov.in/s3735b90b4568125ed6c3f678819b6e058/uploads/bfi_thumb/2019062131-olw9hm1qdn4yzz8nb4xwz9h94js74jjdguc4068o3m.jpg",
        "description": "A historical site in the Malwa region, rich in cultural heritage and natural beauty. | मालवा क्षेत्र में ऐतिहासिक स्थल, सांस्कृतिक धरोहर और प्राकृतिक सुंदरता से भरपूर।"
      },
      {
        "name": "Panwar Umbrella / Chhatris (पंवार छत्री / मीठा तालाब के पास)",
        "image": "https://cdn.s3waas.gov.in/s3735b90b4568125ed6c3f678819b6e058/uploads/bfi_thumb/2019062171-olw9hm1qdn4yzz8nb4xwz9h94js74jjdguc4068o3m.jpg",
        "description": "Chhatris of the former Panwar rulers near Meetha Talab, exemplifying Maratha architecture. | पूर्व पंवार शासकों की छत्रियाँ मीठा तालाब के पास, मराठा वास्तुकला का सुंदर उदाहरण।"
      },
      {
        "name": "Kavadia Hills (कावड़िया हिल्स)",
        "image": "https://cdn.s3waas.gov.in/s3735b90b4568125ed6c3f678819b6e058/uploads/bfi_thumb/2019061741-olw9hk61zz2ecrbdm44nu9ybxs1gp5bwsl151mbgg2.jpg",
        "description": "Seven hills near Dharaji, about 10 km from Bagli tehsil, known for scenic beauty. | धाराजी के पास सात पहाड़ियाँ, बागली तहसील से लगभग 10 किमी दूर, प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      }
    ],

    "Dhar (धार)": [
      {
        "name": "Bhopawar Jain Tirth (भोपाल जैन तीर्थ)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023073124-1-qa7ngvpn5g9l9dzpao8nz2gat03pz3ysy0dy2fjtaa.jpg",
        "description": "Located 6 km from Sardarpur tehsil; a quiet and serene Jain pilgrimage site. | सरदारपुर तहसील से 6 किमी दूर, शांत और पवित्र जैन तीर्थ स्थल।"
      },
      {
        "name": "Mohan Kheda Jain Tirth (मोहन खेड़ा जैन तीर्थ)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023073191-qa7mcmaiex5fyoh2e9py687isujq9u4peqf81r8vsy.jpg",
        "description": "One of the most important Jain temples in Dhar district, highly visited by devotees. | धार जिले का सबसे महत्वपूर्ण जैन मंदिर, श्रद्धालुओं द्वारा बड़े पैमाने पर दर्शन।"
      },
      {
        "name": "Dinosaur Fossil National Park, Bagh (डायनासोर फॉसिल नेशनल पार्क, बाग़)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/20230731100-qa7leexxpybthi5o4hgofuxom34w6ccc1ft5d9ym82.jpg",
        "description": "Preserves remains of prehistoric plants and animals excavated from past geological ages. | प्रागैतिहासिक पौधों और जानवरों की अवशेषों का संरक्षण।"
      },
      {
        "name": "Nityanand Ashram (नित्यानंद आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023073188-qa7kw7sfefeypalbe49pny9ekiu25b3f7d3pvey0oy.jpg",
        "description": "Religious center amidst nature where saints and seekers meditate. | प्रकृति के बीच धार्मिक केंद्र जहाँ संत और साधक ध्यान करते हैं।"
      },
      {
        "name": "Bhaktamar Tirth (भक्तामर तीर्थ)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023073156-qa7kjjwpbs2waezic57nknaugn91g3tlsop847pyiq.jpg",
        "description": "Famous for the origin of the Bhaktamar Stotra, a revered Jain mantra. | भक्तामर स्तोत्र की उत्पत्ति के लिए प्रसिद्ध, जैन धर्म का महत्वपूर्ण मंत्र।"
      },
      {
        "name": "Dhareshwar Temple (धरेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071311-q9cl7ygoqbkmhlf3gea2grgamtcsusrqsqlknow4ci.jpg",
        "description": "Located in the center of Dhar city, dedicated to Lord Shiva. | धार शहर के केंद्र में स्थित, भगवान शिव को समर्पित।"
      },
      {
        "name": "Gadh Kalika Devi (गढ़ कालिका देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071347-q9cbbsg93a098srs7xw7651jdquv7lt8tvj586zg1u.jpeg",
        "description": "Ancient Hindu temple near Devi Sagar pond on one of the highest hills. | देवी सागर तालाब के पास, ऊँची पहाड़ियों में स्थित प्राचीन हिंदू मंदिर।"
      },
      {
        "name": "Phadke Art Studio – Dhar (फड़के आर्ट स्टूडियो – धार)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071368-q9caotaa12jxfy5ae0ci7xrwmo3v1ylgc5fuwp1w5e.png",
        "description": "Historic art studio highlighting Dhar’s sculptural heritage. | धार की मूर्तिकला विरासत को प्रदर्शित करने वाला ऐतिहासिक कला स्टूडियो।"
      },
      {
        "name": "Lat Masjid (लट मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071378-q9ca3rod0lqti8pr9wv7e8ydu3u0px1srzmi3o97gi.jpg",
        "description": "A remarkable fusion of temple and mosque architecture on the outskirts of Dhar. | धार के बाहरी इलाके में मंदिर और मस्जिद वास्तुकला का अद्भुत मिश्रण।"
      },
      {
        "name": "Jal Mahal Sadalpur (जल महल सडलपुर)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071393-q9c9rlnkjt377ye0bnj24bhl0jsz2yqvrrm8gqao02.jpg",
        "description": "Architectural wonder through which the river flows. | नदी के बीच स्थित वास्तुकला का अद्भुत स्मारक।"
      },
      {
        "name": "Kharbooja Mahal (खरबूजा महल)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071282-q9avsxlmoquiqb1za63iu7fz117ltq5pt6pgj976ki.png",
        "description": "Famous attraction inside Dhar Fort, named for its distinctive design. | धार किले के भीतर प्रसिद्ध आकर्षण, इसकी विशिष्ट डिजाइन के लिए जाना जाता है।"
      },
      {
        "name": "Dhar Museum (धार संग्रहालय)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071231-q9b0d199uhhnnios1lpqnao0jqdinempdew5rbvu9u.jpg",
        "description": "Archaeological museum inside Dhar Fort showcasing ancient remains. | धार किले के भीतर पुरातात्विक संग्रहालय, प्राचीन अवशेष प्रदर्शित करता है।"
      },
      {
        "name": "Dhar Fort (धार किला)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071295-q9avcm4i1aib60rbkm5p1tovr7n76wdh8eyzlbe8le.jpg",
        "description": "Major historical attraction built in 1344, central to Dhar’s heritage. | 1344 में निर्मित प्रमुख ऐतिहासिक स्थल, धार की विरासत का केंद्र।"
      },
      {
        "name": "Bent Bilwamrateswar Mahadev Mandir, Dharampuri (बेंट बिल्वमरत्स्वर महादेव मंदिर, धारमपुरि)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071272-q9as7digothqh78tt60q5werf3savltlzxm589ao76.jpeg",
        "description": "Historic temple in Dharampuri with unique architecture. | धारमपुरी में ऐतिहासिक मंदिर, अनोखी वास्तुकला के साथ।"
      },
      {
        "name": "Bagh Caves (बाग़ गुफाएँ)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071251-q9aru16xoh87ogmipwed9rm7v7jqm9urtw90zv2uiq.jpg",
        "description": "Nine rock-cut monuments blending art and contemplation. | नौ शिलाप्रतिमा स्मारक, कला और ध्यान का मिश्रण।"
      },
      {
        "name": "Echo Point (इको प्वाइंट)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071131-q990jqzmlofh5nyjalkv86mi0ux0sw86xfu4mn41z6.jpg",
        "description": "Say something loudly facing Dai’s palace near Sagar Talab to hear echoes. | सागर तालाब के पास दाई के महल की ओर जोर से बोलें, प्रतिध्वनि सुनने के लिए।"
      },
      {
        "name": "Songarh Fort (सोंगढ़ किला – मांडव)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071151-q98wl6su299war1bqz5v25pql1kxdi9rbtv0buhloi.jpg",
        "description": "Historic fort located in Mandav, part of the region’s rich heritage. | मांडव में ऐतिहासिक किला, क्षेत्र की समृद्ध विरासत का हिस्सा।"
      },
      {
        "name": "Baz Bahadur Mahal (बाज़ बहादुर महल)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071123-q98vhmrcg94hpihtqdm2mn2emajug28ew1ie9n51j6.jpg",
        "description": "Famous for music, engineering skills, and architectural brilliance. | संगीत, इंजीनियरिंग कौशल और वास्तुकला के लिए प्रसिद्ध।"
      },
      {
        "name": "Rewa Kund (रेवा कुंड)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071150-q98v11vtwgfex4ktjplz5bopem9ro9euxz92ixq1aa.jpg",
        "description": "Water reservoir built by Baz Bahadur at Rani Rupmati’s insistence. | रानी रूपमती की इच्छा पर बाज़ बहादुर द्वारा निर्मित जलाशय।"
      },
      {
        "name": "Asharfi Mahal (अशरफी महल)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071084-q9718lztaq7kssvdkxtpfzqccs0mk0v4na6k19fnk2.jpg",
        "description": "Situated in front of Jami Masjid, known by multiple historical names. | जामी मस्जिद के सामने स्थित, कई ऐतिहासिक नामों से जाना जाता है।"
      },
      {
        "name": "Nahar Jharokha, Mandu (नाहर झरोखा – मांडव)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071021-q970v4z3c7rme0fw9467pe4htyf887dmslk0ehesqq.jpg",
        "description": "Square platform with fragmented balcony, glimpse of the king’s view. | टुकड़ों वाली बालकनी के साथ चौकोर प्लेटफ़ॉर्म, राजा के दृश्य का अनुभव।"
      },
      {
        "name": "Neelkanth Palace (नीलकंठ महल – मांडव)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071069-q970mqb27k9ajknjchcceii2jvv1do02azhnvdvkea.jpg",
        "description": "Palace giving an impression of splendor and seclusion. | भव्यता और एकांत का अनुभव देने वाला महल।"
      },
      {
        "name": "Budhi Mandav (बूढ़ी मांडव)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023071052-scaled-q96zxdlrvfjve7hae0tlnethqqtmrkcp5i16vpgu82.jpg",
        "description": "Ruins of Mandav city, renowned for history and architecture. | मांडव शहर के खंडहर, इतिहास और वास्तुकला के लिए प्रसिद्ध।"
      },
      {
        "name": "Jami Masjid, Mandu (जामी मस्जिद – मांडव)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023070816-q93q3cwuqyjpiz8zsvx5gdc2ex71ygtw9gdulp5gxu.jpg",
        "description": "Oldest and largest mosque in Mandu, construction started during medieval period. | मांडव की सबसे पुरानी और बड़ी मस्जिद, मध्यकालीन काल में निर्माण शुरू हुआ।"
      },
      {
        "name": "Hoshang Shah Tomb (हुसंग शाह का मकबरा)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023070863-q93rs7yn9rv3a0udep0ieifj437ncxg7mp2o9ows1u.jpeg",
        "description": "India’s first marble tomb, built in the 15th century. | भारत का पहला संगमरमर का मकबरा, 15वीं सदी में निर्मित।"
      },
      {
        "name": "Ram Mandir, Mandu (राम मंदिर – मांडव)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023070899-q93qvh917j1iv0eiljicjrvi6wld8hgt4mzsgpggsi.jpg",
        "description": "Dedicated to Lord Vishnu’s Chaturbhuja avatar, revered in Mandu. | भगवान विष्णु के चतुर्भुज अवतार को समर्पित, मांडव में प्रतिष्ठित।"
      },
      {
        "name": "Lohani Caves, Mandu (लोहनी गुफाएँ – मांडव)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023070898-q93orbdtfss44h18c4bm0hrxdxzoje3sbo0fkkduyq.jpg",
        "description": "Oldest monolith/shrine in Mandu, created through simple excavation. | मांडव का सबसे पुराना गुफा/मंदिर, सरल खुदाई के माध्यम से निर्मित।"
      },
      {
        "name": "Champa Bawdi (चंपा बावड़ी)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023070864-scaled-q93t8ey0rlb9yj11mr7qcu9ylbydrvnn516altisjm.jpg",
        "description": "Palace of underground cells, built for water management. | भूमिगत कक्षों का महल, जल प्रबंधन के लिए निर्मित।"
      },
      {
        "name": "Roopmati’s Pavilion (रूपमती का महल)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023070337-q8vceu4pfbb8carhmd6w0zgvqrbpd9b8ev33qs5lvm.jpeg",
        "description": "Part of Mandu’s history with Baz Bahadur and Rani Rupmati. | मांडव का इतिहास, बाज़ बहादुर और रानी रूपमती से जुड़ा।"
      },
      {
        "name": "Hindola Mahal (हिंदोला महल)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023070321-q8vcenju3h283111osci1j4nl284vdl41yipdufd36.jpeg",
        "description": "Swing palace with sloping walls, unique architectural design. | ढलान वाली दीवारों वाला स्विंग महल, अनोखी वास्तुकला।"
      },
      {
        "name": "Jahaz Mahal (जहाज महल)",
        "image": "https://cdn.s3waas.gov.in/s31068c6e4c8051cfd4e9ea8072e3189e2/uploads/bfi_thumb/2023070329-q8vcejshc4x2sl6iaqpzrk2t7iqo0l66pfwrgqkxs2.jpeg",
        "description": "Ship palace, one of India’s most unique monuments. | जहाज महल, भारत के सबसे अनोखे स्मारकों में से एक।"
      }
    ],

    "Dindori (डिंडोरी)": [
      {
        "name": "Karopani Natural Deer Park (करोपानी नैचुरल डियर पार्क)",
        "image": "https://cdn.s3waas.gov.in/s315de21c670ae7c3f6f3f1f37029303c9/uploads/bfi_thumb/2019061751-olw70ju8tr7wy2lud51h88jyv8r6syyy812w1cajnm.jpg",
        "description": "Village Karopani is a classic example of co-existence of humans and wildlife, with rare species of blackbucks and spotted deer. | करोपानी गाँव मानव और वन्यजीवन के सह-अस्तित्व का एक आदर्श उदाहरण, जिसमें दुर्लभ ब्लैकबक और तेंदुआ हिरण पाए जाते हैं।"
      },
      {
        "name": "National Fossil Park, Ghughwa (नेशनल फॉसिल पार्क, घुघवा)",
        "image": "https://cdn.s3waas.gov.in/s315de21c670ae7c3f6f3f1f37029303c9/uploads/bfi_thumb/2018052287-olw70e77or070eu1a2lpt9z7axizisck795z5oiwoy.jpg",
        "description": "Located 70 km from Dindori, spread over 75 acres, showcasing prehistoric fossils. | डिंडोरी से 70 किमी दूर, 75 एकड़ क्षेत्र में फैला, प्रागैतिहासिक जीवाश्मों को प्रदर्शित करता है।"
      }
    ],

    "Guna (गुना)": [
      {
        "name": "Bis Bhuja Devi Mandir (बिस भूजा देवी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTqhwQl4OjSZTnuqQtESrNjW6Q3Nnj6zp-JA&s",
        "description": "Located on the high hill of Bajranggarh, 8 km from the district headquarters. | बजरंगगढ़ की ऊँची पहाड़ी पर, जिला मुख्यालय से 8 किमी दूर स्थित।"
      },
      {
        "name": "Gopi Krishan Sagar Dam (गोपी कृष्ण सागर डैम)",
        "image": "https://cdn.s3waas.gov.in/s37380ad8a673226ae47fce7bff88e9c33/uploads/bfi_thumb/2018032729-1-olw9ipiycon0jlnawm08vzim2qdm3tw3m9qi5sm4ua.jpg",
        "description": "A popular tourist place 8 km away from Guna, known for its scenic beauty. | गुना से 8 किमी दूर, प्राकृतिक सुंदरता के लिए प्रसिद्ध लोकप्रिय पर्यटन स्थल।"
      },
      {
        "name": "Tekri Sarkar / Hanuman Tekri Mandir (टेकरी सरकार / हनुमान टेकरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37380ad8a673226ae47fce7bff88e9c33/uploads/bfi_thumb/2019062642-olw9itab40s5u1huanmr5ykgg9v2ymb0yscg2wgk5e.jpg",
        "description": "Located about 5 km from district headquarters on high hills. | जिला मुख्यालय से लगभग 5 किमी दूर, ऊँची पहाड़ियों पर स्थित।"
      }
    ],

    "Gwalior (ग्वालियर)": [
      {
        "name": "Gujari Mahal Archaeological Museum (गुजरी महल पुरातात्विक संग्रहालय)",
        "image": "https://cdn.s3waas.gov.in/s3e369853df766fa44e1ed0ff613f563bd/uploads/bfi_thumb/2023122068-qh2q9zwvm3vsdaknljyy3eiy5ieqltudhsb9ysdc02.png",
        "description": "Houses ancient artefacts dating back to the 1st and 2nd centuries BC. Timings: 10:00 AM – 5:00 PM (Closed Monday). | 1 और 2 शताब्दी ईसा पूर्व की प्राचीन कलाकृतियों को संग्रहित करता है। समय: सुबह 10:00 – शाम 5:00 (सोमवार बंद)।"
      },
      {
        "name": "Italian Garden (इटालियन गार्डन)",
        "image": "https://cdn.s3waas.gov.in/s3e369853df766fa44e1ed0ff613f563bd/uploads/bfi_thumb/2023122067-qh2qgv4fjja76qlki0ttt656duk9u83s3rvz6k6sjm.png",
        "description": "A hidden gem in Gwalior with unique scenic beauty. Timings: 6:00 AM – 8:00 PM. | ग्वालियर में एक छिपा हुआ रत्न, अपनी अनोखी प्राकृतिक सुंदरता के लिए प्रसिद्ध। समय: सुबह 6:00 – शाम 8:00।"
      },
      {
        "name": "Chhatris of Scindia Dynasty (सिंधिया वंश की छतरियाँ)",
        "image": "https://cdn.s3waas.gov.in/s3e369853df766fa44e1ed0ff613f563bd/uploads/bfi_thumb/2023122043-qh2qoqzovi2skz58gfj5q6ids7p4etepuswm44hwci.png",
        "description": "Monuments built in memory and honor of Scindia rulers, first constructed in 1817 AD. | सिंधिया शासकों की स्मृति और सम्मान में निर्मित स्मारक, पहली बार 1817 ईस्वी में निर्मित।"
      },
      {
        "name": "Samadhi of Rani Lakshmi Bai (रानी लक्ष्मीबाई समाधि)",
        "image": "https://cdn.s3waas.gov.in/s3e369853df766fa44e1ed0ff613f563bd/uploads/bfi_thumb/2023121896-qgzh5n7b3s0hir2850grhdvmrg9yz77psry8frzyte.png",
        "description": "Mausoleum honoring the warrior queen of Jhansi, Rani Laxmi Bai. | झाँसी की योद्धा रानी लक्ष्मीबाई की समाधि।"
      },
      {
        "name": "Gwalior Zoo / Gandhi Zoological Park (ग्वालियर चिड़ियाघर / गांधी चिड़ियाघर)",
        "image": "https://cdn.s3waas.gov.in/s3e369853df766fa44e1ed0ff613f563bd/uploads/bfi_thumb/2023121890-qgzfkgorclqj8q4c1ansstc5tm44q27jxr8vfss5c2.jpg",
        "description": "Established in 1922 by Madho Rao Scindia, home to a variety of animals. | 1922 में माधो राव सिंधिया द्वारा स्थापित, विभिन्न जानवरों का घर।"
      },
      {
        "name": "Tighra Dam (तिग्रा डैम)",
        "image": "https://cdn.s3waas.gov.in/s3e369853df766fa44e1ed0ff613f563bd/uploads/bfi_thumb/2023121422-qgsfe9jl1qd8nspkc70mao019redjke34ugy3547wi.jpg",
        "description": "Freshwater reservoir near Gwalior, main dam for the city. | ग्वालियर के पास ताजगी से भरा जलाशय, शहर का मुख्य बांध।"
      },
      {
        "name": "Jai Vilas Palace (जय विलास पैलेस)",
        "image": "https://cdn.s3waas.gov.in/s3e369853df766fa44e1ed0ff613f563bd/uploads/bfi_thumb/2019053029-olwcwfmjeb9s1ou2486ys9pjh2eswr4qcr45hs4r2a.jpg",
        "description": "Current residence of the Scindia family, exudes grandeur. | सिंधिया परिवार का वर्तमान निवास, भव्यता का प्रतीक।"
      },
      {
        "name": "Sun Temple (सूर्य मंदिर)",
        "image": "https://www.shutterstock.com/shutterstock/photos/214730692/display_1500/stock-photo-sas-bahu-temple-in-gwalior-city-india-214730692.jpg",
        "description": "Near Morar Residency, inspired by Konark Sun Temple, Odisha. | मोरार रेजिडेंसी के पास, ओडिशा के कोणार्क सूर्य मंदिर से प्रेरित।"
      },
      {
        "name": "Tomb of Ghaus Mohammed (ग़ौस मोहम्मद का मकबरा)",
        "image": "https://cdn.s3waas.gov.in/s3e369853df766fa44e1ed0ff613f563bd/uploads/bfi_thumb/2019053071-olwcwfmjeb9s1ou2486ys9pjh2eswr4qcr45hs4r2a.jpg",
        "description": "Sandstone tomb of the Afghan prince, designed on early Mughal lines. | अफ़ग़ान राजकुमार का पत्थर का मकबरा, प्रारंभिक मुगल शैली में निर्मित।"
      },
      {
        "name": "Gwalior Fort (ग्वालियर किला)",
        "image": "https://cdn.s3waas.gov.in/s3e369853df766fa44e1ed0ff613f563bd/uploads/bfi_thumb/2019070288-olwcwct0tt5x2uy5koz32sf5owsp9ntjcd5p1y8xky.jpg",
        "description": "Dominates the city, standing on massive sandstone; the most important monument of Gwalior. | विशाल बलुआ पत्थर पर स्थित, शहर पर हावी; ग्वालियर का सबसे महत्वपूर्ण स्मारक।"
      }
    ],

    "Harda (हरदा)": [
      {
        "name": "Gorakhal Waterfall (गोरखाल जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2024072251-scaled-qrh3kzaaqct4tp7yr2gh1o1jln8t2tnial5cigq4n6.jpg",
        "description": "Located about 26 km from Rahatgaon tehsil headquarters, known for its scenic beauty. | राहतगांव तहसील मुख्यालय से लगभग 26 किमी दूर, प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
      {
        "name": "Joga Fort (जोगा किला)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2024072240-scaled-qrh3i3w1ukvlcle5itrife4u99efk4918ddxq0zfnm.jpg",
        "description": "Situated 46 km northwest from Harda headquarters on the banks of Narmada River. | हरदा मुख्यालय से 46 किमी उत्तर-पश्चिम में, नर्मदा नदी के किनारे स्थित।"
      },
      {
        "name": "Teli ki Sarai / Oilman's Inn (तेली की सराय)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2024072298-scaled-qrh3d5aps2342olkhoke9n79e1uoxmk17tfojgc8hu.jpg",
        "description": "A unique symbol of Mughal architecture, famous for its beauty. | मुगल वास्तुकला का अनोखा प्रतीक, वास्तुकला की सुंदरता के लिए प्रसिद्ध।"
      },
      {
        "name": "Riddhanath Temple (रिद्धनाथ मंदिर, हैंडिया)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2019062143-olwcjm3s6npzp5gfz6p5a067svlkxd8ixasqux51xe.jpg",
        "description": "Famous for artistic beauty and architecture, located in Handia. | हैंडिया में स्थित, कलात्मक सुंदरता और वास्तुकला के लिए प्रसिद्ध।"
      },
      {
        "name": "Gupteshwar Temple Charua (गुप्तेश्वर मंदिर, चारुआ)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2019062141-olwcjm3s6npzp5gfz6p5a067svlkxd8ixasqux51xe.jpg",
        "description": "Strategically important temple located on old Delhi-Barhanpur highway. | पुरानी दिल्ली-बारहांपुर राजमार्ग पर स्थित, रणनीतिक दृष्टि से महत्वपूर्ण मंदिर।"
      },
      {
        "name": "Chakraview Charua Temple (चक्रीयव्यू चारुआ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2019062123-olwcjm3s6npzp5gfz6p5a067svlkxd8ixasqux51xe.jpg",
        "description": "Popular historical destination at Shiva temple in Charua. | चारुआ में शिव मंदिर में स्थित, लोकप्रिय ऐतिहासिक स्थल।"
      },
      {
        "name": "Makdai Temple (मकदाई मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2019062169-olwcjm3s6npzp5gfz6p5a067svlkxd8ixasqux51xe.jpg",
        "description": "Located on the main route of former Makrai state, 24 km from Bhirangi and Harda. | पूर्व जगिरी राज्य मकड़ाई के मुख्य मार्ग पर, भिरंगी और हरदा से 24 किमी दूर।"
      },
      {
        "name": "Makdai River (मकदाई नदी)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2019062159-olwcjm3s6npzp5gfz6p5a067svlkxd8ixasqux51xe.jpg",
        "description": "Situated on a hill near Sayani River, known for dense forests. | सायनी नदी के पास पहाड़ी पर स्थित, घने जंगलों के लिए प्रसिद्ध।"
      },
      {
        "name": "Ram Janaki Temple (राम जानकी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2019062164-olwcjm3s6npzp5gfz6p5a067svlkxd8ixasqux51xe.jpg",
        "description": "Located in Bhadugaon, houses idols of Lord Ram and Mata Sita. | भदुगांव में स्थित, भगवान राम और माता सीता की मूर्तियों का मंदिर।"
      },
      {
        "name": "Handia / Narmada Source (हैंडिया / नर्मदा स्रोत)",
        "image": "https://cdn.s3waas.gov.in/s3d709f38ef758b5066ef31b18039b8ce5/uploads/bfi_thumb/2019062094-olwcjnzgkbskcddpo7ieezp4zncbcrfzlk3pth29ky.jpg",
        "description": "Ancient place about 21 km north of Harda, believed to be the source of Narmada River. | हरदा मुख्यालय से लगभग 21 किमी उत्तर में स्थित प्राचीन स्थल, जिसे नर्मदा नदी का स्रोत माना जाता है।"
      }
    ],

    "Hoshangabad (होशंगाबाद)": [
      {
        "name": "Jatashankar Temple (जटाशंकर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/28/e2/12/photo0jpg.jpg?w=1000&h=800&s=1",
        "description": "A must-visit temple to feel the spiritual power of Lord Shiva. | भगवान शिव की आध्यात्मिक शक्ति का अनुभव करने के लिए एक महत्वपूर्ण मंदिर।"
      },
      {
        "name": "Dhoopgarh (धूपगढ़)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/8d/8c/04/img-20180403-wa0035-largejpg.jpg?w=1000&h=-1&s=1",
        "description": "Highest peak in Pachmarhi, famous for scenic views and sunsets. | पचमढ़ी की सबसे ऊँची चोटी, प्राकृतिक दृश्य और सूर्यास्त के लिए प्रसिद्ध।"
      },
      {
        "name": "Bee Falls (बी फॉल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/98/4a/4b/bee-falls.jpg?w=1000&h=800&s=1",
        "description": "Beautiful waterfall in Pachmarhi, surrounded by lush greenery. | पचमढ़ी में सुंदर जलप्रपात, हरे-भरे जंगलों से घिरा हुआ।"
      },
      {
        "name": "Pandav Caves (पांडव गुफाएँ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-s/02/6e/8c/0a/the-pandav-caves.jpg?w=600&h=-1&s=1",
        "description": "Five ancient caves giving Pachmarhi its name. | पाँच प्राचीन गुफाएँ जिन्होंने पचमढ़ी को नाम दिया।"
      },
      {
        "name": "Reechgarh (रीछगढ़)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/38/ff/fa/reechgarh.jpg?w=1000&h=-1&s=1",
        "description": "Nature and wildlife area with unique stone caves. | अद्वितीय पथरीली गुफाओं वाला प्राकृतिक और वन्यजीवन क्षेत्र।"
      },
      {
        "name": "Chauragarh Peak (चौरागढ़ पीक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/ca/30/d8/img-20180428-084133-1.jpg?w=1000&h=800&s=1",
        "description": "High single peak with excellent panoramic views, devotees place Trishuls here. | उत्कृष्ट दृश्य वाला एक ऊँचा शिखर, यहाँ भक्त त्रिशूल रखते हैं।"
      },
      {
        "name": "Tawa Dam (तवा डैम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/35/b1/71/tawa-dam-boat-club.jpg?w=1000&h=-1&s=1",
        "description": "Freshwater reservoir and resort area, ideal for a break from hectic schedule. | ताजगी से भरा जलाशय और रिसॉर्ट क्षेत्र, व्यस्त समय से विराम के लिए आदर्श।"
      },
      {
        "name": "Bade Mahadev Temple (बड़े महादेव मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/df/0a/72/chaura-garh-mahadev-temple.jpg?w=1000&h=800&s=1",
        "description": "Large cave temple with a Shivling, important religious site in Pachmarhi. | शिवलिंग वाला विशाल गुफा मंदिर, पचमढ़ी में महत्वपूर्ण धार्मिक स्थल।"
      },
      {
        "name": "Duchess Falls (डचेस फॉल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/6d/65/6f/duchess-falls.jpg?w=1000&h=-1&s=1",
        "description": "Clean waterfall with cold water, popular among tourists. | साफ और ठंडा जलप्रपात, पर्यटकों के बीच लोकप्रिय।"
      },
      {
        "name": "Apsara Vihar (अप्सरा विहार)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/ac/fd/d0/apsara-vihar-waterfall.jpg?w=600&h=-1&s=1",
        "description": "Natural water pool and small waterfall near Pachmarhi. | पचमढ़ी के पास प्राकृतिक जलाशय और छोटा जलप्रपात।"
      },
      {
        "name": "Handi Khoh (हांडी खोह)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/85/e0/f3/photo0jpg.jpg?w=800&h=600&s=1",
        "description": "Mountainous scenic spot, great for photography. | पर्वतीय दृश्य स्थल, फोटोग्राफी के लिए उपयुक्त।"
      },
      {
        "name": "Bison Lodge Museum (बायसन लॉज म्यूजियम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/3e/03/88/garden.jpg?w=600&h=-1&s=1",
        "description": "Museum for Satpura wildlife, visitors purchase vehicle pass here. | सतपुड़ा वन्यजीवन के लिए संग्रहालय, यहाँ वाहन पास खरीदा जाता है।"
      }
    ],

    "Indore (इंदौर)": [
      {
        "name": "Rajwada (राजवाड़ा)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2025060583-r6ulhfqdz2v4jfsz0yw5gbk0m6vbtns70lpw6oqp6q.png",
        "description": "Historic palace in Indore, also known as Holkar Palace or Purana Mahal. | इंदौर का ऐतिहासिक महल, जिसे होलकर पैलेस या पुराना महल भी कहते हैं।"
      },
      {
        "name": "Gulawat (गुलावट)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2025060543-e1749108766458-r6ungyabyarhvdxafdranrvjokdogmozukktnkpds2.jpg",
        "description": "Gulawat Lotus Valley near Gulawat village, a scenic natural spot. | गुलावट गांव के पास गुलावट कमल घाटी, प्राकृतिक सुंदर स्थल।"
      },
      {
        "name": "Lalbagh Palace (लालबाग पैलेस)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2025060496-r6t0bkoljnt0kqyqhy35445lmnt9137mf4o17dydj6.jpg",
        "description": "Historic palace of Indore, known for its grandeur and architecture. | इंदौर का ऐतिहासिक महल, भव्यता और वास्तुकला के लिए प्रसिद्ध।"
      },
      {
        "name": "Khajrana Temple (खजराना मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2019062522-1-olw6y2jkshtob47jukfx5d36fmzbhq4g7r3rg1yy2q.jpg",
        "description": "Famous temple dedicated to the brave Maratha warriors, highly revered in Indore. | बहादुर मराठा योद्धाओं को समर्पित प्रसिद्ध मंदिर, इंदौर में अत्यधिक पूजनीय।"
      },
      {
        "name": "Glass Temple (कांच मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2025060317-r6raavnhxlex542uvco9010oz2hej8kdsbawrae77m.png",
        "description": "Famous Jain temple made of glass, known as Kanch Mandir. | प्रसिद्ध जैन मंदिर, जिसे कांच मंदिर कहते हैं।"
      },
      {
        "name": "Pitreshwar Hanuman Temple (पितृश्वर हनुमान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2025052266-r66l40nnltgpkzlawakr2oyfsknzx5scrohiyaujuq.jpg",
        "description": "Located on Pitru Parvat with a 72-feet high Hanuman statue. | पितृ पर्वत पर स्थित, 72 फीट ऊँची हनुमान प्रतिमा के साथ।"
      },
      {
        "name": "Annapurna Temple (अन्नपूर्णा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2025052251-r66mdi2ib7q7dpivaycuq7relshedwcrosxcybeqrm.jpeg",
        "description": "Temple dedicated to Goddess Annapurna and popular among tourists. | देवी अन्नपूर्णा को समर्पित मंदिर, पर्यटकों में लोकप्रिय।"
      },
      {
        "name": "Dr. Babasaheb Ambedkar Birthplace, Mhow (डॉ. बाबासाहेब आंबेडकर जन्मस्थान, मेहवा)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2019062535-2-olw6y2jkshtob47jukfx5d36fmzbhq4g7r3rg1yy2q.jpg",
        "description": "Birthplace of Dr. Babasaheb Ambedkar, a memorial site in Mhow. | डॉ. बाबासाहेब आंबेडकर का जन्मस्थान, मेहवा में स्मारक स्थल।"
      },
      {
        "name": "Choral Dam, Mhow (चोरल डैम, मेहवा)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2019062999-olw6ydtn2i946fr60pbfza8pk9fq23d89axl7di802.jpg",
        "description": "Scenic dam area perfect for relaxation and enjoying nature. | प्राकृतिक सुंदरता और विश्राम के लिए आदर्श स्थल।"
      },
      {
        "name": "Patalpani Falls (पातालपानी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s31385974ed5904a438616ff7bdb3f7439/uploads/bfi_thumb/2019062588-olw6y5d3czxj9y3ge3nsuudk7slf4tfn8527vvurk2.jpg",
        "description": "Waterfall around 300 feet high, located in Mhow tehsil. | 300 फीट ऊँचा जलप्रपात, मेहवा तहसील में स्थित।"
      }
    ],

    "Jabalpur (जबलपुर)": [
      {
        "name": "Bhedaghat (भेड़ाघाट)",
        "image": "https://cdn.s3waas.gov.in/s3a1d0c6e83f027327d8461063f4ac58a6/uploads/bfi_thumb/2018030724-e1560847941685-olwb16aad375a6j6v5k0d8q58hxa4g46fuld8zuwaq.jpg",
        "description": "Famous for the Marble Rocks along the Narmada River, a top tourist destination in Jabalpur. | नर्मदा नदी के किनारे संगमरमर की चट्टानों के लिए प्रसिद्ध, जबलपुर का प्रमुख पर्यटन स्थल।"
      },
      {
        "name": "Dhuandhar Waterfall (धुआंधार जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3a1d0c6e83f027327d8461063f4ac58a6/uploads/bfi_thumb/2018031654-e1521614778743-olwb16aad375a6j6v5k0d8q58hxa4g46fuld8zuwaq.jpg",
        "description": "A scenic waterfall of 10 meters height, popular across Madhya Pradesh. | 10 मीटर ऊँचा प्राकृतिक जलप्रपात, मध्य प्रदेश में प्रसिद्ध।"
      },
      {
        "name": "Bargi Dam (बारगी बांध)",
        "image": "https://cdn.s3waas.gov.in/s3a1d0c6e83f027327d8461063f4ac58a6/uploads/bfi_thumb/2018071191-e1560411816812-olwb1784jx8flshtpnymxqhltvsnc57wrz8uq9ti4i.jpg",
        "description": "Major dam on the Narmada River, important among the 30 dams in Madhya Pradesh. | नर्मदा नदी पर मुख्य बांध, मध्य प्रदेश के 30 बांधों में महत्वपूर्ण।"
      },
      {
        "name": "Kachanar City Shiv Temple (कचनार सिटी शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a1d0c6e83f027327d8461063f4ac58a6/uploads/bfi_thumb/2018071134-olwb185yqr9pxeggk6d9i892f9o0jubn43wc7js3ya.jpg",
        "description": "Famous for its very tall Shiv idol built in 1800. | अपनी ऊँची शिव प्रतिमा के लिए प्रसिद्ध, जिसे 1800 में बनाया गया था।"
      },
      {
        "name": "Balancing Rock, Madan Mahal (संतुलन शिला, मदन महल)",
        "image": "https://cdn.s3waas.gov.in/s3a1d0c6e83f027327d8461063f4ac58a6/uploads/bfi_thumb/2018030782-olwb16aad375a6j6v5k0d8q58hxa4g46fuld8zuwaq.jpg",
        "description": "Located near Madan Mahal Fort, an adventurous and historical site in Jabalpur. | मदन महल किले के पास, जबलपुर में साहसिक और ऐतिहासिक स्थल।"
      },
      {
        "name": "Vishnu Varaha Temple, Majhauli (विष्णु वराह मंदिर, मझौली)",
        "image": "https://cdn.s3waas.gov.in/s3a1d0c6e83f027327d8461063f4ac58a6/uploads/bfi_thumb/2023071374-q9cbhvgnboc2dxxnp2k9t3rxsive12ypbzja1nyps2.jpg",
        "description": "11th-century temple rebuilt in 17th-18th century, historical and religious significance. | 11वीं सदी का मंदिर, 17वीं-18वीं सदी में पुनर्निर्मित, ऐतिहासिक और धार्मिक महत्व।"
      }
    ],

    "Jhabua (झाबुआ)": [
      {
        "name": "Hanuman Tekri (हनुमान टेकरी)",
        "image": "https://cdn.s3waas.gov.in/s3d1fe173d08e959397adf34b1d77e88d7/uploads/bfi_thumb/2025052341-r680314xq9gizu4rphkyrmtoog4at2nvq5i6wy20oy.jpg",
        "description": "Hanuman Tekri Temple, situated atop Jhabua city, 70 feet above ground; a religious and scenic landmark of the district. | झाबुआ शहर के ऊपर स्थित, जमीन से 70 फीट ऊँचा, जिला का धार्मिक और प्राकृतिक स्थल।"
      },
      {
        "name": "Rajwada Jhabua (राजवाड़ा झाबुआ)",
        "image": "https://cdn.s3waas.gov.in/s3d1fe173d08e959397adf34b1d77e88d7/uploads/bfi_thumb/2019062440-olwcdtfm1fsc3pvjtohywgtvxc63gk844lyybhqgaq.jpg",
        "description": "Historical palace inspired by the reign of King Jhabu Nayak, symbolizing the city's heritage. | झाबुआ के राजा झाबू नायक के शासन से प्रेरित ऐतिहासिक महल, शहर की विरासत का प्रतीक।"
      },
      {
        "name": "Devjhiri (देवझिरी)",
        "image": "https://cdn.s3waas.gov.in/s3d1fe173d08e959397adf34b1d77e88d7/uploads/bfi_thumb/2019061828-olwcdi5jrfcw8ebxnjmg2jocsppow6zc3254k676de.png",
        "description": "Located 8 km north-east of Jhabua on Ahmedabad-Indore Highway, known for its historical and religious significance. | अहमदाबाद-इंदौर राजमार्ग पर झाबुआ से 8 किमी उत्तर-पूर्व में स्थित, ऐतिहासिक और धार्मिक महत्व वाला स्थल।"
      }
    ],

    "Katni (कटनी)": [
      {
        "name": "Vijayraghavgarh Fort (विजयराघवगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092848-pdryn2jyddbh9a5y4rl0x2c9f4eb0sefmovck8taf6.jpeg",
        "description": "Historical fort where rebellion against the British started, marking freedom from colonial rule. | ब्रिटिश शासन के खिलाफ विद्रोह की शुरुआत का ऐतिहासिक किला।"
      },
      {
        "name": "Roopnath Dham (रूपनाथ धाम)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092863-pdryl18jkaj43p4g0vw4ikub32focebdclzh4ntzwi.jpeg",
        "description": "Centre of archaeological importance and faith, with natural wells and Lord Bholenath seated in a cave. | पुरातात्विक महत्व और श्रद्धा का केंद्र, प्राकृतिक कुओं और गुफा में भोलेनाथ की मूर्ति।"
      },
      {
        "name": "Khusra (खुसरा)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092885-pdrwwxg2jo91pcfgzwky2qv7m2oq55p9r47qdoy9s2.jpeg",
        "description": "Beautiful valleys and natural ponds, attracting tourists for its scenic beauty. | खूबसूरत घाटियाँ और प्राकृतिक तालाब, दर्शनीय स्थल।"
      },
      {
        "name": "Vasudha Falls (वासुधा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092889-pdrwyzpbjl2p6jflyaoh1q4mjiiq18w2dbr3ajw64i.jpeg",
        "description": "A picturesque waterfall attracting visitors with its natural charm. | प्राकृतिक सुंदरता से भरा आकर्षक जलप्रपात।"
      },
      {
        "name": "Picturesque Park (चित्रमय पार्क)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092841-1-pdrx0ap91av1b1jcbuztie9o8s32q42n7sddadyhhe.jpeg",
        "description": "Park built in scenic valleys for recreational purposes. | मनोरंजन हेतु घाटियों में निर्मित पार्क।"
      },
      {
        "name": "Secluded Forest (एकांत वन)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092871-pdrx4jwxzaorvhcsh780atlt2l3wkryw4upiihnbb6.jpeg",
        "description": "Peaceful forest away from the city, ideal for relaxation. | शहर से दूर शांतिपूर्ण जंगल, विश्राम के लिए उपयुक्त।"
      },
      {
        "name": "Jagriti Park (जागृति पार्क)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092861-pdrx363hx2sks5d5k3os4o6dl5xg8th4a04s2tp6gy.jpeg",
        "description": "Sprawling 60-acre park run by Katni Environment Conservation Committee. | 60 एकड़ में फैला पार्क, कटनी पर्यावरण संरक्षण समिति द्वारा संचालित।"
      },
      {
        "name": "Chittaranjan Shail Forest Park (चित्तरंजन शैल फॉरेस्ट पार्क)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092848-pdrx5yo88cm9afb28t5v1gsp5e5q4fkebtxqffk1z6.jpeg",
        "description": "Preserves 10,000-year-old history of primitive human life. | प्रारंभिक मानव जीवन के 10,000 वर्ष पुराने इतिहास का संरक्षण।"
      },
      {
        "name": "Mother Sharda Devi Temple (श्री शारदा माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092817-pdrzsm16es6ocvtok80gm2ymj5na78bdoasv3h7xfm.jpeg",
        "description": "Religious temple of Sharda Mata in Vijayraghavgarh, a center of devotion. | विजय राघवगढ़ में शारदा माता का धार्मिक मंदिर।"
      },
      {
        "name": "Mahadevi Mata Mandir (महादेवी माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092895-2-pdrxcq4fefvitfhfr8e8h9d306tsi1evlawhq3j37m.jpeg",
        "description": "Built during British rule in Dasharaman village; combines religious and scenic beauty. | ब्रिटिश शासन के दौरान निर्मित, धार्मिक और प्राकृतिक सुंदरता वाला मंदिर।"
      },
      {
        "name": "Virasin Mata (वीरासिनी माता)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092830-pdrxhz1zk525n1v04028wfoqemykh78xba136pqygy.jpeg",
        "description": "Historical and religious site located in Pali village of Dhimarkheda tehsil. | धिमरखेड़ा तहसील के पाली गाँव में ऐतिहासिक और धार्मिक स्थल।"
      },
      {
        "name": "Dark Ganesha (अंधा गणेश)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092831-1-pdrxpgto1lbg74z5cqo6a1m0w80wubzw0d9fx4myv6.jpeg",
        "description": "The idol of Dark Ganesha situated in Pachmatha Dham of Vijayraghavgarh. | विजय राघवगढ़ के पचमठा धाम में स्थित अंधा गणेश की मूर्ति।"
      },
      {
        "name": "Kali Mata Temple (काली माता मंदिर, कुंसारी)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092885-1-pdrxmnb3jhghd92ltisgsr88qlx9r0svmet038thj6.jpeg",
        "description": "Temple located on the banks of Hiran River in Kunsari village. | कुंसारी गाँव में हिरण नदी के किनारे स्थित मंदिर।"
      },
      {
        "name": "Bandha Imlaj Temple (बांधा इमलाज राधा कृष्ण मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092846-2-pdrxvoj985toyby72fddrh5q9xe9qao074j04zf9qa.jpeg",
        "description": "Historical temple with splendid carvings in Rethi tehsil. | रेठी तहसील में शानदार नक्काशी वाला ऐतिहासिक मंदिर।"
      },
      {
        "name": "Umardoli Dam (उमरदोली बाँध)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092843-pdrxz4lyaajjiuxyxx04wlukosepyccko6n3hibawy.jpeg",
        "description": "100-year-old stone dam showcasing remarkable engineering. | 100 साल पुराना पत्थर का बाँध, अद्भुत इंजीनियरिंग का उदाहरण।"
      },
      {
        "name": "Vijaynathdham Temple (विजयनाथधाम मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092810-pdry17t1h1ehbnwqqtiag2vg7m4324n3mitxvn7t36.jpeg",
        "description": "Religious site exemplifying communal unity in Barhi. | बाढ़ी में सामुदायिक एकता का प्रतीक धार्मिक स्थल।"
      },
      {
        "name": "Mother Jalpa (माँ जलपा)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092839-pdry5yvo0vwo0p08zvge1vpcbqovz1i8y1kb8065mq.jpeg",
        "description": "Center of faith appearing from bamboo forest in the city. | शहर के बांस के जंगल से प्रकट होने वाला श्रद्धा का केंद्र।"
      },
      {
        "name": "Lord Vishnu Varaha (विष्णु वराह मूर्ति)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092815-pdrybi5g9rhge0yso9laqhf29fepavhcdfv8ynyozm.jpeg",
        "description": "5th-century statue located at Karitalai, 42 km from district HQ. | जिला मुख्यालय से 42 किमी दूर करितलाई में स्थित 5वीं सदी की मूर्ति।"
      },
      {
        "name": "Sankatmochan Temple of Muhans (मुहान्स संकटमोचन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092813-2-pdry91smfc4i2oj507ed83pqf7i77bqkpajlunlp8i.jpeg",
        "description": "Symbol of faith and religious tourism in the region. | क्षेत्र में धार्मिक पर्यटन और श्रद्धा का प्रतीक।"
      },
      {
        "name": "Geographical Center of India (भूगोलिक केंद्र बिंदु)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092849-2-pdryp040f3yp4fcwulnf1ksddmvgue2kk95a2py5mq.jpeg",
        "description": "Located in Karaundi village, Dhimarkheda tehsil. | धिमरखेड़ा तहसील के करौंडी गाँव में स्थित।"
      },
      {
        "name": "Peerbaba Hanuman Temple (पीर बाबा हनुमान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092886-pdrwq5zvdkzs6c93hhckmyatra0nrjushn8z30z8jm.jpeg",
        "description": "Religious site exemplifying communal unity on Katni-Jabalpur road. | कटनी-जबलपुर मार्ग पर सामुदायिक एकता का प्रतीक धार्मिक स्थल।"
      },
      {
        "name": "Badera Chaturyuga Temple (बड़ेरा चतुर्वर्ग मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092841-pdrwkkuer1cf5sda42eetd26mtk40bo8dzn2dt9hj6.jpeg",
        "description": "Chaturyug Dham in Badera village, a religious place in Katni city. | कटनी शहर के बड़ेरा गाँव में धार्मिक स्थल।"
      },
      {
        "name": "Sleemanabad (स्लीमनाबाद)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092883-pdrrzydzslzjsdhseennmekx8eyuwp4m36enk7cpaa.jpeg",
        "description": "Founded by Colonel Sleeman, named after the British officer. | कर्नल स्लीमन द्वारा स्थापित, ब्रिटिश अधिकारी के नाम पर।"
      },
      {
        "name": "Tigwan (तिगवान)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092863-pdrry1rrxpdm8u9gj2zw2dw9vad2ask7hqs7j06fwi.jpeg",
        "description": "Historical Gupta-period temple in Bahoriband tehsil. | बहोरीबंद तहसील में गुप्त कालीन ऐतिहासिक मंदिर।"
      },
      {
        "name": "Ghughra (घुघरा)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092823-1-pdrrvhnlbxvin1z9gz6ga153niz3cgeih2umhvz0ua.jpeg",
        "description": "Natural scenic site about 15 km from Katni HQ. | जिला मुख्यालय से 15 किमी दूर प्राकृतिक दृश्य स्थल।"
      },
      {
        "name": "Migratory Bird Camp (प्रवासी पक्षी शिविर)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092895-1-pdrrotyqx6reehnfclkl47mk69shtmyyk4ht4buewy.jpeg",
        "description": "Located 8 km from Katni headquarters, habitat for migratory birds. | जिला मुख्यालय से 8 किमी दूर, प्रवासी पक्षियों का आवास।"
      },
      {
        "name": "Hare Madhav Darbar (बाबा ईश्वरशाह / हरे माधव दरबार)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092892-pdrrmbq8p3bvfxahzikegueb5a59ap0q7pv71rk7ia.jpeg",
        "description": "Religious center in Madhavnagar dedicated to Baba Madhavshah. | माधवनगर में बाबा माधवशाह को समर्पित धार्मिक केंद्र।"
      },
      {
        "name": "Shri Digambar Jain Atishya Kshetra Bahoriband (श्री दिगंबर जैन अतीशय क्षेत्र)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092851-pdrom1pjf53s10kl97mjqo1rodu3lw5uzsglva3u9u.jpeg",
        "description": "Jain pilgrimage site 2 km from Bahoriband tehsil HQ. | बहोरीबंद तहसील मुख्यालय से 2 किमी दूर जैन तीर्थ स्थल।"
      },
      {
        "name": "Pushpavati City Bilhari (पुष्पावती सिटी बिलहरी)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092859-pdroh347cmbar3s082ffkx46t6aczeguz8icopgn42.jpeg",
        "description": "Historical and religious city surrounded by 85 temples and 13 stepwells. | 85 मंदिरों और 13 बावड़ियों से घिरी ऐतिहासिक और धार्मिक नगरी।"
      },
      {
        "name": "Koniya Dham of Barhi (कोनिया धाम, बाढ़ी)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092881-1-pds03hzvkp38ua0bzffvzu1u8tzcd0jg66uc7v2rcy.jpeg",
        "description": "Adventure and scenic site 10 km from Barhi tehsil HQ. | बाढ़ी तहसील मुख्यालय से 10 किमी दूर साहसिक और प्राकृतिक स्थल।"
      },
      {
        "name": "Shahdar Forest (शाहदर वन)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2021092895-pdroaotqu7k1qn2iksvu41899rtflk2mfkoe3wy3gi.jpeg",
        "description": "Dense Satpura forest ideal for nature lovers. | सघन सतपुरा वन, प्रकृति प्रेमियों के लिए आदर्श।"
      },
      {
        "name": "Vijayraghavgarh (विजयगढ़)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2018032499-olw9q6csnav0s2stau7jp3ofyxkl99jbz8bdexjjeq.jpg",
        "description": "Rebellion against the British started in the fort of Vijayraghavgarh – the country bound in the shackles of British rule was freed… | ब्रिटिश शासन के खिलाफ विद्रोह की शुरुआत विजयगढ़ के किले से हुई थी।"
      },
      {
        "name": "Roopnath Dham (रूपनाथ धाम)",
        "image": "https://cdn.s3waas.gov.in/s37f1de29e6da19d22b51c68001e7e0e54/uploads/bfi_thumb/2019050338-olw9q7amu4wb3org5cm69lfwkbfygyn2bcyuw7i58i.jpg",
        "description": "Rupnath Dham, a centre of archaeological importance and faith – water filled in natural pools, Lord Bholenath seated in the cave, all around… | रूपनाथ धाम, पुरातात्विक महत्व और श्रद्धा का केंद्र – प्राकृतिक जल तालाबों में भरा हुआ, गुफा में बैठे भोलेनाथ।"
      }
    ],

    "Khandwa (खंडवा)": [
      {
        "name": "Late Kishore Kumar Samadhi (किशोर कुमार समाधि)",
        "image": "https://cdn.s3waas.gov.in/s33ef815416f775098fe977004015c6193/uploads/bfi_thumb/2019070263-olw8723hw1epz8v25ii3ziedyj8qw7pyqf5dbt9m9u.jpg",
        "description": "The memorial of the legendary singer Kishore Kumar is located in Khandwa town, which is also the district headquarters of East Nimar. | खंडवा नगर में प्रसिद्ध गायक किशोर कुमार की समाधि स्थित है, जो पूर्व निमाड़ जिले का मुख्यालय भी है।"
      },
      {
        "name": "Indira Sagar Tourist Complex, Hanuvantiya (इंदिरा सागर टूरिस्ट कॉम्प्लेक्स, हनुवंतिया)",
        "image": "https://cdn.s3waas.gov.in/s33ef815416f775098fe977004015c6193/uploads/bfi_thumb/2019062592-olw86o054pzohskm3aew41mv7m2ihtyx3930uuczuy.jpeg",
        "description": "Hanumantiya island is a newly introduced water tourism destination, offering adventure and scenic beauty near Khandwa. | हनुवंतिया द्वीप, जल-पर्यटन का नया गंतव्य है, जो खंडवा के पास रोमांच और प्राकृतिक सुंदरता का अनुभव कराता है।"
      },
      {
        "name": "Omkareshwar Temple (ओंकारेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33ef815416f775098fe977004015c6193/uploads/bfi_thumb/2019062533-olw86sp3zp1ur58poefuakrs0oj2r8ond4mij1nk02.jpg",
        "description": "Located on a sacred island shaped like 'ॐ' in the Narmada river, Omkareshwar Temple is one of the 12 Jyotirlingas of Lord Shiva. | नर्मदा नदी में 'ॐ' आकार के द्वीप पर स्थित ओंकारेश्वर मंदिर, भगवान शिव के 12 ज्योतिर्लिंगों में से एक है।"
      }
    ],

    "Khargone (खरगोन)": [
      {
        "name": "Shrimant Bajirao Peshwa Mausoleum, Raverkhedi (श्रिमंत बाजीराव पेशवा समाधि, रावेरखेड़ी)",
        "image": "https://cdn.s3waas.gov.in/s3698d51a19d8a121ce581499d7b701668/uploads/bfi_thumb/2019062537-olw9ipiycon0jlnawm08vzim2qdm3tw3m9qi5sm4ua.jpg",
        "description": "The tomb of the great Peshwa Bajirao is located in Raverkhedi, where he died during an expedition to North India. | महान पेशवा बाजीराव की समाधि रावेरखेड़ी में स्थित है, जहाँ उनका निधन उत्तर भारत के अभियान के दौरान हुआ था।"
      },
      {
        "name": "Shri Mahalaxmi Temple (श्री महालक्ष्मी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3698d51a19d8a121ce581499d7b701668/uploads/bfi_thumb/2019062435-olw9ilrllchv95srikdqm0grp6w591h69r4k8orpj6.jpg",
        "description": "Located 18 km west of Khargone on the Khargone-Julwania-Barwani-Baroda road, this temple complex is a famous religious site. | खंडवा मुख्यालय से 18 किमी पश्चिम में स्थित यह मंदिर परिसर एक प्रसिद्ध धार्मिक स्थल है।"
      },
      {
        "name": "Sahastradhara, Narmada River, Maheshwar (सहस्त्रधारा, नर्मदा नदी, महेश्वर)",
        "image": "https://cdn.s3waas.gov.in/s3698d51a19d8a121ce581499d7b701668/uploads/bfi_thumb/2019062460-olw9impfs6j5krred2sd6i88akrigqkwlvs1pyqbcy.jpg",
        "description": "Sahastradhara means 'a thousand streams', where the Narmada river flows through many small streams, creating a divine scenic view. | सहस्त्रधारा का अर्थ है 'हजार धाराएँ', यहाँ नर्मदा नदी कई छोटी धाराओं में बहती है, जो अद्भुत दृश्य उत्पन्न करती है।"
      },
      {
        "name": "Fort and Ghat of Goddess Ahilya Bai, Maheshwar (महेश्वर दुर्ग और घाट, देवी अहिल्याबाई)",
        "image": "https://cdn.s3waas.gov.in/s3698d51a19d8a121ce581499d7b701668/uploads/bfi_thumb/2019062235-olw9iktreigkxju4o1z41ipb3t0s1cdfxmh2ret3pe.jpg",
        "description": "Maheshwar, once the capital of King Sahasrarjuna and later ruled by Ahilya Bai Holkar, is famous for its fort and sacred ghats. | महेश्वर, जो कभी सहस्त्रार्जुन राजा की राजधानी था और बाद में अहिल्याबाई होल्कर का शासन रहा, अपने दुर्ग और पवित्र घाटों के लिए प्रसिद्ध है।"
      }
    ],

    "Mandla (मंडला)": [
      {
        "name": "Kanha National Park (कान्हा राष्ट्रीय उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/22/03/a5/kanha-national-park.jpg?w=900&h=700&s=1",
        "description": "Safari adventure in a lush Sal forest, home to diverse wildlife including tigers, sloth bears, and barasingha deer. Morning tours and advance booking advised. | घने साल के जंगल में सफारी का रोमांच, जहाँ बाघ, रीछ और बारहसिंगा जैसे वन्यजीव पाए जाते हैं। सुबह की सैर और अग्रिम बुकिंग की सलाह दी जाती है।"
      },
      {
        "name": "Sahasradhara Temple (सहस्त्रधारा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/86/e1/cf/sahasradhara-temple.jpg?w=1000&h=-1&s=1",
        "description": "Located on the banks of river Narmada, offering scenic views especially during rains and winters. | नर्मदा नदी के किनारे स्थित यह मंदिर वर्षा और सर्दियों में अत्यंत मनमोहक दृश्य प्रस्तुत करता है।"
      },
      {
        "name": "Garam Pani Kund (गर्म पानी कुंड)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/37/56/b5/garam-pani-kund.jpg?w=1000&h=-1&s=1",
        "description": "A natural well that stores warm water throughout the year, considered miraculous. | एक प्राकृतिक कुण्ड जहाँ सालभर गर्म पानी रहता है, इसे चमत्कारी माना जाता है।"
      },
      {
        "name": "Kala Pahad (काला पहाड़)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/5d/57/23/kala-pahad-ramnagar-mandla.jpg?w=1000&h=-1&s=1",
        "description": "A secluded site surrounded by greenery, suitable for a short visit. | हरियाली से घिरा एकांत स्थान, अल्पकालीन भ्रमण के लिए उपयुक्त।"
      },
      {
        "name": "Begum Mahal (बेगम महल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/19/9f/32/img-20170729-wa0004-largejpg.jpg?w=1000&h=800&s=1",
        "description": "A historical site with beautiful green surroundings, though visited by few tourists. | ऐतिहासिक स्थल जिसके चारों ओर सुंदर हरियाली है, यहाँ बहुत कम पर्यटक आते हैं।"
      },
      {
        "name": "Mandla Plant Fossils National Park (मंडला प्लांट जीवाश्म राष्ट्रीय उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/f8/54/1e/photo2jpg.jpg?w=1000&h=-1&s=1",
        "description": "Displays remains of ancient plant fossils with detailed signage and educational concepts. | प्राचीन पौधों के जीवाश्मों के अवशेष यहाँ प्रदर्शित हैं, शैक्षिक जानकारी के साथ।"
      },
      {
        "name": "Vishnu Mandir Temple (विष्णु मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/b9/73/47/kala-pahad-mandla.jpg?w=1000&h=800&s=1",
        "description": "An ancient temple dedicated to Lord Vishnu, located near the Moti Mahal. | भगवान विष्णु को समर्पित प्राचीन मंदिर, जो मोती महल के पास स्थित है।"
      }
    ],

    "Mandsaur (मंदसौर)": [
      {
        "name": "Hinglajgarh Fort (हिंगलाजगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3ac627ab1ccbdb62ec96e702f07f6425b/uploads/bfi_thumb/2025050822-e1746703042821-r5i6netzjrrg163hdvtcsjvzt8bpo5ajseuahyytxe.png",
        "description": "Located in Navali village of Bhanpura block, this fort holds great historical significance. | भानपुरा ब्लॉक के नवाली गाँव में स्थित यह किला ऐतिहासिक दृष्टि से अत्यंत महत्वपूर्ण है।"
      },
      {
        "name": "Vijay Stambh (विजय स्तंभ)",
        "image": "https://cdn.s3waas.gov.in/s3ac627ab1ccbdb62ec96e702f07f6425b/uploads/bfi_thumb/2023122764-qhf9a3t22hw2tupy4p9k7a0i8wp5rg2fr26nbqxiiq.jpg",
        "description": "Situated in Saudhani village near district headquarters, this column is of archaeological and historical importance. | जिला मुख्यालय से 4 किमी दूर सौनधानी गाँव में स्थित यह स्तंभ पुरातात्विक और ऐतिहासिक महत्व रखता है।"
      },
      {
        "name": "Dharmarajeshwar Temple (धर्मराजेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ac627ab1ccbdb62ec96e702f07f6425b/uploads/bfi_thumb/2023122667-qhdmcptxr5vc7w5ljpx8ulplywr1raaxf5wfq8c1du.jpg",
        "description": "An ancient cave temple built in the 5th–6th century, located in Garoth tehsil. | गरौठ तहसील में स्थित यह प्राचीन गुफा मंदिर 5वीं–6ठीं शताब्दी में निर्मित है।"
      },
      {
        "name": "Pashupatinath Temple (पशुपतिनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ac627ab1ccbdb62ec96e702f07f6425b/uploads/bfi_thumb/2019061739-olwbd036d1e1djcosrm08r9yc1mjzc2l2e4bncbk02.jpg",
        "description": "The main attraction of Mandsaur, dedicated to Lord Shiva with an artistic idol. | मंदसौर का मुख्य आकर्षण, भगवान शिव को समर्पित यह मंदिर अपनी कलात्मक प्रतिमा के लिए प्रसिद्ध है।"
      },
      {
        "name": "Gandhi Sagar Dam (गांधी सागर बांध)",
        "image": "https://cdn.s3waas.gov.in/s3ac627ab1ccbdb62ec96e702f07f6425b/uploads/bfi_thumb/2019061799-olwbd110jvfbp5bbna0mt91exfhx716beirt4ma5tu.jpg",
        "description": "A huge dam built on the Chambal River, also serving as a recreational spot. | चंबल नदी पर निर्मित विशाल बांध, जो मनोरंजन स्थल के रूप में भी प्रसिद्ध है।"
      }
    ],

    "Morena (मुरैना)": [
      {
        "name": "Shanichara Temple (शनिचरा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a9a6653e48976138166de32772b1bf40/uploads/bfi_thumb/2022042275-pnqmddabtk03zxucdrfe3rz7f6gd9mpcrgkq3k5ptu.jpg",
        "description": "Famous historic temple under the religious trust of MP Government, dedicated to Lord Shani. | मध्यप्रदेश शासन के धार्मिक न्यास विभाग के अंतर्गत आने वाला भगवान शनि को समर्पित ऐतिहासिक मंदिर।"
      },
      {
        "name": "Kakanmath Temple, Sihoniya (काकनमठ मंदिर, सिहोनिया)",
        "image": "https://cdn.s3waas.gov.in/s3a9a6653e48976138166de32772b1bf40/uploads/bfi_thumb/2018062335-olwb9qlcmqx72a3cuutn32xc2vpo9644y8kmnr5rlu.jpg",
        "description": "An ancient temple at Sihoniya, known for its unique architecture and historic importance. | सिहोनिया का प्राचीन मंदिर, अपनी अनोखी वास्तुकला और ऐतिहासिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Chausath Yogini Temple, Mitawali (चौंसठ योगिनी मंदिर, मितावली)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Chausath_Yogini_Temple%2C_Mitaoli%2C_Morena_006.jpg/1200px-Chausath_Yogini_Temple%2C_Mitaoli%2C_Morena_006.jpg",
        "description": "Circular Yogini temple in Mitawali village, believed to inspire the design of the Indian Parliament House. | मितावली गाँव का गोलाकार योगिनी मंदिर, जिसे भारतीय संसद भवन की रूपरेखा का प्रेरणास्त्रोत माना जाता है।"
      }
    ],

    "Narsinghpur (नरसिंहपुर)": [
      {
        "name": "Osho Ashram (ओशो आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2023030191-q2vdpyecsoj7ewza3uveyywjzrzv2juqlirwgi6uiq.png",
        "description": "Located in Gadarwara town on the banks of Shakkar River, known for peace and meditation. | गाडरवारा नगर में शक्कर नदी के तट पर स्थित, शांति और ध्यान के लिए प्रसिद्ध।"
      },
      {
        "name": "Chaugan Fort (चौगान किला)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2023022784-q2rhlbanx0sruilq9s7bogtnzee5lpz4ov2nsnxibm.jpg",
        "description": "Situated on the Satpuda peak near Chaugan village, a historic fort of Narsinghpur. | चौगान गाँव के पास सतपुड़ा पर्वत पर स्थित नरसिंहपुर का ऐतिहासिक किला।"
      },
      {
        "name": "Shiv Temple, Gararu (शिव मंदिर, गरारु)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2023022795-scaled-q2rhzsz3a2mwu3jynjp9mb6ho8yv9qi5ol5558g0ea.jpg",
        "description": "Ancient Shiv temple located on the banks of Narmada River in Gararu. | गरारु में नर्मदा नदी के किनारे स्थित प्राचीन शिव मंदिर।"
      },
      {
        "name": "Ancient Garuda Temple, Gararu (प्राचीन गरुड़ मंदिर, गरारु)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2023022723-scaled-q2rg85ckfzhuks0od14trdgpeupzznsk9ind4mtts2.jpg",
        "description": "A historic Garuda temple near Ghat Pipariya village. | घाट पिपरिया गाँव के पास स्थित प्राचीन गरुड़ मंदिर।"
      },
      {
        "name": "Bineki Tola (बिनेकी टोला)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2023010477-scaled-q060pw1tbfjbh2kc2bvwuki35jh63yqos6mb60mpdu.jpg",
        "description": "Tribal village known for unique rock paintings and archaeological heritage. | अद्वितीय शैल चित्रों और पुरातात्विक धरोहर के लिए प्रसिद्ध जनजातीय गाँव।"
      },
      {
        "name": "Ton Ghat (टोन घाट)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2019081350-olw91cga3uvc2wv9altcbv931hyix3ylkbwm0scxs2.jpg",
        "description": "Scenic spot on the banks of Sher River, also known as ‘Chhota Dhuandhar’. | शेर नदी के तट पर दर्शनीय स्थल, जिसे ‘छोटा धुआंधार’ भी कहा जाता है।"
      },
      {
        "name": "Dada Maharaj Mandir (दादा महाराज मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2019061386-olw918oxciq6sh0pwk6u1w78nyh22bjo7tao3oiigy.jpg",
        "description": "Temple on NH 26, a center of faith attracting devotees. | राष्ट्रीय राजमार्ग 26 पर स्थित आस्था का केंद्र।"
      },
      {
        "name": "Narsimha Mandir (नरसिंह मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2019061343-e1560413038343-olw917r35oowgv2321s7hefs2kloumfxvon6mejwn6.jpg",
        "description": "Built in the 18th century by Jat Sardars, dedicated to Lord Narsimha. | 18वीं शताब्दी में जाट सरदारों द्वारा निर्मित भगवान नरसिंह का मंदिर।"
      },
      {
        "name": "Barman Ghat (बरमन घाट)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2019061241-olw917r35oowgv2321s7hefs2kloumfxvon6mejwn6.jpg",
        "description": "Located on the Narmada River, an important religious and scenic spot. | नर्मदा नदी पर स्थित, धार्मिक और दर्शनीय स्थल।"
      },
      {
        "name": "Jhoteswar Temple (झोटेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2019061247-olw917r35oowgv2321s7hefs2kloumfxvon6mejwn6.jpg",
        "description": "Also known as Paramhansi Ganga Ashram, located near Sridham railway station. | परमहंसी गंगा आश्रम के नाम से प्रसिद्ध, श्रीधाम रेलवे स्टेशन के पास स्थित।"
      },
      {
        "name": "Damru Ghati, Gadarwara (डमरू घाटी, गाडरवारा)",
        "image": "https://cdn.s3waas.gov.in/s366f041e16a60928b05a7e228a89c3799/uploads/bfi_thumb/2019052975-olw913zqecjr6f7jo05p7fdxp147zu10j618paphc2.jpg",
        "description": "Shiv temple built in a valley shaped like a damru, near the Shakkar River. | शक्कर नदी के किनारे डमरू आकार की घाटी में बना शिव मंदिर।"
      }
    ],

    "Neemuch (नीमच)": [
      {
        "name": "Gandhi Sagar Sanctuary (गांधी सागर अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s334173cb38f07f89ddbebc2ac9128303f/uploads/bfi_thumb/2019062089-olw7vtwwdnx7kvblqkjrjq8iq1m4n0gr3egk37ldcw.jpg",
        "description": "Famous wildlife sanctuary located near Gandhi Sagar Dam, home to chinkara, nilgai, and migratory birds. | गांधी सागर बाँध के पास स्थित प्रसिद्ध वन्यजीव अभयारण्य, जहाँ चिंकारा, नीलगाय और प्रवासी पक्षी पाए जाते हैं।"
      },
      {
        "name": "Gandhi Sagar Dam (गांधी सागर बांध)",
        "image": "https://cdn.s3waas.gov.in/s334173cb38f07f89ddbebc2ac9128303f/uploads/bfi_thumb/2019062060-1024x720-olw7vsz26tvx99cyw254z8h24nqrfbd0r9t2lxmrj4.jpg",
        "description": "One of the four major dams on Chambal River, offering scenic views and boating opportunities. | चंबल नदी पर बने चार प्रमुख बाँधों में से एक, जहाँ सुंदर नज़ारे और नौकायन का आनंद लिया जा सकता है।"
      },
      {
        "name": "Kileshwar Temple (किलेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s334173cb38f07f89ddbebc2ac9128303f/uploads/bfi_thumb/2019062051-olw7vsz26tvx99cyw254z8h24nqrfbd0r9t2lxmrj4.jpg",
        "description": "An ancient temple dedicated to Lord Shiva, located amidst greenery and hills. | भगवान शिव को समर्पित प्राचीन मंदिर, हरियाली और पहाड़ियों के बीच स्थित।"
      },
      {
        "name": "Nava Toran Temple, Khor (नव तोरण मंदिर, खोर)",
        "image": "https://cdn.s3waas.gov.in/s334173cb38f07f89ddbebc2ac9128303f/uploads/bfi_thumb/2019062054-olw7vsz26tvx99cyw254z8h24nqrfbd0r9t2lxmrj4.jpg",
        "description": "Historical temple at Khor village, known for its unique architecture and cultural significance. | खोर गाँव का ऐतिहासिक मंदिर, अपनी अनोखी वास्तुकला और सांस्कृतिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Sukhanand Temple (सुखानंद मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s334173cb38f07f89ddbebc2ac9128303f/uploads/bfi_thumb/2019062034-768x1024-olw7vsz26tvx99cyw254z8h24nqrfbd0r9t2lxmrj4.jpg",
        "description": "Located near Neemuch, the temple is dedicated to Lord Shiva and surrounded by caves and natural beauty. | नीमच के पास स्थित यह मंदिर भगवान शिव को समर्पित है, चारों ओर गुफाएँ और प्राकृतिक सुंदरता से घिरा हुआ।"
      }
    ],

    "Panna (पन्ना)": [
      {
        "name": "Maa Kalehi Devi Temple (मा कलेही देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2025050616-r5er2ml529pm9w7d5veam6rcb3tgnxxcsz0utr83cy.jpg",
        "description": "Situated in Pawai section on the banks of Patna river, 2 km from the city. A famous religious and scenic spot. | पवई क्षेत्र में पाटन नदी के किनारे, शहर से 2 किमी दूर स्थित एक प्रसिद्ध धार्मिक और प्राकृतिक स्थल।"
      },
      {
        "name": "Sri Jagannath Swami Temple (श्री जगन्नाथ स्वामी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2025050612-r5eq3k7w3rpj5l50x7qc3jbaimniifpubevrb57the.jpg",
        "description": "Built by Panna Naresh Shri Kishore Singh in 1817, situated in the royal premises. | पन्ना नरेश श्री किशोर सिंह द्वारा 1817 में निर्मित, राजमहल परिसर में स्थित।"
      },
      {
        "name": "Vishnu Varaha Temple, Purana (विष्णु वराह मंदिर, पुरैना)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI7Y117xhUHZ0miD_SJe7qAWeJJK7ONbKweAt8UI10pem5MCru0Y1d3hJna1ccQwdh6S0&usqp=CAU",
        "description": "Dedicated to Varaha Avatar of Lord Vishnu, located in Puraina village. | भगवान विष्णु के वराह अवतार को समर्पित, पुरैना गाँव में स्थित।"
      },
      {
        "name": "Shiva Temple, Nandchand (शिव मंदिर, नंदचंद)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB-OVoOYoPXYCY0ISfvmjyj2RjTmCFlWejDA&s",
        "description": "8th century Shiva temple famous for its unique architecture, located near Bori village of Shahnagar. | 8वीं शताब्दी का शिव मंदिर, अनोखी वास्तुकला के लिए प्रसिद्ध, शाहनगर के बोरी गाँव के पास स्थित।"
      },
      {
        "name": "Siddhanath Temple (सिद्धनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2025042979-r525wx4me9h5c8rvr6kgnw7uqk061vn17maf6fpyiq.jpg",
        "description": "Said to be associated with Lord Shri Ram's exile period, one of the divine places of Panna. | भगवान श्रीराम के वनवास काल से जुड़ा हुआ माना जाता है, पन्ना का एक प्रमुख धार्मिक स्थल।"
      },
      {
        "name": "Sarang Temple (सरंग मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2025042998-r5255poskw8dakakmf77hrdjr23p99mq4yih4426ma.jpg",
        "description": "Situated 23 km from Panna, also known as the Ashram of Sutiksha Muni. | पन्ना से 23 किमी दूर स्थित, सुतिक्ष मुनि के आश्रम के रूप में भी प्रसिद्ध।"
      },
      {
        "name": "Chowmukhnath Temple (चौमुखनाथ मंदिर, नचना)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2021072125-1-pagejcy3e1kzw4czxrk53kw02lxzecq6yq3qe7bv9e.jpeg",
        "description": "Nachana Hindu Temples, also called Nachana Mandir, known for ancient Hindu architecture. | नचना के प्राचीन हिंदू मंदिर, अपनी ऐतिहासिक कला के लिए प्रसिद्ध।"
      },
      {
        "name": "Other Waterfalls in Panna (पन्ना के अन्य झरने)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2021072116-scaled-pagd2zdukdvsycfvs4ij5spcfo3ohisn3hfpp4zlz6.jpeg",
        "description": "Many important waterfalls located in Panna district, famous tourist spots. | पन्ना ज़िले में स्थित कई प्रसिद्ध झरने, जो पर्यटन का प्रमुख आकर्षण हैं।"
      },
      {
        "name": "Other Local Temples in Panna (पन्ना के अन्य मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2021072064-paequnrsi06by1gstz82asoyfklxqsjg7nfmt986wy.jpeg",
        "description": "Panna district is known for many local temples of religious significance. | पन्ना ज़िला अनेक धार्मिक महत्व के मंदिरों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Ram Janaki Temple (राम जानकी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2021072011-paenwc8zgmmqpvwho0r89mjziknb3agg9eygmivapu.jpg",
        "description": "Famous among the Hindu community in Panna district, temple opens daily from 4:30 AM. | हिंदू समुदाय में प्रसिद्ध, प्रतिदिन सुबह 4:30 बजे खुलने वाला मंदिर।"
      },
      {
        "name": "Brihaspati Kund (बृहस्पति कुंड)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2021072041-scaled-paelm90eli98rv550jc6icarv59auwkcz3vvskl24i.jpeg",
        "description": "A natural pit in Bundelkhand region, known for adventure and scenic beauty. | बुंदेलखंड क्षेत्र का प्राकृतिक गड्ढा, साहसिक और प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
      {
        "name": "Ajaygarh Fort (अजयगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2021072094-scaled-paek7c34ekk3w93kbj1og6txhs7jx4frz3r1z02r5u.jpeg",
        "description": "Located 80 km from Khajuraho, an important fort during Chandela rule. | खजुराहो से 80 किमी दूर, चंदेला शासनकाल का महत्वपूर्ण किला।"
      },
      {
        "name": "Baldev Ji Temple (बालदेव जी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2019071888-olwcitwmhmne0ulejuic77adzbgkig4ktf86gmav42.jpg",
        "description": "Inspired by Roman architecture with Gothic style pillars. | रोमन वास्तुकला और गोथिक शैली से प्रेरित मंदिर।"
      },
      {
        "name": "Jugal Kishore Ji Temple (जुगल किशोर जी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2021072066-scaled-padw0rwaogtr1pmxs82s4vf34n3cwydea87qv6v5z6.jpg",
        "description": "Built by Raja Hindupat Singh, the fourth Bundela king of Panna in 1758. | पन्ना के चौथे बुंदेला राजा हिंदुपत सिंह द्वारा 1758 में निर्मित।"
      },
      {
        "name": "Prannathji Temple (प्राणनाथ जी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2019071858-olwcisysasm3p8mrpc3pmpixdxl7ar0uhakozcc9aa.jpg",
        "description": "Important pilgrimage for the Pranamis, attracts devotees during Sharad Purnima. | प्राणमी सम्प्रदाय का प्रमुख तीर्थ स्थल, शरद पूर्णिमा पर भक्तों की भीड़।"
      },
      {
        "name": "Pandav Falls (पांडव जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2021072172-pagbv48zmpu35g5nx5xasv6ygcb1a0nl2dfzga10ci.jpg",
        "description": "14 km from Panna and 34 km from Khajuraho, a scenic waterfall with historical links to Pandavas. | पन्ना से 14 किमी और खजुराहो से 34 किमी दूर स्थित सुंदर जलप्रपात, पांडवों से जुड़ी कथाओं के साथ।"
      },
      {
        "name": "Panna Tiger Reserve (पन्ना टाइगर रिज़र्व)",
        "image": "https://cdn.s3waas.gov.in/s3d645920e395fedad7bbbed0eca3fe2e0/uploads/bfi_thumb/2019070386-olwcip7fjggyess8bah7cqh30e3qfylx4ryr28htz6.jpg",
        "description": "22nd Tiger Reserve of India, 5th of Madhya Pradesh, home to tigers and rich biodiversity. | भारत का 22वां और मध्यप्रदेश का 5वां टाइगर रिज़र्व, बाघों और समृद्ध जैव विविधता का घर।"
      }
    ],

    "Raisen (रायसेन)": [
      {
        "name": "Bhimbetka Rock Shelters (भीमबैठका शैलाश्रय)",
        "image": "https://cdn.s3waas.gov.in/s3c24cd76e1ce41366a4bbe8a49b02a028/uploads/bfi_thumb/2025042927-r52cwb2q75ludvmbtughighu4cy4npmp3vdbqizif6.jpg",
        "description": "UNESCO World Heritage site of prehistoric cave art, located near Satpura mountain range in southern Raisen. | यूनेस्को विश्व धरोहर स्थल, प्रागैतिहासिक गुफा कला के लिए प्रसिद्ध, रायसेन जिले के दक्षिण भाग में सतपुड़ा पर्वत श्रृंखला के पास स्थित।"
      },
      {
        "name": "Bhojeshwar Temple, Bhojpur (भोजेश्वर मंदिर, भोजपुर)",
        "image": "https://cdn.s3waas.gov.in/s3c24cd76e1ce41366a4bbe8a49b02a028/uploads/bfi_thumb/2025042924-r52cweu2yhqzobgv7w2zsfjohwflii1mgdz9nmtxqa.jpg",
        "description": "11th century ancient Shiva temple with one of the largest Shivalingas in India, located about 28 km from Bhopal. | 11वीं शताब्दी का प्राचीन शिव मंदिर, भारत के सबसे बड़े शिवलिंगों में से एक, भोपाल से लगभग 28 किमी दूर स्थित।"
      },
      {
        "name": "Raisen Fort (रायसेन किला)",
        "image": "https://cdn.s3waas.gov.in/s3c24cd76e1ce41366a4bbe8a49b02a028/uploads/bfi_thumb/2025042921-r52cwq458i6fjn0he0yimcp7miw02vaehxt3eyd7nm.jpg",
        "description": "Situated on a high hill at Raisen city headquarters, this fort is of great historical and spiritual importance. | रायसेन नगर मुख्यालय की ऊँची पहाड़ी पर स्थित किला, ऐतिहासिक और आध्यात्मिक दृष्टि से अत्यंत महत्वपूर्ण।"
      },
      {
        "name": "Halali Dam (हलाली बांध)",
        "image": "https://cdn.s3waas.gov.in/s3c24cd76e1ce41366a4bbe8a49b02a028/uploads/bfi_thumb/2025042978-r52cwnamo02kkt4kuhqmwvetud9wfrz7hjumz4he6a.jpg",
        "description": "A scenic reservoir and popular picnic spot built on Halali river, a tributary of Betwa river, between Bhopal and Raisen. | हलाली नदी (बेतवा की सहायक नदी) पर बना सुंदर जलाशय और पिकनिक स्थल, भोपाल और रायसेन के बीच।"
      },
      {
        "name": "Ratapani Tiger Reserve (रतापानी टाइगर रिज़र्व)",
        "image": "https://cdn.s3waas.gov.in/s3c24cd76e1ce41366a4bbe8a49b02a028/uploads/bfi_thumb/2025042940-r52cwutc6ocv5otnmkzngtiilg8u5ct26l2itc68si.jpg",
        "description": "Located between Raisen and Sehore districts, one of the densest and most beautiful forest reserves in Madhya Pradesh. | रायसेन और सीहोर जिलों के बीच स्थित, मध्यप्रदेश के सबसे घने और सुंदर वन्य जीव अभ्यारण्यों में से एक।"
      },
      {
        "name": "Chhinddham Hanuman Temple (छिंदधाम हनुमान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c24cd76e1ce41366a4bbe8a49b02a028/uploads/bfi_thumb/2025042923-r52cwkh43hyplz8oayir7e4g27nssoo0h5w6jalkoy.jpg",
        "description": "A major Hanuman temple and spiritual center located in Gairatganj tehsil of Raisen district. | रायसेन जिले की गैरतगंज तहसील में स्थित प्रमुख हनुमान मंदिर और आध्यात्मिक केंद्र।"
      },
      {
        "name": "Sanchi Stupa (सांची स्तूप)",
        "image": "https://cdn.s3waas.gov.in/s3c24cd76e1ce41366a4bbe8a49b02a028/uploads/bfi_thumb/2018031236-olwby2mxkc8fmuqurdhxmxuxpzrrj2pyyol5xn2uiq.jpg",
        "description": "Ancient Buddhist site, famous worldwide for stupas, monasteries, and Ashokan inscriptions. Located about 46 km from Bhopal. | प्राचीन बौद्ध स्थल, स्तूपों, मठों और अशोक शिलालेखों के लिए विश्व प्रसिद्ध, भोपाल से लगभग 46 किमी दूर।"
      }
    ],

    "Rajgarh (राजगढ़)": [
      {
        "name": "Big Shrinathji Temple (बड़ा श्रीनाथजी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2020020697-olw6kexzi54pn21ml5y1fb53r4aco0wu05wtgc7ugy.jpg",
        "description": "Situated amidst the hills on the banks of Nevaj river, famous for its ancient grandeur. | नेवज नदी के किनारे पहाड़ियों के बीच स्थित, अपने प्राचीन वैभव के लिए प्रसिद्ध।",
      },
      {
        "name": "Pashupatinath Temple Biaora (पशुपतिनाथ मंदिर, बायरा)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2020020432-olw6kd2b4h24zu4cw54sabm6kcjm8mpdbwluhsamte.jpg",
        "description": "Historical temple of Pashupatinath, heavily crowded every year during Sawan Mondays. | ऐतिहासिक महत्व का पशुपतिनाथ मंदिर, सावन सोमवार को अत्यधिक भीड़ रहती है।",
      },
      {
        "name": "Shani Temple Khilchipur (शनि मंदिर, खिलचीपुर)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2020013195-olw6kd2b4h24zu4cw54sabm6kcjm8mpdbwluhsamte.jpg",
        "description": "Ancient Shani temple located in Naharda premises, attracts thousands of devotees. | नाहरदा परिसर में स्थित प्राचीन शनि मंदिर, हजारों श्रद्धालुओं का आकर्षण।",
      },
      {
        "name": "Kapileshwar Mahadev Temple, Sarangpur (कपिलेश्वर महादेव मंदिर, सारंगपुर)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2020013180-olw6kc4gxn0uo85q1mq5ptupyyo90xlmzryd0ic0zm.jpg",
        "description": "Built in the middle of Kalisindh river, famous for natural beauty and spirituality. | कालिसिंध नदी के बीच बना, प्राकृतिक सुंदरता और आध्यात्मिकता के लिए प्रसिद्ध।",
      },
      {
        "name": "Bheswa Mata (Bijasan Mata) Temple, Sarangpur (भेसवा माता/बीजासन माता मंदिर, सारंगपुर)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2020013157-olw6kb6mqszkcm7374bj5c39dksvt8hwnnavj8df5u.jpg",
        "description": "Temple run by a trust with 11 government members, an important center of devotion. | ट्रस्ट द्वारा संचालित मंदिर, जिसमें 11 सरकारी सदस्य शामिल हैं, आस्था का प्रमुख केंद्र।",
      },
      {
        "name": "Tirupati Balaji Temple, Jirapur (तिरुपति बालाजी मंदिर, जीरापुर)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2020013125-e1580458353241-olw6kb6mqszkcm7374bj5c39dksvt8hwnnavj8df5u.jpg",
        "description": "Famous for the glory of Lord Balaji, attracts lakhs of devotees every year. | भगवान बालाजी की महिमा के लिए प्रसिद्ध, हर वर्ष लाखों श्रद्धालुओं का आकर्षण।",
      },
      {
        "name": "Vaishnodevi Temple, Suthaliya-Biaora (वैष्णोदेवी मंदिर, सुथालिया-बायरा)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2020013159-olw6kb6mqszkcm7374bj5c39dksvt8hwnnavj8df5u.jpg",
        "description": "Located on Maksudnagar-Lateri road, with a beautiful cave dedicated to Maa Vaishnodevi. | मक्सूदनगर-लटेरी मार्ग पर स्थित, मां वैष्णोदेवी की गुफा वाला सुंदर मंदिर।",
      },
      {
        "name": "Kundaliya Dam (कुंडलिया बांध)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2020012119-olw6k8d46avpdsb6nl3nfusvlf6s656pn9cf3ehloi.jpg",
        "description": "Irrigation project constructed on Kalisindh river between Rajgarh and Agar-Malwa. | कालिसिंध नदी पर बना सिंचाई प्रोजेक्ट, राजगढ़ और आगर-मालवा जिले की सीमा पर।",
      },
      {
        "name": "Mohanpura Dam (मोहनपुरा बांध)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2019060163-olw6jpkcdm5yxl2hpcz41zjnpprfw742woaphv9h4y.jpg",
        "description": "First project in India to irrigate fields using pressure irrigation system. | भारत की पहली परियोजना जिसमें दबाव प्रणाली से खेतों की सिंचाई की जाती है।",
      },
      {
        "name": "Anjanilal Temple, Biaora (अंजनिलाल मंदिर, बायरा)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2020012943-olw6k9ayd4wzpe9ti3ia0ckc6t25duafzdzwkog7ia.jpg",
        "description": "Established about 45 years ago in a secluded forest area, a center of faith. | लगभग 45 वर्ष पूर्व घने जंगलों के बीच एकांत स्थान पर स्थापित, आस्था का केंद्र।",
      },
      {
        "name": "Jal Mandir, Narsinghgarh (जल मंदिर, नरसिंहगढ़)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2019060183-olw6jpkcdm5yxl2hpcz41zjnpprfw742woaphv9h4y.jpg",
        "description": "Narsinghgarh city, founded in 1681, is about 300 years old and historically significant. | 1681 में स्थापित नरसिंहगढ़ नगर लगभग 300 वर्ष पुराना और ऐतिहासिक महत्व का।",
      },
      {
        "name": "Shyamji Sanka Temple, Narsinghgarh (श्यामजी संका मंदिर, नरसिंहगढ़)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2018030968-olw6jkv5ffzjbj9bgsxz7iqcqseltplf811a3hgg02.jpg",
        "description": "Located near Parvati river in Sanka village, famous for its religious and scenic surroundings. | संका गाँव, पार्वती नदी के किनारे स्थित धार्मिक और प्राकृतिक सौंदर्य से भरपूर।",
      },
      {
        "name": "Chidikhon Wildlife Sanctuary, Narsinghgarh (चिड़ीखोन वन्यजीव अभयारण्य, नरसिंहगढ़)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2018030915-olw6jjxb8ly8zxaomajcn0yw5ej8m0hovwdsm7hu6a.jpg",
        "description": "Wildlife sanctuary established in 1978 under social forestry division of Rajgarh. | 1978 में स्थापित वन्यजीव अभयारण्य, राजगढ़ के सामाजिक वानिकी प्रभाग के अंतर्गत।",
      },
      {
        "name": "Dargah Sharif Rajgarh (दरगाह शरीफ, राजगढ़)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2018030917-olw6jjxb8ly8zxaomajcn0yw5ej8m0hovwdsm7hu6a.jpg",
        "description": "Shrine of Hazrat Baba Badakhshani R.A., a famous Sufi saint. | प्रसिद्ध सूफी संत हज़रत बाबा बदख्शानी र.अ. की दरगाह।",
      },
      {
        "name": "Jalpa Mata Temple, Rajgarh (जालपा माता मंदिर, राजगढ़)",
        "image": "https://cdn.s3waas.gov.in/s302e74f10e0327ad868d138f2b4fdd6f0/uploads/bfi_thumb/2018030945-1-olw6jjxb8ly8zxaomajcn0yw5ej8m0hovwdsm7hu6a.jpg",
        "description": "Beautiful hilltop temple located 4 km from Rajgarh, surrounded by scenic views. | राजगढ़ से 4 किमी दूर पहाड़ी पर स्थित सुंदर मंदिर, प्राकृतिक दृश्यों से घिरा हुआ।",
      }
    ],

    "Ratlam (रतलाम)": [
      {
        "name": "Kalika Mata Temple (कालिका माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b53b3a3d6ab90ce0268229151c9bde11/uploads/bfi_thumb/2025052234-r66owyr5buxn3qo27zmyumv3ijo6dmghxi792lsnb6.jpg",
        "description": "Located in the heart of Ratlam city, this temple is dedicated to Goddess Kalika and is a revered spiritual center. | रतलाम शहर के बीचोंबीच स्थित यह मंदिर देवी कालिका को समर्पित एक प्रमुख धार्मिक स्थल है।"
      },
      {
        "name": "Shri Virupaksha Mahadev Temple (श्री विरूपाक्ष महादेव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b53b3a3d6ab90ce0268229151c9bde11/uploads/bfi_thumb/2025052263-r66nd46d98hb9tsjccjz7884vcy211qn92rnjqlr0i.jpeg",
        "description": "Historic Shiva temple located in Bilpank village, about 18 km from Ratlam city. | रतलाम से लगभग 18 किमी दूर बिलपांक गाँव में स्थित प्राचीन शिव मंदिर।"
      },
      {
        "name": "Dholawad Dam (ढोलावाद बांध)",
        "image": "https://cdn.s3waas.gov.in/s3b53b3a3d6ab90ce0268229151c9bde11/uploads/bfi_thumb/2019061750-olwblbxox6si95955v7zu5lztykn6s4yjm87qlyyv6.jpg",
        "description": "A popular tourist attraction located near Raoti, 25 km west of Ratlam, known for its scenic beauty. | रतलाम से 25 किमी पश्चिम राउटी के पास स्थित लोकप्रिय पर्यटन स्थल, प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
      {
        "name": "Cactus Garden, Sailana (कैक्टस गार्डन, सैलाना)",
        "image": "https://cdn.s3waas.gov.in/s3b53b3a3d6ab90ce0268229151c9bde11/uploads/bfi_thumb/2019061744-olwblbxox6si95955v7zu5lztykn6s4yjm87qlyyv6.jpg",
        "description": "Unique cactus garden located in Jaswant Niwas Palace at Sailana, showcasing rare cactus species. | सैलाना के जसवंत निवास पैलेस में स्थित अनोखा कैक्टस गार्डन, जहाँ दुर्लभ प्रजातियों के कैक्टस प्रदर्शित हैं।"
      },
      {
        "name": "Bibrod Tirth (बिबरोड तीर्थ)",
        "image": "https://cdn.s3waas.gov.in/s3b53b3a3d6ab90ce0268229151c9bde11/uploads/bfi_thumb/2019061744-olwblbxox6si95955v7zu5lztykn6s4yjm87qlyyv6.jpg",
        "description": "An important Jain pilgrimage site housing a 2.49 feet idol, considered a major spiritual destination. | जैन धर्म का प्रमुख तीर्थ स्थल, जहाँ 2.49 फीट की प्रतिमा स्थापित है और धार्मिक महत्व रखता है।"
      }
    ],

    "Rewa (रीवा)": [
      {
        "name": "Ghanouchi Dham, Piyavan (घिनौची धाम, पियावन)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2020102249-oxac6cahdzc1tgota8d0m0bl417nctwvbf8vj61ude.jpg",
        "description": "Also known as Piavan, this dham is a blend of natural beauty and spirituality, offering peace and joy to visitors. | पियावन के नाम से प्रसिद्ध यह धाम प्राकृतिक सुंदरता और धार्मिक आस्था का अद्भुत संगम है, जहाँ दर्शकों का मन प्रसन्न हो जाता है।"
      },
      {
        "name": "Purwa Waterfall (पुरवा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2019073078-olwaeka1yk8tzvdkwdp3dy4ystdeykcmnxmvnddtz6.jpg",
        "description": "A magnificent 200 feet (67 m) high waterfall, known for its breathtaking natural view. | लगभग 200 फीट ऊँचा भव्य जलप्रपात, जो अपनी अद्भुत प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "White Tiger Safari (सफेद बाघ सफारी)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2019072715-olwae66h41pj5py26ploujp1w1awr3snlzulg7yqki.jpg",
        "description": "Famous for the discovery of the first white tiger by Maharaja Martand Singh in 1951, now a popular tourist attraction. | 1951 में महाराजा मार्तंड सिंह द्वारा खोजे गए पहले सफेद बाघ के लिए प्रसिद्ध, अब एक लोकप्रिय पर्यटन स्थल।"
      },
      {
        "name": "Bahuti Waterfall (बहुती जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2019072214-olwae58mx7o8u3zfc772a1xlanfjjeox9v73yy04qq.jpg",
        "description": "The highest waterfall in Madhya Pradesh, located on the Sellar river. | मध्यप्रदेश का सबसे ऊँचा जलप्रपात, जो सेलर नदी पर स्थित है।"
      },
      {
        "name": "Rani Talab (रानी तालाब)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2019071929-1-olwae3cyjjlo6w25n6dt52eo3vot40hgllw50e2x36.jpg",
        "description": "One of the oldest water bodies in Rewa, located in the southern part of the city. | रीवा के सबसे प्राचीन जलस्रोतों में से एक, जो शहर के दक्षिणी भाग में स्थित है।"
      },
      {
        "name": "Deur Kothar (देउर कोठार)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2019071914-olwae2f4cpkdva3isnz6kkn7ihtfwbdq9h8nj44b9e.jpg",
        "description": "An archaeological site with ancient Buddhist stupas, discovered in 1982. | प्राचीन बौद्ध स्तूपों वाला पुरातात्विक स्थल, जिसकी खोज 1982 में हुई।"
      },
      {
        "name": "Chachai Waterfall (चचाई जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2019071965-olwae3cyjjlo6w25n6dt52eo3vot40hgllw50e2x36.jpg",
        "description": "More than 130 meters high, situated on River Bihad near Rewa, offering a spectacular sight. | 130 मीटर से अधिक ऊँचा यह जलप्रपात रीवा के पास बिहड़ नदी पर स्थित है और अद्भुत दृश्य प्रस्तुत करता है।"
      },
      {
        "name": "Keoti Waterfall (केओटी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2019071977-olwae4asqdmyii0shosfpk64p9k6bpl6xqjmho1iwy.jpg",
        "description": "The 24th highest waterfall in India, ideal for family trips near Rewa. | भारत का 24वां सबसे ऊँचा जलप्रपात, जो रीवा के पास पारिवारिक सैर-सपाटे के लिए आदर्श स्थल है।"
      },
      {
        "name": "Rewa Fort (रीवा किला)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2019071957-olwae3cyjjlo6w25n6dt52eo3vot40hgllw50e2x36.jpg",
        "description": "A historic fort and main tourist attraction of Rewa, located near the confluence of two rivers. | रीवा का प्रमुख ऐतिहासिक किला और पर्यटन स्थल, जो दो नदियों के संगम के पास स्थित है।"
      },
      {
        "name": "Govindgarh Palace and Lake (गोविंदगढ़ महल और झील)",
        "image": "https://cdn.s3waas.gov.in/s393db85ed909c13838ff95ccfa94cebd9/uploads/bfi_thumb/2019071967-olwae0jfz1ht82693n5xfl4abq2pgx69l7xokk73lu.jpg",
        "description": "Located 18 km from Rewa, the summer capital of the Maharaja of Rewa, known for its palace and scenic lake. | रीवा से 18 किमी दूर स्थित महाराजा रीवा की ग्रीष्मकालीन राजधानी, अपने महल और सुंदर झील के लिए प्रसिद्ध।"
      }
    ],

    "Sagar (सागर)": [
      {
        "name": "Lakha Banjara Pond (लाखा बनजारा तालाब)",
        "image": "https://cdn.s3waas.gov.in/s3fe73f687e5bc5280214e0486b273a5f9/uploads/bfi_thumb/2018022397-1-olwdwzkl6db7jrqko10nr1mv4i8o908y1ofxd5xl36.jpg",
        "description": "Located in the center of Sagar city, spread over about 400 acres, this historic pond is the lifeline of the city. | सागर शहर के बीचोंबीच लगभग 400 एकड़ में फैला यह ऐतिहासिक तालाब शहर की जीवन रेखा है।"
      },
      {
        "name": "Rahatgarh Waterfalls (रहटगढ़ जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3fe73f687e5bc5280214e0486b273a5f9/uploads/bfi_thumb/2018060498-olwdws1vnp0wyw1hvxrn73j6df9qjff3cn81iy8qgy.jpg",
        "description": "A scenic waterfall located 60 km west of Sagar on the Bhopal-Sagar road, also known for the battlemented ramparts and gates of the old fort. | भोपाल-सागर मार्ग पर सागर से 60 किमी पश्चिम स्थित सुंदर जलप्रपात, जो पुराने किले की प्राचीरों और द्वारों के लिए भी प्रसिद्ध है।"
      },
      {
        "name": "Nauradehi Wildlife Sanctuary (नौरादेही वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s3fe73f687e5bc5280214e0486b273a5f9/uploads/bfi_thumb/2018060434-olwdws1vnp0wyw1hvxrn73j6df9qjff3cn81iy8qgy.jpg",
        "description": "Spread over 1200 sq. km., located at the junction of Sagar, Damoh, and Narsinghpur districts, this sanctuary is home to diverse wildlife. | 1200 वर्ग किमी में फैला यह अभयारण्य सागर, दमोह और नरसिंहपुर जिलों के त्रिकोण में स्थित है और विविध वन्यजीवों का घर है।"
      },
      {
        "name": "Khimlasa (खिमलासा)",
        "image": "https://cdn.s3waas.gov.in/s3fe73f687e5bc5280214e0486b273a5f9/uploads/bfi_thumb/2018060254-olwdws1vnp0wyw1hvxrn73j6df9qjff3cn81iy8qgy.jpg",
        "description": "A religious and historical place said to be founded by a Mohammedan, located in the suburb of Malwa region. | धार्मिक और ऐतिहासिक महत्व का स्थल, जिसे एक मुस्लिम द्वारा बसाया गया माना जाता है, मालवा क्षेत्र के उपनगर में स्थित।"
      },
      {
        "name": "Varaha Avatar Temple, Eran (वराह अवतार मंदिर, एरण)",
        "image": "https://cdn.s3waas.gov.in/s3fe73f687e5bc5280214e0486b273a5f9/uploads/bfi_thumb/2018060528-olwdx0ifd7chvdp7ijfabjebpw41gpcodt3eufw6wy.jpg",
        "description": "An ancient site at the confluence of the Bina and Reuta rivers, famous for its Varaha Avatar statue of Lord Vishnu. | बीना और रेउता नदियों के संगम पर स्थित प्राचीन स्थल, भगवान विष्णु की वराह अवतार मूर्ति के लिए प्रसिद्ध।"
      },
      {
        "name": "Gadpehara Temple (गडपेहरा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3fe73f687e5bc5280214e0486b273a5f9/uploads/bfi_thumb/2018060568-olwdx0ifd7chvdp7ijfabjebpw41gpcodt3eufw6wy.gif",
        "description": "Also known as Purana Sagar, this was the capital of the Dangi Empire, located about 6 miles from Jhansi road. | पुराने सागर के नाम से प्रसिद्ध, यह दांगी साम्राज्य की राजधानी थी, जो झांसी रोड से लगभग 6 मील दूर स्थित है।"
      },
      {
        "name": "Rangir Devi Temple (रंगीर देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3fe73f687e5bc5280214e0486b273a5f9/uploads/bfi_thumb/2018060542-olwdwzkl6db7jrqko10nr1mv4i8o908y1ofxd5xl36.jpg",
        "description": "Located on the banks of the Dahar river, about 21 miles from Sagar, this temple is a significant religious site. | दहर नदी के किनारे, सागर से लगभग 21 मील दूर स्थित यह मंदिर एक प्रमुख धार्मिक स्थल है।"
      }
    ],

    "Satna (सतना)": [
      {
        "name": "Vyankatesh Temple (वैंकटेश मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38e6b42f1644ecb1327dc03ab345e618b/uploads/bfi_thumb/2018033137-olwa65m0twqi5fl7zqv832ijiqt840z26bkj49ulmq.jpg",
        "description": "Venkatesh Temple is located in Muktiyarganj, Satna. This ancient temple must be visited by every tourist. | वैंकटेश मंदिर मुक्तियारगंज, सतना में स्थित है। यह प्राचीन मंदिर हर पर्यटक के लिए दर्शनीय है।"
      },
      {
        "name": "Shiva Temple, Birsinghpur (शिव मंदिर, बिरसिंहपुर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOhbEOzRI38jo3alFEZScnQ1q0tuXMQB62Ww&s",
        "description": "Lord Shiva Temple is also a famous and old temple in this area. It is around 35 km north of Satna. | भगवान शिव का यह मंदिर इस क्षेत्र का प्रसिद्ध और प्राचीन मंदिर है। यह सतना से लगभग 35 किमी उत्तर में स्थित है।"
      },
      {
        "name": "Chitrakoot Dham (चित्रकूट धाम)",
        "image": "https://cdn.s3waas.gov.in/s38e6b42f1644ecb1327dc03ab345e618b/uploads/bfi_thumb/2018022711-olwa62si9emn6lpbg7ncdl85ql74gxnv5xm2ofys5e.jpg",
        "description": "Chitrakoot comprises many places of religious and mythological significance, visited both by devotees and sight-seekers. | चित्रकूट में धार्मिक और पौराणिक महत्व के अनेक स्थल हैं, जहाँ श्रद्धालु और पर्यटक दोनों बड़ी संख्या में आते हैं।"
      },
      {
        "name": "Tulsi Museum, Ramvan (तुलसी संग्रहालय, रामवन)",
        "image": "https://cdn.s3waas.gov.in/s38e6b42f1644ecb1327dc03ab345e618b/uploads/bfi_thumb/2018040293-olwa66jv0qrsh1juu99unka044olbq2sig80ljt7gi.jpg",
        "description": "One of the major heritage sites in Satna district is Tulsi Museum. It is an archaeological museum and a major tourist attraction. | सतना जिले के प्रमुख धरोहर स्थलों में से एक, तुलसी संग्रहालय एक पुरातात्विक संग्रहालय है और पर्यटकों के लिए बड़ा आकर्षण है।"
      }
    ],

    "Sehore (सीहोर)": [
      {
        "name": "Ganesh Temple Sehore (गणेश मंदिर, सीहोर)",
        "image": "https://cdn.s3waas.gov.in/s367c6a1e7ce56d3d6fa748ab6d9af3fd7/uploads/bfi_thumb/2018050216-olw9avjdedwzsl0wn8463yobv4zhymsmji0u6s88oy.jpg",
        "description": "Siddha Ganesh Temple is situated in Gopalpur Village, about 3 km from district headquarters in the north-west direction. | सिद्ध गणेश मंदिर गोपालपुर गाँव में स्थित है, जो जिला मुख्यालय से लगभग 3 किमी उत्तर-पश्चिम दिशा में है।"
      },
      {
        "name": "Mausoleum of Kunwar Chainsingh (कुँवर चेनसिंह समाधि)",
        "image": "https://cdn.s3waas.gov.in/s367c6a1e7ce56d3d6fa748ab6d9af3fd7/uploads/bfi_thumb/2019041466-olw9b322x27adgpzfbd6nws0m7yfo7mh8j8q0zx3b6.jpg",
        "description": "Samadhi of Kunwar Chain Singh is built on the banks of river Lotiya on Sehore-Indore road, a place of historical importance during Dussehra. | कुँवर चेन सिंह की समाधि सीहोर-इंदौर मार्ग पर लोटिया नदी के तट पर बनी है, जिसका ऐतिहासिक महत्व है।"
      },
      {
        "name": "All Saints Church (ऑल सेंट्स चर्च, 1838)",
        "image": "https://cdn.s3waas.gov.in/s367c6a1e7ce56d3d6fa748ab6d9af3fd7/uploads/bfi_thumb/2019041433-olw9b248q8601urcksyk3f0k0u32giiqwel8jpyhhe.jpg",
        "description": "All Saints Church was built in 1838 by the British Political Agent from Scotland. | ऑल सेंट्स चर्च का निर्माण 1838 में ब्रिटिश राजनीतिक एजेंट (जो स्कॉटलैंड से थे) द्वारा किया गया था।"
      },
      {
        "name": "Vindhyavasini Mata Temple, Salkanpur (विंध्यवासिनी माता मंदिर, सालकनपुर)",
        "image": "https://cdn.s3waas.gov.in/s367c6a1e7ce56d3d6fa748ab6d9af3fd7/uploads/bfi_thumb/2019041389-olw9b16eje4pq8spqajxix93fg7p8tf0k9xr2fzvnm.jpg",
        "description": "An ancient holy Siddhapeeth of Vindhyavasini Bijasan Devi (Durga), located near Rehti Tehsil headquarters in Salkanpur. | यह प्राचीन सिद्धपीठ, विंध्यवासिनी बिजासन देवी (दुर्गा) का मंदिर है, जो रेहटी तहसील मुख्यालय के पास सालकनपुर में स्थित है।"
      },
      {
        "name": "Caves of Saru Maru (सारु मारु गुफाएँ)",
        "image": "https://cdn.s3waas.gov.in/s367c6a1e7ce56d3d6fa748ab6d9af3fd7/uploads/bfi_thumb/2019041379-olw9b16eje4pq8spqajxix93fg7p8tf0k9xr2fzvnm.jpg",
        "description": "Saru Maru is an ancient monastery complex and archaeological site of Buddhist caves, located in Budhni tehsil of Sehore district. | सारु मारु एक प्राचीन बौद्ध मठ परिसर और गुफाओं का पुरातात्विक स्थल है, जो सीहोर जिले की बुधनी तहसील में स्थित है।"
      }
    ],

    "Seoni (सिवनी)": [
      {
        "name": "Siddhghat, Keolari (सिद्धघाट, केवलारी)",
        "image": "https://cdn.s3waas.gov.in/s398dce83da57b0395e163467c9dae521b/uploads/bfi_thumb/2019092822-olwamyy337r5ub5xt0iyotre2vxlt3q75jp86gx2bm.jpg",
        "description": "Siddhghat is a famous tourist destination situated on the Bainganga river, about 15 km from Keolari tehsil headquarters. | सिद्धघाट एक प्रसिद्ध पर्यटन स्थल है, जो केवलारी तहसील मुख्यालय से लगभग 15 किमी दूर बैनगंगा नदी पर स्थित है।"
      },
      {
        "name": "Shri Kala Bhairava Temple, Adegaon (श्री काल भैरव मंदिर, अडेगाँव)",
        "image": "https://cdn.s3waas.gov.in/s398dce83da57b0395e163467c9dae521b/uploads/bfi_thumb/2019092820-olwamyy337r5ub5xt0iyotre2vxlt3q75jp86gx2bm.jpeg",
        "description": "A historic and religious temple dedicated to Lord Kala Bhairava, located in Adegaon, Lakhnadon. | भगवान काल भैरव को समर्पित ऐतिहासिक और धार्मिक मंदिर, अडेगाँव, लखनादौन में स्थित।"
      },
      {
        "name": "Vardhman Mahavir Swami Temple, Lakhnadon (वर्धमान महावीर स्वामी मंदिर, लखनादौन)",
        "image": "https://cdn.s3waas.gov.in/s398dce83da57b0395e163467c9dae521b/uploads/bfi_thumb/2019092868-1-olwamzvxa1sg5x4knixl9biuo9sz0stxhocpnqvo5e.jpeg",
        "description": "A Jain temple dedicated to Lord Vardhman Mahavir Swami, situated in Lakhnadon, Seoni district. | भगवान वर्धमान महावीर स्वामी को समर्पित जैन मंदिर, लखनादौन, सिवनी जिले में स्थित।"
      },
      {
        "name": "Shivdham Mathghoghra, Lakhnadon (शिवधाम मठघोघरा, लखनादौन)",
        "image": "https://cdn.s3waas.gov.in/s398dce83da57b0395e163467c9dae521b/uploads/bfi_thumb/2019092882-olwan0trgvtqhj37i1c7ttab9noc8hxntt0750u9z6.jpeg",
        "description": "Located about 60 km from district headquarters on Jabalpur road, this temple and scenic site is a major religious destination. | जिला मुख्यालय से जबलपुर मार्ग पर लगभग 60 किमी दूर स्थित यह मंदिर और दर्शनीय स्थल एक प्रमुख धार्मिक केंद्र है।"
      },
      {
        "name": "Adegaon Fort, Lakhnadon (अडेगाँव किला, लखनादौन)",
        "image": "https://cdn.s3waas.gov.in/s398dce83da57b0395e163467c9dae521b/uploads/bfi_thumb/2019092868-olwamzvxa1sg5x4knixl9biuo9sz0stxhocpnqvo5e.jpeg",
        "description": "Historic Adegaon Fort located 18 km from Lakhnadon towards Adegaon in Seoni district. | ऐतिहासिक अडेगाँव किला, लखनादौन से 18 किमी दूरी पर अडेगाँव की ओर, सिवनी जिले में स्थित।"
      },
      {
        "name": "Payali Rest House, Ghansor (पैयाली रेस्ट हाउस, घंसौर)",
        "image": "https://cdn.s3waas.gov.in/s398dce83da57b0395e163467c9dae521b/uploads/bfi_thumb/2019092856-olwamzvxa1sg5x4knixl9biuo9sz0stxhocpnqvo5e.jpeg",
        "description": "Located in Shikara Forest Range of Ghansor tehsil, a scenic and peaceful tourist spot. | घंसौर तहसील के शिकारा वन परिक्षेत्र में स्थित, एक सुंदर और शांत पर्यटक स्थल।"
      },
      {
        "name": "Richaria Babaji Temple, Dhanora (रिछरिया बाबाजी मंदिर, धनौरा)",
        "image": "https://cdn.s3waas.gov.in/s398dce83da57b0395e163467c9dae521b/uploads/bfi_thumb/2019090296-olwamx2epjol738o3zppju8gw46vdpiqhae97wzuo2.jpg",
        "description": "A famous and historical religious temple of Richaria Babaji, located in Dhanora block of Seoni district. | रिछरिया बाबाजी का प्रसिद्ध, ऐतिहासिक और धार्मिक मंदिर, सिवनी जिले के धनौरा विकासखंड में स्थित।"
      },
      {
        "name": "Pench National Park (पेंच राष्ट्रीय उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s398dce83da57b0395e163467c9dae521b/uploads/bfi_thumb/2019062892-olwam5t37cn9uec9j5xj1j43nxx86hiipjh6aw49oi.jpg",
        "description": "Located in the southern areas of the Satpura Range, Pench National Park is one of the most famous wildlife sanctuaries of Madhya Pradesh. | सतपुड़ा पर्वत श्रृंखला के दक्षिणी क्षेत्र में स्थित पेंच राष्ट्रीय उद्यान, मध्यप्रदेश का एक प्रमुख वन्यजीव अभ्यारण्य है।"
      }
    ],

    "Shahdol (शहडोल)": [
      {
        "name": "Budhi Devi Temple (बुढ़ी देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s354229abfcfa5649e7003b83dd4755294/uploads/bfi_thumb/2025052319-r689irwvyijjdwmvucehzwfia5kcynf7rq87hebbpe.jpg",
        "description": "Situated on the border of Umaria district, this Kalchuri period temple is dedicated to Goddess Budhi Devi. | उमरिया जिले की सीमा पर स्थित, कलचुरी काल का यह मंदिर बुढ़ी देवी को समर्पित है।"
      },
      {
        "name": "Ghati Dongari (घाटी डोंगरी)",
        "image": "https://cdn.s3waas.gov.in/s354229abfcfa5649e7003b83dd4755294/uploads/bfi_thumb/2025052361-r688kkkb9jpwwqbhkk589j5o3e5iv5muefm4sx124i.jpeg",
        "description": "Located 13 km away from Dongri Manpur on Jaisinghnagar road, this is a significant historical and religious site. | डोंगरी मंझपुर से जयसिंहनगर रोड पर 13 किमी दूर स्थित, यह एक महत्वपूर्ण ऐतिहासिक और धार्मिक स्थल है।"
      },
      {
        "name": "Ksheersagar (क्षीरसागर)",
        "image": "https://cdn.s3waas.gov.in/s354229abfcfa5649e7003b83dd4755294/uploads/bfi_thumb/2025052350-r68785vjapgazomu8muwuqx2r0r0gbghqu3x1wsyki.jpg",
        "description": "A scenic natural spot located 22 km from Shahdol, often compared to Goa for its beauty and recreational charm. | शहडोल से 22 किमी दूर स्थित एक सुंदर प्राकृतिक स्थल, जिसकी खूबसूरती और मनोरंजन आकर्षण गोवा जैसी मानी जाती है।"
      },
      {
        "name": "Pachmatha Temple (पचमाथा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s354229abfcfa5649e7003b83dd4755294/uploads/bfi_thumb/2025052354-r6868xv9778hxpsowwr6x4w9e8cv0mml8i1wnn11qa.jpeg",
        "description": "Famous Devi temple of Singhpur village, located on the highway about 15-20 km from Shahdol. | शहडोल से 15-20 किमी दूर राजमार्ग पर स्थित सिंहपुर गांव का प्रसिद्ध देवी मंदिर।"
      },
      {
        "name": "Lakhbaria Caves (लखबरिया गुफाएँ)",
        "image": "https://cdn.s3waas.gov.in/s354229abfcfa5649e7003b83dd4755294/uploads/bfi_thumb/2025052329-r6845ek5zhtyxtimzrbi1p3quinzg9r4imq7a50zr6.jpg",
        "description": "Ancient caves near Shahdol, believed to have historical and religious significance. | शहडोल के पास स्थित प्राचीन गुफाएँ, जिनका ऐतिहासिक और धार्मिक महत्व माना जाता है।"
      },
      {
        "name": "Bhathia Devi Temple (भाठिया देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s354229abfcfa5649e7003b83dd4755294/uploads/bfi_thumb/2025052352-r685eqbzjvvqsvoebcnua9by3f96mtp5ez94ehtjpe.jpg",
        "description": "Located about 40 km from Shahdol, the temple is dedicated to Maa Singhvahini Devi, also known as Bhathia Devi. | शहडोल से लगभग 40 किमी दूर स्थित यह मंदिर मां सिंहवाहिनी देवी (भाठिया देवी) को समर्पित है।"
      },
      {
        "name": "Sarsee Island (सर्सी द्वीप)",
        "image": "https://cdn.s3waas.gov.in/s354229abfcfa5649e7003b83dd4755294/uploads/bfi_thumb/2025052395-r682j0t1hxwttqbjwitp6fh2kyf9d1zb5o0i7fla82.jpeg",
        "description": "A serene island retreat offering peace, natural beauty, and an MPT resort for tourists. | एक शांत द्वीप स्थल, जो प्राकृतिक सौंदर्य और एमपीटी रिसॉर्ट के लिए प्रसिद्ध है।"
      },
      {
        "name": "Bansagar Dam (बांसागर बांध)",
        "image": "https://cdn.s3waas.gov.in/s354229abfcfa5649e7003b83dd4755294/uploads/bfi_thumb/2019072297-olw8fkivs12744hyg6yhkd2nm5aeljigkjtns0n9xe.jpg",
        "description": "A multipurpose river valley project built on the Son River in the Ganges basin. | गंगा बेसिन में सोन नदी पर बना बहुउद्देशीय नदी घाटी परियोजना।"
      },
      {
        "name": "Virateshwar Temple (वीराटेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s354229abfcfa5649e7003b83dd4755294/uploads/bfi_thumb/2018031669-e1563780013816-olw8fgrj0ox1tonf25bzae0t8lsxqr3j817puwsuma.jpg",
        "description": "A Shiva temple of great religious significance, located in Sohagpur Banganga. | सोहागपुर बांगंगा में स्थित भगवान शिव का धार्मिक दृष्टि से महत्वपूर्ण मंदिर।"
      }
    ],

    "Shajapur (शाजापुर)": [
      {
        "name": "Parsvanath Temple, Maksi (पार्श्वनाथ मंदिर, मकसी)",
        "image": "https://cdn.s3waas.gov.in/s37f39f8317fbdb1988ef4c628eba02591/uploads/bfi_thumb/2019061298-olw9q0prianauf107rrsa53oemcdz2wxygegj9rwg2.jpg",
        "description": "One of the famous temples in India, covering an area nearly half of the town. | भारत के प्रसिद्ध मंदिरों में से एक, जिसका क्षेत्र लगभग शहर के आधे हिस्से के बराबर है।"
      },
      {
        "name": "Raj Rajeshwari Temple, Shajapur (राज राजेश्वरी मंदिर, शाजापुर)",
        "image": "https://cdn.s3waas.gov.in/s37f39f8317fbdb1988ef4c628eba02591/uploads/bfi_thumb/2019061289-olw9q0prianauf107rrsa53oemcdz2wxygegj9rwg2.jpg",
        "description": "A historical temple in Shajapur, located on Agra-Bombay Road and on the banks of a river. | शाजापुर का ऐतिहासिक मंदिर, जो आगरा-बॉम्बे रोड पर और नदी के किनारे स्थित है।"
      }
    ],

    "Sheopur (श्योपुर)": [
      {
        "name": "Kuno National Park (कुनो नेशनल पार्क)",
        "image": "https://cdn.s3waas.gov.in/s39f61408e3afb633e50cdf1b20de6f466/uploads/bfi_thumb/2023062074-q88cyyto0ryphlb0uw930cm3upxy46j8mlikxcxddu.jpg",
        "description": "Spread over 344.686 sq km in the Vindhyachal mountain range, Kuno National Park is a major wildlife sanctuary in Sheopur district. | 344.686 वर्ग किमी में फैला, विंध्याचल पर्वत श्रृंखला में स्थित, श्योपुर जिले का प्रमुख वन्यजीव अभयारण्य।"
      },
      {
        "name": "Triveni-Sangam (त्रिवेणी संगम)",
        "image": "https://cdn.s3waas.gov.in/s39f61408e3afb633e50cdf1b20de6f466/uploads/bfi_thumb/2023062055-q88kbcved5w7519j06hbcmrn2esp7a58b7hah8wv7m.jpg",
        "description": "Holy confluence of the Sip, Chambal, and Banas rivers, 40 km from Sheopur, a center of faith for locals. | शिप, चंबल और बानास नदियों का पवित्र संगम, श्योपुर से 40 किमी दूर, स्थानीय लोगों का धार्मिक केंद्र।"
      },
      {
        "name": "Doob Kund (दूब कुंड)",
        "image": "https://cdn.s3waas.gov.in/s39f61408e3afb633e50cdf1b20de6f466/uploads/bfi_thumb/2018032748-olwas44ahksndhoyrqkgu1173skwxh5bj07vpzai9u.jpg",
        "description": "A village about 25 km from Sheopur with two ruins of old temples and a scenic natural pond. | श्योपुर से लगभग 25 किमी दूर एक गाँव, जिसमें दो प्राचीन मंदिरों के खंडहर और प्राकृतिक सुंदरता वाला तालाब।"
      },
      {
        "name": "Manpur Fort (मानपुर किला)",
        "image": "https://cdn.s3waas.gov.in/s39f61408e3afb633e50cdf1b20de6f466/uploads/bfi_thumb/2019070982-1-olwas6xt22wicbkvb9scjibkvy70kkgije6c5t6br6.jpg",
        "description": "Historical fort built by Raja Mansingh, 45 km from Sheopur, later ruled by Gaud kings. | राजा मानसिंह द्वारा निर्मित ऐतिहासिक किला, श्योपुर से 45 किमी दूर, बाद में गौड़ राजाओं के अधीन।"
      },
      {
        "name": "Baroda Fort (बारौदा किला)",
        "image": "https://cdn.s3waas.gov.in/s39f61408e3afb633e50cdf1b20de6f466/uploads/bfi_thumb/2019070924-1-olwas5zyv8v80pm8grdpz0k4akbncvcs79iuoj7pxe.jpg",
        "description": "Fort built by Kheechi kings, conquered by King Indra Singh Gaur, part of Sheopur principality. | खेची राजाओं द्वारा निर्मित किला, राजा इन्द्रसिंह गौर ने इसे जीता और श्योपुर रियासत में शामिल किया।"
      },
      {
        "name": "Saharia Museum (सहरिया संग्रहालय)",
        "image": "https://cdn.s3waas.gov.in/s39f61408e3afb633e50cdf1b20de6f466/uploads/bfi_thumb/2019070944-olwas5zyv8v80pm8grdpz0k4akbncvcs79iuoj7pxe.jpg",
        "description": "Museum preserving the culture of the Saharia tribe in Sheopur, managed by Saharia Development Authority. | श्योपुर में सहरिया जनजाति की संस्कृति का संरक्षण करने वाला संग्रहालय, सहरिया विकास प्राधिकरण द्वारा संचालित।"
      },
      {
        "name": "Sheopur Fort (श्योपुर किला)",
        "image": "https://cdn.s3waas.gov.in/s39f61408e3afb633e50cdf1b20de6f466/uploads/bfi_thumb/2019070985-olwas6xt22wicbkvb9scjibkvy70kkgije6c5t6br6.jpg",
        "description": "Fort built at the confluence of Seep and Kalwal rivers, featuring unique stone sculptures and an archaeological museum. | सीप और कालवाल नदियों के संगम पर निर्मित किला, अनोखी पत्थर की मूर्तियों और पुरातात्त्विक संग्रहालय सहित।"
      }
    ],

    "Shivpuri (शिवपुरी)": [
      {
        "name": "Survaya Garhi (सुरवाया गढ़ी)",
        "image": "https://cdn.s3waas.gov.in/s36c8349cc7260ae62e3b1396831a8398f/uploads/bfi_thumb/2025051494-r5sq1kl63sr4mauvbp59fyokb0zs278oa0z2kzvlky.jpg",
        "description": "Historic fort about 20 km from Shivpuri town on Jhansi Road, located in Survaya Village. | झांसी रोड पर शिवपुरी शहर से लगभग 20 किमी दूर, सुरवाया गाँव में स्थित ऐतिहासिक किला।"
      },
      {
        "name": "Chhatri (छत्री)",
        "image": "https://cdn.s3waas.gov.in/s36c8349cc7260ae62e3b1396831a8398f/uploads/bfi_thumb/2025051482-r5s9gn6xxflrl5xeyo8izlgffz69tzh9jiccx0y51e.jpg",
        "description": "Intricately designed marble chhatris built by Scindia rulers, famous for their elegance. | सिन्धिया शासकों द्वारा निर्मित सुंदर संगमरमर की छत्रियाँ, अपनी भव्यता के लिए प्रसिद्ध।"
      },
      {
        "name": "George Castle (जॉर्ज कासल)",
        "image": "https://cdn.s3waas.gov.in/s36c8349cc7260ae62e3b1396831a8398f/uploads/bfi_thumb/2018050871-olw9bdeb08lfx6ayqxu2xc635gjh0vrixyf2b1hreq.jpg",
        "description": "Exquisite castle located at the highest point of Madhav National Park at a height of 484 m. | माधव राष्ट्रीय उद्यान के सबसे ऊँचे बिंदु पर स्थित, 484 मीटर ऊँचाई पर भव्य किला।"
      },
      {
        "name": "Madhav National Park (माधव राष्ट्रीय उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s36c8349cc7260ae62e3b1396831a8398f/uploads/bfi_thumb/2019072057-olw9bg7tkqpaw06vah1ymtggxm5knz2pycdiqvdkw2.jpg",
        "description": "Located near Shivpuri town, part of the upper Vindhyan hills, home to diverse flora and fauna. | शिवपुरी शहर के पास स्थित, ऊपरी विंध्याचल पर्वत का हिस्सा, विभिन्न प्रकार के जीव-जंतु और वनस्पतियों का घर।"
      }
    ],

    "Sidhi (सिंधी)": [
      {
        "name": "Chandreh Shaivite Temple and Monastery (चंद्रेह शैव मंदिर और मठ)",
        "image": "https://cdn.s3waas.gov.in/s36c4b761a28b734fe93831e3fb400ce87/uploads/bfi_thumb/2020090582-ov0sb216xzxlsb6e5lcd1u46283plgu644s3ojkmiq.jpg",
        "description": "Ancient Shaiv temple and monastery built in 972 AD, located in Chandraeh village, Rampur Naikin. | 972 ईस्वी में निर्मित प्राचीन शैव मंदिर और मठ, चंद्रेह गाँव, रामपुर नैकन में स्थित।"
      },
      {
        "name": "Son Gharial Sanctuary (सोन घड़ियाल अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s36c4b761a28b734fe93831e3fb400ce87/uploads/bfi_thumb/2020122631-p0fcqgb2e74y9vl2dvnktahcsej7pm5vh9mcq8blky.jpeg",
        "description": "Established under Project Crocodile for crocodile conservation on 161 acres of Son river. | प्रोजेक्ट क्रोकोडाइल के तहत घड़ियाल संरक्षण हेतु 161 एकड़ सोन नदी पर स्थापित।"
      },
      {
        "name": "Parsili Resort (पर्सिली रिसॉर्ट)",
        "image": "https://cdn.s3waas.gov.in/s36c4b761a28b734fe93831e3fb400ce87/uploads/bfi_thumb/2019072362-olw99c2w75t2rl9gn256iuo4tekuchognvj6vgigw2.jpg",
        "description": "Located 60 km from Sidhi headquarters near Majhauli Tehsil, a serene natural retreat. | सिंधी मुख्यालय से 60 किमी दूर, मझौली तहसील के पास स्थित, प्राकृतिक सुंदरता से भरपूर स्थल।"
      },
      {
        "name": "Sanjay-Dubri National Park and Tiger Reserve (संजय-दुबरी राष्ट्रीय उद्यान और टाइगर रिज़र्व)",
        "image": "https://cdn.s3waas.gov.in/s36c4b761a28b734fe93831e3fb400ce87/uploads/bfi_thumb/2019072383-olw99lha3i5xzovt467g7saqr9aihgps1621o84j5u.jpg",
        "description": "Established in 1975 to preserve the biodiversity-rich forest of the district. | 1975 में जिले के जैव विविधता समृद्ध जंगल के संरक्षण हेतु स्थापित।"
      }
    ],

    "Singrauli (सिंगरौली)": [
      {
        "name": "Vardi ka Kila & Son Gopad Sangam (वर्दी का किला और सोन गोपद संगम)",
        "image": "https://cdn.s3waas.gov.in/s337693cfc748049e45d87b8c7d8b9aacd/uploads/bfi_thumb/2025052362-scaled-r67zc17tfki1j1cjctgq5g32g16rq1hfciy4ou33eq.jpg",
        "description": "Historic fort located at the confluence of Son and Gopad rivers, built for strategic and scenic importance. | सोन और गोपद नदियों के संगम पर स्थित ऐतिहासिक किला, रणनीतिक और प्राकृतिक सुंदरता के लिए निर्मित।"
      },
      {
        "name": "Mada Caves (माड़ा गुफाएं)",
        "image": "https://cdn.s3waas.gov.in/s337693cfc748049e45d87b8c7d8b9aacd/uploads/bfi_thumb/2018033038-olw816lt6bd7eze9gh31whroau75sbecxcd4cjz75u.jpg",
        "description": "Group of rock-cut caves from the 7th–8th century AD, located 32 km from Singrauli. | 7वीं–8वीं सदी ईस्वी की चट्टानों में खुदी हुई गुफाओं का समूह, सिंगरौली से 32 किमी दूर।"
      }
    ],

    "Tikamgarh (टीकमगढ़)": [
      {
        "name": "Kundeshwar Dham (कुंदेश्वर धाम)",
        "image": "https://cdn.s3waas.gov.in/s3ed3d2c21991e3bef5e069713af9fa6ca/uploads/bfi_thumb/2019070577-olwdcevrkx59f1mgt4un68jn0vnfrikgjudb74ftaa.jpg",
        "description": "Important historical and religious site located 5 km south of Tikamgarh city on the banks of Jamdar river. | टीकमगढ़ शहर से 5 किमी दक्षिण में, जमदार नदी के किनारे स्थित महत्वपूर्ण ऐतिहासिक और धार्मिक स्थल।"
      }
    ],

    "Ujjain (उज्जैन)": [
      {
        "name": "Kala Bhairava (काला भैरव)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018032773-olwbgsdrw0km4zupowiwsavsgwyrzg3nx4pq8gpgxu.jpg",
        "description": "Chief among the eight Bhairavas worshipped in the Saivite tradition. | शिव परंपरा में आठ भैरवों में प्रमुख।"
      },
      {
        "name": "Gopal Temple (गोपाल मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrVRa-z-pctHXsd5FbwF3t8_bn7L_9nvtdCw&s",
        "description": "Huge 19th century temple situated in Bada Bazar Chowk, built by Maharaja Daulat Rao. | बड़ा बाजार चौक में स्थित 19वीं सदी का विशाल मंदिर, महाराजा दौलत राव द्वारा निर्मित।"
      },
      {
        "name": "Shri Mahakaleshwar Temple (श्री महाकालेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018032726-olwbgsdrw0km4zupowiwsavsgwyrzg3nx4pq8gpgxu.jpg",
        "description": "One of the twelve famous Jyotirlingas of India. Mentioned in various Puranas. | भारत के बारह प्रसिद्ध ज्योतिर्लिंगों में से एक। विभिन्न पुराणों में उल्लेखित।"
      },
      {
        "name": "Navgraha Temple (Triveni) (नवग्रह मंदिर, त्रिवेणी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/f2/a0/2a/navagraha-mandir.jpg?w=600&h=400&s=1",
        "description": "Situated on the Triveni Ghat of Shipra, worships the nine planets. | त्रिवेणी घाट, शिप्रा पर स्थित, नौ ग्रहों की पूजा।"
      },
      {
        "name": "Twenty Four Pillars (चौबीस स्तंभ)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018033196-olwbgtbm2ulwgltcjexjcsn92au5757e99d7pqo2rm.jpg",
        "description": "Architectural design with 24 ornate pillars dating back to 9th-10th century A.D. | 9वीं-10वीं शताब्दी की वास्तुकला, 24 सुंदर स्तंभों के साथ।"
      },
      {
        "name": "Ram-Janardan Temple (राम-जनार्दन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018033173-olwbgtbm2ulwgltcjexjcsn92au5757e99d7pqo2rm.jpg",
        "description": "17th century idols of Lord Rama, Lakshmana, Sita and Janardana-Vishnu. | 17वीं सदी की मूर्तियाँ: भगवान राम, लक्ष्मण, सीता और जनार्दन-विष्णु।"
      },
      {
        "name": "Observatory (वेधशाला)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018032793-olwbgtbm2ulwgltcjexjcsn92au5757e99d7pqo2rm.jpg",
        "description": "Ujjain is historically important for astronomy, origin of texts like Surya Siddhanta. | खगोल विज्ञान में ऐतिहासिक महत्व, सूर्य सिद्धांत जैसे ग्रंथों का उद्भव।"
      },
      {
        "name": "ISKCON Temple (इस्कॉन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018033162-olwbgtbm2ulwgltcjexjcsn92au5757e99d7pqo2rm.jpg",
        "description": "Popular temple of Lord Krishna in Ujjain. | उज्जैन में भगवान कृष्ण का लोकप्रिय मंदिर।"
      },
      {
        "name": "Kaliadeh Palace (कलियादेह पैलेस)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018032779-olwbgsdrw0km4zupowiwsavsgwyrzg3nx4pq8gpgxu.jpg",
        "description": "Situated on the banks of Shipra River, also has a Sun Temple. | शिप्रा नदी के किनारे स्थित, यहाँ सूर्य मंदिर भी है।"
      },
      {
        "name": "Harsiddhi Temple (हर्सिद्धि मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018032730-olwbgsdrw0km4zupowiwsavsgwyrzg3nx4pq8gpgxu.jpg",
        "description": "Ancient temple dedicated to Goddess Harsiddhi. | देवी हर्सिद्धि को समर्पित प्राचीन मंदिर।"
      },
      {
        "name": "Sandipani Ashram (संदीपनी आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018033144-olwbgi1jsu6gla9qda20ivhpxodqmrym7pjdyf4sua.jpg",
        "description": "Historical and religious learning center of ancient Ujjain. | प्राचीन उज्जैन का ऐतिहासिक और धार्मिक अध्ययन केंद्र।"
      },
      {
        "name": "Mangalnath Temple (मंगलनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ab817c9349cf9c4f6877e1894a1faa00/uploads/bfi_thumb/2018033152-olwbgi1jsu6gla9qda20ivhpxodqmrym7pjdyf4sua.jpg",
        "description": "Located on the banks of the river, away from city hustle, famous for planetary significance. | नदी के किनारे, शहर की हलचल से दूर, ग्रह संबंधी महत्व के लिए प्रसिद्ध।"
      }
    ],

    "Umaria (उमरिया)": [
      {
        "name": "Bandhavgarh National Park (बांधवगढ़ राष्ट्रीय उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/a8/bf/51/caption.jpg?w=1000&h=800&s=1",
        "description": "Wildlife haven set in lush landscapes, home to Bengal tigers and diverse fauna. Ideal for morning safaris from March to June. | घने जंगलों में बाघों और विविध जीव-जंतुओं का आश्रय। मार्च से जून के बीच सुबह की सफारी के लिए आदर्श।"
      },
      {
        "name": "Shesh-Saiya (शेष-सैया)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/6a/ed/d8/shesh-saiya.jpg?w=1000&h=-1&s=1",
        "description": "Historic reclining Vishnu statue thousands of years old, located in Bandhavgarh. | हजारों वर्ष पुरानी ऐतिहासिक शेष अन्नंत वास वाली विष्णु मूर्ति, बांधवगढ़ में स्थित।"
      },
      {
        "name": "Bandhavgarh Hill (बांधवगढ़ पहाड़ी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/af/67/f2/img-20170624-wa0016-largejpg.jpg?w=1000&h=800&s=1",
        "description": "A scenic hill within Bandhavgarh, ideal for spotting monkeys, deer, and sometimes tigers. | बांधवगढ़ के अंदर खूबसूरत पहाड़ी, बंदर, हिरण और कभी-कभी बाघ देखने के लिए उपयुक्त।"
      },
      {
        "name": "Bandhavgarh Fort (बांधवगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/0b/fd/00/bandhavgarh-fort.jpg?w=1000&h=800&s=1",
        "description": "Historic fort located inside Bandhavgarh National Park, partially accessible to the public. | ऐतिहासिक किला, बांधवगढ़ राष्ट्रीय उद्यान के भीतर, कुछ हिस्सों में जनता के लिए खुला।"
      },
      {
        "name": "Panpatha Wildlife Sanctuary (पानपथा वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/ae/6d/ec/photo1jpg.jpg?w=1000&h=800&s=1",
        "description": "Located en route to Bandhavgarh Tiger Reserve, rich in flora and fauna. | बांधवगढ़ टाइगर रिज़र्व की ओर जाने वाले मार्ग पर स्थित, वनस्पति और जीव-जंतुओं से समृद्ध।"
      },
      {
        "name": "Bandhavgarh Ancient Caves (बांधवगढ़ प्राचीन गुफाएँ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f8/7d/2b/enroute.jpg?w=1000&h=800&s=1",
        "description": "Historic caves situated in the Tala Zone of Bandhavgarh forest, accessible via safari. | बांधवगढ़ जंगल के ताल क्षेत्र में स्थित ऐतिहासिक गुफाएँ, सफारी के माध्यम से पहुँच योग्य।"
      },
      {
        "name": "Baghel Museum (बघेल संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/08/9f/7e/baghel-museum.jpg?w=1000&h=800&s=1",
        "description": "Museum with excellent collection of tiger and other wildlife photos, easily accessible for tourists. | बाघ और अन्य वन्यजीवों की उत्कृष्ट तस्वीरों का संग्रह, पर्यटकों के लिए आसानी से पहुँचा जा सकता है।"
      }
    ],

    "Vidisha (विदिशा)": [
      {
        "name": "Heliodorus Pillar (हेलिओडोरस स्तंभ)",
        "image": "https://cdn.s3waas.gov.in/s369cb3ea317a32c4e6143e665fdb20b14/uploads/bfi_thumb/2019061891-1-olw99fu8yhy8214013rostpz6y2b7a3e0e54skcw76.jpeg",
        "description": "Garuda Dhvaja, a historic pillar gifted by Greek Governor Antialkidas around 180 BC. | गरुड़ ध्वज, 180 ईसा पूर्व के आसपास ग्रीक गवर्नर एंटिअल्किडास द्वारा उपहार में दिया गया ऐतिहासिक स्तंभ।"
      },
      {
        "name": "Neelkantheswar Temple, Udaipur (नीलकंठेश्वर मंदिर, उदैपुर)",
        "image": "https://cdn.s3waas.gov.in/s369cb3ea317a32c4e6143e665fdb20b14/uploads/bfi_thumb/2019061891-olw99fu8yhy8214013rostpz6y2b7a3e0e54skcw76.jpeg",
        "description": "Famous historic temple located in Udaipur of Vidisha district. | विदिशा जिले के उदैपुर में स्थित प्रसिद्ध ऐतिहासिक मंदिर।"
      },
      {
        "name": "Udaigiri Cave (उदयगिरी गुफा)",
        "image": "https://cdn.s3waas.gov.in/s369cb3ea317a32c4e6143e665fdb20b14/uploads/bfi_thumb/2019062536-olw99inrj0230uzwkmzkib0cz3oeudel0s3l8e8poi.jpg",
        "description": "A large historic cave, open cutting about one meter deep, 6.5 meters long and 4 meters high, known for ancient carvings. | विशाल ऐतिहासिक गुफा, लगभग 1 मीटर गहरी, 6.5 मीटर लंबी और 4 मीटर ऊँची, प्राचीन नक्काशियों के लिए प्रसिद्ध।"
      }
    ],

    "Agar Malwa (आगर मालवा)": [
      {
        "name": "Kewada Swami Bhairavnath Temple (केवड़ा स्वामी भैरवनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b1d10e7bafa4421218a51b1e1f1b0ba2/uploads/bfi_thumb/2018061948-2-olwbn03d2l2uw6trel849qfhumc4vers3vzagbhrsy.jpg",
        "description": "There is Kewada Swami Bhairavnath Temple near the official Animal Breeding Farm Agar on the famous Motasagar Talab of Agar. | अगर के प्रसिद्ध मोतीसागर तालाब के पास आधिकारिक एनिमल ब्रीडिंग फार्म के पास केवड़ा स्वामी भैरवनाथ मंदिर स्थित है।"
      },
      {
        "name": "Manshapurn Ganapati Chipiya Goshari (Agar) (मनशपूर्ण गणपति चिपिया गोशरी)",
        "image": "https://cdn.s3waas.gov.in/s3b1d10e7bafa4421218a51b1e1f1b0ba2/uploads/bfi_thumb/2018061948-1-olwbmz5ivr1kkkv4k2thp8o198grnpo1rrbsz1j5z6.jpg",
        "description": "8 kms from Agar on Badod Road Shree Ganesh Goshhi Chipa is the same, that is the beautiful temple. | अगर से 8 किमी दूर बड़ोद रोड पर स्थित श्री गणेश गोशी चिपा, यह एक सुंदर मंदिर है।"
      },
      {
        "name": "Baijnath Mahadev Temple, Agar Malwa (बैजनाथ महादेव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b1d10e7bafa4421218a51b1e1f1b0ba2/uploads/bfi_thumb/2025050695-r5efeutuyt2rezy1bx98lm5pzete62gq3armc7mg3m.jpg",
        "description": "Baijnath Mahadev Temple is located on the Susner Road (Ujjain-Kota Road National Highway 27) of the district Agar-Malwa. | बैजनाथ महादेव मंदिर अगर-मालवा जिले के सुस्नेर रोड (उज्जैन-कोटा राष्ट्रीय राजमार्ग 27) पर स्थित है।"
      },
      {
        "name": "Baglamukhi Mata Temple, Nalkheda (बगला मुखी माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b1d10e7bafa4421218a51b1e1f1b0ba2/uploads/bfi_thumb/2018061222-olwbmeh2pe99h5p5wtvp6dvw6raoyddycwz4eydts2.jpg",
        "description": "In Madhya Pradesh, this temple is situated on the banks of the river Lakhundar in Nalkheda, Tehsil of Agar Malwa. | मध्य प्रदेश में यह मंदिर नलखेड़ा, अगर मालवा तहसील में लखुंदर नदी के किनारे स्थित है।",
        "website": "https://mabaglamukhi.com/"
      },
      {
        "name": "Mothisagar pond (Big pond) (मोतीसागर तालाब)",
        "image": "https://cdn.s3waas.gov.in/s3b1d10e7bafa4421218a51b1e1f1b0ba2/uploads/bfi_thumb/2018061461-olwbmve64ewfa50l616zf9m6vozasx94f8pv1xoqo2.gif",
        "description": "Excavation of the Motiasagar summit of Agar was done in 1052 by Abhay Ram Banjara. | 1052 में अभय राम बंजारा द्वारा अगर के मोतीसागर के शिखर का उत्खनन किया गया था।"
      },
      {
        "name": "Someshwar Mahadev Temple (सोमेश्वर महादेव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b1d10e7bafa4421218a51b1e1f1b0ba2/uploads/bfi_thumb/2018060823-olwbm8u1ke1jjhxctrfxrfb4mg2ho6rkc527jam6te.jpg",
        "description": "Village on the Ujjain road of Agar district, on the Gundakalan road from village Tanodia. | अगर जिले के उज्जैन रोड पर गांव, तनोदिया गांव से गुंडकलान रोड पर स्थित।"
      },
      {
        "name": "Maa Tulja Bhavani Temple (माँ तुलजा भवानी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b1d10e7bafa4421218a51b1e1f1b0ba2/uploads/bfi_thumb/2018072073-olwbljgefv2su0y7xyh0e3pol1jkwcyt8ng3ktnthe.jpg",
        "description": "2 km east of Agar city is the ancient temple of Maa Tulja Bhavani. | अगर शहर से 2 किमी पूर्व स्थित माँ तुलजा भवानी का प्राचीन मंदिर।"
      },
      {
        "name": "Chausath Yogini Mata Temple (चौसठ योगिनी माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b1d10e7bafa4421218a51b1e1f1b0ba2/uploads/bfi_thumb/2018061911-olwbmwc0b8xplqz80jllzrdnh2uo0mcurddcj7nchu.jpg",
        "description": "1 km from village Suigaon on the Nalkheda road from Agar Nagar, ancient temple with natural beauty. | अगर नगर से नलखेड़ा रोड पर सुगांव से 1 किमी दूर, प्राकृतिक सुंदरता के साथ प्राचीन मंदिर।"
      },
      {
        "name": "Pachetti Mata Temple (पचेत्ती माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b1d10e7bafa4421218a51b1e1f1b0ba2/uploads/bfi_thumb/2018072017-olwbliik911iiezl3g2dtly7zno7onv2wism3jp7nm.jpg",
        "description": "In ancient times, these ancient sculptures were immortalized in the dense forest, gradually attracting visitors. | प्राचीन काल में ये प्राचीन मूर्तियां घने जंगल में अमरित की गईं और धीरे-धीरे लोग यहाँ आने लगे।"
      }
    ],

    "Ashoknagar (अशोकनगर)": [
      {
        "name": "Parmeshwar Pond, Chanderi (परमेश्वर तालाब, चंदेरी)",
        "image": "https://cdn.s3waas.gov.in/s3a5e00132373a7031000fd987a3c9f87b/uploads/bfi_thumb/2019062589-olwawrfka35os2xxmqw25ut8udo8zllji0cb58efia.jpg",
        "description": "Chanderi town is located in Ashoknagar District of Madhya Pradesh on the borders of Bundelkhand & Malwa, known for its historic significance. | चंदेरी नगर मध्य प्रदेश के अशोकनगर जिले में बुंदेलखंड और मालवा की सीमाओं पर स्थित है, और इसका ऐतिहासिक महत्व है।"
      },
      {
        "name": "Anandpur Temple Front (आनंदपुर मंदिर फ़्रंट)",
        "image": "https://cdn.s3waas.gov.in/s3a5e00132373a7031000fd987a3c9f87b/uploads/bfi_thumb/2019062599-olwawrfka35os2xxmqw25ut8udo8zllji0cb58efia.jpg",
        "description": "Anandpur is a village in Isagarh Tehsil in Ashoknagar District, located 42 KM from district headquarters. | आनंदपुर अशोकनगर जिले के इसागढ़ तहसील में स्थित एक गांव है, जिला मुख्यालय से 42 किमी दूर।"
      }
    ],

    "Alirajpur (अलीराजपुर)": [
      {
        "name": "Chandra Shekhar Azad Nagar, Bhabra (चंद्रशेखर आज़ाद नगर, भाबरा)",
        "image": "https://cdn.s3waas.gov.in/s33295c76acbf4caaed33c36b1b5fc2cb1/uploads/bfi_thumb/2019061968-olw7uzu26kw8zedulasgzjzfiip641tz2pr1lz5i4i.jpg",
        "description": "Bhabhra, one of the five tehsils of Alirajpur district, is the birthplace of the famous revolutionary Shri Chandra Shekhar Azad. | भाबरा, अलीराजपुर जिले के पांच तहसीलों में से एक, प्रसिद्ध क्रांतिकारी श्री चंद्रशेखर आज़ाद की जन्मस्थली है।"
      },
      {
        "name": "Kattiwada (कट्टिवाड़ा)",
        "image": "https://cdn.s3waas.gov.in/s33295c76acbf4caaed33c36b1b5fc2cb1/uploads/bfi_thumb/2019062043-olw7v0rwdexjb0chft73k1qw3wkjbqxpeuej3943ya.jpeg",
        "description": "Kattiwada, another tehsil of Alirajpur district, is famous for its natural beauty. | कट्टिवाड़ा, अलीराजपुर जिले की एक अन्य तहसील, अपनी प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      }
    ],

    "Anuppur (अनूपपुर)": [
      {
        "name": "Shree Sarvodaya Jain Temple Amarkantak (श्री सर्वोदय जैन मंदिर अमरकंटक)",
        "image": "https://cdn.s3waas.gov.in/s399c5e07b4d5de9d18c350cdf64c5aa3d/uploads/bfi_thumb/2019080695-e1565087443646-olwam3xetokp76ezu549wjl6h66hr3b21a67cc720y.jpeg",
        "description": "A wonderful, beautiful, huge 24-ton Ashtadhatu statue in the Sri Sarvodaya Digambar Jain Temple. | श्री सर्वोदय दिगंबर जैन मंदिर में अद्भुत, विशाल, 24 टन का अष्टधातु का मंदिर।"
      },
      {
        "name": "Shree Yantra Temple (श्री यंत्र मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s399c5e07b4d5de9d18c350cdf64c5aa3d/uploads/bfi_thumb/2019080386-olwam21qg0i4jyhq54b0rk29aefrbp3ld0v8ds9ude.jpg",
        "description": "The temple features a huge sculpture with 4 heads at the entrance, representing cosmic elements. | मंदिर में प्रवेश द्वार पर 4 सिर वाला विशाल शिल्प है, जो ब्रह्मांडीय तत्वों का प्रतिनिधित्व करता है।"
      },
      {
        "name": "Mai ki Bagiya (माई की बगिया)",
        "image": "https://cdn.s3waas.gov.in/s399c5e07b4d5de9d18c350cdf64c5aa3d/uploads/bfi_thumb/2019070388-olwalyadoocz9in6r2oihl0ewuyagwoo0i9agoff2a.jpg",
        "description": "A natural garden 1 km from Narmada Mandir, also called 'Charanotdak Kund'. | नर्मदा मंदिर से 1 किमी दूर प्राकृतिक बगिया, जिसे 'चरणोत्कदक कुंड' भी कहा जाता है।"
      },
      {
        "name": "Sonmudha (सोनमूधा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s399c5e07b4d5de9d18c350cdf64c5aa3d/uploads/bfi_thumb/2019062877-olwalyadoocz9in6r2oihl0ewuyagwoo0i9agoff2a.jpg",
        "description": "Birthplace of the Sonbhadra tributary of Narmada, 2 km south of Narmada Temple. | नर्मदा मंदिर से 2 किमी दक्षिण में सोनभद्रा नदी का जन्म स्थल, प्राकृतिक जलप्रपात।"
      },
      {
        "name": "Narmada Udgam Temple (नर्मदा उद्गम मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s399c5e07b4d5de9d18c350cdf64c5aa3d/uploads/bfi_thumb/2018030847-olwalsnkmv9iok0gbg8xqk41iemczsv7ei2bb7693e.jpg",
        "description": "Temple at the origin of the Narmada River in the Vindhya and Satpura hills. | विंध्य और सतपुड़ा पहाड़ियों में नर्मदा नदी के उद्गम स्थल पर स्थित मंदिर।"
      }
    ],

    "Niwari (निवाड़ी)": [
      {
        "name": "Orchha City (ओरछा शहर)",
        "image": "https://cdn.s3waas.gov.in/s39766527f2b5d3e95d4a733fcfb77bd7e/uploads/bfi_thumb/2019090645-olwabvgoemkas1a7lpuir4khm4mlxqo9ymfv7vdds2.jpg",
        "description": "Historic town on the banks of river Betwa, founded in the 16th century. Offers adventure, historic, scenic, religious, and recreational experiences. | ऐतिहासिक शहर, जो 16वीं सदी में स्थापित हुआ, बेतवा नदी के किनारे स्थित। रोमांच, ऐतिहासिक, प्राकृतिक, धार्मिक और मनोरंजक अनुभव प्रदान करता है।"
      }
    ],

    "Maihar (मैहर)": [
      {
        "name": "Mukundpur White Tiger Safari (मुखुंदपुर सफेद बाघ सफारी)",
        "image": "https://cdn.s3waas.gov.in/s33435c378bb76d4357324dd7e69f3cd18/uploads/bfi_thumb/2024061889-qpu3izxfcin70ybrdq5x73bdbwc5q005j45ddfllaa.jpg",
        "description": "White tiger safari established after Maharaja Martand Singh captured the first white tiger on May 27, 1951. | महाराजा मार्तंड सिंह ने 27 मई, 1951 को पहला सफेद बाघ पकड़ने के बाद स्थापित सफारी।"
      },
      {
        "name": "Bada Akhara Maihar (बड़ा अखाड़ा मैहर)",
        "image": "https://cdn.s3waas.gov.in/s33435c378bb76d4357324dd7e69f3cd18/uploads/bfi_thumb/2024061857-qpu1dsgnzeybe0h37uq3w2pcrivsh0hv8z2la82qde.jpg",
        "description": "Ancient temple dedicated to Lord Shiva, located in Maihar city. | मैहर शहर में स्थित भगवान शिव को समर्पित प्राचीन मंदिर।"
      },
      {
        "name": "Gola Math Temple (गोला माथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33435c378bb76d4357324dd7e69f3cd18/uploads/bfi_thumb/2024061840-qptzvy9gj192e2oflkxe2nsvv08xl4rcihvdpnwirm.jpg",
        "description": "Ancient stone temple in Maihar city. | मैहर शहर में स्थित प्राचीन पत्थर का मंदिर।"
      },
      {
        "name": "Alha Dev Mandir (आल्हा देव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33435c378bb76d4357324dd7e69f3cd18/uploads/bfi_thumb/2024061462-qpmwwkrol5do468dp8uvojllf27uvia04t4xps9536.jpg",
        "description": "Historic temple located at 600 feet height, dedicated to Sharda Maa. | 600 फीट की ऊंचाई पर स्थित ऐतिहासिक मंदिर, शारदा माता को समर्पित।"
      },
      {
        "name": "Maa Sharda Mata (शारदा माता)",
        "image": "https://cdn.s3waas.gov.in/s33435c378bb76d4357324dd7e69f3cd18/uploads/bfi_thumb/2024031252-ql3pf78djk1cz50tm72rgptwb2fwfhyg6zzh8x6br6.jpg",
        "description": "Goddess of learning, also called Saraswati, provides intelligence, wisdom, and logic. | विद्या की देवी, जिन्हें सरस्वती भी कहा जाता है, बुद्धि, ज्ञान और तर्क प्रदान करती हैं।"
      }
    ],

    "Pandhurna (पंढुरना)": [

      {

        "name": "Ardhnarishwar Jyotirlinga (अर्धनारीश्वर ज्योतिर्लिंग)",

        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpIs4k4MQswmj9k7alRQ1OR-7SQmq__Ct66Q&s",

        "description": "Third Ardhnarishwar Jyotirlinga in Madhya Pradesh along with Mahakaleshwar and Omkareshwar. | मध्य प्रदेश में महाकालेश्वर और ओंकारेश्वर के साथ तीसरा अर्धनारीश्वर ज्योतिर्लिंग।"

      },

      {

        "name": "Jamsawali Hanuman Temple (जमसावली हनुमान मंदिर)",

        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQ6ShGQ47xVgnA_tDR9_R86Jf2wSnrhm9f1gOz2OiHg0PH8EPMtuq3uEX66r-QBD1eb4&usqp=CAU",

        "description": "Located about 25 km from Pandhurna and 65 km from Nagpur. | पंढुरना से लगभग 25 किमी और नागपुर से लगभग 65 किमी दूर स्थित।"

      },

      {

        "name": "Ghogra Waterfall (घोगरा जलप्रपात)",

        "image": "https://cdn.s3waas.gov.in/s342e77b63637ab381e8be5f8318cc28a2/uploads/bfi_thumb/2024031529-ql8iyoh02yd5jo7lq7bzhorme3evwn0jh5d6bvz5ky.jpeg",

        "description": "One of the most attractive waterfalls in Pandhurna district. | पंढुरना जिले के सबसे आकर्षक जलप्रपातों में से एक।"

      }

    ],

    "Mauganj (मऊगंज)": [
      {
        "name": "Bahuti WaterFall (बहूती जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3f7664060cc52bc6f3d620bcedc94a4b6/uploads/bfi_thumb/2023090329-qburfgreu4wlqaninah7anvnynzxq0sq1efmii7bwi.jpg",
        "description": "Bahuti is the highest waterfall in Madhya Pradesh, located on the river Sellar. | बहूती मध्य प्रदेश का सबसे ऊँचा जलप्रपात है, जो सेलर नदी पर स्थित है।"
      },
      {
        "name": "Shiv Temple Deotalab (शिव मंदिर देवतालाब)",
        "image": "https://cdn.s3waas.gov.in/s3f7664060cc52bc6f3d620bcedc94a4b6/uploads/bfi_thumb/2023090349-qbukxt1pxr1lnw201sguz4jnxho7ao6swwbetangn6.png",
        "description": "A huge temple built from a single stone in Devtalab, known for the Malmas Mela. | देवतालाब में एक विशाल मंदिर, एक ही पत्थर से निर्मित, मालमास मेला के लिए प्रसिद्ध।"
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
