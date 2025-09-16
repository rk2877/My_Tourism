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

    "Agra (आगरा)": [
      {
        "name": "Buland Darwaza, Fatehpur Sikri (बुलंद दरवाज़ा, फतेहपुर सीकरी)",
        "image": "https://cdn.s3waas.gov.in/s36855456e2fe46a9d49d3d3af4f57443d/uploads/bfi_thumb/2018021954-olw9eh93liukarshls6oo1xxub85gv3l1c1ueyvwua.jpg",
        "description": "A part of the Agra district, Fatehpur Sikri was a once blooming capital of the Mughal Emperor Akbar till 1585. | आगरा जिले का हिस्सा, फतेहपुर सीकरी कभी मुग़ल सम्राट अकबर की राजधानी थी।"
      },
      {
        "name": "Agra Fort (आगरा किला)",
        "image": "https://cdn.s3waas.gov.in/s36855456e2fe46a9d49d3d3af4f57443d/uploads/bfi_thumb/2018022683-olw9ej4rz6x4xzpraszxt1gv12yvw9b1plctdit4hu.jpg",
        "description": "Agra Fort is a historical fort in the city of Agra in India. It was the main residence of the Mughal emperors. | आगरा किला भारत के आगरा शहर में स्थित एक ऐतिहासिक किला है। यह मुग़ल सम्राटों का मुख्य निवास स्थान था।"
      },
      {
        "name": "Taj Mahal (ताज महल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/ae/c7/8c/caption.jpg?w=800&h=800&s=1",
        "description": "The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. | ताज महल आगरा में यमुना नदी के दक्षिणी किनारे पर स्थित एक श्वेत संगमरमर का मकबरा है।"
        }
      ],

    "Aligarh (अलीगढ़)": [
      {
        "name": "Khereshwar Mandir Main Gate (खेरेश्वर मंदिर मुख्य द्वार)",
        "image": "https://cdn.s3waas.gov.in/s38f85517967795eeef66c225f7883bdcb/uploads/bfi_thumb/2018091741-olwakjj3fmfhukowzgqnqxtiu1wgx935tj12jqioea.jpg",
        "description": "Khereshwar Temple is one of the holiest shrines of the region, situated in Tajpur Rasulpur village. This temple is dedicated to Lord Shiva. | खेरेश्वर मंदिर क्षेत्र के सबसे पवित्र स्थलों में से एक है, जो ताजपुर रासुलपुर गाँव में स्थित है। यह मंदिर भगवान शिव को समर्पित है।"
      }
    ],

    "Ambedkar Nagar (अम्बेडकर नगर)": [
      {
        "name": "NTPC Tanda (एनटीपीसी टांडा)",
        "image": "https://cdn.s3waas.gov.in/s3bd686fd640be98efaae0091fa301e613/uploads/bfi_thumb/2018071752-olwby89ypcg5kiinufxp1wfpaazyt9cczgi2tauhhe.jpg",
        "description": "Tanda Thermal Power Station is located in Ambedkar Nagar district of Uttar Pradesh. The power plant is a coal based power plant of NTPC. | टांडा थर्मल पावर स्टेशन उत्तर प्रदेश के अम्बेडकर नगर जिले में स्थित है। यह एनटीपीसी का कोयला आधारित बिजलीघर है।"
      },
      {
        "name": "Govind Sahab Dham (गोविंद साहब धाम)",
        "image": "https://cdn.s3waas.gov.in/s3bd686fd640be98efaae0091fa301e613/uploads/bfi_thumb/2018071660-olwby7c4iiev8wk0zxj2heo8ox4llk8mnbulc0vvnm.jpg",
        "description": "Govind Sahab Dham, located on the border of Ambedkar Nagar and Azamgarh, is a center of faith. Every year, a month of worship is held here. | गोविंद साहब धाम, अम्बेडकर नगर और आज़मगढ़ की सीमा पर स्थित है और आस्था का प्रमुख केंद्र है। यहाँ हर वर्ष एक माह का पूजन होता है।"
      },
      {
        "name": "Kichhauchha Sharif Dargah (किच्छौछा शरीफ दरगाह)",
        "image": "https://cdn.s3waas.gov.in/s3bd686fd640be98efaae0091fa301e613/uploads/bfi_thumb/2018071638-olwby7c4iiev8wk0zxj2heo8ox4llk8mnbulc0vvnm.jpg",
        "description": "It is known as the dargah of the famous Sufi saint Sayyed Makhdum Shah Jahangir Ashrafi, who was born in Semnan, Iran. | यह प्रसिद्ध सूफी संत सय्यद मखदूम शाह जहांगीर अशरफी की दरगाह के रूप में जानी जाती है। वे ईरान के सेमनान में जन्मे थे।"
      }
    ],

    "Amethi (अमेठी)": [
      {
        "name": "Malik Mohammed Jaysi Mazar (मलिक मोहम्मद जायसी मजार)",
        "image": "https://cdn.s3waas.gov.in/s3cfa0860e83a4c3a763a7e62d825349f7/uploads/bfi_thumb/2023071334-q9cbqdw17nzjitkjzr0ndyg7g4x1qer7647khvcdfm.jpg",
        "description": "Malik Muhammad Jayasi was a Sufi saint of medieval India. He belonged to a place called Jayas. | मलिक मोहम्मद जायसी मध्यकालीन भारत के एक सूफी संत थे। वे जायस नामक स्थान से संबंधित थे।"
      },
      {
        "name": "Nandamahar Dham (नंदमहल धाम)",
        "image": "https://cdn.s3waas.gov.in/s3cfa0860e83a4c3a763a7e62d825349f7/uploads/bfi_thumb/2018083051-olwcepe4ht032gl4n2ba98rk4fskq9qzl05gmwf2f6.jpg",
        "description": "Nandamahar Dham is a famous place in Amethi district. This place is considered the birthplace of Lord Shri Krishna, Lord Shri Balram, and Shri Nand Baba. | नंदमहल धाम अमेठी जिले का एक प्रसिद्ध स्थान है। यह स्थान भगवान श्रीकृष्ण, श्री बलराम और श्री नंदबाबा का जन्मस्थान माना जाता है।"
      },
      {
        "name": "Gadhamafi Dham (गढमाफी धाम)",
        "image": "https://cdn.s3waas.gov.in/s3cfa0860e83a4c3a763a7e62d825349f7/uploads/bfi_thumb/2018083070-olwcepe4ht032gl4n2ba98rk4fskq9qzl05gmwf2f6.jpg",
        "description": "Gadhamafi Dham is located in Madhopur village, around 7 km from Gauriganj. The idols of Lord Hanuman and other deities are worshipped here. | गढमाफी धाम गौरीगंज से लगभग 7 किमी दूर मधोपुर गाँव में स्थित है। यहाँ भगवान हनुमान और अन्य देवी-देवताओं की मूर्तियों की पूजा होती है।"
      }
    ],

    "Amroha (अमरौहा)": [
      {
        "name": "Mazar Shah Vilayat Sahib (मजार शाह विलायत साहिब)",
        "image": "https://cdn.s3waas.gov.in/s349182f81e6a13cf5eaa496d51fea6406/uploads/bfi_thumb/2018050770-1-olw8vkpy5gyyt38zzm0sito7rceeo01x3rqaymwxz6.jpg",
        "description": "The shrine of Shah Vilayat Sahib in Amroha is a revered religious site, attracting devotees and visitors throughout the year. | अमरोहा में शाह विलायत साहिब की मजार एक पूजनीय धार्मिक स्थल है, जहाँ वर्षभर श्रद्धालु और पर्यटक आते हैं।"
      },
      {
        "name": "Vasudev Temple and Tulsi Park (वासुदेव मंदिर और तुलसी पार्क)",
        "image": "https://cdn.s3waas.gov.in/s349182f81e6a13cf5eaa496d51fea6406/uploads/bfi_thumb/2018050866-olw8vohawt443j3jdnnassq24vvvisgugac8vqrdaa.jpg",
        "description": "Vasudev Temple and Tulsi Park is a spiritual and recreational spot in Amroha, known for its cultural and religious significance. | वासुदेव मंदिर और तुलसी पार्क अमरोहा का एक आध्यात्मिक एवं मनोरंजक स्थल है, जो सांस्कृतिक और धार्मिक महत्व के लिए प्रसिद्ध है।"
      }
    ],

    "Auraiya (औरैया)": [
      {
        "name": "Guraiya Temple (गुरैया मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f718499c1c8cef6730f9fd03c8125cab/uploads/bfi_thumb/2018022451-olwds4qlv6nvkasj0xg1v9r4mu6ehayvdn3m3p4t8i.jpg",
        "description": "This temple is famous for its ancient architectural values. This temple of Lord Shiva is built on a square platform. | यह मंदिर अपनी प्राचीन स्थापत्य कला के लिए प्रसिद्ध है। यह भगवान शिव का मंदिर है जो एक वर्गाकार चबूतरे पर बना हुआ है।"
      },
      {
        "name": "Bhagwa Kali Yagya Sthal (भगवा काली यज्ञ स्थल)",
        "image": "https://cdn.s3waas.gov.in/s3f718499c1c8cef6730f9fd03c8125cab/uploads/bfi_thumb/2018022411-olwds4qlv6nvkasj0xg1v9r4mu6ehayvdn3m3p4t8i.jpg",
        "description": "This temple of Devkali is situated on the southern side of the district headquarters of Auraiya and near the banks of the Yamuna river. | यह देवकाली मंदिर औरैया मुख्यालय के दक्षिणी भाग में और यमुना नदी के किनारे स्थित है।"
      },
      {
        "name": "Shivling in Devkali Temple (देवकाली मंदिर का शिवलिंग)",
        "image": "https://cdn.s3waas.gov.in/s3f718499c1c8cef6730f9fd03c8125cab/uploads/bfi_thumb/2018022461-olwds4qlv6nvkasj0xg1v9r4mu6ehayvdn3m3p4t8i.jpg",
        "description": "There is a very old Lord Shiva temple situated near the Yamuna river. Every year a fair is organized in the month of Saavan. | यमुना नदी के किनारे एक बहुत प्राचीन शिव मंदिर स्थित है। यहाँ हर साल सावन माह में मेला आयोजित होता है।"
      },
      {
        "name": "Kamadeva Temple (कामदेव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f718499c1c8cef6730f9fd03c8125cab/uploads/bfi_thumb/2018032346-olwds6ma8uqg7ipspy9b09a1tlx4wp6c1wel2920w2.jpg",
        "description": "This temple is a very old temple of Auraiya. | यह मंदिर औरैया का बहुत पुराना मंदिर है।"
      },
      {
        "name": "Goddess Kali Temple (देवी काली मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f718499c1c8cef6730f9fd03c8125cab/uploads/bfi_thumb/2018022446-olwds4qlv6nvkasj0xg1v9r4mu6ehayvdn3m3p4t8i.jpg",
        "description": "There is a very old Lord Shiva temple situated near the Yamuna river. Every year a fair is organized in the month of Saavan. | यमुना नदी के किनारे एक प्राचीन शिव मंदिर स्थित है। यहाँ हर साल सावन में मेला आयोजित होता है।"
      },
      {
        "name": "Collectorate (कलेक्ट्रेट)",
        "image": "https://cdn.s3waas.gov.in/s3f718499c1c8cef6730f9fd03c8125cab/uploads/bfi_thumb/2018022489-olwds4qlv6nvkasj0xg1v9r4mu6ehayvdn3m3p4t8i.jpg",
        "description": "The Collectorate Headquarters, Kakor is situated on Auraiya-Dibiyapur Road. | कलेक्ट्रेट मुख्यालय, ककोर औरैया-दिबियापुर रोड पर स्थित है।"
      },
      {
        "name": "Bhagwa Kali Temple (भगवा काली मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f718499c1c8cef6730f9fd03c8125cab/uploads/bfi_thumb/2018022450-olwds4qlv6nvkasj0xg1v9r4mu6ehayvdn3m3p4t8i.jpg",
        "description": "Bhagwa Kali Temple is a very old temple and is located close to the Yamuna River. | भगवा काली मंदिर बहुत पुराना मंदिर है और यमुना नदी के पास स्थित है।"
      },
      {
        "name": "Badi Devi Temple (बड़ी देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f718499c1c8cef6730f9fd03c8125cab/uploads/bfi_thumb/2018022481-olwds4qlv6nvkasj0xg1v9r4mu6ehayvdn3m3p4t8i.jpg",
        "description": "This temple is located in the Paddin Darwaza area on Phaphund Road, Auraiya. It is one of the most revered Devi temples in the district. | यह मंदिर औरैया के फफुंद रोड स्थित पड़िन दरवाजा क्षेत्र में स्थित है। यह जिले के सबसे पूजनीय देवी मंदिरों में से एक है।"
      },
      {
        "name": "Devkali Temple (देवकाली मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f718499c1c8cef6730f9fd03c8125cab/uploads/bfi_thumb/2018022447-olwds4qlv6nvkasj0xg1v9r4mu6ehayvdn3m3p4t8i.jpg",
        "description": "The temple of Devkali is situated on the southern side of the district headquarters of Auraiya and near the banks of the river Yamuna. Ancient and spiritually significant. | देवकाली मंदिर औरैया मुख्यालय के दक्षिणी भाग में और यमुना नदी के किनारे स्थित है। यह प्राचीन और धार्मिक दृष्टि से महत्वपूर्ण है।"
      }
    ],

    "Azamgarh (आजमगढ़)": [
      {
        "name": "Temple of Rishi Dattatreya (ऋषि दत्तात्रेय मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s306138bc5af6023646ede0e1f7c1eac75/uploads/bfi_thumb/2023052959-q76d507onnfitk03bsc64dymnhawpfcztimqh8h2bm.jpg",
        "description": "The temple of Rishi Dattatreya is situated at the confluence of Tamsa and Kunwar rivers. A fair is held here every year on the day of Shivaratri. | ऋषि दत्तात्रेय का मंदिर तमसा और कुवार नदियों के संगम पर स्थित है। यहाँ हर साल शिवरात्रि के दिन मेला लगता है।"
      },
      {
        "name": "Tomb of Daulat Ibrahim Khan (दौलत इब्राहिम खान का मकबरा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGc-E8OoFBE2vxhoV1IX4Ggbc_608vBO0HNA&s",
        "description": "Daulat Ibrahim Khan's tomb/fort is a unique example of the architecture and art of that time. It was built by Raja Haribansh Singh. | दौलत इब्राहिम खान का मकबरा/किला उस समय की स्थापत्य कला का अनूठा उदाहरण है। इसे राजा हरिबंश सिंह ने बनवाया था।"
      },
      {
        "name": "Charan Paduka Gurudwara (चरण पादुका गुरुद्वारा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1bpDR5UEs9uZFGvN9XGBh1ThtrC1Ccim904UYT8rlKy6IS9XqtB8OZjEvB8us-9T3xvw&usqp=CAU",
        "description": "Charan Paduka Gurudwara located in Nizamabad is known for its culture and heritage. Many Sikh followers visit here. | निजामाबाद स्थित चरण पादुका गुरुद्वारा अपनी संस्कृति और धरोहर के लिए प्रसिद्ध है। यहाँ अनेक सिख श्रद्धालु आते हैं।"
      },
      {
        "name": "Avantikapuri Dham (अवन्तिकापुरी धाम)",
        "image": "https://cdn.s3waas.gov.in/s306138bc5af6023646ede0e1f7c1eac75/uploads/bfi_thumb/2023052944-q76c2xqzv7bgm3armby44zskjoxqyq8cl3gsrsx2bm.jpg",
        "description": "According to mythology, in Avantikapuri Dham, Janmejaya, the son of King Parikshit, was blessed with the power to kill all snakes. | मान्यता है कि अवन्तिकापुरी धाम में राजा परीक्षित के पुत्र जन्मेजय को समस्त सर्पों को मारने का वरदान मिला था।"
      },
      {
        "name": "Durvasa Rishi Sthal (दुर्वासा ऋषि स्थल)",
        "image": "https://images.news18.com/ibnkhabar/uploads/2024/09/HYP_4647979_cropped_02092024_232225_20240902_211307_watermark__2.jpg",
        "description": "Devotees at Durvasa Rishi Sthal fulfill their wishes by visiting Lord Shiva and Durvasa Rishi. In the month of Shravan, many fairs are held. | दुर्वासा ऋषि स्थल पर श्रद्धालु भगवान शिव और दुर्वासा ऋषि की पूजा कर अपनी मनोकामनाएँ पूरी करते हैं। सावन माह में यहाँ बड़ा मेला लगता है।"
      },
      {
        "name": "Bhairav Baba Temple (भैरव बाबा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s306138bc5af6023646ede0e1f7c1eac75/uploads/bfi_thumb/2023052945-q768pnmo1rakldgsteo1x3kh8wpssnr5kt6eliqr5u.jpg",
        "description": "The huge and very ancient temple of Bhairav Baba is a center of faith. Every year in the month of Jyeshtha, devotees gather here. | भैरव बाबा का विशाल और प्राचीन मंदिर आस्था का प्रमुख केंद्र है। यहाँ हर वर्ष ज्येष्ठ माह में श्रद्धालु एकत्रित होते हैं।"
      }
    ],

    "Baghpat (बागपत)": [
      {
        "name": "Pura Mahadev Temple (पुरा महादेव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f7e6c85504ce6e82442c770f7c8606f0/uploads/bfi_thumb/2018031278-1-olwdtldkhwnxmgo2hk75qwgxweyygcru8vmsz6yrk2.jpg",
        "description": "Pura Mahadev Village is inhabited by the Malik Jats and is situated on a hillock on the banks of the river. It is a famous Shiva temple. | पुरा महादेव गाँव मलिक जाटों द्वारा बसा हुआ है और यह नदी के किनारे टीले पर स्थित है। यह एक प्रसिद्ध शिव मंदिर है।"
      },
      {
        "name": "Trilok Teerth Dham (त्रिलोक तीर्थ धाम)",
        "image": "https://cdn.s3waas.gov.in/s3f7e6c85504ce6e82442c770f7c8606f0/uploads/bfi_thumb/2018031265-olwdtkfqb2mnaupfn1sj6ephb13l8no3wqzbhx05qa.jpg",
        "description": "Trilok Teerth Dham is a Jain temple in Bada Gaon. This temple is built in the shape of the Jain Emblem and is a major center of faith for Jains. | त्रिलोक तीर्थ धाम बड़ा गाँव में स्थित एक जैन मंदिर है। यह मंदिर जैन प्रतीक चिन्ह के आकार में बना है और जैन धर्मावलंबियों के लिए आस्था का प्रमुख केंद्र है।"
      }
    ],

    "Bahraich (बहराइच)": [
      {
        "name": "Maharaja Suheldev Memorial (महाराजा सुहेलदेव स्मारक)",
        "image": "https://cdn.s3waas.gov.in/s3e96ed478dab8595a7dbda4cbcbee168f/uploads/bfi_thumb/2023022765-q2rwlh7rdk8rrdzg39t4k5pperzozye2yffs530uma.jpeg",
        "description": "Maharaja Suheldev was a legendary king of Shravasti, known for defeating and capturing Ghaznavid general Ghazi Miyan in Bahraich in 1034. | महाराजा सुहेलदेव श्रावस्ती के महान राजा थे, जो 1034 में बहराइच में ग़ज़नवी सेनापति ग़ाज़ी मियां को हराने और बंदी बनाने के लिए प्रसिद्ध हैं।"
      },
      {
        "name": "Katarniaghat Wildlife Sanctuary (कतर्नियाघाट वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s3e96ed478dab8595a7dbda4cbcbee168f/uploads/bfi_thumb/2018041846-olwdcncbafgubja6fqiaaoesdchqosi1l08oim39qa.jpg",
        "description": "Katarniaghat Wildlife Sanctuary is a protected area in the Upper Gangetic Plain in Bahraich district of Uttar Pradesh. It is home to rich biodiversity including deer, tigers, gharials, and migratory birds. | कतर्नियाघाट वन्यजीव अभयारण्य उत्तर प्रदेश के बहराइच जिले में स्थित ऊपरी गंगा मैदानी क्षेत्र का एक संरक्षित क्षेत्र है। यहाँ हिरण, बाघ, घड़ियाल और प्रवासी पक्षियों सहित समृद्ध जैव विविधता पाई जाती है।"
      }
    ],

    "Ballia (बलिया)": [
      {
        "name": "Dadri Mela (ददरी मेला)",
        "image": "https://cdn.s3waas.gov.in/s32b44928ae11fb9384c4cf38708677c48/uploads/bfi_thumb/2018072046-olw7vwqets5a9r22970ewtokb070lggkv8l1ensq2q.jpeg",
        "description": "Dadri Mela is the second largest cattle fair of India, held about 5 km from Ballia town. The fair attracts thousands of visitors every year for cultural programs, trade, and rides. | ददरी मेला भारत का दूसरा सबसे बड़ा पशु मेला है, जो बलिया नगर से लगभग 5 किमी दूर आयोजित होता है। यह मेला हर वर्ष सांस्कृतिक कार्यक्रमों, व्यापार और झूलों के लिए हजारों लोगों को आकर्षित करता है।"
      }
    ],

    "Balrampur (बलरामपुर)": [
      {
        "name": "Jai Prabha Gram (जय प्रभा ग्राम)",
        "image": "https://cdn.s3waas.gov.in/s39dcb88e0137649590b755372b040afad/uploads/bfi_thumb/2018022137-olwas6xt22wicbkvb9scjibkvy70kkgije6c5t6br6.png",
        "description": "Jai Prabha Gram is one of the known sites in Balrampur district, reflecting rural and cultural lifestyle. | जय प्रभा ग्राम बलरामपुर जिले का एक प्रसिद्ध स्थल है, जो ग्रामीण और सांस्कृतिक जीवनशैली को दर्शाता है।"
      },
      {
        "name": "Koilabas (कोइलाबास)",
        "image": "https://cdn.s3waas.gov.in/s39dcb88e0137649590b755372b040afad/uploads/bfi_thumb/2018021758-olwas524oetxp3nlm8z3eisnp6ga5691v4vd79943m.jpg",
        "description": "Koilabas is a notable location in Balrampur, popular for its local trade and cultural activities. | कोइलाबास बलरामपुर का एक प्रमुख स्थल है, जो स्थानीय व्यापार और सांस्कृतिक गतिविधियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Bijlipur Temple (बिजलीपुर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s39dcb88e0137649590b755372b040afad/uploads/bfi_thumb/2018021775-olwas524oetxp3nlm8z3eisnp6ga5691v4vd79943m.jpg",
        "description": "Bijlipur Temple was built by the erstwhile Maharaja of Balrampur in the 19th century. It is a well-known religious site of the district. | बिजलीपुर मंदिर का निर्माण 19वीं शताब्दी में बलरामपुर के तत्कालीन महाराजा द्वारा किया गया था। यह जिले का एक प्रसिद्ध धार्मिक स्थल है।"
      },
      {
        "name": "Devi Patan Temple (देवी पाटन मंदिर, तुलसीपुर)",
        "image": "https://cdn.s3waas.gov.in/s39dcb88e0137649590b755372b040afad/uploads/bfi_thumb/2018021751-1-olwas524oetxp3nlm8z3eisnp6ga5691v4vd79943m.jpg",
        "description": "Devi Patan Temple in Tulsipur is around 25 km from the district headquarters and is one of the most revered temples of the region. | तुलसीपुर का देवी पाटन मंदिर जिला मुख्यालय से लगभग 25 किमी दूर स्थित है और क्षेत्र के सबसे पूजनीय मंदिरों में से एक है।"
      },
      {
        "name": "Suhaildev Wildlife Sanctuary (सुहैलदेव वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s39dcb88e0137649590b755372b040afad/uploads/bfi_thumb/2018021756-olwas524oetxp3nlm8z3eisnp6ga5691v4vd79943m.jpg",
        "description": "Suhaildev Wildlife Sanctuary is a protected area in Balrampur, known for its biodiversity and natural beauty. | सुहैलदेव वन्यजीव अभयारण्य बलरामपुर में स्थित एक संरक्षित क्षेत्र है, जो अपनी जैव विविधता और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      }
    ],

    "Banda (बांदा)": [
      {
        "name": "Maheshwari Devi Temple (महेश्वरी देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s326657d5ff9020d2abefe558796b99584/uploads/bfi_thumb/2018022214-olw7ed2v944ljsjkplz4d92t42ocwusyge6qwpta82.jpg",
        "description": "Located in the Chowk of Banda city, this temple is one of the Goddess Shakti Peethas, where Maheshwari appeared as a divine form. | बांदा शहर के चौक में स्थित यह मंदिर देवी शक्ति पीठों में से एक है, जहाँ महेश्वरी देवी का दिव्य रूप प्रकट हुआ था।"
      },
      {
        "name": "Nawab Tank (नवाब टैंक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJcSyCd_6qQhyGTxXed6_3lurvqE0tYvH_zg&s",
        "description": "Nawab Tank, located about 3 km south of Banda city, was built by the Nawab of Banda and is a popular scenic spot. | नवाब टैंक बांदा शहर से लगभग 3 किमी दक्षिण में स्थित है। इसे बांदा के नवाब ने बनवाया था और यह एक लोकप्रिय दर्शनीय स्थल है।"
      },
      {
        "name": "Kalinjar Fort (कालिंजर किला)",
        "image": "https://cdn.s3waas.gov.in/s326657d5ff9020d2abefe558796b99584/uploads/bfi_thumb/2018020950-olw7er6g3mnwdxz3fa2iwniq0uqv4bcxibz13v8dmq.jpg",
        "description": "Kalinjar Fort, situated on a hilltop, is a historic site containing monuments, idols, and inscriptions that reflect ancient glory. | पहाड़ी की चोटी पर स्थित कालिंजर किला एक ऐतिहासिक स्थल है, जिसमें प्राचीन गौरव को दर्शाने वाले स्मारक, मूर्तियाँ और शिलालेख हैं।"
      },
      {
        "name": "Bhuragarh Fort (भुरागढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s326657d5ff9020d2abefe558796b99584/uploads/bfi_thumb/2018022238-olw7ed2v944ljsjkplz4d92t42ocwusyge6qwpta82.gif",
        "description": "Across the Ken river lie the ruins of Bhuragarh Fort, believed to be built with brown stones by Raja Guman Singh. | केन नदी के पार भुरागढ़ किले के खंडहर हैं, जिन्हें राजा गु्मान सिंह द्वारा भूरे पत्थरों से बनवाया गया माना जाता है।"
      },
      {
        "name": "Bamdev Temple (बामदेव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s326657d5ff9020d2abefe558796b99584/uploads/bfi_thumb/2018022293-olw7ee0pfy5vvei7k4dqxqu9pgjq4jwosiu8dzrw1u.jpg",
        "description": "Bamdev Temple is named after Rishi Bamdeo, a sage mentioned in Hindu mythology as a contemporary of Lord Rama. | बामदेव मंदिर का नाम ऋषि बामदेव के नाम पर रखा गया है, जिनका उल्लेख हिन्दू पौराणिक कथाओं में भगवान राम के समकालीन ऋषि के रूप में किया गया है।"
      }
    ],

    "Barabanki (बाराबंकी)": [
      {
        "name": "Parijata Tree (पारिजात वृक्ष)",
        "image": "https://cdn.s3waas.gov.in/s3705f2172834666788607efbfca35afb3/uploads/bfi_thumb/2018032878-olw9md4cxhn5p0c5k6w0l2b58od01geisd2hcj70n6.jpg",
        "description": "Located in Kintur village, about 38 km east of Barabanki, the Parijata tree is associated with Kunti, the mother of the Pandavas. | किंतूर गाँव (बाराबंकी से लगभग 38 किमी पूर्व) में स्थित पारिजात वृक्ष का संबंध पांडवों की माता कुंती से बताया जाता है।"
      },
      {
        "name": "Deva Sharif (देवा शरीफ)",
        "image": "https://cdn.s3waas.gov.in/s3705f2172834666788607efbfca35afb3/uploads/bfi_thumb/2018030362-olw9moef7i2lkbvrqbrjezgodateltnatwwb3uqaki.jpg",
        "description": "Deva Sharif, located 42 km from Lucknow in Barabanki, is a famous pilgrimage site in the heart of the Awadh region. | बाराबंकी में लखनऊ से 42 किमी दूर स्थित देवा शरीफ अवध क्षेत्र के हृदय में स्थित एक प्रसिद्ध तीर्थस्थल है।"
      },
      {
        "name": "Mahadeva Temple (महादेवा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3705f2172834666788607efbfca35afb3/uploads/bfi_thumb/2018021799-olw9mlkwmzyqlhzv6sjnpi6al57ayqc3tixuo0uh36.jpg",
        "description": "Mahadeva Temple is a renowned Shiva shrine in Barabanki, where devotees gather in large numbers during Shravan with chants of Bam-Bam-Bhole. | महादेवा मंदिर बाराबंकी का प्रसिद्ध शिव धाम है, जहाँ श्रावण मास में 'बम-बम भोले' के जयकारों के बीच भक्त बड़ी संख्या में पहुँचते हैं।"
      },
      {
        "name": "Kotwa Dham Mandir (कोटवा धाम मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3705f2172834666788607efbfca35afb3/uploads/bfi_thumb/2018032830-olw9mngl0o1b8px4vtcwuhp7rwy1e4jkhs8tmkroqq.jpg",
        "description": "Kotwa Dham Mandir in Barabanki is a historical and religious site, earlier known as Sidhpura, later becoming Sidhour. | कोटवा धाम मंदिर बाराबंकी का एक ऐतिहासिक और धार्मिक स्थल है, जिसे पहले सिधपुरा कहा जाता था और बाद में सिधौर नाम पड़ा।"
      }
    ],

    "Bareilly (बरेली)": [
      {
        "name": "Kargil Memorial (कारगिल मेमोरियल)",
        "image": "https://cdn.s3waas.gov.in/s31d7f7abc18fcb43975065399b0d1e48e/uploads/bfi_thumb/2018022362-olw77v11zd878vzjoat0me5174pyo7zsk7quetgb9e.jpg",
        "description": "Kargil Memorial at Kargil Chowk is dedicated to the soldiers who fought in the Kargil War between India and Pakistan in 1999. | कारगिल चौक स्थित कारगिल मेमोरियल 1999 में भारत और पाकिस्तान के बीच हुए कारगिल युद्ध में शहीद हुए सैनिकों को समर्पित है।"
      },
      {
        "name": "Ala Hazrat Dargah (आला हज़रत दरगाह)",
        "image": "https://cdn.s3waas.gov.in/s31d7f7abc18fcb43975065399b0d1e48e/uploads/bfi_thumb/2018022349-olw77lmo30vc0sd776qqxgif9a0aj8yh6x7zm1u8zm.jpg",
        "description": "Ala Hazrat Dargah is the shrine of Ahmad Raza Khan Barelawi (1856–1921), a renowned Islamic scholar and jurist. | आला हज़रत दरगाह प्रसिद्ध इस्लामिक विद्वान और फकीह अहमद रज़ा खान बरेलवी (1856–1921) की दरगाह है।"
      },
      {
        "name": "Ahichhatra Temple (अहिच्छत्र मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMf6uESNm3Jb4eqCyyXMydQCCT_2C-EM3dxPHAnOG9z_61MlJEUWmFjq9IJ3AZ9jJsxik&usqp=CAU",
        "description": "Ahichhatra was the ancient capital of North Panchala, a Mahabharata-era kingdom. Excavations reveal remains of the historic city. | अहिच्छत्र प्राचीन काल में उत्तर पांचाल की राजधानी थी, जिसका उल्लेख महाभारत में है। यहाँ उत्खनन में प्राचीन नगर के अवशेष मिले हैं।"
      },
      {
        "name": "Rani Lakshmi Bai Memorial (रानी लक्ष्मीबाई स्मारक)",
        "image": "https://cdn.s3waas.gov.in/s31d7f7abc18fcb43975065399b0d1e48e/uploads/bfi_thumb/2018022381-1-olw77v11zd878vzjoat0me5174pyo7zsk7quetgb9e.jpg",
        "description": "A memorial in Bareilly dedicated to Rani Lakshmi Bai, the brave queen who fought against the British and attained martyrdom. | बरेली में रानी लक्ष्मीबाई को समर्पित स्मारक है, जो अंग्रेजों से युद्ध में वीरगति को प्राप्त हुईं।"
      },
      {
        "name": "Collectorate (कलेक्टरेट, बरेली)",
        "image": "https://cdn.s3waas.gov.in/s31d7f7abc18fcb43975065399b0d1e48e/uploads/bfi_thumb/2018022375-olw77lmo30vc0sd776qqxgif9a0aj8yh6x7zm1u8zm.jpg",
        "description": "The Collectorate building in Bareilly is a fine example of Anglo-Indian architecture, built during the British era when Bareilly became a district. | बरेली का कलेक्टरेट भवन अंग्रेजी शासनकाल में जिले का दर्जा मिलने पर बना था और यह एंग्लो-इंडियन स्थापत्य कला का सुंदर उदाहरण है।"
      },
      {
        "name": "Fun City Amusement Park (फन सिटी मनोरंजन पार्क)",
        "image": "https://cdn.s3waas.gov.in/s31d7f7abc18fcb43975065399b0d1e48e/uploads/bfi_thumb/2018022381-olw77v11zd878vzjoat0me5174pyo7zsk7quetgb9e.jpg",
        "description": "Fun City Amusement Park and Boond, located on Pilibhit bypass road, are among the largest amusement and water parks in Uttar Pradesh. | पिलिभीत बाईपास रोड पर स्थित फन सिटी मनोरंजन पार्क और बूंद उत्तर प्रदेश के सबसे बड़े मनोरंजन और वाटर पार्कों में से हैं।"
      }
    ],

    "Basti (बस्ती)": [
      {
        "name": "Makhauda Dham (मखौड़ा धाम)",
        "image": "https://cdn.s3waas.gov.in/s3b83aac23b9528732c23cc7352950e880/uploads/bfi_thumb/2018070383-olwbqw5bcweky36borrj3936d15tqb7sb56myjq41u.jpg",
        "description": "Makhauda Dham is one of the most ancient places of Harraiya tehsil in Basti, where Raja Dashrath performed yagya with the help of Rishi Shringi. | मखौड़ा धाम हरैया तहसील का प्राचीन स्थल है, जहाँ राजा दशरथ ने ऋषि श्रंगी की सहायता से यज्ञ किया था।"
      },
      {
        "name": "Shringinari Temple (श्रृंगीनारी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b83aac23b9528732c23cc7352950e880/uploads/bfi_thumb/2018070377-olwbqv7h62damh7ou9cwirbprnagim41z0j5h9ri82.jpg",
        "description": "Shringinari Temple is located about 5 km from Karmiya. It is an ancient temple where devotees gather every Tuesday for worship. | श्रृंगीनारी मंदिर कर्मिया से लगभग 5 किमी दूर स्थित है। यह एक प्राचीन मंदिर है, जहाँ प्रत्येक मंगलवार को भक्त पूजा करने आते हैं।"
      },
      {
        "name": "Chhawani Shaheed Smarak (छावनी शहीद स्मारक)",
        "image": "https://cdn.s3waas.gov.in/s3b83aac23b9528732c23cc7352950e880/uploads/bfi_thumb/2018070381-e1533275072816-olwbqw5bcweky36borrj3936d15tqb7sb56myjq41u.jpg",
        "description": "Chhawani is a historic place near Amorha in Basti, known as a site of India's freedom struggle, where many revolutionaries were martyred. | छावनी, बस्ती जिले में अमोढ़ा के पास स्थित एक ऐतिहासिक स्थल है, जो भारत के स्वतंत्रता संग्राम का केंद्र रहा है और जहाँ कई क्रांतिकारी शहीद हुए थे।"
      },
      {
        "name": "Bhadeshwar Nath Temple (भदेश्वर नाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b83aac23b9528732c23cc7352950e880/uploads/bfi_thumb/2018070329-olwbqu9mz8c0av91zqy9y9k969f3ax0bmvvnzzswea.jpg",
        "description": "Bhadeshwar Nath is a famous Shiva temple located 5–6 km from the district headquarters on the bank of the Kuwana river. | भदेश्वर नाथ मंदिर जिले के मुख्यालय से 5–6 किमी दूर कुआना नदी के किनारे स्थित प्रसिद्ध शिव मंदिर है।"
      },
      {
        "name": "Kateshwar Park (कातेश्वर पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3b83aac23b9528732c23cc7352950e880/uploads/bfi_thumb/2018070354-olwbqv7h62damh7ou9cwirbprnagim41z0j5h9ri82.jpg",
        "description": "Kateshwar Park in Gandhi Nagar, Basti, is a beautiful park maintained by Nagar Palika Parishad, where cultural events and celebrations are held. | गांधी नगर, बस्ती में स्थित कातेश्वर पार्क नगर पालिका परिषद द्वारा संरक्षित एक सुंदर पार्क है, जहाँ सांस्कृतिक कार्यक्रम और उत्सव आयोजित होते हैं।"
      },
      {
        "name": "Rashtriya Van Chetna Kendra (Sant Ravidas Van Vihar) (राष्ट्रीय वन चेतना केंद्र - संत रविदास वन विहार)",
        "image": "https://cdn.s3waas.gov.in/s3b83aac23b9528732c23cc7352950e880/uploads/bfi_thumb/2018070335-olwbqv7h62damh7ou9cwirbprnagim41z0j5h9ri82.jpg",
        "description": "Van Vihar is situated on the bank of the Kuwana river near Ganeshpur village. It is a center of eco-awareness and natural beauty. | वन विहार गनेशपुर गाँव के पास कुआना नदी के किनारे स्थित है। यह पर्यावरण चेतना और प्राकृतिक सुंदरता का केंद्र है।"
      }
    ],

    "Bijnor (बिजनौर)": [
      {
        "name": "Daranagar (दारानगर)",
        "image": "https://cdn.s3waas.gov.in/s3ac1dd209cbcc5e5d1c6e28598e8cbbe8/uploads/bfi_thumb/2018022078-olwblfp1oixnjl3ojwui44nu7i241kjvw4u5npte6a.jpg",
        "description": "Bijnor is surrounded by many tourist attractions which can be reached via roadways or railways. Daranagar is one such notable site. | बिजनौर कई दर्शनीय स्थलों से घिरा हुआ है, जिन्हें सड़क मार्ग या रेलमार्ग से पहुँचा जा सकता है। दारानगर ऐसा ही एक प्रमुख स्थल है।"
      },
      {
        "name": "Najibabad Fort (नजीबाबाद किला)",
        "image": "https://cdn.s3waas.gov.in/s3ac1dd209cbcc5e5d1c6e28598e8cbbe8/uploads/bfi_thumb/2018022029-olwbler7howd7z51pefvjmwdm46qtvg5k06o6fusci.jpg",
        "description": "Najibabad, also known as the Gateway of Himalayas, was founded by Nawab Najib-ud-Daulah. The fort here is an important historical site. | नजीबाबाद, जिसे हिमालय का प्रवेश द्वार भी कहा जाता है, की स्थापना नवाब नजीबुद्दौला ने की थी। यहाँ का किला एक महत्वपूर्ण ऐतिहासिक स्थल है।"
      },
      {
        "name": "Vidur Kuti Temple (विदुर कुटी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ac1dd209cbcc5e5d1c6e28598e8cbbe8/uploads/bfi_thumb/2018022038-olwbler7howd7z51pefvjmwdm46qtvg5k06o6fusci.jpg",
        "description": "Vidur Kuti Temple, located on the banks of the Ganga about 11 km from Bijnor, is a site of great mythological importance from the Mahabharata era. | गंगा नदी के किनारे बिजनौर से लगभग 11 किमी दूर स्थित विदुर कुटी मंदिर महाभारत काल का अत्यंत पौराणिक महत्व वाला स्थल है।"
      },
      {
        "name": "Indra Park (इंद्रा पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3ac1dd209cbcc5e5d1c6e28598e8cbbe8/uploads/bfi_thumb/2018022079-olwblfp1oixnjl3ojwui44nu7i241kjvw4u5npte6a.jpg",
        "description": "Indra Park in Bijnor is a recreational destination for families and friends to spend quality time together. | बिजनौर का इंद्रा पार्क परिवार और मित्रों के साथ समय बिताने के लिए एक मनोरंजन स्थल है।"
      },
      {
        "name": "Najibabad Sultana Fort (नजीबाबाद सुल्ताना किला)",
        "image": "https://cdn.s3waas.gov.in/s3ac1dd209cbcc5e5d1c6e28598e8cbbe8/uploads/bfi_thumb/2018022029-1-olwbldtdauv2wd6euw18z54x0qbdm6cf7vj6p5w6iq.jpg",
        "description": "Najibabad Sultana Fort was built by Ghulam Qadir alias Najib-ud-Daulah and holds historical significance in Bijnor district. | नजीबाबाद सुल्ताना किला ग़ुलाम कादिर उर्फ नजीबुद्दौला द्वारा बनवाया गया था और यह बिजनौर जिले का ऐतिहासिक महत्व रखता है।"
      },
      {
        "name": "Dargah Aaliya Najaf-E-Hind (दरगाह आलिया नजफ़-ए-हिंद, जोगीपुरा नजीबाबाद)",
        "image": "https://cdn.s3waas.gov.in/s3ac1dd209cbcc5e5d1c6e28598e8cbbe8/uploads/bfi_thumb/2018022078-1-olwblfp1oixnjl3ojwui44nu7i241kjvw4u5npte6a.jpg",
        "description": "Dargah Aaliya Najaf-E-Hind in Jogipura, Najibabad, is associated with Syed Allaouddin Bukhari, a Dewan during the reign of Shah Jahan. | नजीबाबाद के जोगीपुरा में स्थित दरगाह आलिया नजफ़-ए-हिंद का संबंध सैयद अल्लाउद्दीन बुख़ारी से है, जो शाहजहाँ के शासनकाल में दीवान थे।"
      }
    ],

    "Bulandshahr (बुलंदशहर)": [
      {
        "name": "Khurja Devi Temple (खुर्जा देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3091d584fced301b442654dd8c23b3fc9/uploads/bfi_thumb/2023102039-qe4t5qi8c8i7oq6x6v4hhkwbr7wuvohcb6bml7bjeq.jpg",
        "description": "Khurja Devi Temple, located in Khurja Tehsil, is the main center of faith for the local people. | खुर्जा तहसील में स्थित खुर्जा देवी मंदिर स्थानीय लोगों का मुख्य आस्था केंद्र है।"
      },
      {
        "name": "Khurja Pottery Industry (खुर्जा पॉटरी उद्योग)",
        "image": "https://cdn.s3waas.gov.in/s3091d584fced301b442654dd8c23b3fc9/uploads/bfi_thumb/2023102037-qe4skfhxffc8ix51lnkwyyg70sxcenwddpzezewsg2.jpg",
        "description": "The crockery items of Khurja Pottery Industry are famous not only in India but also abroad. | खुर्जा पॉटरी उद्योग की क्रॉकरी भारत ही नहीं बल्कि विदेशों में भी प्रसिद्ध है।"
      },
      {
        "name": "Children Park (चिल्ड्रन पार्क, गंगानगर कॉलोनी)",
        "image": "https://cdn.s3waas.gov.in/s3091d584fced301b442654dd8c23b3fc9/uploads/bfi_thumb/2023102034-qe4nqjct2taknxq90hllou6aqm0sehk1h15mskqrk2.jpg",
        "description": "Children’s Park in Ganga Nagar Colony is a special attraction for children. | गंगानगर कॉलोनी में स्थित चिल्ड्रन पार्क बच्चों के लिए विशेष आकर्षण का केंद्र है।"
      },
      {
        "name": "Kala Aam Chauraha (काला आम चौराहा)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Kaala_Aam_Chauraha.jpg/962px-Kaala_Aam_Chauraha.jpg",
        "description": "Kala Aam Chauraha is situated in the heart of Bulandshahr city and is a well-known landmark. | काला आम चौराहा बुलंदशहर शहर के बीचोंबीच स्थित एक प्रसिद्ध स्थल है।"
      },
      {
        "name": "Kuchesar Fort (कुचेसर किला)",
        "image": "https://cdn.s3waas.gov.in/s3091d584fced301b442654dd8c23b3fc9/uploads/bfi_thumb/2018103112-olw6sfifsa3qncegs4oi6sbm4es1b3qffu6vsabzeq.jpg",
        "description": "Also known as Rao Raj Vilas, Kuchesar Fort is an 18th century fort and a heritage site. | राव राज विलास के नाम से प्रसिद्ध कुचेसर किला 18वीं शताब्दी का किला और एक विरासत स्थल है।"
      },
      {
        "name": "Baran Tower & Malka Park (बारन टॉवर और मलकापार्क)",
        "image": "https://cdn.s3waas.gov.in/s3091d584fced301b442654dd8c23b3fc9/uploads/bfi_thumb/2018103178-olw6sfifsa3qncegs4oi6sbm4es1b3qffu6vsabzeq.jpg",
        "description": "The Clock Tower (Baran Tower) is located in the middle of Bulandshahr, and Malka Park is nearby. | बुलंदशहर के बीचोंबीच बारन टॉवर (घड़ी टॉवर) स्थित है और इसके पास ही मलका पार्क है।"
      }
    ],

    "Chandauli (चंदौली)": [
      {
        "name": "Devdari Waterfall (देवदारी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3555d6702c950ecb729a966504af0a635/uploads/bfi_thumb/2018021668-olw8msw6d4ymg3zr7ti591dc5vn2tp83wcj5pnx81u.jpg",
        "description": "Devdari Waterfall, along with Rajdari, is located in Chandraprabha Wildlife Sanctuary. The sanctuary was established to conserve Asiatic lions. | देवदारी जलप्रपात, राजदारी के साथ, चंद्रप्रभा वन्यजीव अभयारण्य में स्थित है। यह अभयारण्य एशियाई शेरों को संरक्षित करने के लिए स्थापित किया गया था।"
      },
      {
        "name": "Latif Shah Dam (लतीफ शाह बाँध)",
        "image": "https://cdn.s3waas.gov.in/s3555d6702c950ecb729a966504af0a635/uploads/bfi_thumb/2018021613-1-olw8mryc6axc4i14db3iojlvkhrpm04dk7vo8dym82.jpg",
        "description": "Latif Shah Dam, completed in 1921, is one of the oldest dams in India. | 1921 में पूर्ण हुआ लतीफ शाह बाँध भारत के सबसे पुराने बाँधों में से एक है।"
      },
      {
        "name": "Tomb of Latif Shah (लतीफ शाह मकबरा)",
        "image": "https://cdn.s3waas.gov.in/s3555d6702c950ecb729a966504af0a635/uploads/bfi_thumb/2018021634-olw8mryc6axc4i14db3iojlvkhrpm04dk7vo8dym82.jpg",
        "description": "The tomb belongs to Sufi saint Hazrat Latif Shah Bir Rahmatullah and is an important religious site. | यह मकबरा सूफी संत हज़रत लतीफ शाह बीर रहमतुल्लाह का है और एक महत्वपूर्ण धार्मिक स्थल है।"
      },
      {
        "name": "Rajdari Waterfall (राजदारी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3555d6702c950ecb729a966504af0a635/uploads/bfi_thumb/2018021674-olw8msw6d4ymg3zr7ti591dc5vn2tp83wcj5pnx81u.jpg",
        "description": "Rajdari Waterfall, along with Devdari, is located in Chandraprabha Wildlife Sanctuary. It is a popular tourist spot. | राजदारी जलप्रपात, देवदारी के साथ, चंद्रप्रभा वन्यजीव अभयारण्य में स्थित है और एक प्रसिद्ध पर्यटन स्थल है।"
      }
    ],

    "Chitrakoot (चित्रकूट)": [
      {
        "name": "Rajapur (राजापुर)",
        "image": "https://cdn.s3waas.gov.in/s33b8a614226a953a8cd9526fca6fe9ba5/uploads/bfi_thumb/2018021858-olw8731d12w769gaicigsi4kepf3r4jhf5kye76vb2.jpg",
        "description": "38 km from Chitrakoot Dham Railway Station, Rajapur is the birthplace of Goswami Tulsidas. | चित्रकूट धाम रेलवे स्टेशन से 38 किमी दूर, राजापुर गोस्वामी तुलसीदास का जन्मस्थान है।"
      },
      {
        "name": "Sati Anasuya (सती अनसूया आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s33b8a614226a953a8cd9526fca6fe9ba5/uploads/bfi_thumb/2018021730-olw8723iu8uwunhnnu3u80d3tbjqjffr30xgwx89ha.jpg",
        "description": "The ashram where Atri Muni, his wife Anasuya and their three sons meditated. | वह आश्रम जहाँ अत्रि मुनि, उनकी पत्नी अनसूया और उनके तीनों पुत्रों ने तप किया।"
      },
      {
        "name": "Gupt Godavari (गुप्त गोदावरी)",
        "image": "https://cdn.s3waas.gov.in/s33b8a614226a953a8cd9526fca6fe9ba5/uploads/bfi_thumb/2018021744-olw8723iu8uwunhnnu3u80d3tbjqjffr30xgwx89ha.jpg",
        "description": "A tiny rivulet that flows into tanks at the end of caves, considered sacred. | एक छोटी धारा जो गुफाओं के अंत में तालाबों में मिलती है और पवित्र मानी जाती है।"
      },
      {
        "name": "Ganeshbagh (गणेश बाग)",
        "image": "https://cdn.s3waas.gov.in/s33b8a614226a953a8cd9526fca6fe9ba5/uploads/bfi_thumb/2018021879-olw8731d12w769gaicigsi4kepf3r4jhf5kye76vb2.jpg",
        "description": "Located 5 km from Railway Station on Karvi-Devangana road, famous for its temples and gardens. | करवी-देवांगना रोड पर स्थित, रेलवे स्टेशन से 5 किमी दूर, अपने मंदिरों और बाग के लिए प्रसिद्ध।"
      },
      {
        "name": "Bharat Koop (भरत कूप)",
        "image": "https://cdn.s3waas.gov.in/s33b8a614226a953a8cd9526fca6fe9ba5/uploads/bfi_thumb/2018021787-olw8723iu8uwunhnnu3u80d3tbjqjffr30xgwx89ha.jpg",
        "description": "Considered essential for salvation, no pilgrimage to Chitrakoot is complete without visiting Bharat Koop. | मोक्ष की प्राप्ति के लिए महत्वपूर्ण, चित्रकूट की यात्रा भरत कूप के दर्शन के बिना अधूरी मानी जाती है।"
      },
      {
        "name": "Sitapur (सीतापुर)",
        "image": "https://cdn.s3waas.gov.in/s33b8a614226a953a8cd9526fca6fe9ba5/uploads/bfi_thumb/2018021850-olw8723iu8uwunhnnu3u80d3tbjqjffr30xgwx89ha.jpg",
        "description": "Located on the left bank of river Payaswani, 8 km from Karvi. | करवी से 8 किमी दूर पयस्वनी नदी के बाएँ तट पर स्थित।"
      },
      {
        "name": "Kalinjar Fort (कालिंजर किला)",
        "image": "https://cdn.s3waas.gov.in/s33b8a614226a953a8cd9526fca6fe9ba5/uploads/bfi_thumb/2018021838-olw8723iu8uwunhnnu3u80d3tbjqjffr30xgwx89ha.jpg",
        "description": "88 km from Chitrakoot, the invincible fort of Kalinjar was once highly desired by rulers. | चित्रकूट से 88 किमी दूर स्थित कालिंजर का अभेद्य किला, जिसे शासकों ने प्राप्त करने की इच्छा की थी।"
      },
      {
        "name": "Kamtanath Temple (कामतानाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33b8a614226a953a8cd9526fca6fe9ba5/uploads/bfi_thumb/2018021878-olw86yc62wprk7n49shby1b9fs29on0tqibiztdu66.jpg",
        "description": "Kamadgiri is the main holy place of Chitrakoot Dham. The Sanskrit word Kamadgiri means 'mountain which fulfills desires'. | कामदगिरि चित्रकूट धाम का मुख्य पवित्र स्थल है। संस्कृत में कामदगिरि का अर्थ है 'इच्छाएँ पूर्ण करने वाला पर्वत'।"
      },
      {
        "name": "Dharkundi (धरकुंडी आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s33b8a614226a953a8cd9526fca6fe9ba5/uploads/bfi_thumb/2018021891-olw86yc62wprk7n49shby1b9fs29on0tqibiztdu66.jpg",
        "description": "Located about 50 km from Chitrakoot amidst forests, Dharkundi is a sacred ashram and spiritual site. | चित्रकूट से लगभग 50 किमी दूर वनों के बीच स्थित धरकुंडी एक पवित्र आश्रम और आध्यात्मिक स्थल है।"
      }
    ],

    "Deoria (देवरिया)": [
      {
        "name": "Sri Tirupati Balaji Temple (श्री तिरुपति बालाजी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s39872ed9fc22fc182d371c3e9ed316094/uploads/bfi_thumb/2019010766-olwaq3qpvc1kjim3ida701apd4hngs5zl1zhro9tky.jpg",
        "description": "Located on Deoria-Kasya road, Shri Tirupati Balaji Temple is an important temple of Deoria. | देवरिया-कसया रोड पर स्थित, श्री तिरुपति बालाजी मंदिर देवरिया का एक महत्वपूर्ण मंदिर है।"
      },
      {
        "name": "Devraha Baba Ashram (देवराहा बाबा आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s39872ed9fc22fc182d371c3e9ed316094/uploads/bfi_thumb/2018040664-1-olwaovkay4d3due9oc6q8ug1g0jef0alqzbo7o3bpe.jpg",
        "description": "Situated on the banks of river Saryu in village Mail, Tehsil Barhaj, this ashram is dedicated to Devraha Baba, one of the most revered saints in Indian history. | सरयू नदी के किनारे, ग्राम मैल, तहसील बरहज में स्थित यह आश्रम देवराहा बाबा को समर्पित है, जो भारतीय इतिहास के सबसे पूज्य संतों में से एक थे।"
      },
      {
        "name": "Dugdheshwarnath Temple (दुग्धेश्वरनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s39872ed9fc22fc182d371c3e9ed316094/uploads/bfi_thumb/2018040655-olwaovkay4d3due9oc6q8ug1g0jef0alqzbo7o3bpe.jpg",
        "description": "Located in the north-east of Rudrapur tehsil of Deoria, Dugdheshwarnath Temple is one of the oldest Shiva temples in the region. | देवरिया जिले के रुद्रपुर तहसील के उत्तर-पूर्व में स्थित दुग्धेश्वरनाथ मंदिर इस क्षेत्र के सबसे प्राचीन शिव मंदिरों में से एक है।"
      },
      {
        "name": "Hanuman Temple (हनुमान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s39872ed9fc22fc182d371c3e9ed316094/uploads/bfi_thumb/2018040681-olwaovkay4d3due9oc6q8ug1g0jef0alqzbo7o3bpe.jpg",
        "description": "Situated in Raghav Nagar, Deoria, Hanuman Temple is one of the 'Siddha' places dedicated to Lord Hanuman. Every Tuesday, devotees gather here for worship. | राघव नगर, देवरिया में स्थित हनुमान मंदिर भगवान हनुमान को समर्पित 'सिद्ध' स्थलों में से एक है। यहाँ हर मंगलवार भक्त पूजा के लिए एकत्रित होते हैं।"
      }
    ],

    "Etah (एटा)": [
      {
        "name": "Patna Bird Sanctuary (पटना बर्ड सैंक्चुरी)",
        "image": "https://cdn.s3waas.gov.in/s30336dcbab05b9d5ad24f4333c7658a0e/uploads/bfi_thumb/2018091162-olw6bkap5b0ib8wh9u7ig1judhwx6mrtscr7rjcb2a.jpg",
        "description": "Patna Vihar Bird Sanctuary is a protected sanctuary located in the Jalesar sub-division of Etah district. It is home to a wide variety of migratory and resident birds. | पटना विहार बर्ड सैंक्चुरी एटा जिले की जलेसर तहसील में स्थित एक संरक्षित अभयारण्य है। यहाँ प्रवासी और स्थानीय पक्षियों की विविध प्रजातियाँ पाई जाती हैं।"
      },
      {
        "name": "Awagarh Fort (अवागढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s30336dcbab05b9d5ad24f4333c7658a0e/uploads/bfi_thumb/2018083134-olw6c09ydhmdsm99oj464fioh1q5thj9ijugx8om4i.jpg",
        "description": "Awagarh is a historic town in Etah district, known for the grand Awagarh Fort which represents the rich heritage of the region. | अवागढ़, एटा जिले का एक ऐतिहासिक नगर है, जो भव्य अवागढ़ किले के लिए प्रसिद्ध है और इस क्षेत्र की समृद्ध धरोहर को दर्शाता है।"
      }
    ],

    "Etawah (इटावा)": [
      {
        "name": "Etawah Safari Park (सफारी पार्क इटावा)",
        "image": "https://cdn.s3waas.gov.in/s374db120f0a8e5646ef5a30154e9f6deb/uploads/bfi_thumb/2018032688-olw9zrbkbhz94yvqchbmm6mlzccaq6ktmnqkjhc1z6.jpg",
        "description": "Etawah Safari Park, formerly Lion Safari Etawah, is a drive-through wildlife safari park and one of the largest in Uttar Pradesh. | पहले लायन सफारी इटावा के नाम से जाना जाने वाला यह इटावा सफारी पार्क उत्तर प्रदेश का एक विशाल वन्यजीव सफारी पार्क है।"
      },
      {
        "name": "Raja Sumer Singh Fort (राजा सुमेर सिंह किला)",
        "image": "https://cdn.s3waas.gov.in/s374db120f0a8e5646ef5a30154e9f6deb/uploads/bfi_thumb/2018090650-olw9zpfvxtwohqygngidh73osklkasdcyeflkxeubm.jpg",
        "description": "Historic fort in Etawah associated with Raja Sumer Singh, representing the region's rich heritage. | इटावा में स्थित यह ऐतिहासिक किला राजा सुमेर सिंह से जुड़ा है और क्षेत्र की समृद्ध धरोहर का प्रतीक है।"
      },
      {
        "name": "Victoria Park Etawah (विक्टोरिया पार्क इटावा)",
        "image": "https://cdn.s3waas.gov.in/s374db120f0a8e5646ef5a30154e9f6deb/uploads/bfi_thumb/2018021697-olw9zqdq4nxytcx3hyx01ov5dygxihh3aj3327dg5e.jpg",
        "description": "Victoria Park is located on Pakka Talab in Etawah and is a popular recreational area. | इटावा के पक्का तालाब में स्थित विक्टोरिया पार्क एक लोकप्रिय मनोरंजन स्थल है।"
      }
    ],

    "Farrukhabad (फ़र्रुख़ाबाद)": [
      {
        "name": "Kampil Pilgrimage Area (कंपिल तीर्थ क्षेत्र)",
        "image": "https://cdn.s3waas.gov.in/s37a614fd06c325499f1680b9896beedeb/uploads/2018/07/2018070328.jpg",
        "description": "Located in Tehsil Kaimganj, about 45 km from the district headquarters, Kampil Pilgrimage Area is an ancient site founded by Saint Kampila. It is associated with Arjuna's swayamvara and has temples like Rameshwarnath Mahadev and Jain Tirthankara Neminath temples. | तहसील कैमगंज में स्थित, जिले के मुख्यालय से लगभग 45 किमी दूर, कंपिल तीर्थ क्षेत्र एक प्राचीन स्थल है जिसकी स्थापना संत कंपिला ने की थी। यह अर्जुन के स्वयंवर से जुड़ा है और इसमें रामेश्वरनाथ महादेव मंदिर तथा जैन तीर्थंकर नेमिनाथ मंदिर शामिल हैं।"
      },
      {
        "name": "Sankisa Temple (संकिसा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37a614fd06c325499f1680b9896beedeb/uploads/2018/07/2018070310.jpg",
        "description": "Located about 38 km from the district headquarters, Sankisa is known for its association with Mahatma Buddha and ancient Buddhist relics. | जिले के मुख्यालय से लगभग 38 किमी दूर स्थित संकिसा, महात्मा बुद्ध और प्राचीन बौद्ध अवशेषों के लिए प्रसिद्ध है।"
      }
    ],

    "Fatehpur (फतेहपुर)": [
      {
        "name": "Om Ghat, Bhitaura (ओम घाट, भितौरा)",
        "image": "https://cdn.s3waas.gov.in/s331fefc0e570cb3860f2a6d4b38c6490d/uploads/bfi_thumb/2018071613-olw83dk94edai87knf7ppxue77dzqw3t875wnsq4n6.jpg",
        "description": "Located at the bank of the holy river Ganga, Om Ghat in Bhitaura is a block headquarters and a spiritual site associated with renowned saints. | पवित्र गंगा नदी के किनारे स्थित, भितौरा का ओम घाट एक ब्लॉक मुख्यालय और प्रसिद्ध संतों से जुड़ा आध्यात्मिक स्थल है।"
      },
      {
        "name": "Bawani Imli Tree (बावनी इमली)",
        "image": "https://cdn.s3waas.gov.in/s331fefc0e570cb3860f2a6d4b38c6490d/uploads/bfi_thumb/2018070523-olw839swd2857sd19dl7fysjtnwiw3ovvojyqovpc2.jpg",
        "description": "A monument symbolizing the sacrifices of freedom fighters. On 28th April 1858, fifty-two freedom fighters were executed here. | स्वतंत्रता सेनानियों के बलिदान का प्रतीक यह स्मारक है। 28 अप्रैल 1858 को यहाँ बत्ताइस स्वतंत्रता सेनानियों को फांसी दी गई थी।"
      }
    ],

    "Firozabad (फ़िरोज़ाबाद)": [
      {
        "name": "Jain Temple (जैन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a4a042cf4fd6bfb47701cbc8a1653ada/uploads/bfi_thumb/2018071896-olwb3jtln0g8mp2xzoj26553ak7okwjr3lyjx6c2ki.jpg",
        "description": "Located about 8 km from Firozabad, this Jain temple was established by the late Seth Chhidami Lal Jain. | फिरोजाबाद से लगभग 8 किमी दूर स्थित, इस जैन मंदिर की स्थापना स्वर्गीय सेठ छिदामी लाल जैन ने की थी।"
      },
      {
        "name": "Raja Chandrawar Fort (राजा चंद्रवार किला)",
        "image": "https://cdn.s3waas.gov.in/s3a4a042cf4fd6bfb47701cbc8a1653ada/uploads/bfi_thumb/2018071354-olwb3hxx9cdnzh5oanpt15m63sgy5icafcnkymeuwy.jpg",
        "description": "Situated on the banks of Yamuna, about 13 km from Firozabad, Chandwar Fort is historically significant where Mohammad Ghori and Jaichand were martyred. | यमुना के किनारे, फिरोजाबाद से लगभग 13 किमी दूर स्थित, चंद्रवार किला ऐतिहासिक दृष्टि से महत्वपूर्ण है, जहाँ मोहम्मद ग़ोरी और जयचंद शहीद हुए थे।"
      },
      {
        "name": "Vaishno Devi Temple (वैष्णो देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a4a042cf4fd6bfb47701cbc8a1653ada/uploads/bfi_thumb/2018071855-olwb3jtln0g8mp2xzoj26553ak7okwjr3lyjx6c2ki.jpg",
        "description": "Located about 4 km from Firozabad, prayers made here with a true heart are believed to be fulfilled. | फिरोजाबाद से लगभग 4 किमी दूर स्थित, यहाँ सच्चे मन से की गई प्रार्थनाएँ पूरी होती हैं।"
      },
      {
        "name": "Sufi Saheb's Mazar (सूफ़ी साहेब का मकबरा)",
        "image": "https://cdn.s3waas.gov.in/s3a4a042cf4fd6bfb47701cbc8a1653ada/uploads/bfi_thumb/2018071811-olwb3ivrg6eyb34b564flndmp6cbd7g0rhb2fwdgqq.jpg",
        "description": "About 15 km from Firozabad, on the south bank of Yamuna, this is the tomb of Sufi Shah where annual gatherings are held. | फिरोजाबाद से लगभग 15 किमी दूर, यमुना के दक्षिणी तट पर, यह सूफी शाह का मकबरा है जहाँ हर साल जमावड़े होते हैं।"
      },
      {
        "name": "Kotla Fort (कोटला किला)",
        "image": "https://cdn.s3waas.gov.in/s3a4a042cf4fd6bfb47701cbc8a1653ada/uploads/bfi_thumb/2018071821-olwb3ivrg6eyb34b564flndmp6cbd7g0rhb2fwdgqq.jpg",
        "description": "Located about 12 km from Hirangaon, Kotla Fort has a 20-feet wide moat and historical significance as per the 1884 Gazetteer. | हिरनगांव से लगभग 12 किमी दूर स्थित, कोटला किले में 20 फीट चौड़ा खाई है और यह ऐतिहासिक दृष्टि से महत्वपूर्ण है।"
      },
      {
        "name": "Shri Hanuman Temple (श्री हनुमान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a4a042cf4fd6bfb47701cbc8a1653ada/uploads/bfi_thumb/2018042387-olwb3hxx9cdnzh5oanpt15m63sgy5icafcnkymeuwy.png",
        "description": "Established by Shri Vajirao Peshwa II during the Maratha rule, about 0.5 km from Firozabad. | मराठा शासन के दौरान श्री वजीराव पेशवा द्वितीय द्वारा स्थापित, फिरोजाबाद से लगभग 0.5 किमी दूर।"
      },
      {
        "name": "Mata Tila Temple (माता टीला मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a4a042cf4fd6bfb47701cbc8a1653ada/uploads/bfi_thumb/2018071894-olwb3jtln0g8mp2xzoj26553ak7okwjr3lyjx6c2ki.jpg",
        "description": "A very old temple located in Padham Panchayat, Firozabad. | पदम पंचायत, फिरोजाबाद में स्थित एक बहुत प्राचीन मंदिर।"
      }
    ],

    "Gautam Buddha Nagar (गौतम बुद्ध नगर)": [
      {
        "name": "Surajpur Wetland (सूरजपुर वेटलैंड)",
        "image": "https://cdn.s3waas.gov.in/s30e01938fc48a2cfb5f2217fbfb00722d/uploads/bfi_thumb/2018092243-olw6r97p8qhu4w3wn4eakkzve2kioq2ia0u16u2p6q.jpg",
        "description": "Surajpur is a very good example of an urban wetland in the Yamuna river valley and is home to water birds such as storks and herons. | सूरजपुर यमुना नदी घाटी में शहरी वेटलैंड का एक उत्कृष्ट उदाहरण है और यहाँ सारस व बगुले जैसे जलपक्षियों का घर है।"
      },
      {
        "name": "ISKCON Temple (इस्कॉन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30e01938fc48a2cfb5f2217fbfb00722d/uploads/bfi_thumb/2018021950-olw6r0r5j8698eg70iqng54q1lq7rg4x8uynvcf8qq.jpg",
        "description": "ISKCON Temple is known to be a peaceful place and follows the religious traditions of the Hare Krishna movement. | इस्कॉन मंदिर एक शांतिपूर्ण स्थान माना जाता है और हरे कृष्ण आंदोलन की धार्मिक परंपराओं का पालन करता है।"
      },
      {
        "name": "Botanical Garden (बॉटनिकल गार्डन)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/12/20/67/at-the-garden.jpg?w=500&h=500&s=1",
        "description": "The Botanical Garden in Noida is a lush green garden with an abundance of the most distinctive plants in the country. | नोएडा का बॉटनिकल गार्डन हरे-भरे वातावरण और देश के सबसे विशिष्ट पौधों की प्रचुरता से भरा हुआ है।"
      },
      {
        "name": "Entertainment City (एंटरटेनमेंट सिटी)",
        "image": "https://cdn.s3waas.gov.in/s30e01938fc48a2cfb5f2217fbfb00722d/uploads/bfi_thumb/2018021918-olw6qrcrmvte0atujeodr7i43r0jmh3lvkft2kt6gy.jpg",
        "description": "Established in 2007, Entertainment City provides a wide variety of entertainment options for all age groups. | 2007 में स्थापित, एंटरटेनमेंट सिटी सभी आयु वर्गों के लिए विभिन्न प्रकार के मनोरंजन विकल्प प्रदान करता है।"
      },
      {
        "name": "Gautam Buddha Park (गौतम बुद्ध पार्क)",
        "image": "https://cdn.s3waas.gov.in/s30e01938fc48a2cfb5f2217fbfb00722d/uploads/bfi_thumb/2018021954-olw6qsaltpuobwshdx30bp9kp4vwu67c7p3ajursaq.jpg",
        "description": "Gautam Buddha Park is a picturesque park and a great place to visit with family and friends. | गौतम बुद्ध पार्क एक सुंदर पार्क है और परिवार व मित्रों के साथ घूमने के लिए बेहतरीन स्थान है।"
      },
      {
        "name": "IMAX Multiplex (आईमैक्स मल्टीप्लेक्स)",
        "image": "https://cdn.s3waas.gov.in/s30e01938fc48a2cfb5f2217fbfb00722d/uploads/bfi_thumb/2018021946-olw6qrcrmvte0atujeodr7i43r0jmh3lvkft2kt6gy.jpg",
        "description": "IMAX multiplexes in Noida are the only ones in Northern India that show films in the highly realistic IMAX format. | नोएडा के आईमैक्स मल्टीप्लेक्स उत्तरी भारत में एकमात्र हैं जो फिल्मों को अत्यधिक यथार्थवादी आईमैक्स प्रारूप में दिखाते हैं।"
      },
      {
        "name": "City Park, Greater Noida (सिटी पार्क, ग्रेटर नोएडा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/96/ce/55/maxresdefault-1-largejpg.jpg?w=900&h=-1&s=1",
        "description": "City Park is one of the popular attractions in Greater Noida offering diverse flora and jogging tracks. | सिटी पार्क ग्रेटर नोएडा का एक लोकप्रिय आकर्षण है जो विविध वनस्पतियों और जॉगिंग ट्रैकों की सुविधा प्रदान करता है।"
      },
      {
        "name": "Stellar Children's Museum (स्टेलर चिल्ड्रेन म्यूज़ियम)",
        "image": "https://cdn.s3waas.gov.in/s30e01938fc48a2cfb5f2217fbfb00722d/uploads/bfi_thumb/2018021930-olw6qrcrmvte0atujeodr7i43r0jmh3lvkft2kt6gy.jpg",
        "description": "The Stellar Children's Museum is an interactive, play-based museum modeled after some of the best children's museums in the world. | स्टेलर चिल्ड्रेन म्यूज़ियम एक इंटरैक्टिव, खेल-आधारित संग्रहालय है जिसे दुनिया के सर्वश्रेष्ठ बच्चों के संग्रहालयों के आधार पर बनाया गया है।"
      },
      {
        "name": "Okhla Bird Sanctuary (ओखला बर्ड सैंक्चुअरी)",
        "image": "https://cdn.s3waas.gov.in/s30e01938fc48a2cfb5f2217fbfb00722d/uploads/bfi_thumb/2018021966-olw6qsaltpuobwshdx30bp9kp4vwu67c7p3ajursaq.jpg",
        "description": "Okhla Bird Sanctuary is located near the Okhla Barrage on the Yamuna River in Gautam Buddha Nagar district. | ओखला बर्ड सैंक्चुअरी गौतम बुद्ध नगर जिले में यमुना नदी के ओखला बैराज क्षेत्र के पास स्थित है।"
      }
    ],

    "Ghaziabad (गाज़ियाबाद)": [
      {
        "name": "City Forest Park (सिटी फॉरेस्ट पार्क)",
        "image": "https://cdn.s3waas.gov.in/s36da9003b743b65f4c0ccd295cc484e57/uploads/bfi_thumb/2019022587-olw9fbbxo7zqmaksq56qvucoun3wb6eztgxdrtnbb6.jpeg",
        "description": "The City Forest Park, located on the banks of the Hindon, has walking trails, cycle tracks, horse riding facilities, and lush greenery. | सिटी फॉरेस्ट पार्क हिंडन नदी के किनारे स्थित है और यहाँ वॉकिंग ट्रेल्स, साइकिल ट्रैक, घुड़सवारी की सुविधा और हरी-भरी प्रकृति है।"
      },
      {
        "name": "Mohan Nagar Temple (मोहन नगर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s36da9003b743b65f4c0ccd295cc484e57/uploads/bfi_thumb/2019022586-olw9fbbxo7zqmaksq56qvucoun3wb6eztgxdrtnbb6.jpg",
        "description": "Mohan Nagar Temple is located on the left side of GT road while going towards Ghaziabad from Mohan Nagar crossing. It is dedicated to Goddess Durga and is surrounded by scenic beauty. | मोहन नगर मंदिर जीटी रोड पर ग़ाज़ियाबाद की ओर जाते समय मोहन नगर चौराहे के पास बाईं ओर स्थित है। यह मंदिर देवी दुर्गा को समर्पित है और चारों ओर प्राकृतिक सुंदरता से घिरा है।"
      }
    ],

    "Ghazipur (गाजीपुर)": [
      {
        "name": "Bhitari (Saidpur) (भीतरी, सैदपुर)",
        "image": "https://cdn.s3waas.gov.in/s3f2fc990265c712c49d51a18a32b39f0c/uploads/bfi_thumb/2018083083-olwdsf2tyd2140dicjwy4p5762rftz3x329ydqphc2.jpg",
        "description": "Bhitari is situated about 32 km from Ghazipur near Saidpur town. The name Bhitari is popularly derived from Bhimutri and the place has great historical and archaeological importance. | भीतरी गाज़ीपुर से लगभग 32 किमी दूर सैदपुर कस्बे के पास स्थित है। भीतरी नाम भिमुत्री से लिया गया है और यह स्थान ऐतिहासिक एवं पुरातात्विक दृष्टि से अत्यंत महत्वपूर्ण है।"
      }
    ],

    "Gonda (गोंडा)": [
      {
        "name": "Prithvinath Temple (पृथ्वीनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ca46c1b9512a7a8315fa3c5a946e8265/uploads/bfi_thumb/2018082194-olwcdi5jrfcw8ebxnjmg2jocsppow6zc3254k676de.jpg",
        "description": "Prithvinath Temple is located in Khargupur area of Gonda, about 30 km from the district headquarters. This ancient temple is dedicated to Lord Shiva and houses the sacred Shivlinga. | पृथ्वीनाथ मंदिर गोंडा जिले के खर्गुपुर क्षेत्र में स्थित है, जो जिला मुख्यालय से लगभग 30 किमी दूर है। यह प्राचीन मंदिर भगवान शिव को समर्पित है और इसमें पवित्र शिवलिंग स्थापित है।"
      },
      {
        "name": "Shri Swaminarayan Mandir, Chhapia (श्री स्वामीनारायण मंदिर, छपिया)",
        "image": "https://cdn.s3waas.gov.in/s3ca46c1b9512a7a8315fa3c5a946e8265/uploads/bfi_thumb/2018021782-olwccvlf7ei0hr8pb9veepdajgsvrghrzyhh1j4miq.jpg",
        "description": "Located in Chhapia, Gonda, this temple is dedicated to Swaminarayan who was born here as Ghanshyam Pandey in 1781. It is an important pilgrimage for followers of the Swaminarayan sect. | छपिया, गोंडा में स्थित यह मंदिर स्वामीनारायण को समर्पित है, जिनका जन्म 1781 में यहाँ घनश्याम पांडे के रूप में हुआ था। यह स्वामीनारायण संप्रदाय के अनुयायियों के लिए एक महत्वपूर्ण तीर्थ स्थल है।"
      }
    ],

    "Gorakhpur (गोरखपुर)": [
      {
        "name": "Gita Press (गीता प्रेस)",
        "image": "https://cdn.s3waas.gov.in/s301386bd6d8e091c2ab4c7c7de644d37b/uploads/bfi_thumb/2018032863-olw72uk1j6d5br9oy4snbnoj55fhmc3bvehm9ovwg2.jpeg",
        "description": "Founded in 1923, Gita Press Gorakhpur is the world’s largest publisher of Hindu religious texts, including the Bhagavad Gita, Ramcharitmanas, and Puranas. It is a major religious and cultural landmark. | 1923 में स्थापित, गीता प्रेस गोरखपुर हिंदू धार्मिक ग्रंथों जैसे भगवद गीता, रामचरितमानस और पुराणों का विश्व का सबसे बड़ा प्रकाशक है। यह एक प्रमुख धार्मिक और सांस्कृतिक स्थल है।"
      },
      {
        "name": "Gorakhnath Temple (गोरखनाथ मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/e0/b1/82/gorakhnath-temple.jpg?w=1200&h=-1&s=1",
        "description": "The historic Gorakhnath Temple is dedicated to Guru Gorakhnath, a prominent yogi. It has been a center of Nath tradition and yogic practices since ancient times. | ऐतिहासिक गोरखनाथ मंदिर गुरु गोरखनाथ को समर्पित है, जो एक प्रमुख योगी थे। यह प्राचीन काल से नाथ परंपरा और योग साधना का केंद्र रहा है।"
      },
      {
        "name": "Kapilavastu (कपिलवस्तु)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Kapilavastu_Stupas-Original-00020.jpg/250px-Kapilavastu_Stupas-Original-00020.jpg",
        "description": "Kapilavastu, located in present-day Nepal near Gorakhpur, was the childhood home of Lord Buddha. It holds immense historical and religious importance. | कपिलवस्तु, जो वर्तमान नेपाल में गोरखपुर के पास स्थित है, भगवान बुद्ध का बाल्यकाल का घर था। इसका अत्यधिक ऐतिहासिक और धार्मिक महत्व है।"
      },
      {
        "name": "Kushinagar (कुशीनगर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/ea/f0/bd/caption.jpg?w=500&h=400&s=1",
        "description": "Located 51 km east of Gorakhpur, Kushinagar is the place where Lord Buddha attained Mahaparinirvana. It is an international pilgrimage destination for Buddhists. | गोरखपुर से 51 किमी पूर्व स्थित कुशीनगर वह स्थान है जहाँ भगवान बुद्ध ने महापरिनिर्वाण प्राप्त किया। यह बौद्धों के लिए एक अंतर्राष्ट्रीय तीर्थ स्थल है।"
      },
      {
        "name": "Tarkulha Devi Temple (तरकुलहा देवी मंदिर)",
        "image": "https://feeds.abplive.com/onecms/images/uploaded-images/2022/09/26/511de3579f10033934d77e52cfd13b2e1664173473557448_original.jpg",
        "description": "Tarkulha Devi Temple is dedicated to Goddess Tarkulha. It is associated with the freedom struggle, as freedom fighter Bandhu Singh offered prayers here before battles. | तरकुलहा देवी मंदिर देवी तरकुलहा को समर्पित है। यह स्वतंत्रता संग्राम से जुड़ा है क्योंकि स्वतंत्रता सेनानी बंधु सिंह युद्ध से पहले यहाँ पूजा करते थे।"
      },
      {
        "name": "Chauri Chaura Martyr's Memorial (चौरी चौरा शहीद स्मारक)",
        "image": "https://cdn.s3waas.gov.in/s301386bd6d8e091c2ab4c7c7de644d37b/uploads/bfi_thumb/2018052514-olw737ps6uv5uaqktahfakczgjmmm3jkl7mezkce0y.jpg",
        "description": "The Martyr’s Memorial at Chauri Chaura commemorates the 1922 incident during India’s freedom struggle when protesters set fire to a police station. | चौरी चौरा शहीद स्मारक 1922 की उस घटना की स्मृति में बनाया गया है जब स्वतंत्रता संग्राम के दौरान आंदोलनकारियों ने थाने में आग लगा दी थी।"
      },
      {
        "name": "Maghar (मगहर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR72QuFEwWkUXwMefm_i_H9Tgh_A3AUxg-r-Q&s",
        "description": "Maghar is the final resting place of Saint Kabir, a poet-saint and social reformer. It is a symbol of communal harmony as both a samadhi and a mazar are built here. | मगहर संत कबीर की समाधि स्थल है। यह साम्प्रदायिक सौहार्द्र का प्रतीक है क्योंकि यहाँ उनकी समाधि और मज़ार दोनों बने हुए हैं।"
      },
      {
        "name": "Lumbini (लुंबिनी)",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0a/a7/df/a0.jpg",
        "description": "Lumbini, located in Nepal near Gorakhpur, is the birthplace of Lord Buddha (623 BC). The Ashoka Pillar and Mayadevi Temple here are UNESCO World Heritage Sites. | नेपाल में गोरखपुर के पास स्थित लुंबिनी भगवान बुद्ध का जन्मस्थान (623 ई.पू.) है। यहाँ अशोक स्तंभ और मायादेवी मंदिर यूनेस्को विश्व धरोहर स्थल हैं।"
      }
    ],

    "Hamirpur (हमीरपुर)": [
      {
        "name": "Shri Siddhapeeth Mumukshu Ashram (Gaura Devi) (श्री सिद्धपीठ मुमुक्षु आश्रम, गौरा देवी)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090988-pui7o48tv8bbvrlts1xuyt1s5p7y2rz2fe3mdaeole.jpg",
        "description": "Shri Siddhapeeth Mumukshu Ashram (Gaura Devi) is a nearly 250 years old Gaura Devi Siddhapeeth and Shankar Bhagwan temple in village Ingohta. | श्री सिद्धपीठ मुमुक्षु आश्रम (गौरा देवी) लगभग 250 वर्ष पुराना सिद्धपीठ और शंकर भगवान का मंदिर है, जो गाँव इन्गोहटा में स्थित है।"
      },
      {
        "name": "Sisoler Temples and Tombs (सिसोलर के मंदिर और समाधि)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090956-pui6xenxnpqzyoekr0aim1p8givgcexnr6pwf80feq.jpg",
        "description": "There is a temple and a samadhi place at the religious site known as Maharaj Baba, built about 300 years ago. | महाराज बाबा के नाम से प्रसिद्ध धार्मिक स्थल पर लगभग 300 वर्ष पूर्व निर्मित मंदिर और समाधि स्थल है।"
      },
      {
        "name": "Shri Banke Bihari Temple (श्री बांके बिहारी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090971-scaled-puhzpbpkmzptiw6sg33q76er9es9jdfdnweb1zmz2a.jpg",
        "description": "Located in Village Gahrauli, Muskara Block, this temple is one of the most populated religious sites in Hamirpur district. | यह मंदिर गाँव गह्राौली, मुस्करा ब्लॉक में स्थित है और हमीरपुर जिले के प्रमुख धार्मिक स्थलों में से एक है।"
      },
      {
        "name": "Mahakali Siddha Peeth Temple, Ramgarh Fort (माँ महाकाली सिद्धपीठ मंदिर, रामगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090922-1-pui6hpqxka9o5175dq3qhi97fy7uubmz9in2zxa1aa.jpg",
        "description": "Situated on the banks of the Dhasan river in Ramgarh Danda, this fort houses the Mahakali Siddha Peeth temple. | झाँसी सीमा पर रामगढ़ डंडा में धसान नदी के किनारे स्थित इस किले में माँ महाकाली सिद्धपीठ मंदिर है।"
      },
      {
        "name": "Sri Narasimha Bhagwan Temple (श्री नरसिंह भगवान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090981-pui6kxd2wwnxt2j7mm2ui72wice053dypevt0yim0y.jpg",
        "description": "This temple dedicated to Lord Narasimha is located on a small hill and is known for its pleasant environment. | भगवान नरसिंह को समर्पित यह मंदिर एक छोटी पहाड़ी पर स्थित है और अपने रमणीय वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Chaturbhuj Baba Vishnu Temple, Bira (चतुर्भुज बाबा विष्णु मंदिर, बीरा)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090963-pui6og9ajjhncfew1mxhct24pd0k08dq6uyctbagoy.jpg",
        "description": "This ancient temple, built about 1000 years ago, is a rare example of Chandela period sculpture. | लगभग 1000 वर्ष पूर्व निर्मित यह प्राचीन मंदिर चंदेल कालीन शिल्पकला का दुर्लभ उदाहरण है।"
      },
      {
        "name": "Pashupati Temple (पशुपति मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090990-pui6s1z0qof7um6h06zzwwbqoj97igoooozd1hy4ua.jpg",
        "description": "A two-storeyed temple spread over about 400 sq meters with the sanctum sanctorum below. | लगभग 400 वर्गमीटर में फैला यह दो-मंजिला मंदिर है, जिसका गर्भगृह नीचे स्थित है।"
      },
      {
        "name": "Yamuna Pathway (यमुना पथवे)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090931-scaled-e1662708112174-puhyzlujn6iduzjnmgw7h61q4vjpxibrslt1cfrrb6.jpg",
        "description": "Hamirpur lies between the Yamuna and Betwa rivers. The Yamuna Pathway is a popular spot for morning and evening visits. | हमीरपुर यमुना और बेतवा नदियों के बीच स्थित है। यमुना पथवे सुबह और शाम की सैर के लिए प्रसिद्ध है।"
      },
      {
        "name": "Monastery of Kariari (करीरी का मठ)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090929-pui7ju3aqegazptqs7b1lvy6qibr0ez3673znwr8xu.jpg",
        "description": "An ancient monastery from the Chandela period carved out of granite rocks. | चंदेल काल का एक प्राचीन मठ जिसे ग्रेनाइट की चट्टानों को तराशकर बनाया गया है।"
      },
      {
        "name": "Ashram of Sage Kardama (ऋषि कर्दम का आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090915-pui72ztea9ecz8ae4f8ofmxvkzc03n47uubt4fq6f6.jpg",
        "description": "Located on the banks of the Betwa River, this ashram is a picturesque place connected with Sage Kardama. | बेतवा नदी के तट पर स्थित यह रमणीय स्थान ऋषि कर्दम के आश्रम के रूप में प्रसिद्ध है।"
      },
      {
        "name": "Maheshwari Mata Temple (माहेश्वरी माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090914-scaled-puhzbn655szkj828c677wmp7zi7xhz4146jvkzx9mq.jpg",
        "description": "Located on the banks of Betwa river, this temple is believed to be from the Mahabharata period. | बेतवा नदी के किनारे स्थित यह मंदिर महाभारत कालीन माना जाता है।"
      },
      {
        "name": "Sher Mata Temple (शेर माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090957-scaled-pui5008x22qur57o00c5ik61icxu0xf47opatqwute.jpg",
        "description": "Located in Bajehta Gram Sabha on the banks of Betwa river, this is an ancient temple mentioned in folklore and Alha Khand. | बेतवा नदी के किनारे बाजेहटा ग्राम सभा में स्थित यह प्राचीन मंदिर लोककथाओं और आल्हा खंड में वर्णित है।"
      },
      {
        "name": "Bhuiyarani Temple (भुईयारानी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090941-pui679rhmjyz50dad7kys54tttp1be6chtov18rif6.jpg",
        "description": "An ancient temple of Bhuiyarani located in Jhalokhar village, 12 km from Hamirpur. | हमीरपुर से 12 किमी दूर झालोखर गाँव में स्थित भुईयारानी का प्राचीन मंदिर।"
      },
      {
        "name": "Shalleshwar Temple, Sarila (शैलेश्वर मंदिर, सरीला)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090882-pug8qy4o4n7u2a87hxk3ql98argx7z2eedgtiy0npe.jpg",
        "description": "Built during Mahabharata period and later reconstructed in Chandela period style. | महाभारत काल में निर्मित और बाद में चंदेल कालीन शैली में पुनर्निर्मित।"
      },
      {
        "name": "Shiv Temple, Jalalpur (शिव मंदिर, जलालपुर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090817-scaled-pug89l1zvtg5llg5vxd76gzp9j1u194wcfmxdxrgn6.jpg",
        "description": "Known as Chhoti Kashi, Jalalpur once had 108 Shiva temples. | जलालपुर जिसे प्राचीन समय में छोटी काशी कहा जाता था, यहाँ 108 शिव मंदिर थे।"
      },
      {
        "name": "Badi Devi Temple (बड़ी देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090827-pug7kp9sypdw97lc6o5qo91f5bp19pcp99x718nncy.jpg",
        "description": "An ancient Maratha period temple also known as Badi Devi Mandir, located in Maudha Tehsil. | मराठा काल का प्राचीन मंदिर, मौदहा तहसील मुख्यालय में स्थित बड़ी देवी मंदिर।"
      },
      {
        "name": "Mahavira Temple (महावीर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090816-pug76rbzl6as1fufln6yorp9xkf13c01c9jwrhbvnm.jpg",
        "description": "A Chandel period temple in Old Muskara village, known for its ancient idol of Lord Mahavir. | ओल्ड मुस्करा गाँव में स्थित चंदेल कालीन मंदिर, भगवान महावीर की प्राचीन प्रतिमा के लिए प्रसिद्ध।"
      },
      {
        "name": "Hanuman Ji Temple, Itra (हनुमान जी मंदिर, इत्रा)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090860-pug6d5f0b1rmbmuqhug158okamcsmkgf9prajp8bnm.png",
        "description": "Located in Itra village of Sumerpur Tehsil, this temple is dedicated to Lord Hanuman. | सुमेरपुर तहसील के इत्रा गाँव में स्थित भगवान हनुमान का मंदिर।"
      },
      {
        "name": "Radha Krishna Temple (राधा कृष्ण मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090858-scaled-pug4e9f6vuq4qbtnfpbxlmo3hhr94c16iuk0lgc6wy.jpg",
        "description": "The idols in this temple are made of Ashtadhatu, weighing about 100 kg. | इस मंदिर की प्रतिमाएँ अष्टधातु की बनी हैं, जिनका वज़न लगभग 100 किलो है।"
      },
      {
        "name": "Maa Shyamala Devi Temple (माँ श्यामला देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090824-scaled-pug33g2khwn0hhtpsytuwxymdmi4r16gf4uf4br2te.jpg",
        "description": "An ancient Devi temple, one of the prominent Shakti temples in Bundelkhand. | एक प्राचीन देवी मंदिर, बुंदेलखंड के प्रमुख शक्ति मंदिरों में से एक।"
      },
      {
        "name": "Chopreshwar Temple (चोपरेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2022090784-scaled-pueqviqstqacytcre3qtkhxnv0nsagoa33lfermk1u.jpg",
        "description": "Located near Chopra pond in Rath, this is an ancient Shiva temple. | राठ नगर में चोपरा तालाब के पास स्थित प्राचीन शिव मंदिर।"
      },
      {
        "name": "Khandeh Temple (खंदेह मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2021110972-pfstht96toxmddv4n0kh7bcasgpzwv51vvcn0x9u6a.jpg",
        "description": "Located 12 km south-west of Maudha, Khandeh is known for its ancient temples. | मौदहा से 12 किमी दक्षिण-पश्चिम में स्थित खंदेह अपने प्राचीन मंदिरों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Pataleshwar Temple (पातालेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2021110970-scaled-pfstuebebu5ttfl15genl50h46owyz3oa5socam2v6.jpg",
        "description": "An ancient Shiva temple on the banks of Yamuna river in Hamirpur city. | हमीरपुर नगर में यमुना नदी के किनारे स्थित प्राचीन शिव मंदिर।"
      },
      {
        "name": "Kalpavriksha (कल्पवृक्ष)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2018072045-olw7ihld8xrwi6jume66b7lmyyccp16jot9gqfp2wy.jpg",
        "description": "A rare, ancient and mythological tree located near Gayatri Tapobhoomi on Yamuna bank. | यमुना नदी के किनारे गायत्री तपोभूमि के पास स्थित दुर्लभ, प्राचीन और पौराणिक कल्पवृक्ष।"
      },
      {
        "name": "Meher Temple (मेहर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2018072125-2-olw7ilcq09x1smee0fsol6nhchttjtlh1bvenjji82.jpg",
        "description": "A temple dedicated to Avtar Meher Baba in Hamirpur city. | हमीरपुर नगर में अवतार मेहर बाबा को समर्पित मंदिर।"
      },
      {
        "name": "Chaura Devi Temple (चौरा देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2018072024-1-olw7ignj23qm6kl7rvrjqpu6dkgzhc2tcolz95qh36.jpg",
        "description": "Located near DM residence in Hamirpur city, this temple is a symbol of faith. | हमीरपुर नगर में जिलाधिकारी निवास के पास स्थित आस्था का प्रतीक चौरा देवी मंदिर।"
      },
      {
        "name": "Singh Maheshwari Temple (सिंह माहेश्वरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3115f89503138416a242f40fb7d7f338e/uploads/bfi_thumb/2018072188-olw7irxlc4621w4ty0n2kmzpi6xe1pble8ft0h9r0i.jpg",
        "description": "The oldest Shiva-Parvati temple situated near Yamuna bridge in Hamirpur city. | हमीरपुर नगर में यमुना पुल के पास स्थित शिव-पार्वती का प्राचीनतम मंदिर।"
      }
    ],

    "Hapur (हापुड़)": [
      {
        "name": "Brij Ghat (बृज घाट)",
        "image": "https://cdn.s3waas.gov.in/s334ed066df378efacc9b924ec161e7639/uploads/bfi_thumb/2018041777-olw7zl9nlf6pqrpjraat6e8k2c1rqs2qdgki2oc7pe.jpg",
        "description": "The famous pilgrimage site Garh Mukteshwar is situated at a distance of about 35 km from the district headquarters Hapur on Delhi Moradabad National Highway No. 24. | प्रसिद्ध तीर्थ स्थल गढ़मुक्तेश्वर हापुड़ जिला मुख्यालय से लगभग 35 किमी की दूरी पर दिल्ली-मुरादाबाद राष्ट्रीय राजमार्ग संख्या 24 पर स्थित है।"
      },
      {
        "name": "Garhmukteshwar (गढ़मुक्तेश्वर)",
        "image": "https://cdn.s3waas.gov.in/s334ed066df378efacc9b924ec161e7639/uploads/bfi_thumb/2018041766-olw7zl9nlf6pqrpjraat6e8k2c1rqs2qdgki2oc7pe.jpg",
        "description": "Garhmukteshwar is famous as a religious place since ancient times. Its ancient name was Shivavallabhpur. | गढ़मुक्तेश्वर प्राचीन काल से धार्मिक स्थल के रूप में प्रसिद्ध है। इसका प्राचीन नाम शिववल्लभपुर था।"
      }
    ],

    "Hardoi (हरदोई)": [
      {
        "name": "Bawan Puri (बावन पुरी)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019080890-olwb8rtblvll4phvhxsg0tpa3mh3cda2hgfnwilc02.jpeg",
        "description": "To the east of Bawan village there is a pond named Suraj Kund and near that pond is the Nakatiya Devi temple. | बावन गाँव के पूर्व में सूर्यकुंड नाम का एक तालाब है और उस तालाब के पास नकटिया देवी मंदिर स्थित है।"
      },
      {
        "name": "Sankat Haran Temple (संकट हरन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019080738-olwb8pxn87j0hhklswz6vu6cwuqcwz2lt74oxyo4ci.jpeg",
        "description": "Shiv devotees from all over the country have faith and devotion towards the ancient Shiva temple located about 20 km from the district headquarters. | जिले के मुख्यालय से लगभग 20 किमी दूर स्थित प्राचीन शिव मंदिर के प्रति देशभर के शिव भक्तों की आस्था और श्रद्धा है।"
      },
      {
        "name": "Rauza Sadar Jahan (रौज़ा सदर जहाँ, पिहानी)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019080267-olwb8n44npf5inop9drb6cvz4p499vrest68i4sav6.jpg",
        "description": "Rauza Sadar Jahan in Pihani is of historical and religious importance. | पिहानी का रौज़ा सदर जहाँ ऐतिहासिक एवं धार्मिक महत्व का स्थान है।"
      },
      {
        "name": "Prahlad Ghat (प्रह्लाद घाट)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019072524-1-olwb89ye00x5047te82j7g7itax4a4b6301fs9btaa.jpg",
        "description": "Almost everyone has read the mythological story of Holika Dahan along with the incarnation of Lord Narasimha and devotee Prahlad. | प्रह्लाद घाट होलिका दहन, भक्त प्रह्लाद और भगवान नरसिंह के अवतार की पौराणिक कथा से जुड़ा हुआ है।"
      },
      {
        "name": "Raja Narpat Singh Memorial (राजा नरपत सिंह स्मारक, माधौगंज)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019072663-olwb8iexpj8pwlvj0tq6bw2o5rrf7e8r45wt3qz9qa.png",
        "description": "Ruiya Garhi is a small village located about two kilometers north of Madhoganj town. | माधौगंज कस्बे से लगभग 2 किमी उत्तर स्थित रुइया गढ़ी गाँव ऐतिहासिक दृष्टि से महत्वपूर्ण है।"
      },
      {
        "name": "Dhobiya Ashram (धोबिया आश्रम, पिहानी)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019090211-olwb8m6agvdv71q2evcolv4ijb8w26nogoir0utp1e.jpeg",
        "description": "Dhobiya Ashram in Pihani is known for its natural scenic beauty and adventurous surroundings. | पिहानी का धोबिया आश्रम अपनी प्राकृतिक सुंदरता और रोमांचक वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Hatya Haran Tirtha (हत्या हरन तीर्थ, संडीला)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019072652-olwb8hh3ip7fkzww6bbjreb7kdw1zp50s19bmh0nwi.png",
        "description": "Brahmahatyaharan Tirtha Sarovar is situated in Sandila tehsil of Hardoi district. | हरदोई ज़िले की संडीला तहसील में ब्रह्महत्या हरन तीर्थ सरोवर स्थित है।"
      },
      {
        "name": "Baba Temple (बाबा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZnalCGNBlev_p0zphw1lG_Iu1KSJc2-CAFDUPLTsPLWeuDkdtclATxLbJNZZWVQ4xAxY&usqp=CAU",
        "description": "Hardoi Budhe Baba Mandir is an ancient temple located near Prahlad Ghat, built in 1910. | हरदोई का बुढ़े बाबा मंदिर प्राचीन स्थल है, जो प्रह्लाद घाट के पास 1910 में निर्मित हुआ था।"
      },
      {
        "name": "Tomb of Nawab Diler Khan (नवाब दिलेर खान का मकबरा, शाहाबाद)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019072671-olwb8iexpj8pwlvj0tq6bw2o5rrf7e8r45wt3qz9qa.png",
        "description": "Shahabad in Hardoi district is known for the tomb of Nawab Diler Khan. | हरदोई ज़िले का शाहाबाद नवाब दिलेर खान के मकबरे के लिए प्रसिद्ध है।"
      },
      {
        "name": "Sandi Bird Sanctuary (संडी पक्षी विहार)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019072512-olwb890jt6vuoi96jpnwmyg27x1r2f7fqvdyazd7gi.jpg",
        "description": "Sandi Bird Sanctuary is established to protect natural habitat and aquatic vegetation for local and migratory birds. | संडी पक्षी विहार स्थानीय व प्रवासी पक्षियों के प्राकृतिक आवास और जलीय वनस्पतियों के संरक्षण के लिए स्थापित किया गया है।"
      },
      {
        "name": "Victoria Hall (विक्टोरिया हॉल, हरदोई)",
        "image": "https://cdn.s3waas.gov.in/s392c8c96e4c37100777c7190b76d28233/uploads/bfi_thumb/2019072593-olwb8gj9bv659dy9bswx6wjqz00os01afwlu57222q.png",
        "description": "Hardoi district was formed during 1850-1863 under District Magistrate W.S. Chappar, Victoria Hall is linked with the freedom struggle of 1857. | विक्टोरिया हॉल हरदोई ज़िले की स्थापना (1850-1863) और 1857 के स्वतंत्रता संग्राम से जुड़ा हुआ है।"
      }
    ],

    "Hathras (हाथरस)": [
      {
        "name": "Tirthdham Mangalayatan (तीर्थधाम मंगलायतन)",
        "image": "https://cdn.s3waas.gov.in/s3be83ab3ecd0db773eb2dc1b0a17836a1/uploads/bfi_thumb/2018021955-olwbzvhsnwp7vy4n8nj6wzhqpkw3a6vg7llo1qeole.jpg",
        "description": "Tirthdham Mangalayatan is a Jain pilgrimage complex, established by the Shri Adinath Kund-Kund Kahan Digambar Jain Trust in Aligarh, India. | तीर्थधाम मंगलायतन एक जैन तीर्थस्थल परिसर है, जिसे श्री आदिनाथ कुंद-कुंद कहान दिगंबर जैन ट्रस्ट द्वारा अलीगढ़, भारत में स्थापित किया गया है।"
      }
    ],

    "Jalaun (जालौन)": [
      {
        "name": "Lanka Minar (लंका मीनार)",
        "image": "https://cdn.s3waas.gov.in/s34c5bde74a8f110656874902f07378009/uploads/bfi_thumb/2018072447-e1532867085387-olw8gtn4w2ryleof4qgkw1os4n40v0hkqr4ytasdmq.jpg",
        "description": "Kalpi is a city and a municipal board in Jalaun district in the Indian state of Uttar Pradesh. It is situated on the right bank of the Yamuna. | क़लपी उत्तर प्रदेश के जालौन जिले में स्थित एक नगर और नगरपालिका है। यह यमुना नदी के दाएँ किनारे पर बसा हुआ है।"
      },
      {
        "name": "Chaurasi Gumbad (चौरासी गुम्बद)",
        "image": "https://cdn.s3waas.gov.in/s34c5bde74a8f110656874902f07378009/uploads/bfi_thumb/2018021579-olw8gvit9quj8mlotr9u117pbeuraep1f0fxruplaa.jpg",
        "description": "Chaurasi Gumbad (84 domes) is a square nine-domed structure in a walled courtyard with a central dome. | चौरासी गुम्बद एक चौकोर नवगुम्बद वाला ढांचा है जो एक घिरे हुए प्रांगण में बना है, जिसके बीच में एक केंद्रीय गुम्बद है।"
      },
      {
        "name": "Rampura Fort (रामपुरा किला)",
        "image": "https://cdn.s3waas.gov.in/s34c5bde74a8f110656874902f07378009/uploads/bfi_thumb/2018022231-olw8gxehnex3vuiyis3360qmi6lhpswi39qwqemsxu.jpg",
        "description": "Rampura Fort located deep in the Chambal valleys of Bundelkhand, the over 600-year-old Fort Rampura is the result of fourteen generations of rulers. | बुंदेलखंड की चंबल घाटियों में गहराई से स्थित रामपुरा किला लगभग 600 साल पुराना है और यह चौदह पीढ़ियों के शासकों की विरासत का परिणाम है।"
      }
    ],

    "Jaunpur (जौनपुर)": [
      {
        "name": "Masjid Lal Darwaza (मस्जिद लाल दरवाज़ा)",
        "image": "https://cdn.s3waas.gov.in/s357aeee35c98205091e18d1140e9f38cf/uploads/bfi_thumb/2018022090-olw8r1614ar2oxukinbpgyy0easjgo0mha7tghng1u.jpg",
        "description": "The Lal Darwaza situated in the Begumganj locality of the city was built in 1450 AD by Mahmud, son of Ibrahim Shah Sharqi. | शहर के बेगमगंज मोहल्ले में स्थित लाल दरवाज़ा मस्जिद का निर्माण 1450 ई. में इब्राहिम शाह शर्की के पुत्र महमूद ने कराया था।"
      },
      {
        "name": "Jhajri Mosque (झाझरी मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s357aeee35c98205091e18d1140e9f38cf/uploads/bfi_thumb/2018022027-olw8r086xgpsdbvxo4x2wh6jswx68yww55kbz7ou82.jpg",
        "description": "This mosque is situated on the northern bank of Gomti in Mohalla Sipah district Jaunpur. It was built as a mosque by Ibrahim Shah Sharqi. | यह मस्जिद जौनपुर ज़िले के मोहल्ला सिपाह में गोमती नदी के उत्तरी तट पर स्थित है। इसका निर्माण इब्राहिम शाह शर्की ने मस्जिद के रूप में कराया था।"
      },
      {
        "name": "Atala Mosque (आताला मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s357aeee35c98205091e18d1140e9f38cf/uploads/bfi_thumb/20180706100-olw8r8oqmz1d9tjnaqkq0x1p5drh68uh6bfpapcao2.jpeg",
        "description": "In 1408 AD, Ibrahim Shah Sharqi built this mosque which was the starting point for the construction of other mosques in Jaunpur. | 1408 ई. में इब्राहिम शाह शर्की ने इस मस्जिद का निर्माण कराया, जो जौनपुर में अन्य मस्जिदों के निर्माण की शुरुआत बनी।"
      },
      {
        "name": "Sheetla Mata Chowkiya (शीतला माता चौकिया)",
        "image": "https://cdn.s3waas.gov.in/s357aeee35c98205091e18d1140e9f38cf/uploads/bfi_thumb/2018021628-olw8r4xdvmw7zdp3woy7qxzurua0bgfjtstrdlhvcy.jpg",
        "description": "The temple of Shitala Chowkiyan Devi is very old. The worship of Shiva and Shakti has been going on since the time of ancient India. | शीतला चौकिया देवी का मंदिर अत्यंत प्राचीन है। यहाँ शिव और शक्ति की पूजा प्राचीन भारत काल से होती आ रही है।"
      },
      {
        "name": "Royal Fort (शाही किला)",
        "image": "https://cdn.s3waas.gov.in/s357aeee35c98205091e18d1140e9f38cf/uploads/bfi_thumb/2018021654-olw8r5v82gxiaznqr7cubfrbd85dj5ja5xh8uvgh6q.jpg",
        "description": "This fort located on the banks of Gomti river in the city was built by Firoz Shah in 1362. | शहर में गोमती नदी के तट पर स्थित इस शाही किले का निर्माण 1362 ई. में फ़िरोज़ शाह ने कराया था।"
      },
      {
        "name": "Jama Masjid (जामा मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s357aeee35c98205091e18d1140e9f38cf/uploads/bfi_thumb/2018070695-olw8r1614ar2oxukinbpgyy0easjgo0mha7tghng1u.jpeg",
        "description": "Situated near the old market on Shahganj Road in Jaunpur, this mosque is more than 200 feet high and is unique. | जौनपुर के शाहगंज रोड पर पुराने बाज़ार के पास स्थित यह जामा मस्जिद 200 फीट से अधिक ऊँची है और अपने आप में अद्वितीय है।"
      },
      {
        "name": "Royal Bridge (शाही पुल)",
        "image": "https://cdn.s3waas.gov.in/s357aeee35c98205091e18d1140e9f38cf/uploads/bfi_thumb/2018022069-olw8r1614ar2oxukinbpgyy0easjgo0mha7tghng1u.jpg",
        "description": "According to Tarikh Muimi, this famous Shahi Bridge of Jaunpur was constructed during the reign of Akbar in 1564. | तारीख़-ए-मुईमी के अनुसार, जौनपुर का यह प्रसिद्ध शाही पुल अकबर के शासनकाल में 1564 ई. में बनाया गया था।"
      }
    ],

    "Jhansi (झांसी)": [
      {
        "name": "Jhansi Fort (झाँसी का किला)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2018070519-olwaen3km4v85v447yezdxvc1kj063q6t55d2407hm.jpg",
        "description": "Located in the heart of Jhansi city, the Jhansi Fort was one of the most important centres of resistance to the British in 1857. | झाँसी शहर के मध्य स्थित यह किला 1857 के विद्रोह का एक प्रमुख केंद्र था।"
      },
      {
        "name": "Samthar Fort (समथर किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnFYTeqm7-iNZtD_-Go78_SbcKsngbTElt2A&s",
        "description": "Once the seat of a powerful princely state, Samthar Fort is known for its history and architecture. | यह किला कभी एक शक्तिशाली रियासत का केंद्र था और अपनी ऐतिहासिक एवं स्थापत्य कला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Major Dhyanchand Museum (प्रमुख ध्यानचंद संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz15iV9Y0_LlcNYqs32PI_OSMdeC2hDVPBtg&s",
        "description": "Dedicated to hockey wizard Major Dhyanchand, the museum is a tribute to his legacy. | हॉकी के जादूगर मेजर ध्यानचंद को समर्पित यह संग्रहालय उनकी विरासत का प्रतीक है।"
      },
      {
        "name": "Garhmau Lake (गढ़मऊ झील)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121372-1-scaled-pz3l3qxwvlq01qfc35wijzwyl2v8g6zvboxdehd1ii.jpg",
        "description": "A beautiful natural lake located about 2 km from Jhansi. | झाँसी से लगभग 2 किमी दूर स्थित यह एक सुंदर प्राकृतिक झील है।"
      },
      {
        "name": "Narayan Bagh (नारायण बाग)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121344-scaled-pz3kmzhizyrx02rvyx2138717phl6ig70q3nau7sh6.jpg",
        "description": "A government garden hosting numerous plant species and colorful flowers. | यह सरकारी उद्यान कई प्रकार के पौधों और रंग-बिरंगे फूलों से सुसज्जित है।"
      },
      {
        "name": "Atal Ekta Park (अटल एकता पार्क)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121374-1-pz3k6m4pyud4skjykcay5ux0r46g4aghrp27echmui.jpg",
        "description": "Located in Civil Lines, the park includes a grand library and beautiful surroundings. | सिविल लाइन में स्थित इस पार्क में एक भव्य पुस्तकालय और सुंदर परिसर है।"
      },
      {
        "name": "Sukma Dukma Dam (सुकमा दुकमा बांध)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121374-pz3jo9c6ib8k2p7sqwo7yznz58net2l6wufv0tpecq.jpg",
        "description": "A scenic dam located 40 km from Jhansi in Uttar Pradesh. | झाँसी से 40 किमी दूर स्थित यह एक खूबसूरत बांध है।"
      },
      {
        "name": "Sati Pillar Memorial (सती स्तंभ स्मारक)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121345-pz3hflsq32ttv8dcpjlniud4606lc1ec5n8zl3ai96.jpg",
        "description": "The remarkable 56 sati pillars can be seen in Dhikoli village. | धिकौली गाँव में अद्वितीय 56 सती स्तंभ देखे जा सकते हैं।"
      },
      {
        "name": "Ram Janki Mandir (राम जानकी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121390-pz3gwq7etuzip5shxvudy3uuof87qvgek7kxm1a57u.jpg",
        "description": "A grand temple of Ram and Janki located in Singar village, 80 km from Jhansi. | झाँसी से 80 किमी दूर सिंगार गाँव में स्थित यह भव्य राम-जानकी मंदिर है।"
      },
      {
        "name": "Kedareswar Temple (केदारेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121333-pz3gfllaajjf4yo5yhb4ifggznnfhfghjfmesioelm.jpg",
        "description": "Located near Mauranipur, this temple is an ancient religious site. | मौरणीपुर के पास स्थित यह मंदिर एक प्राचीन धार्मिक स्थल है।"
      },
      {
        "name": "Shiva Temple of Gairaha (गैरहा का शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121398-pz3dwx3syxel38e0gs7tgt8lwglnwmgpelx32j4ove.jpg",
        "description": "Situated on Jhansi-Khajuraho road, the temple is an important religious site. | झाँसी-खजुराहो मार्ग पर स्थित यह एक महत्वपूर्ण शिव मंदिर है।"
      },
      {
        "name": "Jarai Ka Math (जराई का मठ)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121323-pz3cxq1d2982cvihzkiq3oz9522vomqj8eik5jbduy.jpg",
        "description": "Believed to be built by the Chandela rulers, located 18 km from Jhansi. | माना जाता है कि यह मठ चंदेल शासकों द्वारा बनवाया गया था।"
      },
      {
        "name": "Murli Manohar Mandir (मुरली मनोहर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121378-pz3ca74s0j0ps7oocwfv74oxww161ccdnyq2r873l6.jpg",
        "description": "A palace-like temple in Jhansi city dedicated to Lord Krishna. | झाँसी नगर का यह महलनुमा मंदिर भगवान श्रीकृष्ण को समर्पित है।"
      },
      {
        "name": "Ganesh Temple (गणेश मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121339-pz3bzq7hvyoqgkw6hvigx9t3pdmzaps0k54db9pywa.jpg",
        "description": "Located in Ganesh Bazaar, built during the reign of Raja Gangadharrao. | गणेश बाजार में स्थित यह मंदिर राजा गंगाधरराव के समय का है।"
      },
      {
        "name": "Karguvanji Jain Temple (कर्गुवांजी जैन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121389-pz3b9vn9xzav6mfvfp9tcsmrlx1lmd5r079o7c1q0a.jpg",
        "description": "A 700-year-old Digambar Jain pilgrimage site. | लगभग 700 वर्ष पुराना दिगंबर जैन तीर्थ स्थल।"
      },
      {
        "name": "Madia Mahadev Mandir (माड़िया महादेव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121392-pz3a5lab0m5fkayloscgzgmj0dm8pe7x4sngpds6p6.jpg",
        "description": "A group of temples located in Jhokan Bagh area of Jhansi. | झाँसी के झोकन बाग क्षेत्र में स्थित यह मंदिरों का समूह है।"
      },
      {
        "name": "Lakshmi Temple (लक्ष्मी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121371-scaled-pz38ro2w1dt6xvh577hsk2577nofw414xpb34bsx62.jpg",
        "description": "Linked to Rani Lakshmibai, situated near Laxmi Tal pond. | रानी लक्ष्मीबाई से जुड़ा यह मंदिर लक्ष्मी ताल के पास स्थित है।"
      },
      {
        "name": "Memorial of Jhansi King (झाँसी नरेश का स्मारक)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2022121241-pz1yhl5e712k43jvy19rzhm9qrkydvsxvd5y5y4a22.jpg",
        "description": "Built by Rani Laxmibai in memory of Raja Gangadharrao. | रानी लक्ष्मीबाई द्वारा राजा गंगाधरराव की स्मृति में बनवाया गया छत्री।"
      },
      {
        "name": "Baruasagar Fort (बरुआसागर किला)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2018022246-olwae4astg5hpnvf9qag02m45v3nw5nk2k3ngks2y2.jpg",
        "description": "Built as a summer retreat for the Orchha rulers. | ओरछा के राजाओं के ग्रीष्मकालीन निवास हेतु निर्मित।"
      },
      {
        "name": "St. Jude’s Church (सेंट जूड्स चर्च)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2018071210-olwaen3km4v85v447yezdxvc1kj063q6t55d2407hm.jpg",
        "description": "A popular Catholic pilgrimage site in Civil Lines, Jhansi. | सिविल लाइंस, झाँसी में स्थित यह प्रसिद्ध कैथोलिक तीर्थ स्थल है।"
      },
      {
        "name": "Rani Mahal (रानी महल)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2018071350-olwaeo1esywihh2r2gtlyfmsmyeddstx59sujdytbe.jpg",
        "description": "One of the most prominent buildings associated with Rani Lakshmibai. | रानी लक्ष्मीबाई से जुड़ी प्रमुख इमारतों में से एक।"
      },
      {
        "name": "Government Museum Jhansi (राजकीय संग्रहालय झाँसी)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2018071368-1-olwaeo1esywihh2r2gtlyfmsmyeddstx59sujdytbe.jpg",
        "description": "Houses a rich collection of artifacts, paintings and sculptures. | इसमें प्राचीन वस्तुओं, चित्रों और मूर्तियों का समृद्ध संग्रह है।"
      },
      {
        "name": "Parichha Dam (परीच्छा बांध)",
        "image": "https://cdn.s3waas.gov.in/s38efb100a295c0c690931222ff4467bb8/uploads/bfi_thumb/2018080746-olwaeoz8zsxst31dwz88ixe98c9qlhxnhegc0nxf56.jpg",
        "description": "Built on the Betwa River near Parichha town, about 25 km from Jhansi. | बेतवा नदी पर परीच्छा कस्बे के पास झाँसी से लगभग 25 किमी दूर बना यह बांध है।"
      }
    ],

    "Kannauj (कन्नौज)": [
      {
        "name": "Archaeological Museum (पुरातत्व संग्रहालय)",
        "image": "https://cdn.s3waas.gov.in/s37eabe3a1649ffa2b3ff8c02ebfd5659f/uploads/bfi_thumb/2018022291-1-olw9quslkzsh5xtbc4ruhxifey84te8cql9zw4jawy.jpg",
        "description": "The Archaeological Museum of Kannauj has a vast variety of clay idols, which prove that in ancient times Kannauj was famous for terracotta art. | कन्नौज का पुरातत्व संग्रहालय मिट्टी की मूर्तियों का विशाल संग्रह है, जो यह सिद्ध करता है कि प्राचीन काल में कन्नौज अपनी मृदभांड कला के लिए प्रसिद्ध था।"
      },
      {
        "name": "Lakh Bahosi Sanctuary (लख बहोसी अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s37eabe3a1649ffa2b3ff8c02ebfd5659f/uploads/bfi_thumb/2018022216-olw9qture5r6ubuohmd7xfqytkcrlp4megmieukp36.jpg",
        "description": "Located near Lakhbasohi village in Kannauj district, this bird sanctuary was established in 1989 and is home to many migratory birds. | कन्नौज जिले के लखबहोसी गाँव के पास स्थित यह पक्षी अभयारण्य 1989 में स्थापित हुआ था और यहाँ अनेक प्रवासी पक्षी आते हैं।"
      },
      {
        "name": "Gauri Shankar Temple (गौरी शंकर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37eabe3a1649ffa2b3ff8c02ebfd5659f/uploads/bfi_thumb/2018022231-olw9qture5r6ubuohmd7xfqytkcrlp4megmieukp36.jpg",
        "description": "One of the most famous religious temples of Kannauj, dedicated to Lord Shiva. | कन्नौज का यह प्रसिद्ध धार्मिक मंदिर भगवान शिव को समर्पित है।"
      },
      {
        "name": "Annapurna Temple (अन्नपूर्णा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37eabe3a1649ffa2b3ff8c02ebfd5659f/uploads/bfi_thumb/2018022279-olw9quslkzsh5xtbc4ruhxifey84te8cql9zw4jawy.jpg",
        "description": "Another famous temple of Kannauj dedicated to Goddess Annapurna. | कन्नौज का यह प्रसिद्ध मंदिर देवी अन्नपूर्णा को समर्पित है।"
      }
    ],

    "Kanpur Nagar (कानपुर नगर)": [
      {
        "name": "Bhitargaon Temple (भितरगाँव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s31700002963a49da13542e0726b7bb758/uploads/bfi_thumb/2018021862-olw73jxonpbw188ttxrkoz9z6jyee5w2yw3q85u9s2.jpg",
        "description": "Bhitar village in Kanpur district has the remains of a Gupta period brick temple, which is one of the rare examples of early Indian architecture. | कानपुर जिले के भितर गाँव में गुप्तकालीन ईंटों का मंदिर स्थित है, जो प्राचीन भारतीय वास्तुकला का एक दुर्लभ उदाहरण है।"
      },
      {
        "name": "Radha Krishna Temple - J.K. Temple (राधा कृष्ण मंदिर - जे.के. मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s31700002963a49da13542e0726b7bb758/uploads/bfi_thumb/2018021821-olw73jxonpbw188ttxrkoz9z6jyee5w2yw3q85u9s2.jpg",
        "description": "This beautifully built temple, also known as J.K. Temple, is dedicated to Lord Radha-Krishna and is a popular religious site. | यह खूबसूरती से निर्मित मंदिर भगवान राधा-कृष्ण को समर्पित है और जे.के. मंदिर के नाम से प्रसिद्ध है।"
      },
      {
        "name": "Kanpur Memorial Church (कानपुर मेमोरियल चर्च)",
        "image": "https://cdn.s3waas.gov.in/s31700002963a49da13542e0726b7bb758/uploads/bfi_thumb/2018021838-olw73jxonpbw188ttxrkoz9z6jyee5w2yw3q85u9s2.jpg",
        "description": "Also known as the All Souls Cathedral, the Kanpur Memorial Church is an impressive historical architectural structure. | ऑल सोल्स कैथेड्रल के नाम से प्रसिद्ध कानपुर मेमोरियल चर्च एक भव्य ऐतिहासिक वास्तुशिल्पीय संरचना है।"
      },
      {
        "name": "Nanarao Park (नाना राव पार्क)",
        "image": "https://cdn.s3waas.gov.in/s31700002963a49da13542e0726b7bb758/uploads/bfi_thumb/2018021885-olw73jxonpbw188ttxrkoz9z6jyee5w2yw3q85u9s2.jpg",
        "description": "Nanarao Park is located to the west of Phool Bagh. It is historically significant as Bibighar was located here during 1857. | फूल बाग के पश्चिम में स्थित नाना राव पार्क ऐतिहासिक रूप से महत्वपूर्ण है, क्योंकि 1857 में यहाँ बीबीघर स्थित था।"
      },
      {
        "name": "Green Park Stadium (ग्रीन पार्क स्टेडियम)",
        "image": "https://cdn.s3waas.gov.in/s31700002963a49da13542e0726b7bb758/uploads/bfi_thumb/2018021857-olw73jxonpbw188ttxrkoz9z6jyee5w2yw3q85u9s2.jpeg",
        "description": "Green Park Stadium is a multi-purpose cricket ground with a capacity of 32,000, serving as the home ground of the Uttar Pradesh cricket team. | ग्रीन पार्क स्टेडियम एक बहुउद्देशीय क्रिकेट मैदान है, जिसकी क्षमता 32,000 दर्शकों की है और यह उत्तर प्रदेश क्रिकेट टीम का घरेलू मैदान है।"
      },
      {
        "name": "Jagannath Temple, Behat (जगन्नाथ मंदिर, बेहट)",
        "image": "https://cdn.s3waas.gov.in/s31700002963a49da13542e0726b7bb758/uploads/bfi_thumb/2018021875-olw73jxonpbw188ttxrkoz9z6jyee5w2yw3q85u9s2.jpg",
        "description": "This ancient temple of Lord Jagannath is situated about 3 km from Bhitargaon block headquarters. | भगवान जगन्नाथ का यह प्राचीन मंदिर भितरगाँव ब्लॉक मुख्यालय से लगभग 3 किमी दूर स्थित है।"
      },
      {
        "name": "Kanpur Zoological Park (कानपुर प्राणी उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s31700002963a49da13542e0726b7bb758/uploads/bfi_thumb/2018021832-olw73jxonpbw188ttxrkoz9z6jyee5w2yw3q85u9s2.jpg",
        "description": "Opened to the public in 1974, Kanpur Zoological Park is one of the oldest zoological parks in India and a popular family destination. | 1974 में आम जनता के लिए खोला गया कानपुर प्राणी उद्यान भारत के सबसे पुराने प्राणी उद्यानों में से एक है और परिवारों के लिए लोकप्रिय स्थल है।"
      }
    ],

    "Kanpur Dehat (कानपुर देहात)": [
      {
        "name": "Old Banyan Tree (Shiv Bajrang Dham Kishunpur) (पुराना बरगद वृक्ष, शिव बजरंग धाम किशुनपुर)",
        "image": "https://cdn.s3waas.gov.in/s30e65972dce68dad4d52d063967f0a705/uploads/bfi_thumb/2018073125-olw6uey67otj5pip6zk5gaan9ozxk3m11nrs9be29u.jpg",
        "description": "A five hundred years old Banyan Tree is standing with support of its stem roots. The original stem of the tree is still intact and it is considered sacred by the locals. | लगभग 500 साल पुराना यह बरगद वृक्ष अपनी मूल जड़ की सहायता से खड़ा है। इसके मूल तने को अब भी सुरक्षित रखा गया है और स्थानीय लोग इसे पवित्र मानते हैं।"
      }
    ],

    "Kasganj (कासगंज)": [
      {
        "name": "Clock Tower (घड़ी टॉवर, मुरलीधर घंटा घर)",
        "image": "https://cdn.s3waas.gov.in/s3a597e50502f5ff68e3e25b9114205d4a/uploads/bfi_thumb/2018021745-olwb00xe0dmj3c79knofbj5v3jl4prjzm5w04tk7wi.jpg",
        "description": "Murlidhar Ghanta Ghar was built by Lala Dayal ji in memory of his father Shri Murlidhar Agarwal. It is located in Kasganj city. | मुरलीधर घंटा घर लाल दयाल जी द्वारा अपने पिता श्री मुरलीधर अग्रवाल की स्मृति में बनवाया गया था। यह कासगंज शहर में स्थित है।"
      },
      {
        "name": "Laxmi Gate (लक्ष्मी गेट)",
        "image": "https://cdn.s3waas.gov.in/s3a597e50502f5ff68e3e25b9114205d4a/uploads/bfi_thumb/2018021757-olwb0e34o24jlvo5ftd7afubexs9pj08bz0sup0phe.jpg",
        "description": "It is situated on the way to the roadways bus stand via Kasganj railway junction. It is a living example of craftsmanship and architecture. | यह कासगंज रेलवे जंक्शन के रास्ते रोडवेज बस स्टैंड की ओर स्थित है। यह शिल्पकला और वास्तुकला का जीवंत उदाहरण है।"
      },
      {
        "name": "Nadrai (नद्राई पुल)",
        "image": "https://cdn.s3waas.gov.in/s3a597e50502f5ff68e3e25b9114205d4a/uploads/bfi_thumb/2018021639-1-olwb0c7gae1yynqvqsjy5gbe861ja4srnpptw53htu.jpg",
        "description": "It is also called Jhaal Bridge. It is built on the Ganges Canal and Kali River. It has been built since 1885. | इसे झाल पुल भी कहा जाता है। यह गंगा नहर और काली नदी पर बनाया गया है और 1885 से मौजूद है।"
      },
      {
        "name": "Harapati Ganga / Hari Ki Pauri (हरिपति गंगा / हरि की पौड़ी)",
        "image": "https://cdn.s3waas.gov.in/s3a597e50502f5ff68e3e25b9114205d4a/uploads/bfi_thumb/2018021654-olwb0c7gae1yynqvqsjy5gbe861ja4srnpptw53htu.jpg",
        "description": "Shukarkshetra Soron is also known as Hari ki Pauri. This place is dedicated to the Varaha incarnation of Lord Vishnu. | शुकारक्षेत्र सौरन को हरि की पौड़ी भी कहा जाता है। यह स्थल भगवान विष्णु के वराह अवतार को समर्पित है।"
      },
      {
        "name": "Bhimsen Ghanta (भीमसेन घंटा)",
        "image": "https://cdn.s3waas.gov.in/s3a597e50502f5ff68e3e25b9114205d4a/uploads/bfi_thumb/2018021617-olwb0b9m3k0on1s8wa5bkyjxms662fp1bl2cev4w02.jpg",
        "description": "Bhimsen Ghanta is located in the Bhimsen temple in Nadrai village. An annual fair called Bhimsen Mela is held here. | भीमसेन घंटा नद्राई गाँव के भीमसेन मंदिर में स्थित है। यहाँ प्रतिवर्ष भीमसेन मेला आयोजित होता है।"
      }
    ],

    "Kaushambi (कौशांबी)": [
      {
        "name": "Sheetla Mata Temple, Kada (शीतला माता मंदिर, कड़ा)",
        "image": "https://cdn.s3waas.gov.in/s369adc1e107f7f7d035d7baf04342e1ca/uploads/2018/02/2018021764-225x300.jpg",
        "description": "The temple of Ma Sheetla is situated on the banks of the river Ganges. It is known as the main Shakti Peeth among all the 51 Shakti Peethas of the Goddess. Followers of all religions worship in this temple. | मां शीतला का मंदिर गंगा नदी के किनारे स्थित है। इसे सभी 51 शक्ति पीठों में मुख्य शक्ति पीठ माना जाता है। सभी धर्मों के अनुयायी इस मंदिर में पूजा करते हैं।"
      },
      {
        "name": "Kada Fort Remains (कड़ा किला अवशेष)",
        "image": "https://cdn.s3waas.gov.in/s369adc1e107f7f7d035d7baf04342e1ca/uploads/2018/02/2018021728-300x200.jpg",
        "description": "Kada was an important city in the kingdoms of medieval northern India. Remains of the fort of Raja Jaichand, the Lasir Hindu king of Kannauj, can still be seen. | कड़ा उत्तर भारत के मध्यकालीन राज्यों में एक महत्वपूर्ण नगर था। यहाँ राजा जैचंद, कन्नौज के लसिर हिन्दू राजा, के किले के अवशेष आज भी देखे जा सकते हैं।"
      },
      {
        "name": "Saint Malukhdas Ashram, Kada (संत मालुखदास आश्रम, कड़ा)",
        "image": "https://cdn.s3waas.gov.in/s369adc1e107f7f7d035d7baf04342e1ca/uploads/2018/02/2018021740.jpg",
        "description": "Birthplace and ashram of Saint Malukhdas (1631–1739 A.D.), who was also a follower of Goddess Kada. Guru Tegh Bahadur used to visit to give lectures here. | संत मालुखदास (1631–1739 ई.) का जन्मस्थान और आश्रम, जो देवी कड़ा के अनुयायी भी थे। गुरु तेग बहादुर यहाँ प्रवचन देने आते थे।"
      }
    ],

    "Kushinagar (कुशीनगर)": [
      {
        "name": "Rambhar Stupa (रामभर स्तूप)",
        "image": "https://cdn.s3waas.gov.in/s39de6d14fff9806d4bcd1ef555be766cd/uploads/bfi_thumb/2022121677-pz8lrmlnl0j0dvbs7yk4fr56naj60lvq23367r9a0y.jpg",
        "description": "Rambhar Stupa was built over a portion of Buddha's ashes at the place where the ancient Malla kingdom cremated him. | रामभर स्तूप बुद्ध के अवशेषों के ऊपर बनाया गया था, उस स्थान पर जहां प्राचीन मल्ल साम्राज्य ने उनका अंतिम संस्कार किया था।"
      },
      {
        "name": "Usmanpur (उस्मानपुर)",
        "image": "https://cdn.s3waas.gov.in/s39de6d14fff9806d4bcd1ef555be766cd/uploads/bfi_thumb/2022121596-pz6rbgacevtj403fuffz9wstm79dji3zhx0ahk5req.jpg",
        "description": "The first excavation in Usmanpur was done in 1996 at Veer Bhari Tila, which is situated in Usmanpur. | उस्मानपुर में पहली खुदाई 1996 में वीर भारी टीला पर की गई थी।"
      },
      {
        "name": "Farendaha (फरेंढा)",
        "image": "https://cdn.s3waas.gov.in/s39de6d14fff9806d4bcd1ef555be766cd/uploads/bfi_thumb/2022121520-pz6r6ym3rdo7n2ma2hk5d1ljfxe8rka5josrxyth4y.jpg",
        "description": "Excavation work started in 1998 at Chundagram, which is located in Farendhan. | फरेंढा में चुंडाग्राम पर 1998 में खुदाई का काम शुरू हुआ।"
      },
      {
        "name": "Badurawa (बदुरावा)",
        "image": "https://cdn.s3waas.gov.in/s39de6d14fff9806d4bcd1ef555be766cd/uploads/bfi_thumb/2022121524-pz6ns51aqpjeld0v9eb3k1d93ermzcosns0qgcxe6a.jpg",
        "description": "There is a mound near Badhiyawa pond in Baduravan Hola Vantail, historically noted by elders. | बदुरावन होला वंतैल के बधियावा तालाब के पास एक टीला है, जिसे बुजुर्गों द्वारा ऐतिहासिक रूप से बताया गया है।"
      },
      {
        "name": "Dhanyes (धन्येस)",
        "image": "https://cdn.s3waas.gov.in/s39de6d14fff9806d4bcd1ef555be766cd/uploads/bfi_thumb/2022121360-pz3lq5ffodvhk018ht0eotygt2woc1v79r3y6zep6q.jpg",
        "description": "The story of Lord Buddha visiting Usmanpur through Veerbhari garden is told by village elders. | हमारे गांव के बुजुर्ग बताते हैं कि भगवान बुद्ध वीरभारी बगान से उस्मानपुर आए।"
      },
      {
        "name": "Sri Lanka Temple (श्रीलंका मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s39de6d14fff9806d4bcd1ef555be766cd/uploads/bfi_thumb/2018041345-olwbdpgthkcs30btokkxm2vedg5gr5vc5vqflt9xc2.jpeg",
        "description": "A joint venture between AIK World Association of Buddhist Culture Japan and Sri Lanka Buddhist Centre. | जापान के एआईके वर्ल्ड एसोसिएशन ऑफ बौद्ध संस्कृति और श्रीलंका बौद्ध केंद्र के संयुक्त प्रयास से।"
      },
      {
        "name": "Chinese Buddhist Temple (चाइनीज बौद्ध मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s39de6d14fff9806d4bcd1ef555be766cd/uploads/bfi_thumb/2018041392-1-olwbdrchv8fcq893dle6r2ebk7w76k2su51ekd74zm.jpg",
        "description": "The Linh Son Vietnam Chinese Buddhist Temple is a two-story building located north of the Burmese Temple. | लिन्ह सोन वियतनाम चीनी बौद्ध मंदिर, बर्मीज़ मंदिर के उत्तर में दो मंजिला इमारत।"
      },
      {
        "name": "Matha Kunwar Temple (मठा कुँवर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s39de6d14fff9806d4bcd1ef555be766cd/uploads/bfi_thumb/2018041314-olwbdv3umkki0o3mrn0p11g5xrdo1chq6nnchh1kaq.jpg",
        "description": "Matha Kunwar temple is in Kushinagar, southwest of the Parinirvana Temple. | मठा कुँवर मंदिर कुशीनगर में, महापरिनिर्वाण मंदिर के दक्षिण-पश्चिम दिशा में।"
      },
      {
        "name": "Mahaparinirvana Temple (महापरिनिर्वाण मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s39de6d14fff9806d4bcd1ef555be766cd/uploads/bfi_thumb/2018041317-olwbdv3umkki0o3mrn0p11g5xrdo1chq6nnchh1kaq.jpg",
        "description": "One of the holiest Buddhist temples in the world, located in Kushinagar. | कुशीनगर में स्थित, दुनिया के सबसे पवित्र बौद्ध मंदिरों में से एक।"
      }
    ],

    "Lakhimpur Kheri (लखीमपुर खीरी)": [
      {
        "name": "Dudhwa National Park (दुधवा राष्ट्रीय उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s3a2557a7b2e94197ff767970b67041697/uploads/bfi_thumb/2018071053-olwb3caw4c5y1tdv7la1m71ejh8qvbpwekqo2yn7ya.png",
        "description": "The 775 sq km forest area between Mohana and Suhali rivers was declared a reserved forest in 1861. | मोहना और सुहाली नदियों के बीच 775 वर्ग किमी का वन क्षेत्र 1861 में आरक्षित वन घोषित किया गया था।"
      }
    ],

    "Lalitpur (ललितपुर)": [
      {
        "name": "Devgarh Temple Lalitpur (देवगढ़ मंदिर, ललितपुर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/f4/bd/31/devgarh-hill-jain-temples.jpg?w=1200&h=-1&s=1",
        "description": "Deogarh is a village in Lalitpur district of the Indian state of Uttar Pradesh. It is located on the right bank of the Betwa River. | देवगढ़ उत्तर प्रदेश के ललितपुर जिले का एक गांव है। यह बेतवा नदी के दाहिने किनारे पर स्थित है।"
      },
      {
        "name": "Rajghat Dam Lalitpur (राजघाट डैम, ललितपुर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/0b/ae/c8/rajghat-dam.jpg?w=900&h=500&s=1",
        "description": "55 km from Deogarh, it is a huge water reservoir on Betwa River with scenic parks nearby. | देवगढ़ से 55 किमी दूर, यह बेतवा नदी पर स्थित एक विशाल जलाशय है, जिसके आसपास सुंदर पार्क और प्राकृतिक स्थल हैं।"
      },
      {
        "name": "Muchkund Caves (मुचकुंड गुफाएँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-GBgEVJPZZGrn4aC8w40MIF0xdCI2YJySsA&s",
        "description": "5 km from Dhaujari, 30 km from Deogarh, accessible by a forest road, these natural caves are a scenic attraction. | धौजारी से 5 किमी, देवगढ़ से 30 किमी दूर, जंगल की सड़क द्वारा पहुँचने योग्य ये प्राकृतिक गुफाएँ एक दर्शनीय स्थल हैं।"
      },
      {
        "name": "Dashavatar Temple (दशावतार मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-i/13/07/76/0f/dashavatar-temple.jpg",
        "description": "This Gupta period Vishnu temple is the earliest known Panchayatan temple of North India. | यह गुप्तकालीन विष्णु मंदिर उत्तर भारत का सबसे पुराना ज्ञात पंचायतन मंदिर है।"
      }
    ],

    "Lucknow (लखनऊ)": [
      {
        "name": "La Martiniere College Lucknow (ला मार्टिनियर कॉलेज, लखनऊ)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2024111680-qx4leo906ivldr4kkog91ec9ad5k4896fdhm8y2waq.jpg",
        "description": "La Martiniere College Lucknow, also known as the palace Constantia, has stood for over two centuries on the west bank of the Gomti River. | ला मार्टिनियर कॉलेज लखनऊ, जिसे पैलेस कॉन्स्टेंटिया भी कहा जाता है, गोमती नदी के पश्चिमी किनारे पर दो सदी से अधिक समय से खड़ा है।"
      },
      {
        "name": "All Saints Garrison Church (ऑल सेंट्स गारिसन चर्च, लखनऊ)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2024100872-scaled-qv96if41wybopue1t9qzih0uhc5na6cd2o1hvjv08y.jpg",
        "description": "All Saints Garrison Church in Lucknow Cantonment is a historic religious site where visitors are encouraged to offer prayers. | लखनऊ छावनी में ऑल सेंट्स गारिसन चर्च एक ऐतिहासिक धार्मिक स्थल है, जहाँ आगंतुकों से प्रार्थना करने की प्रथा है।"
      },
      {
        "name": "Hanuman Mandir Aliganj (हनुमान मंदिर, अलीगंज)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2024100815-scaled-qv937b0bur9lgrercs6yjj40hj95uzgw13wej8h0qq.jpg",
        "description": "Nestled in the historic heart of Lucknow’s Aliganj, this Hanuman Temple is a revered religious landmark. | लखनऊ के ऐतिहासिक अलीगंज क्षेत्र में स्थित हनुमान मंदिर एक प्रतिष्ठित धार्मिक स्थल है।"
      },
      {
        "name": "Maqbara Saadat Ali Khan (मकबरा सादत अली खान)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2024093082-e1727686718731-quv2ij6h9jl3fqke88bfpcv9t6to5gp6q14ecrhrsy.jpg",
        "description": "Located in the splendid environs of Qaiserbagh, this mausoleum houses three centrally protected monuments in one campus. | क़ैसरबाग के शानदार परिवेश में स्थित यह मकबरा एक परिसर में तीन केंद्रीय संरक्षित स्मारकों का घर है।"
      },
      {
        "name": "Nadan Mahal (नादान महल)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2024092749-e1727427782815-qupus10n4ppav5o65bw23cbx8smrwawl6jfgi6e8si.jpg",
        "description": "Situated in the Yahiyaganj precinct of Old Lucknow, Nadan Mahal is a historic architectural marvel. | पुरानी लखनऊ के याहियागंज क्षेत्र में स्थित नादान महल एक ऐतिहासिक वास्तुशिल्प चमत्कार है।"
      },
      {
        "name": "Sikandar Bagh (सिकंदर बाग़)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/20240926100-scaled-e1727337128185-quo0yp642m9ps395d6ah18fvzur5ictzfg6fp3f8xu.jpeg",
        "description": "Historic Sikandar Bagh in Lucknow stands as a testament to the city’s rich culture and heritage. | लखनऊ का ऐतिहासिक सिकंदर बाग़ शहर की समृद्ध संस्कृति और विरासत का प्रमाण है।"
      },
      {
        "name": "Imambada Sibtainabad (इमामबाड़ा सिबतैनाबाद)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2024092567-qum90d9g5ejw8fincz9kp7wn1mndrqqm7yxcc141ky.jpg",
        "description": "Located in Hazratganj, this Imambada, the Mausoleum of King Amjad Ali Shah, is an architectural landmark. | हजरतगंज में स्थित यह इमामबाड़ा, राजा अमजद अली शाह का मकबरा, वास्तुशिल्प का एक महत्वपूर्ण स्थल है।"
      },
      {
        "name": "Bibiyapur Kothi (बिबियापुर कोठी)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2024091365-scaled-qu1l63j94b4aumg6nfas64f7d7c22dv27u6kmziqki.jpg",
        "description": "Situated on the right bank of the Gomti River, Bibiyapur Kothi is a historic residence from the Awadh era. | गोमती नदी के दाहिने किनारे पर स्थित बिबियापुर कोठी अवध काल का एक ऐतिहासिक निवास है।"
      },
      {
        "name": "Dilkusha Palace (दिलकुशा पैलेस)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2024091285-scaled-qtzqv73capmqpzk1h699zy5yby2es513prvruolp1e.jpg",
        "description": "Dilkusha Palace is a historic palace south of La Martiniere College, noted for its grandeur and history. | दिलकुशा पैलेस ला मार्टिनियर कॉलेज के दक्षिण में स्थित ऐतिहासिक महल है, जो अपनी भव्यता और इतिहास के लिए जाना जाता है।"
      },
      {
        "name": "Chhota Imambada (छोटा इमामबाड़ा)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2018050266-olw813salt9cg5icwxv670haiol25835wyenwq3doi.jpg",
        "description": "Commissioned by Mohammad Ali Shah, the third King of Oudh, Chhota Imambada is a breathtaking architectural masterpiece. | मोहम्मद अली शाह, अवध के तीसरे राजा द्वारा निर्मित छोटा इमामबाड़ा एक अद्भुत वास्तुशिल्प कृति है।"
      },
      {
        "name": "Asafi Imambada (असफी इमामबाड़ा)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2018021719-olw80udwpgwh81w0ftswi2uoktve091ujnvt3yhbeq.jpg",
        "description": "Erected between 1784 and 1791, Asafi Imambada is an iconic historic landmark of Lucknow. | 1784 और 1791 के बीच निर्मित असफी इमामबाड़ा लखनऊ का एक प्रतिष्ठित ऐतिहासिक स्थल है।"
      },
      {
        "name": "Rumi Darwaza (रुमी दरवाजा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/fb/92/4e/caption.jpg?w=800&h=400&s=1",
        "description": "Situated northwest of Asafi Imambada, Rumi Darwaza is a majestic gateway of Lucknow. | असफी इमामबाड़ा के उत्तर-पश्चिम में स्थित रुमी दरवाजा लखनऊ का भव्य प्रवेश द्वार है।"
      },
      {
        "name": "Husainabad Clock Tower (हुसैनाबाद क्लॉक टॉवर)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2018021823-olw80i608mfr14drf6ir3nxoutjm86pc5zehvczfnm.jpg",
        "description": "A towering marvel in Lucknow, the Husainabad Clock Tower is an architectural and historic landmark. | लखनऊ में एक विशाल चमत्कार, हुसैनाबाद क्लॉक टॉवर वास्तुशिल्प और ऐतिहासिक स्थल है।"
      },
      {
        "name": "Residency Lucknow (रेजिडेंसी, लखनऊ)",
        "image": "https://cdn.s3waas.gov.in/s3310dcbbf4cce62f762a2aaa148d556bd/uploads/bfi_thumb/2018021874-olw80i608mfr14drf6ir3nxoutjm86pc5zehvczfnm.jpg",
        "description": "Situated atop the erstwhile highest point of Lucknow, Residency is a historic complex from the reign of Nawab Asaf-ud-Daulah. | लखनऊ के पूर्व सर्वोच्च बिंदु पर स्थित, रेजिडेंसी नवाब असफ़-उद-दौला के शासनकाल की ऐतिहासिक इमारत है।"
      }
    ],

    "Maharajganj (महराजगंज)": [
      {
        "name": "Ramgram (रामग्राम)",
        "image": "https://cdn.s3waas.gov.in/s3eecca5b6365d9607ee5a9d336962c534/uploads/bfi_thumb/2022041375-pnb179yz96v15oibeso617dc5hztr0srkdza1w02rm.jpeg",
        "description": "After the era of Mahabharata, there was a revolutionary change in this entire area. Many small republican states came under its influence. | महाभारत काल के बाद, इस पूरे क्षेत्र में क्रांतिकारी परिवर्तन आया। कई छोटे गणराज्य इसके प्रभाव में आए।"
      },
      {
        "name": "Itahiya Shiv Temple (इटहिया शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3eecca5b6365d9607ee5a9d336962c534/uploads/bfi_thumb/2018031340-olwdgqwz3f2uybbti0apo565muad99rwhanwv20gle.jpeg",
        "description": "Itahiya Shiv Temple can be reached from the headquarters of the Tehsil Nichlaul via Thothibari Marg. | इटहिया शिव मंदिर, तहसील निचलौल मुख्यालय से ठोठिबारी मार्ग के माध्यम से पहुंचा जा सकता है।"
      },
      {
        "name": "Temple of Goddess (Lehda) (देवी मंदिर, लेहदा)",
        "image": "https://cdn.s3waas.gov.in/s3eecca5b6365d9607ee5a9d336962c534/uploads/bfi_thumb/2018031359-olwdgruta9459xagcipc8mxm885qgyvmtfbecbz2f6.jpg",
        "description": "This is an important pilgrimage site of the district, reachable from Pharenda tehsil headquarter via Brijmanganj road. | यह जिले का एक महत्वपूर्ण तीर्थ स्थल है, जो फरेन्दा तहसील मुख्यालय से ब्रजमंगल मार्ग के माध्यम से पहुंचा जा सकता है।"
      }
    ],

    "Mahoba (महोबा)": [
      {
        "name": "Sun Temple of Rahelia (सूर्य मंदिर, राहेलिया)",
        "image": "https://cdn.s3waas.gov.in/s311b9842e0a271ff252c1903e7132cd68/uploads/bfi_thumb/2022120775-pyswiviuo8mc1x0wn3lgtov6oaxwi4qud43diujzsy.jpg",
        "description": "Sun Temple of Rahelia, Mahoba is a historic and religious site. | राहेलिया, महोबा का सूर्य मंदिर ऐतिहासिक और धार्मिक स्थल है।"
      },
      {
        "name": "Khakra Math (खाकरा माथ)",
        "image": "https://cdn.s3waas.gov.in/s311b9842e0a271ff252c1903e7132cd68/uploads/bfi_thumb/2021090748-pcr8zm3kuamn8fzbqs88m2pkazhgtq95q8r4blck5e.jpg",
        "description": "Heritage points of Mahoba, historic and religious importance. | महोबा के धरोहर स्थल, ऐतिहासिक और धार्मिक महत्व।"
      },
      {
        "name": "Jain Tirthankars (जैन तीर्थंकर)",
        "image": "https://cdn.s3waas.gov.in/s311b9842e0a271ff252c1903e7132cd68/uploads/bfi_thumb/2018021937-olw6s1euxrkft6yy2gl3ndvp7mpj3n6gdwell4ww02.jpg",
        "description": "A worship place of Jain sects located on a mountain behind Bari Chandika Temple, Mahoba. | महोबा में बड़ी चंडिका मंदिर के पीछे पहाड़ी पर स्थित जैन संप्रदाय का पूजा स्थल।"
      },
      {
        "name": "Devi Bari Chandika Ji Temple (देवी बड़ी चंडिका जी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s311b9842e0a271ff252c1903e7132cd68/uploads/bfi_thumb/2018072170-olw6s641vxqvf8s4b0m8hup06k2d64p42jo0zipx4y.jpg",
        "description": "Chandika Devi, also known as Chandi Devi, revered as the goddess of women's power. | चंडिका देवी, जिसे चंडी देवी भी कहा जाता है, महिला शक्ति की देवी के रूप में पूजनीय।"
      },
      {
        "name": "Shiv Tandav Temple (शिव तांडव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s311b9842e0a271ff252c1903e7132cd68/uploads/bfi_thumb/2018021975-olw6s2cp4llq4sxkwyzq7vn5t0kwbca6q1232evhtu.jpg",
        "description": "Shiv Tandav Temple Mahoba features a rare block granite statue in the dancing pose of Lord Shiva, near Collectorate Mahoba. | महोबा का शिव तांडव मंदिर, जिसमें भगवान शिव की नृत्य मुद्रा में दुर्लभ ग्रेनाइट की मूर्ति है, कलेक्टरेट महोबा के पास स्थित।"
      }
    ],

    "Mainpuri (मैनपुरी)": [
      {
        "name": "Maharaja Tej Singh Chauhan Fort (महाराजा तेज सिंह चौहान किला)",
        "image": "https://cdn.s3waas.gov.in/s33644a684f98ea8fe223c713b77189a77/uploads/bfi_thumb/2018021771-olw7yu0c385ee2t56gimo346u5s4jk2ilpnf5ngmpu.jpg",
        "description": "The Chauhan Dynasty ruled Mainpuri, Maharaja Tej Singh Chauhan is known for rising against the oppressors. | चौहान वंश ने मैनपुरी पर शासन किया, महाराजा तेज सिंह चौहान जानी जाते हैं जिन्होंने अन्याय के खिलाफ उठ खड़े हुए।"
      },
      {
        "name": "Sheetla Mata Mandir (शीतला माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33644a684f98ea8fe223c713b77189a77/uploads/bfi_thumb/2018021723-olw7yu0c385ee2t56gimo346u5s4jk2ilpnf5ngmpu.jpg",
        "description": "Located on Devi Road, Udetpur Abhai, Mainpuri, Uttar Pradesh. | उत्तर प्रदेश, मैनपुरी, उदेतपुर अभई की देवी रोड पर स्थित।"
      },
      {
        "name": "Saman Bird Sanctuary (समान पक्षी अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s33644a684f98ea8fe223c713b77189a77/uploads/bfi_thumb/2018021741-olw7yu0c385ee2t56gimo346u5s4jk2ilpnf5ngmpu.jpg",
        "description": "Notified in 1990 to protect the large population of sarus cranes. | 1990 में सरस क्रेन की बड़ी आबादी की रक्षा के लिए अधिसूचित।"
      },
      {
        "name": "Lohia Park (लोहिया पार्क)",
        "image": "https://cdn.s3waas.gov.in/s33644a684f98ea8fe223c713b77189a77/uploads/bfi_thumb/2018021773-olw7yeyx1vkt8bezma0lk6wtbzu94eet7n7nh82xhe.jpg",
        "description": "Known for greenery, water fountains, children’s rides, play area, ponds and flowering plants. | हरियाली, फव्वारे, बच्चों के झूले, खेल का मैदान, तालाब और रंग-बिरंगे फूलों के लिए प्रसिद्ध।"
      },
      {
        "name": "Cyvan Rishi Ashram (च्यवन ऋषि आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s33644a684f98ea8fe223c713b77189a77/uploads/bfi_thumb/2018021781-olw7yq8zbw093mylsew4e42cgmanornl971h8jm7eq.jpg",
        "description": "Located in Aucha area, 18 km from Mainpuri, known for herbal remedies and ancient teachings. | औचा क्षेत्र में, मैनपुरी से 18 किमी दूर, जड़ी-बूटियों और प्राचीन शिक्षाओं के लिए प्रसिद्ध।"
      }
    ],

    "Mathura (मथुरा)": [
      {
        "name": "Shri Krishna Janambhumi (श्री कृष्ण जन्मभूमि)",
        "image": "https://cdn.s3waas.gov.in/s326e359e83860db1d11b6acca57d8ea88/uploads/bfi_thumb/2018022398-olw7gnsnyj9txh7falqago7ddzcnq7xc3rlh52en0i.jpg",
        "description": "The Krishna Janmasthan in Mathura is important because this is where Lord Shri Krishna manifested Himself in the prison house. | मथुरा में कृष्ण जन्मस्थान महत्वपूर्ण है क्योंकि यहीं भगवान श्री कृष्ण ने जेल में अपने रूप का दर्शन कराया।"
      },
      {
        "name": "Shri Dwarkadhish Temple (श्री द्वारकाधीश मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s326e359e83860db1d11b6acca57d8ea88/uploads/bfi_thumb/2018073077-olw7gvbdh7k4icwi2ozb0mb252blfsr6sstcza3hmq.jpg",
        "description": "One of the oldest and largest temples of Mathura city, a major religious site. | मथुरा शहर के सबसे पुराने और बड़े मंदिरों में से एक, एक प्रमुख धार्मिक स्थल।"
      },
      {
        "name": "Raman Reti, Gokul (रमन रेत, गोकुल)",
        "image": "https://cdn.s3waas.gov.in/s326e359e83860db1d11b6acca57d8ea88/uploads/bfi_thumb/2018073082-olw7gtfp3jhjv4z8do61vms4yakv0ejq4jie0q69z6.jpg",
        "description": "Situated in Gokul, a sacred place called Raman Van or Raman Reti. | गोकुल में स्थित, एक पवित्र स्थल जिसे रमन वन या रमन रेत कहा जाता है।"
      },
      {
        "name": "Shri Banke Bihari Mandir (श्री बांके बिहारी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s326e359e83860db1d11b6acca57d8ea88/uploads/bfi_thumb/2018073077-olw7gtfp3jhjv4z8do61vms4yakv0ejq4jie0q69z6.jpg",
        "description": "A Hindu temple dedicated to Lord Krishna, in the holy city of Vrindavan. | वृंदावन में भगवान कृष्ण को समर्पित एक हिंदू मंदिर।"
      },
      {
        "name": "Radha Raman Temple (राधा रमन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s326e359e83860db1d11b6acca57d8ea88/uploads/bfi_thumb/2018073011-olw7gtfp3jhjv4z8do61vms4yakv0ejq4jie0q69z6.jpg",
        "description": "An early modern period Hindu temple in Vrindavan dedicated to Lord Krishna as Radha Ramana. | वृंदावन में आधुनिक कालीन हिंदू मंदिर, भगवान कृष्ण को राधा रमन के रूप में समर्पित।"
      },
      {
        "name": "ISKCON Temple Vrindavan (इस्कॉन मंदिर वृंदावन)",
        "image": "https://cdn.s3waas.gov.in/s326e359e83860db1d11b6acca57d8ea88/uploads/bfi_thumb/2018073040-olw7gtfp3jhjv4z8do61vms4yakv0ejq4jie0q69z6.jpg",
        "description": "The first temple constructed by the International Society for Krishna Consciousness (ISKCON). | कृष्ण चेतना अंतर्राष्ट्रीय समाज (ISKCON) द्वारा निर्मित पहला मंदिर।"
      },
      {
        "name": "Prem Mandir (प्रेम मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s326e359e83860db1d11b6acca57d8ea88/uploads/bfi_thumb/2018021763-olw7gpocc7cekp4ozmjjlnqakr3e5m4ss0wg3mbuo2.jpg",
        "description": "A Hindu temple in Vrindavan, maintained by Jagadguru Kripalu Parishat, an international non-profit trust. | वृंदावन में एक हिंदू मंदिर, जिसे जगदगुरु कृपालु परिषद द्वारा संचालित किया जाता है।"
      },
      {
        "name": "Shri Radha Rani Mandir, Barsana (श्री राधा रानी मंदिर, बर्साना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/cd/2e/80/received-1912151609096628.jpg?w=1200&h=1200&s=1",
        "description": "Historical Radha Rani Temple in Barsana, Braj region, attracting huge devotees. | ब्रज क्षेत्र के बर्साना में ऐतिहासिक राधा रानी मंदिर, जो बड़ी संख्या में भक्तों को आकर्षित करता है।"
      }
    ],

    "Mau (मऊ)": [
      {
        "name": "Funtasia Water Park and Resort (फंटासिया वाटर पार्क एंड रिसॉर्ट)",
        "image": "https://cdn.s3waas.gov.in/s3ec8956637a99787bd197eacd77acce5e/uploads/bfi_thumb/2022062544-pqtj60y1w24jxqinwg9h9bmm1n1ujz5dxnpc2agbuq.jpeg",
        "description": "Located at Ratanpura, Maunath Bhanjan, about 7 km from Mau city, this is a popular water park and resort. | मऊ शहर से लगभग 7 किमी दूर रतनपुरा, मऊनाथभंजन में स्थित, यह एक प्रसिद्ध वाटर पार्क और रिसॉर्ट है।"
      },
      {
        "name": "Rose Garden, Mau (रोज़ गार्डन, मऊ)",
        "image": "https://cdn.s3waas.gov.in/s3ec8956637a99787bd197eacd77acce5e/uploads/bfi_thumb/2022062538-pqtibzznkl0t264t8h0ilweiwj1qo1y2h1gy62z2ma.jpeg",
        "description": "A beautiful garden for visitors, home and community gardeners to enjoy nature and exercise. | यह एक सुंदर उद्यान है जहाँ आगंतुक, गृह और सामुदायिक माली प्रकृति और व्यायाम का आनंद ले सकते हैं।"
      },
      {
        "name": "Van Devi Mandir, Kohinaour, Mau (वन देवी मंदिर, कोहिनौर, मऊ)",
        "image": "https://cdn.s3waas.gov.in/s3ec8956637a99787bd197eacd77acce5e/uploads/bfi_thumb/2018072687-olwdebhzftr6ykusogieq98ae098df4v59zr8bm2o2.jpg",
        "description": "Situated 12 km southwest from district headquarters, surrounded by nature, dedicated to Jagat Janani. | जिला मुख्यालय से 12 किमी दक्षिण-पश्चिम में स्थित, प्राकृतिक सुंदरता में घिरा, जगत जननी को समर्पित।"
      },
      {
        "name": "Muktidhaam Dohrighat (मुक्तिधाम दोहरीघाट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmPuIomUktmmTQiuPqg3zttlp8Ywc4wi11vPYjFbwbjB2C9D9_SXtovf13ZjIE7P9iShk&usqp=CAU",
        "description": "Muktidham Temple and Park on the banks of the Ghaghra river in Dohrighaat town. | दोहरीघाट नगर में घाघरा नदी के किनारे स्थित मुक्तिधाम मंदिर और पार्क।"
      },
      {
        "name": "Sheetla Mata Mandir (शीतला माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ec8956637a99787bd197eacd77acce5e/uploads/bfi_thumb/2018072520-olwdeak58zpwmyw5ty3s5rgtsmdv5q14t5c9r1ngua.jpg",
        "description": "Located near Mata Pokhara, Mau, dedicated to Shitala Devi. | मऊ में माता पोखरा के पास स्थित, शीतला देवी को समर्पित।"
      }
    ],

    "Meerut (मेरठ)": [
      {
        "name": "Shaheed Smarak (शहीद स्मारक)",
        "image": "https://cdn.s3waas.gov.in/s3d947bf06a885db0d477d707121934ff8/uploads/bfi_thumb/2018052236-1-olwcs1pni59lv77fqbxn5dk3oc14zlptr1ikvamw3m.jpg",
        "description": "Government Freedom Struggle Museum, established in 1997, located in the Shaheed Smarak compound on Delhi Road. | 1997 में स्थापित, यह सरकारी स्वतंत्रता संग्राम संग्रहालय दिल्ली रोड पर शहीद स्मारक परिसर में स्थित है।"
      },
      {
        "name": "Hastinapur Jain Temple (हस्तिनापुर जैन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d947bf06a885db0d477d707121934ff8/uploads/bfi_thumb/2018052239-olwcs1pni59lv77fqbxn5dk3oc14zlptr1ikvamw3m.jpg",
        "description": "Situated in Hastinapur, Meerut district, connected via Meerut-Bijnor Road, about 37 km from Meerut. | मेरठ जिले के हस्तिनापुर में स्थित, मेरठ-बिजनौर रोड से जुड़ा हुआ, मेरठ से लगभग 37 किमी दूर।"
      }
    ],

    "Mirzapur (मिर्जापुर)": [
      {
        "name": "Vindhyavasini Dham (विंध्यवासिनी धाम)",
        "image": "https://cdn.s3waas.gov.in/s396da2f590cd7246bbde0051047b0d6f7/uploads/bfi_thumb/2018032035-olwaij5itdof0lm1q3gdwy313dt7gk3tvksolfhzpe.jpg",
        "description": "'Bhagwati Vindhyavasini is Aadya Mahashakti. Vindhyachal has always been her abode. The daily presence of Jagadamba has made Vindhyagiri a Jagruk Shakti Peeth. | 'भगवती विंध्यवासिनी आद्य महाशक्ति हैं। विंध्याचल हमेशा उनका निवास स्थान रहा है। जगदंबा की दैनिक उपस्थिति ने विंध्यगिरि को जाग्रुक शक्ति पीठ बना दिया है।"
      }
    ],

    "Moradabad (मुरादाबाद)": [
      {
        "name": "Gautam Buddha Park Moradabad (गौतम बुद्ध पार्क मुरादाबाद)",
        "image": "https://cdn.s3waas.gov.in/s382161242827b703e6acf9c726942a1e4/uploads/bfi_thumb/2018082793-olw9wvxbfq1pnv1x48mnzwpwmyhx7h6ckfz5r1lczm.jpg",
        "description": "Gautam Buddha Park is situated at Moradabad, on the Harthola Station Road. Gautam Buddha Park is one of the many… | गौतम बुद्ध पार्क मुरादाबाद में, हारथोला स्टेशन रोड पर स्थित है। गौतम बुद्ध पार्क कई पार्कों में से एक है…"
      },
      {
        "name": "Sai Temple MDA (साई मंदिर MDA)",
        "image": "https://cdn.s3waas.gov.in/s382161242827b703e6acf9c726942a1e4/uploads/bfi_thumb/2018082399-olw9wvxbfq1pnv1x48mnzwpwmyhx7h6ckfz5r1lczm.jpg",
        "description": "Sai Temple is located in Deen Dayal Nagar, Phase II region around the Shri Sai Karuna Dham in Moradabad. | साई मंदिर मुरादाबाद के श्री साई करुणा धाम के आसपास, दीन दयाल नगर, फेज़ II क्षेत्र में स्थित है।"
      }
    ],

    "Muzaffarnagar (मुज़फ़्फ़रनगर)": [
      {
        "name": "Shukarteerath – Shukartaal (शुक्रतीरथ – शुक्रताल)",
        "image": "https://cdn.s3waas.gov.in/s3335f5352088d7d9bf74191e006d8e24c/uploads/bfi_thumb/2018041096-olw83myn0qq5qbtx4j9zevh0523nvv54lhorgkc6wy.jpg",
        "description": "Shukratal is the place where Sukadeva Goswami narrated the sacred Srimad-Bhagavatam to Maharaja Pariksit. | शुक्रताल वह स्थान है जहाँ सुकदेव गोस्वामी ने महाराजा परीक्षित को श्रीमद्भागवतम का पाठ किया।"
      },
      {
        "name": "Vahelna – Jain temple (वैहलना – जैन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3335f5352088d7d9bf74191e006d8e24c/uploads/bfi_thumb/2018021866-olw83bokqqapv0aayeegkybh0fn9bhwcjxuxp8swzm.jpg",
        "description": "Vahelna is an important pilgrimage site for Jains, with a mosque, a Shiva temple, and a Jain temple. | वैहलना जैन धर्म के लिए एक महत्वपूर्ण तीर्थस्थल है, यहाँ एक मस्जिद, एक शिव मंदिर और एक जैन मंदिर है।"
      },
      {
        "name": "Hanumatdham – Shukartaal (हनुमतधाम – शुक्रताल)",
        "image": "https://cdn.s3waas.gov.in/s3335f5352088d7d9bf74191e006d8e24c/uploads/bfi_thumb/2018021863-olw832a6udxumwnyhac6w0ov2kxl6iv16nc2wh6upu.jpg",
        "description": "Hanumatdham, situated in Shukratal town, was constructed in 1987 with a 72 ft high idol of Hanuman. | हनुमतधाम, शुक्रताल नगर में स्थित, 1987 में बनाया गया था और इसमें 72 फीट ऊँचा हनुमान की मूर्ति है।"
      },
      {
        "name": "Akshay Vat – Shukartaal (अक्षय वट – शुक्रताल)",
        "image": "https://cdn.s3waas.gov.in/s3335f5352088d7d9bf74191e006d8e24c/uploads/bfi_thumb/2018041077-olw83l2yn2nl33wnfigq9vy2yacxggxnx8dsi0ez9e.jpg",
        "description": "This 5100-year-old Banyan Tree is miraculous, towering 150 feet with sprawling roots. | यह 5100 साल पुराना बरगद चमत्कारी है, जिसकी ऊँचाई 150 फीट है और इसकी जड़ें फैलती हुई हैं।"
      },
      {
        "name": "Ganeshdham – Shukartaal (गणेशधाम – शुक्रताल)",
        "image": "https://cdn.s3waas.gov.in/s3335f5352088d7d9bf74191e006d8e24c/uploads/bfi_thumb/2018030212-olw832a6udxumwnyhac6w0ov2kxl6iv16nc2wh6upu.jpg",
        "description": "Ganeshdham is popular for the 35 ft high statue of Lord Ganesh and River Tripatha flowing nearby. | गणेशधाम 35 फीट ऊँची भगवान गणेश की मूर्ति और पास से बहती त्रिपठा नदी के लिए प्रसिद्ध है।"
      },
      {
        "name": "Nakshatra Vatika – Shukartaal (नक्षत्र वाटिका – शुक्रताल)",
        "image": "https://cdn.s3waas.gov.in/s3335f5352088d7d9bf74191e006d8e24c/uploads/bfi_thumb/2018030234-olw832a6udxumwnyhac6w0ov2kxl6iv16nc2wh6upu.jpg",
        "description": "Nakshatra Vatika is a center of tourist attraction in the mythical city of Shukartaal. | नक्षत्र वाटिका, शुक्रताल के पौराणिक नगर में पर्यटन आकर्षण का केंद्र है।"
      },
      {
        "name": "Sambhalheda Panchmukhi Shivling (संभलहेड़ा पंचमुखी शिवलिंग)",
        "image": "https://cdn.s3waas.gov.in/s3335f5352088d7d9bf74191e006d8e24c/uploads/bfi_thumb/2018041054-olw83k54g8marhy0l023pe6mcwhk8rtxl3qb0qgdfm.jpg",
        "description": "This temple is as old as Pashupatinath temple in Nepal, featuring a beautiful Panchmukhi Shivling made from Kasauti stone. | यह मंदिर नेपाल के पशुपतिनाथ मंदिर जितना पुराना है और इसमें कासौती पत्थर का सुंदर पंचमुखी शिवलिंग है।"
      },
      {
        "name": "Shukartaal Ganges Holy Bath (शुक्रताल गंगा पवित्र स्नान)",
        "image": "https://cdn.s3waas.gov.in/s3335f5352088d7d9bf74191e006d8e24c/uploads/bfi_thumb/2018041010-1-olw83hblvqifso241gu7zww8kqvgloiqkprukwkjya.jpg",
        "description": "An important holy site located two-thirds of the way between Delhi and Haridwar. | दिल्ली और हरिद्वार के बीच लगभग दो-तिहाई दूरी पर स्थित महत्वपूर्ण पवित्र स्थल।"
      }
    ],

    "Pilibhit (पीलीभीत)": [
      {
        "name": "Orajhar Temple (ओरझर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30aa1883c6411f7873cb83dacb17b0afc/uploads/bfi_thumb/2020102260-oxa2ll1ipjdzi9guf7j43099gch45d92l19mtl84jm.jpg",
        "description": "Odhajhar Temple is located in village Odhajhar of Tehsil Kalinagar in Pilibhit district. Devotees and tourists can visit the temple. | ओरझर मंदिर, पिलीभीत जिले के कालीनगर तहसील के ओधझर गाँव में स्थित है। भक्त और पर्यटक इस मंदिर का दौरा कर सकते हैं।"
      },
      {
        "name": "Pilibhit Tiger Reserve (पिलीभीत टाइगर रिज़र्व)",
        "image": "https://cdn.s3waas.gov.in/s30aa1883c6411f7873cb83dacb17b0afc/uploads/bfi_thumb/2018022420-olw6kfvtoz5zyo09focnzswkci5pvq0kcakaxm6gaq.jpg",
        "description": "The Pilibhit Tiger Reserve is situated in Pilibhit and Shahjahanpur districts, forming part of the Terai Arc Landscape. | पिलीभीत टाइगर रिज़र्व पिलीभीत और शाहजहाँपुर जिलों में स्थित है और टेराई आर्क परिदृश्य का हिस्सा है।"
      },
      {
        "name": "Gauri Shankar Temple (गौरी शंकर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30aa1883c6411f7873cb83dacb17b0afc/uploads/bfi_thumb/2018022228-olw6kexzi54pn21ml5y1fb53r4aco0wu05wtgc7ugy.jpg",
        "description": "This 250-year-old temple is situated in Mohalla Khakra on the banks of rivers Devha and Khakra. | यह 250 साल पुराना मंदिर मोहल्ला खाकरा में देवहा और खाकरा नदियों के किनारे स्थित है।"
      },
      {
        "name": "Raja Venu ka Teela (राजा वेणु का टीला)",
        "image": "https://cdn.s3waas.gov.in/s30aa1883c6411f7873cb83dacb17b0afc/uploads/bfi_thumb/2018022213-olw6kexzi54pn21ml5y1fb53r4aco0wu05wtgc7ugy.jpg",
        "description": "Located in Puranpur Tehsil, 1 km from Shahgarh railway station. Historically significant site. | पुरनपुर तहसील में शाहगढ़ रेलवे स्टेशन से 1 किमी दूर स्थित। ऐतिहासिक रूप से महत्वपूर्ण स्थल।"
      },
      {
        "name": "Chhathavi Padshahi Gurudwara (छठवीं पादशाही गुरुद्वारा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/e5/b6/14/chatti-padshahi-gurudwara.jpg?w=200&h=-1&s=1",
        "description": "A 400-year-old gurudwara in Pakrdiya locality, said to have been visited by Guru Gobind Singhji. | यह 400 साल पुराना गुरुद्वारा पक्रड़िया क्षेत्र में स्थित है। कहा जाता है कि गुरु गोविंद सिंह जी यहाँ आए थे।"
      },
      {
        "name": "Dargah Hazrat Shah Mohammad Sher Mian (दर्गाह हज़रत शाह मोहम्मद शेर मियां)",
        "image": "https://cdn.s3waas.gov.in/s30aa1883c6411f7873cb83dacb17b0afc/uploads/bfi_thumb/2018022292-olw6kexzi54pn21ml5y1fb53r4aco0wu05wtgc7ugy.jpg",
        "description": "Located on the northern side of Pilibhit city, a shrine dedicated to Hazrat Kibla Haji Shah Ji Mohammad Sher Mian. | पिलीभीत शहर के उत्तरी हिस्से में स्थित, हज़रत किबला हाजी शाह जी मोहम्मद शेर मियां को समर्पित यह दर्गाह है।"
      },
      {
        "name": "Jama Masjid (जामा मस्जिद)",
        "image": "https://cdn.s3waas.gov.in/s30aa1883c6411f7873cb83dacb17b0afc/uploads/bfi_thumb/2018022253-olw6kexzi54pn21ml5y1fb53r4aco0wu05wtgc7ugy.jpg",
        "description": "A replica of Delhi's Jama Masjid built during the Mughal period in Pilibhit. | मुगल काल में पिलीभीत में दिल्ली की जामा मस्जिद की प्रतिकृति बनाई गई।"
      }
    ],

    "Pratapgarh (प्रतापगढ़)": [
      {
        "name": "Shani Dev Temple (शनि देव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s336660e59856b4de58a219bcf4e27eba3/uploads/bfi_thumb/2018022128-olw83vf6q91qmthmr4xmjbc5hixyt52pmnk4s1zncy.jpg",
        "description": "An ancient mythological temple of Lord Shani located in Kushfara forest, about 2 km from Vishwanathganj market. | प्राचीन पौराणिक शनि देव मंदिर, कुशफ़रा वन में स्थित, विश्वनाथगंज बाजार से लगभग 2 किमी दूर।"
      },
      {
        "name": "Belha Devi Temple (बेला देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s336660e59856b4de58a219bcf4e27eba3/uploads/bfi_thumb/20180727100-olw8404dof868vaszoyrds5gggasvmldbatk6fsohu.jpg",
        "description": "A historic temple of Belha Mai on the bank of the Sai river, flowing through most of Pratapgarh district. | सई नदी के किनारे स्थित ऐतिहासिक बेला मई मंदिर, जो प्रतापगढ़ जिले के अधिकांश हिस्सों से होकर बहती है।"
      },
      {
        "name": "Bhakti Dham Kunda (भक्ति धाम कुण्डा)",
        "image": "https://cdn.s3waas.gov.in/s336660e59856b4de58a219bcf4e27eba3/uploads/bfi_thumb/2018021741-olw83l2yn2nl33wnfigq9vy2yacxggxnx8dsi0ez9e.jpg",
        "description": "Dedicated to Lord Radha-Krishna, located 2 km from Kunda tehsil headquarters in Pratapgarh district. | भगवान राधा-कृष्ण को समर्पित भक्ति धाम मंदिर, कुण्डा तहसील मुख्यालय से 2 किमी दूर।"
      },
      {
        "name": "Ghushmeshwar Nath Dham (घुश्मेश्वर नाथ धाम)",
        "image": "https://cdn.s3waas.gov.in/s336660e59856b4de58a219bcf4e27eba3/uploads/bfi_thumb/2018021757-olw83l2yn2nl33wnfigq9vy2yacxggxnx8dsi0ez9e.jpg",
        "description": "A Shiv Dham with religious, spiritual, and mythological significance, attracting millions of devotees. | धार्मिक, आध्यात्मिक और पौराणिक महत्व वाला शिव धाम, जो लाखों भक्तों को आकर्षित करता है।"
      },
      {
        "name": "Baba Bhayharan Nath Dham (बाबा भैयारन नाथ धाम)",
        "image": "https://cdn.s3waas.gov.in/s336660e59856b4de58a219bcf4e27eba3/uploads/bfi_thumb/2018021751-olw83l2yn2nl33wnfigq9vy2yacxggxnx8dsi0ez9e.jpg",
        "description": "A famous religious, historical, and mythological site approximately 30 km south of Pratapgarh district headquarters. | प्रसिद्ध धार्मिक, ऐतिहासिक और पौराणिक स्थल, प्रतापगढ़ जिला मुख्यालय से लगभग 30 किमी दक्षिण में स्थित।"
      }
    ],

    "Raebareli (रायबरेली)": [
      {
        "name": "Indira Gandhi Botanical Garden (इंदिरा गांधी बॉटनिकल गार्डन)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/f3/ed/05/as-the-spring-has-set.jpg?w=700&h=400&s=1",
        "description": "A beautifully maintained botanical garden in Raebareli, showcasing diverse plant species and green landscapes. | रायबरेली में सुन्दर रूप से सजा हुआ बॉटनिकल गार्डन, जिसमें विभिन्न प्रकार की पौधों की प्रजातियाँ और हरियाली भरे दृश्य हैं।"
      }
    ],

    "Rampur (रामपुर)": [
      {
        "name": "Rampur Raza Library (रामपुर रज़ा लाइब्रेरी)",
        "image": "https://cdn.s3waas.gov.in/s3a8f15eda80c50adb0e71943adc8015cf/uploads/bfi_thumb/2018062353-olwbc60cac8v20kdoely0yv7bpqt50r6a98sahk5j6.jpg",
        "description": "The Rampur Raza Library is a repository of Indo-Islamic cultural heritage and a treasure-house of knowledge. | रामपुर रज़ा लाइब्रेरी भारतीय-इस्लामी सांस्कृतिक धरोहर का भंडार और ज्ञान का खज़ाना है।"
      },
      {
        "name": "Gandhi Samadhi Rampur (गांधी समाधि रामपुर)",
        "image": "https://cdn.s3waas.gov.in/s3a8f15eda80c50adb0e71943adc8015cf/uploads/bfi_thumb/2018062368-olwbc6y6h6a5dmj0ix0klgmnx3m6cpuwmdw9rrircy.jpg",
        "description": "A memorial dedicated to Mahatma Gandhi, commemorating his struggles for India's independence. | महात्मा गांधी को समर्पित यह स्मारक भारत की स्वतंत्रता के लिए उनके संघर्ष को याद करता है।"
      }
    ],

    "Saharanpur (सहारनपुर)": [
      {
        "name": "Baba Bhuradev Temple (भूरा देव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38f121ce07d74717e0b1f21d122e04521/uploads/bfi_thumb/2018022068-olwahdsmgo3stra4flksv8iqyfh21vjn1w3bh97bb6.jpg",
        "description": "This temple is nearly 1 km before the Shakumbhari Devi Temple, located on the main road. | यह मंदिर शकुंभरी देवी मंदिर से लगभग 1 किमी पहले मुख्य सड़क पर स्थित है।"
      },
      {
        "name": "Shakumbhari Devi Temple (शकुंभरी देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38f121ce07d74717e0b1f21d122e04521/uploads/bfi_thumb/2018030626-olwahfoauc6dgz7e4me2081o577sh9r3q5eaft4iyq.jpg",
        "description": "Shakti Peeth Shakumbhri, meaning the abode of Goddess Shakti, located in Jasmour village area. | शक्ति पीठ शकुंभरी देवी का निवास स्थान, जस्मौर गांव क्षेत्र में स्थित।"
      },
      {
        "name": "Bala Sundari Devi Temple (बाला सुंदरी माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38f121ce07d74717e0b1f21d122e04521/uploads/bfi_thumb/2018041711-olwagr8hwn8x346w3btr7e7op6k8x522ysfnym4rgi.jpg",
        "description": "Located in Deoband, a tehsil of Saharanpur district. | यह मंदिर सहारनपुर जिले के देवबंद तहसील में स्थित है।"
      },
      {
        "name": "Naugaja Peer (नौगज पीर)",
        "image": "https://cdn.s3waas.gov.in/s38f121ce07d74717e0b1f21d122e04521/uploads/bfi_thumb/2018041729-olwagr8hwn8x346w3btr7e7op6k8x522ysfnym4rgi.jpg",
        "description": "A religious spot located nearly 9 km from the main city. | यह धार्मिक स्थल मुख्य शहर से लगभग 9 किमी दूर स्थित है।"
      },
      {
        "name": "Darul Uloom Deoband (दारुल उलूम देवबंद)",
        "image": "https://cdn.s3waas.gov.in/s38f121ce07d74717e0b1f21d122e04521/uploads/bfi_thumb/2018041761-olwags6c3ha7eq5ixu8drvz5akfm4u5tax35fw3daa.jpg",
        "description": "An Islamic school where the Deobandi movement began, located in Deoband. | यह इस्लामी स्कूल है जहाँ देओबंदी इस्लामी आंदोलन की शुरुआत हुई, देवबंद में स्थित।"
      }
    ],

    "Sambhal (संभल)": [
      {
        "name": "Maa Kela Devi Mandir (मां केला देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3efe937780e95574250dabe07151bdc23/uploads/bfi_thumb/2018070524-e1533279013391-olwdm3lw0gen2djx8tl8dajnetwm380vjseg8s2r5u.jpg",
        "description": "Kela Devi temple has a long history. Mother Kela has two temples in India, one in Rajasthan and one here in Sambhal. | केला देवी मंदिर का लंबा इतिहास है। मां केला के देश में दो मंदिर हैं, एक राजस्थान में और एक संभल में।"
      }
    ],

    "Sant Kabir Nagar (संत कबीर नगर)": [
      {
        "name": "Bakhira Lake / Bakhira Bird Sanctuary (बख़ीरा झील / बख़ीरा बर्ड सेंचुरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAz9Xv9z4zCBdT-g2ZKypO-_lGp1foP1-nsQ&s",
        "description": "Bakhira Lake, also known as Bakhira Bird Sanctuary, is famous for its migratory birds and natural scenic beauty. | बख़ीरा झील, जिसे बख़ीरा बर्ड सेंचुरी भी कहा जाता है, प्रवासी पक्षियों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      }
    ],

    "Shahjahanpur (शाहजहाँपुर)": [
      {
        "name": "Hanumat Dham (हनुमंत धाम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvzUjyVu--UeLGSj8g-RqWhdk_wrB9rXldxg&s",
        "description": "Hanumat Dham is a famous temple dedicated to Lord Hanuman in Shahjahanpur, Uttar Pradesh. | हनुमंत धाम शाहजहाँपुर, उत्तर प्रदेश में भगवान हनुमान को समर्पित प्रसिद्ध मंदिर है।"
      },
    ],

    "Shamli (शामली)": [
      {
        "name": "Gurdwara Shamli (गुरुद्वारा शामली)",
        "image": "https://cdn.s3waas.gov.in/s340008b9a5380fcacce3976bf7c08af5b/uploads/bfi_thumb/2018040420-olw8e2y32uwn0at85yjzgmfpydnp3fx4lqgyjmj6jk.jpg",
        "description": "Gurdwara Shamli is a prominent Sikh pilgrimage site in Shamli. | शामली में प्रमुख सिख तीर्थ स्थल।"
      },
      {
        "name": "Hanuman Tila Dham Complex Shamli (हनुमान टीला धाम कॉम्प्लेक्स, शामली)",
        "image": "https://cdn.s3waas.gov.in/s340008b9a5380fcacce3976bf7c08af5b/uploads/bfi_thumb/2018040448-1-olw8e2y32uwn0at85yjzgmfpydnp3fx4lqgyjmj6jk.jpg",
        "description": "Hanuman Tila Dham is a famous religious complex dedicated to Lord Hanuman in Shamli. | शामली में भगवान हनुमान को समर्पित प्रसिद्ध धार्मिक परिसर।"
      },
      {
        "name": "Front View of Hanuman Temple Complex, Shamli (हनुमान मंदिर परिसर, शामली - मुख्य दृश्य)",
        "image": "https://cdn.s3waas.gov.in/s340008b9a5380fcacce3976bf7c08af5b/uploads/bfi_thumb/2018040459-olw8e2y32uwn0at85yjzgmfpydnp3fx4lqgyjmj6jk.jpg",
        "description": "Front view of the Hanuman Temple Complex showcasing its architectural beauty in Shamli. | शामली में हनुमान मंदिर परिसर का मुख्य दृश्य, वास्तुकला की सुंदरता दर्शाता है।"
      }
    ],

    "Shrawasti (श्रावस्ती)": [
      {
        "name": "Vibhuti Nath Temple (विभूति नाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s338af86134b65d0f10fe33d30dd76442e/uploads/bfi_thumb/2018021558-1-olw8nwdec6gnzqeetakh5rep428hszku1rxjvaaosi.jpg",
        "description": "Vibhuti Nath Temple is a significant religious site in Shravasti district, Uttar Pradesh. | उत्तर प्रदेश के श्रावस्ती जिले का प्रमुख धार्मिक स्थल।"
      },
      {
        "name": "Suhaildev Wildlife Sanctuary (सुहैलदेव वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s338af86134b65d0f10fe33d30dd76442e/uploads/bfi_thumb/2018021556-olw8nwdec6gnzqeetakh5rep428hszku1rxjvaaosi.jpg",
        "description": "Suhaildev Wildlife Sanctuary spans Shravasti and Balrampur districts near the Indo-Nepal border. | श्रावस्ती और बलरामपुर जिलों में, भारत-नेपाल सीमा के पास स्थित वन्यजीव अभयारण्य।"
      },
      {
        "name": "Kacchi Kuti (कच्ची कुटी)",
        "image": "https://cdn.s3waas.gov.in/s338af86134b65d0f10fe33d30dd76442e/uploads/bfi_thumb/2018021564-olw8nxb8j0hybcd1nsz3q965pg3v0ookdwl1ck9ama.jpg",
        "description": "Kacchi Kuti is an important historic excavated structure in the Mahet area of Shravasti. | श्रावस्ती के माहेत क्षेत्र में एक महत्वपूर्ण ऐतिहासिक उत्खनन संरचना।"
      },
      {
        "name": "Pakki Kuti (पक्की कुटी)",
        "image": "https://cdn.s3waas.gov.in/s338af86134b65d0f10fe33d30dd76442e/uploads/bfi_thumb/2018021567-olw8nxb8j0hybcd1nsz3q965pg3v0ookdwl1ck9ama.jpg",
        "description": "Pakki Kuti is one of the largest mounds in Mahet, identified as remains of an ancient stupa. | माहेत क्षेत्र में सबसे बड़े टीलों में से एक, प्राचीन स्तूप की अवशेष मानी जाती है।"
      },
      {
        "name": "Vipassana Meditation Centre, Shravasti (विपश्यना ध्यान केंद्र, श्रावस्ती)",
        "image": "https://cdn.s3waas.gov.in/s338af86134b65d0f10fe33d30dd76442e/uploads/bfi_thumb/2018022179-olw8nsm1kubipajvf8xyvscuqir0y75wp9bly6g9he.jpg",
        "description": "A renowned meditation centre located on State Highway 26, opposite Buddha Inter College. | राज्य राजमार्ग 26 पर, बुद्ध इंटर कॉलेज के सामने स्थित प्रसिद्ध ध्यान केंद्र।"
      }
    ],

    "Siddharthnagar (सिद्धार्थनगर)": [
      {
        "name": "Piprahwa Stupa (पिप्राहा स्तूप)",
        "image": "https://cdn.s3waas.gov.in/s385d8ce590ad8981ca2c8286f79f59954/uploads/bfi_thumb/2018062285-olwa5j1w9vvmeshznh46f87h9hwezahi37wvlms1s2.jpg",
        "description": "Piprahwa is a village near Birdpur in Siddharthnagar district, Uttar Pradesh, known for its ancient Buddhist stupa. | उत्तर प्रदेश के सिद्धार्थनगर जिले के बर्डपुर के पास स्थित पिप्राहा गाँव, प्राचीन बौद्ध स्तूप के लिए प्रसिद्ध।"
      },
      {
        "name": "Bharatbhari Temple (भरतभरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s385d8ce590ad8981ca2c8286f79f59954/uploads/bfi_thumb/2018032668-olwa5h67w7t1rkkpygaxa8ok2q5ojwa1eylwn2uu4i.jpg",
        "description": "Bharat Bhari Temple is located in Domariyaganj Block, Siddharthnagar district. | उत्तर प्रदेश के सिद्धार्थनगर जिले के डोमरीगंज ब्लॉक में स्थित भरतभरी मंदिर।"
      }
    ],

    "Sitapur (सीतापुर)": [
      {
        "name": "Chakratirtha Naimisharanya (चक्रतीर्थ नैमिषारण्य)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052751-q73389rjsepjevpslh6iq159jl25nt23w14wag6n0i.jpg",
        "description": "Chakratirtha is one of the most popular Hindu pilgrimage sites in Naimisharanya. | नैमिषारण्य में चक्रतीर्थ सबसे प्रसिद्ध हिंदू तीर्थ स्थलों में से एक है।"
      },
      {
        "name": "Lalita Devi Temple (ललिता देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052760-q733nnehltrfd7dlsmhs0nfrfj9clj40c5dvyfdr7m.jpg",
        "description": "Lalita Devi is counted among the 51 Shakti Peethas and is highly revered. | ललिता देवी मंदिर 51 शक्ति पीठों में गिना जाता है और अत्यंत पूजनीय है।"
      },
      {
        "name": "Bhuteshwarnath (भूतश्वरनाथ)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052756-q733npa5zhu00favhnb15myomb030xbh0eouwzayv6.jpg",
        "description": "Ancient Shiva temple located near Chakratirtha. | चक्रतीर्थ के पास प्राचीन शिव मंदिर।"
      },
      {
        "name": "Hanuman Garhi (हनुमान गढ़ी)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052732-q733nwsvi64alazy9qk1pl2dddz0qi5bpfwqr6zthe.jpg",
        "description": "Dedicated to Lord Hanuman, a sacred pilgrimage site in Naimisharanya. | नैमिषारण्य में भगवान हनुमान को समर्पित पवित्र तीर्थ स्थल।"
      },
      {
        "name": "Manu-Shatarupa Temple (मनु-शतरूपा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052710-q733nr5ud5wknn856o4aamhlt2qtgbixonztvj86iq.jpg",
        "description": "Considered as the incarnation of humankind. | मानवता के अवतार के रूप में माना जाता है।"
      },
      {
        "name": "Rudravarta Tirtha (रुद्रवर्त तीर्थ)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052716-q733nxqpp05kwwyl48yoa2ttyrudy7921kk88gyfb6.jpg",
        "description": "Unique temple of Lord Shiva about 7 km from Chakratirtha. | चक्रतीर्थ से लगभग 7 किमी दूर भगवान शिव का अनोखा मंदिर।"
      },
      {
        "name": "Dev Deveshwar Dham (देव देवेश्वर धाम)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052771-q733nzme2o85k4vut9rxf2cr5jl4dlgiptv770vmyq.jpg",
        "description": "Beautiful temple of Lord Shiva described in Vayu Purana. | वायु पुराण में वर्णित भगवान शिव का सुंदर मंदिर।"
      },
      {
        "name": "Raj Ghat (राज घाट)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052723-q733o0k89i9fvquhns6jzk47qxghlak91yiooau8si.jpg",
        "description": "Also known as Dashashwamedh Ghat, a revered site in Naimisharanya. | दशाश्वमेध घाट के नाम से भी जाना जाता है, नैमिषारण्य का पूजनीय स्थल।"
      },
      {
        "name": "Panchmukhi Hanuman Temple (पंचमुखी हनुमान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/20230529100-q75zgb56bwyt7ro6bte45pul6lqo0xe22wacluzzsy.jpg",
        "description": "Near Lalita Devi Shakti Peeth, a famous religious place. | ललिता देवी शक्ति पीठ के पास, प्रसिद्ध धार्मिक स्थल।"
      },
      {
        "name": "Char Dham Temples (चार धाम मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/20230527100-q733o2fwn6c0iyrrcszt4jn4xp780orpq7tnmurgg2.jpg",
        "description": "Built by Maharishi Gopaldas, a major attraction. | महारिषि गोपालदास द्वारा निर्मित, मुख्य आकर्षण।"
      },
      {
        "name": "Sri Tirupati Balaji (श्री तिरुपति बालाजी)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052786-q733o3dqu0daukqe7befp1elj32l8dvg2ch544q29u.jpg",
        "description": "Seated as Lakshmi's husband in Balaji temple of Naimisharanya. | नैमिषारण्य के बालाजी मंदिर में लक्ष्मी के पति के रूप में विराजमान।"
      },
      {
        "name": "Trishakti Dham Temple (त्रिशक्ति धाम मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052749-q733o4bl0uel66p11tt29j624gxyg2z6eh4mleoo3m.jpg",
        "description": "Grand temple decorated with many colors. | अनेक रंगों से सजा भव्य मंदिर।"
      },
      {
        "name": "Devpuri Temple (देवपुरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052767-q733o679eih5temaqumbeiozb8oovh6n2qfljylvr6.jpg",
        "description": "Built 1.5 km west of Chakratirtha by Swami Shri Nardananda. | चक्रतीर्थ से 1.5 किमी पश्चिम में स्वामी श्री नर्दानंद द्वारा निर्मित।"
      },
      {
        "name": "Kali Peeth (काली पीठ)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052962-q75zuo4eqsmilat8h0ux93e3wiyjmgefdz3ek1pgqq.jpg",
        "description": "Temple dedicated to Goddess Kali. | माता काली को समर्पित मंदिर।"
      },
      {
        "name": "Dadhichi Kund (दधिचि कुंड)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2023052989-q76002p01i0vckylwuyp38aivabivsuv4q4wwboyyq.jpg",
        "description": "Located about 12 km from Naimisharanya, a sacred kund. | नैमिषारण्य से लगभग 12 किमी दूर पवित्र कुंड।"
      },
      {
        "name": "Fort Raja Mahmudabad (फोर्ट राजा महमूदाबाद)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2018021529-olwcckbcxe2kmfp354zvks7reuch738zyenna7lcle.jpg",
        "description": "Founded in 1677 by Raja Mahmud Khan. | राजा महमूद खान द्वारा 1677 में स्थापित।"
      },
      {
        "name": "Stone Shivala Temple (स्टोन शिवाला मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3cfecdb276f634854f3ef915e2e980c31/uploads/bfi_thumb/2018021528-olwcckbcxe2kmfp354zvks7reuch738zyenna7lcle.jpg",
        "description": "Historic temple near Eye Hospital, Khairabad, Sitapur. | आई हॉस्पिटल, खैराबाद, सीतापुर के पास ऐतिहासिक मंदिर।"
      }
    ],

    "Sonbhadra (सोनभद्र)": [
      {
        "name": "Salakhan Fossils Park (सलखन फॉसिल्स पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3db8e1af0cb3aca1ae2d0018624204529/uploads/bfi_thumb/2018073084-olwctpvbnjjyi8s1z1xrkydlozsmo8cnbb9nl05p1e.jpg",
        "description": "Salkhan Fossils Park, officially known as Sonbhadra Fossils Park, is a fossil park in Uttar Pradesh. | सलखन फॉसिल्स पार्क, जिसे आधिकारिक रूप से सोनभद्र फॉसिल्स पार्क कहा जाता है, उत्तर प्रदेश में स्थित एक जीवाश्म पार्क है।"
      }
    ],

    "Sultanpur (सुल्तानपुर)": [
      {
        "name": "Parijat Tree (पारिजात वृक्ष)",
        "image": "https://cdn.s3waas.gov.in/s38f53295a73878494e9bc8dd6c3c7104f/uploads/bfi_thumb/2018040583-olwadvu90vbdm0d2v34sl4azcspvefnlwko966e2gy.jpg",
        "description": "An ancient tree situated in Sultanpur district with religious importance, located in Civil Lines near the river Gomti. | यह प्राचीन वृक्ष सुलतानपुर जिले में स्थित है और धार्मिक महत्व रखता है, सिविल लाइंस में गोमती नदी के किनारे मौजूद है।"
      },
      {
        "name": "Dhopapp Temple (धोपप्प मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38f53295a73878494e9bc8dd6c3c7104f/uploads/bfi_thumb/2018022483-olwadr522p4xzyjwmj3nqnhodvd1by4y7xetrsl1c2.jpg",
        "description": "A famous religious place associated with Lord Rama, located in Lambhua development block. Celebrated during Ramnavami and Jyeshtha Shukla. | यह प्रसिद्ध धार्मिक स्थल भगवान राम से जुड़ा है और लम्भुआ विकास खंड में स्थित है। रामनवमी और ज्येष्ठ शुक्ला पर विशेष आयोजन होता है।"
      },
      {
        "name": "Bijethu Mahaveeran Temple (बिजेथु महावीरान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s38f53295a73878494e9bc8dd6c3c7104f/uploads/bfi_thumb/2018031266-olwadt0qgd7in6h6bjwwvn0lkn3rrccew6psqci8zm.jpg",
        "description": "A famous Hanuman temple located in Kadipur, Surapur-Sultanpur, visited especially on Tuesdays and Saturdays. | यह प्रसिद्ध हनुमान मंदिर कदीपुर, सुरापुर-सुलतानपुर में स्थित है। विशेषकर मंगलवार और शनिवार को यहां श्रद्धालु आते हैं।"
      }
    ],

    "Unnao (उन्नाव)": [
      {
        "name": "Shahid Chandrashekhar Azad Bird Sanctuary (शहीद चंद्रशेखर आज़ाद पक्षी अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s36883966fd8f918a4aa29be29d2c386fb/uploads/bfi_thumb/2018032384-olw96ikbp1y3xpcx3u9h1kacnsh796hg9x2r1kozk2.jpeg",
        "description": "Also known as Nawabganj Bird Sanctuary, this natural scenic spot is located on the Kanpur-Lucknow highway in Unnao district and is home to numerous bird species. | नवानबग पक्षी अभयारण्य के रूप में भी जाना जाता है, यह प्राकृतिक मनोरम स्थल कानपुर-लखनऊ हाईवे पर उन्नाव जिले में स्थित है और कई पक्षियों की प्रजातियों का घर है।"
      }
    ],

    "Varanasi (वाराणसी)": [
      {
        "name": "Sarnath (सारनाथ)",
        "image": "https://cdn.s3waas.gov.in/s36da37dd3139aa4d9aa55b8d237ec5d4a/uploads/bfi_thumb/2018080846-olw9kk9htx6dfwyd2wurb0oc938oac91jg1z8fv6ki.gif",
        "description": "Sarnath is a city 10 km northeast of Varanasi, near the confluence of the Ganges and Varuna rivers in Uttar Pradesh. | सारनाथ वाराणसी से 10 किमी उत्तर-पूर्व में, गंगा और वरुणा नदियों के संगम के पास स्थित है।"
      },
      {
        "name": "Ganga Ghats (गंगा घाट)",
        "image": "https://cdn.s3waas.gov.in/s36da37dd3139aa4d9aa55b8d237ec5d4a/uploads/bfi_thumb/2018040912-olw9khfz9f2ih32gjdmvljdygxmkn8xuj23islzd36.jpg",
        "description": "Ghats in Varanasi are riverside steps leading to the banks of the Ganges River. There are 88 ghats in the city. | वाराणसी में घाट गंगा नदी के किनारे जाने वाली सीढ़ियाँ हैं। शहर में कुल 88 घाट हैं।"
      },
      {
        "name": "Shri Kashi Vishwanath Temple (श्री काशी विश्वनाथ मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/f/ff/Kashi_Vishwanath.jpg",
        "description": "One of the most famous Hindu temples dedicated to Lord Shiva, located in Varanasi. | यह हिंदू मंदिर भगवान शिव को समर्पित है और वाराणसी में स्थित है।"
      },
      {
        "name": "BHU (बीएचयू)",
        "image": "https://cdn.s3waas.gov.in/s36da37dd3139aa4d9aa55b8d237ec5d4a/uploads/bfi_thumb/2018040988-olw9kidtg93ssp13dw1i615f2bhxuy1kv6r09vxywy.jpg",
        "description": "Banaras Hindu University and other important sites in Varanasi, a holy city on the west bank of the Ganges. | बनारस हिंदू विश्वविद्यालय और वाराणसी के अन्य महत्वपूर्ण स्थल, जो गंगा नदी के पश्चिमी तट पर स्थित है।"
      }
    ],

    "Bhadohi (भदोही)": [
      {
        "name": "Sita Samadhi Sthal (सीता समाधि स्थल)",
        "image": "https://cdn.s3waas.gov.in/s30266e33d3f546cb5436a10798e657d97/uploads/bfi_thumb/2018070535-olw6i560zk0rkzceuolhwds02lhf2cw6ox5kp9l3ia.jpg",
        "description": "Sita Samadhi Sthal (Sitamarhi) temple is located in Bhadohi district. This temple is situated in Jangiganj market between Allahabad and Varanasi. | सीता समाधि स्थल (सीतामढ़ी) मंदिर भदोही जिले में स्थित है। यह मंदिर इलाहाबाद और वाराणसी के बीच जंगीगंज बाजार में स्थित है।"
      }
    ],

    "Budaun (बदायूँ)": [
      {
        "name": "Ikhlas Khan's Roza (इखलास खान का रोज़ा)",
        "image": "https://cdn.s3waas.gov.in/s36c9882bbac1c7093bd25041881277658/uploads/bfi_thumb/2018021987-olw9elyao2ws6rr3v8z1uwll0fm77zxlyj58xqdeqo.jpg",
        "description": "Fast of Ikhlas Khan in Budaun district. | इखलास खान का रोज़ा बदायूँ जिले में।"
      },
      {
        "name": "Jama Masjid Shamshi Badaun (जामा मस्जिद शमशी बदायूँ)",
        "image": "https://cdn.s3waas.gov.in/s36c9882bbac1c7093bd25041881277658/uploads/bfi_thumb/2018021953-olw9elyao2ws6rr3v8z1uwll0fm77zxlyj58xqdeqo.jpg",
        "description": "Historic mosque located in Budaun. | ऐतिहासिक मस्जिद, बदायूँ में स्थित।"
      },
      {
        "name": "Catholic Church Budaun (कैथोलिक चर्च बदायूँ)",
        "image": "https://cdn.s3waas.gov.in/s36c9882bbac1c7093bd25041881277658/uploads/bfi_thumb/2018021994-1024x768-olw9elyao2ws6rr3v8z1uwll0fm77zxlyj58xqdeqo.jpg",
        "description": "A prominent Catholic church in Budaun. | बदायूँ का प्रमुख कैथोलिक चर्च।"
      },
      {
        "name": "Gauri Shankar Temple, Budaun (गौरी शंकर मंदिर, बदायूँ)",
        "image": "https://cdn.s3waas.gov.in/s36c9882bbac1c7093bd25041881277658/uploads/bfi_thumb/2018021992-olw9elyao2ws6rr3v8z1uwll0fm77zxlyj58xqdeqo.jpeg",
        "description": "Famous temple dedicated to Lord Shiva. | भगवान शिव को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Nagla Temple, Budaun (नगला मंदिर, बदायूँ)",
        "image": "https://cdn.s3waas.gov.in/s36c9882bbac1c7093bd25041881277658/uploads/bfi_thumb/2018021994-olw9elyao2ws6rr3v8z1uwll0fm77zxlyj58xqdeqo.jpeg",
        "description": "Religious site in Budaun. | बदायूँ का धार्मिक स्थल।"
      },
      {
        "name": "Biruabari Temple Budaun (बिरुआबारी मंदिर, बदायूँ)",
        "image": "https://cdn.s3waas.gov.in/s36c9882bbac1c7093bd25041881277658/uploads/bfi_thumb/2018021966-olw9elyao2ws6rr3v8z1uwll0fm77zxlyj58xqdeqo.jpg",
        "description": "A well-known temple in Budaun district. | बदायूँ जिले में प्रसिद्ध मंदिर।"
      },
      {
        "name": "Tomb of Mumtaz Mahal's sister in Budaun (मुमताज़ महल की बहन का मकबरा, बदायूँ)",
        "image": "https://cdn.s3waas.gov.in/s36c9882bbac1c7093bd25041881277658/uploads/2017/06/2018021986.jpg",
        "description": "Historical tomb in Budaun district. | बदायूँ जिले में ऐतिहासिक मकबरा।"
      },
    ],

    "Ayodhya (अयोध्या)": [
      {
        "name": "Shri Ram Janmabhoomi Mandir (श्री राम जन्मभूमि मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Ayodhya_Ram_Mandir_Inauguration_Day_Picture.jpg/960px-Ayodhya_Ram_Mandir_Inauguration_Day_Picture.jpg",
        "description": "Famous temple dedicated to Lord Ram, located at the birthplace of Lord Ram in Ayodhya. | अयोध्या में भगवान राम के जन्मस्थान पर स्थित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Nageshwar Nath Temple (नागेश्वर नाथ मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/91/41/37/the-main-sanctum-of-the.jpg?w=1200&h=-1&s=1",
        "description": "Entrance gate of Nageshwar Nath Temple dedicated to Lord Shiva, situated in Ram ki Paidi. | राम की पैड़ी में स्थित भगवान शिव को समर्पित नागेश्वर नाथ मंदिर का प्रवेश द्वार।"
      },
      {
        "name": "Devkali (देवकाली)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/1-choti-devkali-temple-ayodhya-uttar-pradesh-attr-hero?qlt=82&ts=1726649518641",
        "description": "Idol of Goddess Kali; Mother Sita is believed to have been here. | माता सीता के यहाँ रहने का विश्वास किया जाता है, देवी काली की मूर्ति।"
      },
      {
        "name": "Ram's Paidi (राम की पैड़ी)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/2-ram-ki-paidi-ayodhya-uttar-pradesh-attr-hero?qlt=82&ts=1726818931685",
        "description": "A series of ghats located on the banks of the Saryu River, enhanced on full moon day. | सरयू नदी के किनारे स्थित घाटों की श्रृंखला, पूर्णिमा के दिन यहाँ की सुंदरता बढ़ जाती है।"
      },
      {
        "name": "Jain Swetambara Temple (जैन श्वेतांबर मंदिर)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/1-jain-shrines-ayodhya-uttar-pradesh-attr-hero?qlt=82&ts=1726649587534",
        "description": "City of Ayodhya has 18 temples related to life of various Tirthankaras. | अयोध्या शहर में विभिन्न तीर्थंकरों के जीवन से संबंधित 18 जैन मंदिर हैं।"
      },
      {
        "name": "Gulab Bari (गुलाब बारी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/21/9c/de/photo6jpg.jpg?w=1200&h=1200&s=1",
        "description": "Tomb of Nawab Shuja-ud-Daula, known as 'Garden of Roses'. | नवाब शुजा-उद-दौला का मकबरा, जिसे 'गुलाब का बाग' कहा जाता है।"
      },
      {
        "name": "Kanaka Bhawan (कनक भवन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDalzi3m7Ub-vm_dGLlQJdqRjQ88R5Oa4e8Q&s",
        "description": "Historical and religious temple northeast of Ram Janmabhoomi, famous for artwork. | राम जन्मभूमि के उत्तरपूर्व में ऐतिहासिक और धार्मिक मंदिर, कला कार्य के लिए प्रसिद्ध।"
      },
      {
        "name": "Hanuman Garhi (हनुमान गढ़ी)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/2-hanuman-garhi-ayodhya-uttar-pradesh-attr-hero?qlt=82&ts=1726649712726",
        "description": "Temple dedicated to Pawanputra Hanuman, 1 km from Ayodhya railway station. | पवनपुत्र हनुमान को समर्पित मंदिर, अयोध्या रेलवे स्टेशन से 1 किमी दूर।"
      },
      {
        "name": "Birla Mandir (बिरला मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG4E6v1RqkuwtKseWe60jmptWysVJQqyAp9mah0oc-ZrTg7Uh9JybDJ8xHmMVKu6RDFUw&usqp=CAU",
        "description": "Temple dedicated to Lord Ram and Goddess Sita, newly built on Ayodhya-Faizabad road, main temple of Ayodhya. | भगवान राम और माता सीता को समर्पित, अयोध्या-फैजाबाद रोड पर नव निर्मित मुख्य मंदिर।"
      },
    ],

    "Prayagraj (प्रयागराज)": [
      {
        "name": "Sankatmochan Hanuman Temple (श्री लटे हुए हनुमानजी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3cd00692c3bfe59267d5ecfac5310286c/uploads/bfi_thumb/2024112773-qxnzzmignzwa0qvdcy9qinbrwf67d6ulr4mwp7h8ua.png",
        "description": "Located in Daraganj locality on the bank of the Ganga, dedicated to Lord Hanuman. | दरगंज इलाके में गंगा के किनारे स्थित, भगवान हनुमान को समर्पित।"
      },
      {
        "name": "Law Museum & Archives (कानून संग्रहालय और अभिलेखागार)",
        "image": "https://cdn.s3waas.gov.in/s3cd00692c3bfe59267d5ecfac5310286c/uploads/bfi_thumb/2023071351-q9clkfrjh4non7agkshqkm2mkzu924bfuifo1ydxqa.jpg",
        "description": "A wing of High Court of Judicature at Allahabad, showcasing history of Indian judiciary. | इलाहाबाद उच्च न्यायालय की शाखा, भारतीय न्यायपालिका का इतिहास प्रदर्शित करती है।"
      },
      {
        "name": "Allahabad Museum (अलाहाबाद संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/80/04/c2/caption.jpg?w=1200&h=-1&s=1",
        "description": "Centrally located in Civil Lines area, surrounded by lush green gardens. | सिविल लाइंस क्षेत्र में स्थित, हरे-भरे बगीचों से घिरा हुआ।"
      },
      {
        "name": "New Yamuna Bridge (न्यू यमुना ब्रिज)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/23/4f/fc/new-yamuna-bridge.jpg?w=900&h=500&s=1",
        "description": "Modern architectural bridge over Yamuna, a landmark of Prayagraj. | यमुना नदी पर आधुनिक स्थापत्य पुल, इलाहाबाद का प्रमुख स्थल।"
      },
      {
        "name": "Khusro Bagh (खुसरो बाग़)",
        "image": "https://cdn.s3waas.gov.in/s3cd00692c3bfe59267d5ecfac5310286c/uploads/bfi_thumb/2018061542-olwcnk1eun4ae9q9ye1t8icti2607nvzstb2bpaltu.jpg",
        "description": "Historical garden with tombs of Prince Khusro, son of Emperor Jahangir. | ऐतिहासिक बाग जिसमें जाहीर सम्राट जहांगिर के पुत्र खुसरो की कब्रें हैं।"
      },
      {
        "name": "Anand Bhawan (आनंद भवन)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/9a/a8/93/view-of-grand-building.jpg?w=900&h=-1&s=1",
        "description": "Historic house museum of the Nehru family, constructed by Motilal Nehru. | नेहरू परिवार का ऐतिहासिक घर संग्रहालय, मोतीलाल नेहरू द्वारा निर्मित।"
      },
      {
        "name": "Kumbh Mela and Sangam (संगम / कुंभ मेला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEdkUYx3TGce588IVl0eGoKegoU6dqLBR7BQ&s",
        "description": "Confluence of Ganga, Yamuna, and mythical Saraswati rivers, major pilgrimage site. | गंगा, यमुना और पौराणिक सरस्वती नदियों का संगम, प्रमुख तीर्थ स्थल।"
      },
      {
        "name": "Chandra Shekhar Azad Park (Alfred Park / चंद्रशेखर आज़ाद पार्क)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/chandra-shekhar-azad-park-prayagraj-uttar-pradesh-2-attr-hero?qlt=82&ts=1751459172681",
        "description": "Historical park in Prayagraj named after freedom fighter Chandra Shekhar Azad. | स्वतंत्रता सेनानी चंद्रशेखर आज़ाद के नाम पर इलाहाबाद में ऐतिहासिक पार्क।"
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
