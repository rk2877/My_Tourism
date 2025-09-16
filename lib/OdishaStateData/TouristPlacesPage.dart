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
    "Angul (अंगुल)": [
      {
        "name": "Rengali (रेंगाली)",
        "image": "https://angul.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018050354-1-olwe68bogx2z2fgbcgurxncfkrkvqxquq73qzaqowa.jpg?itok=nizhF8Vv",
        "description": "A dam has been constructed across the river Brahmani at Rengali; one hydro electrical power project of 120 MW capacity. | ब्राह्मणी नदी पर रेंगाली में बाँध का निर्माण; 120 मेगावाट क्षमता की जलविद्युत परियोजना।"
      },
      {
        "name": "Kosala Ramachandi Temple (कोसला रामचंडी मंदिर)",
        "image": "https://angul.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018050373-olwe68bogx2z2fgbcgurxncfkrkvqxquq73qzaqowa.jpg?itok=eKXgerM4",
        "description": "Situated 28 km on Angul–Bagedia road; famous shrine of Goddess Ramachandi. | अंगुल-बगेडिया रोड पर 28 किमी दूर स्थित; देवी रामचंडी का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Deulajhari, Athamallik (देउलाझरी, अथमल्लिक)",
        "image": "https://angul.odisha.gov.in/sites/default/files/styles/330_330/public/2024-02/Deulajhari.jpg?itok=tftqyYgH",
        "description": "Ancient citadel of Saivism; located 6 km from Athamallik and 90 km from Angul. | शैव परंपरा का प्राचीन केंद्र; अथमल्लिक से 6 किमी और अंगुल से 90 किमी दूर।"
      },
      {
        "name": "Lovi Thakurani, Garh Santry (लोवी ठाकुराणी, गढ़ संत्री)",
        "image": "https://angul.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018050365-olwe68bogx2z2fgbcgurxncfkrkvqxquq73qzaqowa.jpg?itok=vNfmMUjw",
        "description": "Annual ceremonial yatra of Goddess Lovi celebrated at Garh Santry. | गढ़ संत्री में देवी लोवी की वार्षिक यात्रा का आयोजन।"
      },
      {
        "name": "Goddess Hingula (देवी हिंगुला)",
        "image": "https://angul.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018050311-olwe67dua31oqthohyg5d5kyzdpij8n4e2g9i0s32i.jpg?itok=epA5G7nu",
        "description": "Holy place (peetha) of Goddess Hingula on the bank of river Simhada in western Angul. | अंगुल के पश्चिम में शिम्हदा नदी के किनारे देवी हिंगुला का पवित्र पीठ।"
      },
      {
        "name": "Saila Srikhetra, Angul (शैल श्रीक्षेत्र, अंगुल)",
        "image": "https://angul.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018050342-olwe68bogx2z2fgbcgurxncfkrkvqxquq73qzaqowa.jpg?itok=k52CIiNp",
        "description": "Jagannath Temple known as 'Saila Srikhetra', situated on Sunasagad hill. | जगन्नाथ मंदिर जिसे 'शैल श्रीक्षेत्र' कहा जाता है; सुनसागड़ पहाड़ी पर स्थित।"
      }
    ],

    "Balasore (बालासोर)": [
      {
        "name": "Talasari–Udaypur Beach (तलसरी–उदयपुर बीच)",
        "image": "https://balasore.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018051815-olw9xxiv13h6k9jb0ovqrn8cedclrdbm1m2ky41m2q.jpg?itok=tFN2LkU_",
        "description": "Long sandy beach with red crabs and casuarina trees; tourists enjoy marine beauty. | लाल केकड़े और सीटी बजाते काजूरिना पेड़ों वाला लंबा रेतिला समुद्रतट; समुद्री सौंदर्य का आनंद लेने का लोकप्रिय स्थान।"
      },
      {
        "name": "Jagannath Temple, Balasore (जगन्नाथ मंदिर, बालासोर)",
        "image": "https://balasore.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018051856-olw9xygp7xigvvhxv7adc4zszr7yz2fcdqq2fe07wi.jpg?itok=TUyhKwNa",
        "description": "Immami Jagannath temple situated 7 km from district headquarters; newly constructed Jagannath temple. | इम्मामी जगन्नाथ मंदिर, जिला मुख्यालय से 7 किमी दूर; नया निर्मित जगन्नाथ मंदिर।"
      },
      {
        "name": "Khirachora Temple, Remuna (खीरचोरा मंदिर, रेमुना)",
        "image": "https://balasore.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018051877-olw9xwl0u9fw8nko66h475gvszh8jo7vphf3gu308y.jpg?itok=G0mW4b5P",
        "description": "Famous Vaishnava shrine, also known as Remuna Gupta Vrindaban; surrounded by sacred sites. | प्रसिद्ध वैष्णव तीर्थ, जिसे रेमुना गुप्ता वृंदावन भी कहते हैं; अन्य पवित्र स्थलों से घिरा हुआ।"
      },
      {
        "name": "Chandipur Beach (चांदिपुर बीच)",
        "image": "https://balasore.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018051857-olw9xygp7xigvvhxv7adc4zszr7yz2fcdqq2fe07wi.jpg?itok=wXm0s-2q",
        "description": "Unique beach where sea water recedes and advances rhythmically; rare natural phenomenon. | अनोखा समुद्रतट जहाँ समुद्र का जल लयबद्ध रूप से पीछे हटता और आगे बढ़ता है; अद्भुत प्राकृतिक दृश्य।"
      },
      {
        "name": "Panchalingeswar Temple (पंचलिंगेश्वर मंदिर)",
        "image": "https://balasore.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018051890-olw9y1a7sfmbupdueqi91ma6rwu2m5qje4oiv7w1du.jpg?itok=Qvs0SJY2",
        "description": "Saiva pitha on a hillock; perennial streams falling on five natural Lingas; scenic beauty. | पहाड़ी पर स्थित शैव पीठ; पाँच प्राकृतिक लिंगों पर झरने का जल गिरता है; मनमोहक प्राकृतिक सौंदर्य।"
      },
      {
        "name": "Chandaneswar Temple (चंदनेश्वर मंदिर)",
        "image": "https://balasore.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018051888-olw9y0cdlll1j3f7k83mh4iq6iypegmt2011dxxfk2.jpg?itok=hA9oeZCn",
        "description": "Renowned Shiva temple in North Odisha; famous for Chadak Mela festival; cultural & religious site. | उत्तरी ओडिशा का प्रसिद्ध शिव मंदिर; चड़क मेला उत्सव के लिए मशहूर; सांस्कृतिक व धार्मिक स्थल।"
      }
    ],

    "Bargarh (बरगढ़)": [
      {
        "name": "Goddess Patharasini of Arjunda (अरजुंडा की देवी पथरासिनी)",
        "image": "https://bargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Goddess%20Patharasini%20of%20Arjunda.jpg?itok=7DpDMlW2",
        "description": "Village Arjunda on the bank of river Mahanadi and at the northern end of Barapahar forest range; famous shrine of Goddess Patharasini. | महानदी नदी के तट और बरापहाड़ वन के उत्तरी छोर पर स्थित अरजुंडा गांव; देवी पथरासिनी का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Boudh Bihar of Ganiapali (गणियापाली का बौद्ध बिहार)",
        "image": "https://bargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Idol%20in%20Ganiapali%20Temple.jpg?itok=soU0xM7C",
        "description": "Historically famous village Ganiapali in Gaisilat block, 75 km from district HQ; Buddhist site with cultural and religious importance. | ऐतिहासिक रूप से प्रसिद्ध गांव गणियापाली (गैसिलाट ब्लॉक), जिला मुख्यालय से 75 किमी दूर; सांस्कृतिक व धार्मिक महत्व का बौद्ध स्थल।"
      },
      {
        "name": "Baseikela Gada Temple (बसेइकेला गढ़ मंदिर)",
        "image": "https://bargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Baseikela%20Gada%20Temple.jpg?itok=zVKVNsFN",
        "description": "Located in Bheden block, built by Raja Manohar Singh, associate of Veer Surendra Sai. | भेड़ेन ब्लॉक में स्थित; वीर सुरेन्द्र साई के सहयोगी राजा मनोहर सिंह द्वारा निर्मित।"
      },
      {
        "name": "Papanga Mountain & Budharaja (पापंगा पर्वत और बुधराजा)",
        "image": "https://bargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Papanga%20Mountain%20%26%20Budharaja%20Top%20View.jpg?itok=n4QjFRYi",
        "description": "Budharaja mountain near Papanga village in Bheden block; temple situated at the foothills. | भेड़ेन ब्लॉक के पापंगा गांव के पास बुधराजा पर्वत; पहाड़ी की तलहटी में मंदिर स्थित।"
      },
      {
        "name": "Giri Gobardhan of Dekulba (डेकुलबा का गिरि गोवर्धन)",
        "image": "https://bargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Giri%20Gobardhan%20Stairs.jpg?itok=y3e5cQIK",
        "description": "Village Dekulba near Talmenda on the road from DHQ to Bheden; scenic and religious site. | डेकुलबा गांव, तालमेंडा के पास; जिला मुख्यालय से भेड़ेन जाने वाले मार्ग पर; प्राकृतिक व धार्मिक स्थल।"
      },
      {
        "name": "Bindhyabasini Temple, Sankrida (सांकरिडा का बिंध्यवासिनी मंदिर)",
        "image": "https://bargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Bindhyabasini%20Temple.jpg?itok=VEbvuJGZ",
        "description": "Located in Sankrida village, 35 km from district HQ; 4 km east of Anchal village. | सांकरिडा गांव में स्थित; जिला मुख्यालय से 35 किमी दूर; आंचल गांव के पूर्व में 4 किमी।"
      },
      {
        "name": "Nrusinghanath Temple & Waterfall (नृसिंहनाथ मंदिर और जलप्रपात)",
        "image": "https://bargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Nrusinghnath%20Waterfall.jpg?itok=ybIllKsL",
        "description": "Famous pilgrimage of Borasambar kingdom, now Padampur sub-division; natural waterfall adds beauty. | प्राचीन बोरासांबर साम्राज्य का प्रसिद्ध तीर्थ, अब पदमपुर उप-विभाग; प्राकृतिक जलप्रपात इसकी सुंदरता बढ़ाता है।"
      },
      {
        "name": "Badyanath Temple – Astasambhus (बद्यानाथ मंदिर – अष्टसंभु)",
        "image": "https://bargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Badyanath%20Temple.jpg?itok=BT6tzHSK",
        "description": "Kedarnath of Ambabhona, at the foot of Barapahar mountain, 35 km from HQ; one of the Astasambhus. | अम्बाभोना का केदारनाथ मंदिर, बरापहाड़ पर्वत की तलहटी में, जिला मुख्यालय से 35 किमी दूर; अष्टसंभु में से एक।"
      },
      {
        "name": "Debrigarh Sanctuary (देब्रिगढ़ अभयारण्य)",
        "image": "https://bargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Animals%20at%20Debrigarh%20Sanctuary.jpg?itok=rtR6Lemx",
        "description": "Located in Barapahar hills, peak height 2267 feet; rebel stronghold during freedom struggle. | बरापहाड़ की पहाड़ियों में स्थित; ऊंचाई 2267 फीट; स्वतंत्रता संग्राम के समय विद्रोही गढ़।"
      }
    ],

    "Bhadrak (भद्रक)": [
      {
        "name": "Baba Akhandalamani, Aradi (बाबा अखंडलामणि, अरदी)",
        "image": "https://bhadrak.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Baba%20Akhandalamani%2C%20Aradi.jpg?itok=5r28Ub_R",
        "description": "Situated on the bank of river Baitarani; Akhandalamani Temple is dedicated to Lord Shiva; famous for its legendary beliefs. | बैतरनी नदी के तट पर स्थित; अखंडलामणि मंदिर भगवान शिव को समर्पित; अपने पौराणिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Maa Bhadrakali, Aharapada (माँ भद्रकाली, अहारापड़ा)",
        "image": "https://bhadrak.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Maa%20Bhadrakali%2C%20Saraswati%20Bhesha.jpg?itok=wOHzyx92",
        "description": "Famous temple of Goddess Bhadrakali, located in Aharapada village, 5 km from Bhadrak town. | देवी भद्रकाली का प्रसिद्ध मंदिर, अहारापड़ा गांव में स्थित, भद्रक शहर से 5 किमी दूर।"
      },
      {
        "name": "Maa Dhamarai Temple (माँ धमाराई मंदिर)",
        "image": "https://bhadrak.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018050596-olwaij5qwksodar4djgkkvrf98ph9mwracimbm0gp6.jpg?itok=ZcOb5Pzv",
        "description": "According to folklore, Maa Dhamarai had five sisters and resided at Satabhaya; important Shakti shrine. | लोककथाओं के अनुसार, माँ धमाराई की पाँच बहनें थीं और वे सतभाया नामक स्थान पर रहती थीं; महत्वपूर्ण शक्ति पीठ।"
      },
      {
        "name": "Sri Biranchinarayan Temple (श्री बिरंचिनारायण मंदिर)",
        "image": "https://bhadrak.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018050594-olwaii7wpqre1oshj11y0dzynuu41xt0y7v4uc1uve.jpg?itok=8D3XSXkj",
        "description": "Located in Palia village, 15 km south of Bhadrak on Bhadrak–Chandabali road; historic sun temple. | पालिया गांव में स्थित, भद्रक से 15 किमी दक्षिण में (भद्रक-चंदाबली मार्ग पर); ऐतिहासिक सूर्य मंदिर।"
      },
      {
        "name": "Shaheed Smruti Samadhi, Eram (शहीद स्मृति समाधि, एराम – रक्ततीर्थ)",
        "image": "https://bhadrak.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2018051486-olwaioss1l0eayixglwbzuc6tjxojtj5b4fj79s3nu.jpg?itok=dYcG2LTl",
        "description": "Located 16 km from Basudebpur; famous place of sacrifice during freedom struggle; bounded by Bay of Bengal on one side. | बसुदेबपुर से 16 किमी दूर स्थित; स्वतंत्रता संग्राम के दौरान बलिदान भूमि; एक ओर से बंगाल की खाड़ी से घिरा।"
      },
      {
        "name": "Entry Point to Bhitarakanika (भीतरकनिका का प्रवेश द्वार)",
        "image": "https://bhadrak.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/2019080112-olwalfhlvzn8tbehsujz3pr715iy6ym19x7kv57aiq.jpg?itok=x4WE1EV9",
        "description": "Covered with dense mangrove forests and saline rivers; once under the Kanika Estate; gateway to Bhitarakanika National Park. | गहरे मैंग्रोव जंगलों और खारे नदियों से आच्छादित; कभी कनिका एस्टेट के अधीन; भीतरकनिका राष्ट्रीय उद्यान का प्रवेश द्वार।"
      }
    ],

    "Balangir (बलांगीर)": [
      {
        "name": "Bhima Dunguri (भीमा डुंगुरी)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051738-olwdhore0nhfwz3qnuxgtub56kjurgb60pvbv74rd6.jpg?itok=Ou0SgV23",
        "description": "Famous for natural beauty and caves; an important historic and scenic spot in Balangir district. | प्राकृतिक सौंदर्य और गुफाओं के लिए प्रसिद्ध; बोलांगीर ज़िले का ऐतिहासिक व प्राकृतिक स्थल।"
      },
      {
        "name": "Kumuda Pahad (कुमुदा पहाड़)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051925-olwdhqmusny7yqutcjqfo3h7qxzaj5yh2ljpzdos0k.jpg?itok=wS9EVNGZ",
        "description": "A hilly region dedicated to Lord Dhabaleswar; famous for religious importance and natural charm. | भगवान धबलेश्वर को समर्पित पहाड़ी क्षेत्र; धार्मिक महत्व और प्राकृतिक सौंदर्य के लिए प्रसिद्ध।"
      },
      {
        "name": "Turekela (तुरेकेला)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051951-olwdhrkwl5lavszn7e5cjbliyq5yejmd13tsb10kui.jpg?itok=KY8QQSTo",
        "description": "Located 98 km from Balangir; known for adventure tourism and wildlife like tigers, deer, bears. | बोलांगीर से 98 किमी दूर; साहसिक पर्यटन और बाघ, हिरण, भालू जैसे वन्यजीवों के लिए प्रसिद्ध।"
      },
      {
        "name": "Gaikhai M.I.P (गैखाई एम.आई.पी.)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051936-olwdhrkozhziactg72528l8ocbunqv27eq77gnnduc.jpg?itok=doyrTnyR",
        "description": "30 km from Balangir town; surrounded by green hills on three sides; known for serene beauty. | बोलांगीर से 30 किमी दूर; तीन ओर से हरित पहाड़ियों से घिरा; शांत प्राकृतिक सौंदर्य के लिए प्रसिद्ध।"
      },
      {
        "name": "Jogisarada (जोगीसारदा)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051922-olwdhqn2ebk0k710cvqpytu2dcal6uimoz6atr1z0q.jpg?itok=JO_eivVP",
        "description": "25 km east of Balangir; known for Jogeswar Temple where devotees believe wishes are fulfilled. | बोलांगीर से 25 किमी पूर्व; जोगेश्वर मंदिर के लिए प्रसिद्ध, जहाँ भक्त मानते हैं कि सभी इच्छाएँ पूरी होती हैं।"
      },
      {
        "name": "Saintala Chandi Temple (सैंताल चंडी मंदिर)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051978-olwdhrkwl5lavszn7e5cjbliyq5yejmd13tsb10kui.jpg?itok=gyfnVPU9",
        "description": "38 km south of Balangir; shrine of Goddess Chandi in Mahisamardini form. | बोलांगीर से 38 किमी दक्षिण; महिषासुरमर्दिनी रूप में देवी चंडी का मंदिर।"
      },
      {
        "name": "Ranipur Jharial (रानीपुर झारियाल)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018052318-olwdhtgkytnvj0wwweylob4g5hwotxttpd4r9kxsi2.jpg?itok=lIYHEDc7",
        "description": "104 km south-west of Balangir; famous for 64 Yogini shrine; historic heritage site. | बोलांगीर से 104 किमी दक्षिण-पश्चिम; 64 योगिनी मंदिर के लिए प्रसिद्ध; ऐतिहासिक धरोहर स्थल।"
      },
      {
        "name": "Patneswari Temple (पटनेश्वरी मंदिर)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018050163-olwdhntjttg5ld53tciu9cjol6ohjr7fol7udx65je.jpg?itok=t0zSr66P",
        "description": "Located in Patnagarh, 40 km west of Balangir; dedicated to Goddess Patneswari, ancient capital of Patna kingdom. | बोलांगीर से 40 किमी पश्चिम, पटनागढ़ में स्थित; देवी पटनेश्वरी को समर्पित, प्राचीन पाटना राज्य की राजधानी।"
      },
      {
        "name": "Harishankar (हरिशंकर)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018050153-olwdhntjttg5ld53tciu9cjol6ohjr7fol7udx65je.jpg?itok=tWGvAmnY",
        "description": "On southern slope of Gandhamardan hills; pilgrimage site with natural charm and religious importance. | गंधमर्दन पहाड़ियों की दक्षिणी ढलान पर स्थित; प्राकृतिक सौंदर्य और धार्मिक महत्व वाला तीर्थस्थल।"
      }
    ],

    "Boudh (बौध)": [
      {
        "name": "Bhima Dunguri (भीमा डुंगुरी)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051738-olwdhore0nhfwz3qnuxgtub56kjurgb60pvbv74rd6.jpg?itok=Ou0SgV23",
        "description": "Famous for natural beauty and caves; an important historic and scenic spot. | प्राकृतिक सौंदर्य और गुफाओं के लिए प्रसिद्ध; ऐतिहासिक व प्राकृतिक स्थल।"
      },
      {
        "name": "Kumuda Pahad (कुमुदा पहाड़)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051925-olwdhqmusny7yqutcjqfo3h7qxzaj5yh2ljpzdos0k.jpg?itok=wS9EVNGZ",
        "description": "A hilly region dedicated to Lord Dhabaleswar; famous for religious importance. | भगवान धबलेश्वर को समर्पित पहाड़ी क्षेत्र; धार्मिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Turekela (तुरेकेला)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051951-olwdhrkwl5lavszn7e5cjbliyq5yejmd13tsb10kui.jpg?itok=KY8QQSTo",
        "description": "Known for adventure tourism and wildlife like tigers, deer, bears. | साहसिक पर्यटन और बाघ, हिरण, भालू जैसे वन्यजीवों के लिए प्रसिद्ध।"
      },
      {
        "name": "Gaikhai M.I.P (गैखाई एम.आई.पी.)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051936-olwdhrkozhziactg72528l8ocbunqv27eq77gnnduc.jpg?itok=doyrTnyR",
        "description": "Surrounded by green hills on three sides; known for serene beauty. | तीन ओर से हरित पहाड़ियों से घिरा; शांत प्राकृतिक सौंदर्य के लिए प्रसिद्ध।"
      },
      {
        "name": "Jogisarada (जोगीसारदा)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051922-olwdhqn2ebk0k710cvqpytu2dcal6uimoz6atr1z0q.jpg?itok=JO_eivVP",
        "description": "Known for Jogeswar Temple where devotees believe wishes are fulfilled. | जोगेश्वर मंदिर के लिए प्रसिद्ध, जहाँ भक्त मानते हैं कि इच्छाएँ पूरी होती हैं।"
      },
      {
        "name": "Saintala Chandi Temple (सैंताल चंडी मंदिर)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018051978-olwdhrkwl5lavszn7e5cjbliyq5yejmd13tsb10kui.jpg?itok=gyfnVPU9",
        "description": "Shrine of Goddess Chandi in Mahisamardini form. | महिषासुरमर्दिनी रूप में देवी चंडी का मंदिर।"
      },
      {
        "name": "Ranipur Jharial (रानीपुर झारियाल)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018052318-olwdhtgkytnvj0wwweylob4g5hwotxttpd4r9kxsi2.jpg?itok=lIYHEDc7",
        "description": "Famous for 64 Yogini shrine; historic heritage site. | 64 योगिनी मंदिर के लिए प्रसिद्ध; ऐतिहासिक धरोहर स्थल।"
      },
      {
        "name": "Patneswari Temple (पटनेश्वरी मंदिर)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018050163-olwdhntjttg5ld53tciu9cjol6ohjr7fol7udx65je.jpg?itok=t0zSr66P",
        "description": "Dedicated to Goddess Patneswari, ancient heritage shrine. | देवी पटनेश्वरी को समर्पित, प्राचीन धरोहर स्थल।"
      },
      {
        "name": "Harishankar (हरिशंकर)",
        "image": "https://balangir.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018050153-olwdhntjttg5ld53tciu9cjol6ohjr7fol7udx65je.jpg?itok=tWGvAmnY",
        "description": "Pilgrimage site with natural charm on Gandhamardan hills. | गंधमर्दन पहाड़ियों पर स्थित प्राकृतिक सौंदर्य व धार्मिक महत्व वाला तीर्थस्थल।"
      }
    ],

    "Cuttack (कटक)": [
      {
        "name": "Choudwar (चौद्वार)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Choudwar.png?itok=bJgsXgyi",
        "description": "Industrial centre of Odisha, once capital of Somkali Keshar Kings; place of historic importance. | ओडिशा का औद्योगिक केंद्र, कभी सोमकली केशर राजाओं की राजधानी; ऐतिहासिक महत्व का स्थल।"
      },
      {
        "name": "Kukudanga (कुकुडांगा)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Kukudanga.jpg?itok=NoTWvvJy",
        "description": "Famous for Goddess Beleswari Temple and lush green surroundings. | देवी बेलसवारी मंदिर और हरित प्राकृतिक परिवेश के लिए प्रसिद्ध।"
      },
      {
        "name": "Nemalo (नेमालो)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Nemalo.jpg?itok=XWhweJy7",
        "description": "Samadhi of Saint Achyutananda, one of the Panchasakas of Bhakti cult. | भक्ति आंदोलन के पंचसखाओं में से एक संत अच्युतानंद की समाधि।"
      },
      {
        "name": "Ansupa Lake (अंसुपा झील)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Ansupa%201.png?itok=nDvYaJSH",
        "description": "Picturesque lake near Athagarh; winter refuge for migratory birds. | अथगढ़ के पास मनमोहक झील; सर्दियों में प्रवासी पक्षियों का आश्रय स्थल।"
      },
      {
        "name": "Sri Sri Ramanath Dev – Baidyanath Dev (श्री श्री रमनाथ देव – बैद्यनाथ देव)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Sri%20Sri%20Ramanath%20Dev%20%E2%80%93%20Baidyanath%20Dev.png?itok=GVnuMAEU",
        "description": "Ancient temples on the banks of Mahanadi, built by kings. | महानदी के तट पर स्थित प्राचीन मंदिर, राजाओं द्वारा निर्मित।"
      },
      {
        "name": "Sri Sri Swapneswar Dev (श्री श्री स्वप्नेश्वर देव)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Sri%20sri%20Swapneswar%20Dev.png?itok=CzhHde-i",
        "description": "Temple built by Balabhadra Mangaraj, King of Badamba Gadajat. | बादाम्बा गड़जात के राजा बलभद्र मंगराज द्वारा निर्मित मंदिर।"
      },
      {
        "name": "Sapanpur (सापनपुर)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Sapanpur.png?itok=XnybjPTQ",
        "description": "Village known for natural beauty with small hills and farmlands. | छोटे-छोटे पहाड़ों और खेतों से घिरा प्राकृतिक सौंदर्य से भरपूर गाँव।"
      },
      {
        "name": "Simhanath (सिंहनाथ)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Simhanath%201.png?itok=KZyqNdee",
        "description": "Small island on Mahanadi, presiding deity Lord Shiva (Shambunath). | महानदी पर छोटा द्वीप, जहाँ मुख्य देवता भगवान शिव (शंभुनाथ) हैं।"
      },
      {
        "name": "Satyabhamapur (सत्यभामापुर)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Satyabhamapur.png?itok=aeIcPlEJ",
        "description": "Birthplace of Utkal Gourav Madhusudan Das (1848). | उत्कल गौरव मधुसूदन दास (1848) का जन्मस्थान।"
      },
      {
        "name": "Satkosia (सतकोसिया)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Satkosia%201.png?itok=KcEsUv6U",
        "description": "Famous for gorge, wildlife and group camping. | घाटी, रंग-बिरंगे वन्यजीव और समूह कैम्पिंग के लिए प्रसिद्ध।"
      },
      {
        "name": "Prasanna Purusottam Dev (प्रसन्न पुरषोत्तम देव)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Prasanna%20Purusottam%20Dev.png?itok=kgKYvHFi",
        "description": "Second highest temple of Odisha, one of the oldest. | ओडिशा का दूसरा सबसे ऊँचा और प्राचीन मंदिर।"
      },
      {
        "name": "Pragala Pitha (प्रगला पीठ)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Pragala%20Pitha%201.png?itok=71qqT09W",
        "description": "Shrine of Maa Pragala, family goddess of Narasinghpur rulers. | नरसिंहपुर शासकों की कुलदेवी माँ प्रगला का मंदिर।"
      },
      {
        "name": "Paramahansa (परमहंस)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Paramahansa.png?itok=0mcbxor4",
        "description": "Famous Lord Shiva Pitha, also known for waterhole (Ananta Garbha). | प्रसिद्ध शिवपीठ, जलकुंड (अनंत गर्भ) के लिए भी प्रसिद्ध।"
      },
      {
        "name": "Niali Madhab (नियाली माधव)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Niali%20Madhab%201.png?itok=YflCISTm",
        "description": "Famous shrine of Radha Madhab on the banks of Prachi River. | प्राची नदी के तट पर स्थित राधा माधव का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Naraj (नाराज)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Naraj.png?itok=IgLhIKnm",
        "description": "Panoramic view of river Mahanadi at the origin of Kathajodi. | काठजोड़ी नदी के उद्गम पर महानदी का मनोरम दृश्य।"
      },
      {
        "name": "Mani Nag Cave – Jaluka Hills (मणि नाग गुफा – जलुका पहाड़ियाँ)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Mani%20Nag%20Cave%20%E2%80%93%20Jaluka%20Hills.png?itok=t3eFOkeG",
        "description": "Historic caves in Jaluka Hills with traces of Hindu culture. | जलुका पहाड़ियों में स्थित गुफाएँ, जहाँ हिन्दू संस्कृति के अवशेष मिलते हैं।"
      },
      {
        "name": "Baldev Jew and Hanuman Jew, Umar (बलदेव ज्यू और हनुमान ज्यू, उमर)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Baldev%20Jew%20and%20Hanuman%20Jew%20at%20Umar%201.png?itok=ad2skKpW",
        "description": "Ancient temple dedicated to Jagannath, Balabhadra, Subhadra and Hanuman. | प्राचीन मंदिर, जहाँ भगवान जगन्नाथ, बलभद्र, सुभद्रा और हनुमान की पूजा होती है।"
      },
      {
        "name": "Amangeikuda (अमंगीकुड़ा)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Amangeikuda%201.jpg?itok=wkJdYoc7",
        "description": "Island in Mahanadi with temple of Goddess Amangei and Lord Balunkeswar. | महानदी में स्थित द्वीप, जहाँ देवी अमंगई और भगवान बलुंकेश्वर का मंदिर है।"
      },
      {
        "name": "Bhattarika (भटारिका)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Bhattarika%201.png?itok=xcc6kbtn",
        "description": "Scenic spot with shrine of Goddess Bhattarika, popular for picnics. | देवी भटारिका का मंदिर वाला सुंदर स्थल, पिकनिक के लिए प्रसिद्ध।"
      },
      {
        "name": "Lalitgiri (ललितगिरि)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Lalitgiri%201.png?itok=DNCsp9cY",
        "description": "One of the oldest Buddhist sites, visited by Hiuen Tsang in 7th century. | प्राचीन बौद्ध स्थल, जिसका भ्रमण 7वीं सदी में ह्वेनसांग ने किया था।"
      },
      {
        "name": "Kakudiapada (ककुड़ियापाड़ा)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Kakudiapada.png?itok=3kxvbh2D",
        "description": "Famous for Goddess Sidha Devi; Shiva and Parvati worshipped under water. | देवी सिध्ददेवी के लिए प्रसिद्ध; जल के नीचे शिव और पार्वती की पूजा।"
      },
      {
        "name": "Dhabaleswar (धबलेश्वर)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Dhabaleswar%201.png?itok=sN93ZfdI",
        "description": "Island in Mahanadi with temple of Lord Dhabaleswar (Shiva). | महानदी में स्थित द्वीप, भगवान धबलेश्वर (शिव) का मंदिर।"
      },
      {
        "name": "Deojhar (देवझर)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Deojhar%201.png?itok=cEbQCyFg",
        "description": "Waterfall famous for scenic beauty; cave Badedidhar on top. | सुंदर जलप्रपात, ऊपर बदेदिधर नामक गुफा स्थित।"
      },
      {
        "name": "Damadamani Pitha (डमडमनी पीठ)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Damadamani%20Pitha.png?itok=GymxyOg9",
        "description": "Shrine of Goddess Damadamani amidst Dalijoda forests and stream. | दलिजोड़ा जंगलों और धारा के बीच देवी डमडमनी का मंदिर।"
      },
      {
        "name": "Cuttack City (कटक शहर)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Cuttack%20City.png?itok=QrFwurGp",
        "description": "1000-year-old city built by King Ananga Bhimadev-III, former capital of Odisha. | राजा अनंग भीमदेव-III द्वारा निर्मित 1000 साल पुराना शहर, ओडिशा की पूर्व राजधानी।"
      },
      {
        "name": "Chhapachikana (छपाचिकना)",
        "image": "https://cuttack.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Chhapachikana.png?itok=Vw4EIRUh",
        "description": "Known for temple of Goddess Harachandi. | देवी हरचंडी के मंदिर के लिए प्रसिद्ध।"
      }
    ],

    "Deogarh (देवगढ़)": [
      {
        "name": "Katasar Ghat (कटासर घाट)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Katasar%20Ghat.jpg?itok=4nih-DXe",
        "description": "Sacred spot under Kankarkhol reserved forest, 45 km from Deogarh. | देवगढ़ से 45 किमी दूर कंकरखोल संरक्षित वन क्षेत्र में स्थित पवित्र स्थल।"
      },
      {
        "name": "Gohira Dam (गोहिरा बांध)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Gohira%20Dam.jpg?itok=OYS5SKA9",
        "description": "Dam built in 1977, popular picnic spot near Reamal (28 km). | 1977 में निर्मित बांध, रियामल के पास लोकप्रिय पिकनिक स्थल (28 किमी)।"
      },
      {
        "name": "Sri Jagannath Temple (श्री जगन्नाथ मंदिर)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Sri%20Jagannath%20Temple%2C%20Deogarh_0.jpg?itok=E5La3Vdq",
        "description": "Ancient temple at Purunagarh, old capital of Bamra State. | पुरुनागढ़ (बामरा राज्य की पुरानी राजधानी) में स्थित प्राचीन मंदिर।"
      },
      {
        "name": "Daragadi Stream (दरगड़ी झरना)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Daragadi%20Stream.jpg?itok=ZlHyuAfi",
        "description": "Stream at Tainsira village, junction of Deogarh, Sundargarh & Angul. | तैन्सीरा गाँव में स्थित झरना, देवगढ़-सुंदरगढ़-अंगुल की सीमा पर।"
      },
      {
        "name": "Jhadeswar Temple (झाडेश्वर मंदिर)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Jhadeswar%20Temple.jpg?itok=YkMi4ZXp",
        "description": "Lord Shiva temple, 3 km from Deogarh bus stand (NH-200). | भगवान शिव का मंदिर, देवगढ़ बस स्टैंड से 3 किमी दूर (NH-200)।"
      },
      {
        "name": "Olata Bata (ओलटा बाटा)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Olata%20Bata.jpg?itok=3l2S6JAk",
        "description": "Giant ficus tree at Purunagada, historic landmark. | पुरुनागड़ा में स्थित विशाल वटवृक्ष, ऐतिहासिक स्थल।"
      },
      {
        "name": "Deojharan Fall (देवझरन जलप्रपात)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/deojharan-fall.jpg?itok=-2EjwToN",
        "description": "Scenic waterfall in dense forest near Reamal (16 km). | घने जंगलों में स्थित सुंदर झरना, रियामल के पास (16 किमी)।"
      },
      {
        "name": "Kailash Palace (कैलाश पैलेस)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/kailash%20Palace.jpg?itok=iJZofqSA",
        "description": "Royal retreat built (1916–1919) by Raja Dibya Shankar Deb. | राजा दिव्य शंकर देव द्वारा (1916–1919) निर्मित शाही विश्रामस्थल।"
      },
      {
        "name": "Koradkot Fall (कोरडकाट जलप्रपात)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Koradkot%20Fall.jpg?itok=7cWot8d1",
        "description": "Second waterfall of Deogarh, just 2 km from bus stand. | देवगढ़ का दूसरा झरना, बस स्टैंड से मात्र 2 किमी दूर।"
      },
      {
        "name": "Pradhanpat Fall (प्रधानपाट जलप्रपात)",
        "image": "https://deogarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/PradhanPat%20Fall.jpg?itok=XwsAknUj",
        "description": "Famous scenic waterfall near Deogarh town (1 km). | देवगढ़ नगर से 1 किमी दूर स्थित प्रसिद्ध झरना।"
      }
    ],

    "Dhenkanal (ढेंकानाल)": [
      {
        "name": "Kapilash Science Park (कपिलाश साइंस पार्क)",
        "image": "https://dhenkanal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Kapilash%20Science%20Park.jpg?itok=fjWl19Gj",
        "description": "Outdoor science park with interactive science exhibits for visitors. | विज्ञान पर आधारित आकर्षक प्रदर्शनियों वाला बाहरी विज्ञान पार्क।"
      },
      {
        "name": "Dhenkanal Science Centre (ढेंकनाल विज्ञान केंद्र)",
        "image": "https://dhenkanal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Dhenkanal%20Science%20Centre.jpg?itok=Ybu9EJ6J",
        "description": "Unit of National Council of Science Museums (NCSM), promotes science education. | राष्ट्रीय विज्ञान संग्रहालय परिषद (NCSM) की इकाई, विज्ञान शिक्षा को बढ़ावा देता है।"
      },
      {
        "name": "Dandadhar (डंडाधार)",
        "image": "https://dhenkanal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Dandadhar%20Dam%20Total%20View.jpg?itok=SIZWvlcG",
        "description": "Irrigation project site on Ramial River, scenic spot for outings. | रामियाल नदी पर सिंचाई परियोजना स्थल, सैर-सपाटे के लिए सुंदर जगह।"
      },
      {
        "name": "Kualo (कुआलो)",
        "image": "https://dhenkanal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Astasambhu%20Temple%20Front%20View.jpg?itok=ghEyFFuM",
        "description": "Famous for temples of Lord Kanakeswar and Astasambhu. | भगवान कनकेश्वर और अष्टशंभु के मंदिरों के लिए प्रसिद्ध।"
      },
      {
        "name": "Saranga (सरंगा)",
        "image": "https://dhenkanal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Bishnu%20Anantasayan%20Front%20View.jpg?itok=IrwnB0HB",
        "description": "Rocky bed of Brahmani River with reclining image of Lord Vishnu (Anantasyi). | ब्राह्मणी नदी के पत्थरीले तट पर भगवान विष्णु (अनंतसायी) की प्रतिमा।"
      },
      {
        "name": "Saptasajya (सप्तसज्जा)",
        "image": "https://dhenkanal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Shri%20Ram%20Temple%20Complex%20at%20Saptasajya.jpg?itok=I9Lr4YOn",
        "description": "Picturesque hill spot, believed Pandavas spent days here in exile. | सुंदर पर्वतीय स्थल, जहाँ पांडवों ने वनवास के दौरान समय बिताया।"
      },
      {
        "name": "Joranda (जोरंडा)",
        "image": "https://dhenkanal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Joranda%20Mahima%20Temple.jpg?itok=6ZYejUdP",
        "description": "Religious headquarters of Mahima Dharma; Samadhi of Mahima Gosain. | महिमा धर्म का धार्मिक मुख्यालय; महिमा गोसाईं की समाधि।"
      },
      {
        "name": "Kapilash Temple (कपिलाश मंदिर)",
        "image": "https://dhenkanal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Kapilash%20Temple%20Front%20View.jpg?itok=Tuvzqf9q",
        "description": "Temple of Lord Chandrasekhar (Shiva) atop Kapilas hill at 457 m. | कपिलास पहाड़ी (457 मीटर ऊँचाई) पर भगवान चंद्रशेखर (शिव) का मंदिर।"
      }
    ],

    "Gajapati (गजपति)": [
      {
        "name": "MankodaDiya Waterfall (मंकोडाडिया जलप्रपात)",
        "image": "https://gajapati.odisha.gov.in/sites/default/files/styles/330_330/public/2023-08/mankada-dean.jpg?itok=o3AjP8nU",
        "description": "Located near R. Udaygiri in Kankada village; pristine natural beauty. | आर. उदयगिरि के पास कांकड़ा गाँव में स्थित; अछूती प्राकृतिक सुंदरता।"
      },
      {
        "name": "Mahendragiri (महेंद्रगिरी)",
        "image": "https://gajapati.odisha.gov.in/sites/default/files/styles/330_330/public/2023-08/Mahendragiri.jpg?itok=tL5YohJt",
        "description": "Mountain in Eastern Ghats at 1501 m elevation, famous adventure spot. | पूर्वी घाट में 1501 मीटर ऊँचा पर्वत, प्रसिद्ध साहसिक स्थल।"
      },
      {
        "name": "B N Palace (बी एन पैलेस)",
        "image": "https://gajapati.odisha.gov.in/sites/default/files/styles/330_330/public/2023-08/bn%20palace.jpg?itok=7ZQ2JhLc",
        "description": "Brundaban Palace, example of rich cultural heritage and ancient art. | बृंदावन पैलेस, समृद्ध सांस्कृतिक विरासत और प्राचीन कला का उदाहरण।"
      },
      {
        "name": "Khasada Waterfall (खसाड़ा जलप्रपात)",
        "image": "https://gajapati.odisha.gov.in/sites/default/files/styles/330_330/public/2023-08/khasada-fall.jpg?itok=nY03xfF-",
        "description": "Crowded yet amazing waterfall near Chandragiri town. | चंद्रगिरि नगर के पास स्थित भीड़भाड़ वाला लेकिन शानदार जलप्रपात।"
      },
      {
        "name": "Gandahati Waterfalls (गांदहाटी जलप्रपात)",
        "image": "https://gajapati.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/waterfalls.jpg?itok=pxvIqmec",
        "description": "Famous scenic spot, once inhabited by elephants; part of Paralakhemundi Zamindari. | प्रसिद्ध दर्शनीय स्थल, कभी हाथियों का निवास; परलाखेमुंडी ज़मींदारी का हिस्सा।"
      },
      {
        "name": "Chandragiri (चंद्रगिरि)",
        "image": "https://gajapati.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Chandragiri.jpg?itok=n6bgQkA7",
        "description": "Famous for Buddhist temple, tallest in South Asia. | बौद्ध मंदिर के लिए प्रसिद्ध, जो दक्षिण एशिया में सबसे ऊँचा है।"
      },
      {
        "name": "Maharaja Gajapati (महाराजा गजपति)",
        "image": "https://gajapati.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Maharaja%20Gajapati.jpg?itok=ZNIFIKob",
        "description": "Paralakhemundi King Shri Krushna Chandra Gajapati Narayan Deo, notable ruler. | परलाखेमुंडी के राजा श्री कृष्ण चंद्र गजपति नारायण देव, महान शासक।"
      }
    ],

    "Ganjam (गंजाम)": [
      {
        "name": "Nirmal Jhar Temple (निर्मल झर मंदिर)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Nirmal%20Jhar%20Temple%20Terrace%20View.jpg?itok=ssZ8_u75",
        "description": "Sanctified by perennial stream forming ponds, dedicated to Lord Vishnu. | निर्मल धारा से पवित्र, जो तालाबों में बहती है, भगवान विष्णु को समर्पित।"
      },
      {
        "name": "Tampara Lake (तम्पारा झील)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Tampara%20Boat%20Club.jpg?itok=0O5j-nAQ",
        "description": "Sweet water lake near NH-5, famous for boating and scenic beauty. | राष्ट्रीय राजमार्ग-5 के पास मीठे पानी की झील, नौका विहार और प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
      {
        "name": "Mahurikalua Shakti Peetha (महुरीकालुआ शक्ति पीठ)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Entrance%20to%20MahuriKalua.jpg?itok=eNAJe4SM",
        "description": "Famous Shakti Peetha on Berhampur–Western Odisha road. | बर्हामपुर–पश्चिम ओडिशा मार्ग पर स्थित प्रसिद्ध शक्ति पीठ।"
      },
      {
        "name": "Buddhakhol – Panchu Mahadeva Temple (बुद्धखोल – पंचु महादेव मंदिर)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Shiv%20Parbati%20Idol%20Duo%20at%20Buddhakhol.jpg?itok=DMOYcy6x",
        "description": "Scenic spot near Buguda, houses ancient caves and temples. | बुगुड़ा के पास दर्शनीय स्थल, जहाँ प्राचीन गुफाएँ और मंदिर स्थित हैं।"
      },
      {
        "name": "Taptapani Hot Water Spring (तप्तपानी गर्म पानी का झरना)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/taptapani%20temple%20main%20entrance.jpg?itok=QtNP65R-",
        "description": "Famous sulfuric hot spring with medicinal value. | औषधीय गुणों वाला प्रसिद्ध गंधकयुक्त गर्म पानी का झरना।"
      },
      {
        "name": "Narayani Temple (नारायणी देवी मंदिर)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Narayani%20Temple%20idol.jpg?itok=4ZMpeRup",
        "description": "Located in Eastern Ghats, scenic and religiously significant. | पूर्वी घाट में स्थित, दर्शनीय और धार्मिक महत्व का स्थान।"
      },
      {
        "name": "Rushikulya – Olive Ridley Turtles (रुशीकुल्या – ऑलिव रिडले कछुए)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Olive%20Ridley%20turtle%20at%20RushiKulya.jpg?itok=GdLQjBaR",
        "description": "Lakhs of Olive Ridley turtles nest here annually. | हर साल लाखों ऑलिव रिडले कछुए यहाँ अंडे देते हैं।"
      },
      {
        "name": "Bhairabi Temple (भैरवी मंदिर)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/108%20Temples%20at%20Bhairabi.jpg?itok=jkY4xNU5",
        "description": "Dedicated to Goddess Bhairabi in Mantridi village. | मंत्रिडी गाँव में देवी भैरवी को समर्पित मंदिर।"
      },
      {
        "name": "Panchama Siddhi Vinayak Temple (पंचमा सिद्धि विनायक मंदिर)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Panchama%20temple%20entrance.jpg?itok=5mywB-U0",
        "description": "Lord Ganesh worshipped under a huge Pipal tree for ages. | विशाल पीपल के पेड़ के नीचे भगवान गणेश की सदियों से पूजा होती है।"
      },
      {
        "name": "Potagada Fort (पोटागढ़ किला)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Potagada%20Fort.jpg?itok=PcFyPSQ5",
        "description": "Unique fort built by Muslim, French, and British rulers. | मुस्लिम, फ्रांसीसी और ब्रिटिश शासकों द्वारा निर्मित अद्वितीय किला।"
      },
      {
        "name": "Chilika Lake (Rambha) (चिलिका झील - रंभा)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Boat%20Ride%20in%20Chilika.jpg?itok=RDNPInSU",
        "description": "India’s biggest inland brackish water lagoon. | भारत की सबसे बड़ी खारे पानी की झील।"
      },
      {
        "name": "Tara Tarini Temple (तारा तारिणी मंदिर)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Tara%20Tarini%20Main%20Temple.jpg?itok=NN8Mxm-G",
        "description": "Famous Shakti Peetha of twin goddesses Tara & Tarini. | जुड़वां देवियों तारा और तारिणी का प्रसिद्ध शक्ति पीठ।"
      },
      {
        "name": "Gopalpur-On-Sea (गोपालपुर-ऑन-सी)",
        "image": "https://ganjam.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Gopalpur-On-Sea.jpg?itok=G2NZuAbB",
        "description": "Beautiful sea beach with lagoons and backwaters. | सुंदर समुद्र तट, लैगून और बैकवाटर्स के साथ।"
      }
    ],

    "Jagatsinghpur (जगतसिंहपुर)": [
      {
        "name": "Maa Sarala Temple (माँ सारला मंदिर)",
        "image": "https://jagatsinghpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018050149-olwdp2rhnkhbtx89v3wp9ji74r8ggpu9yirsybnvgi.jpg?itok=HRPdfoOv",
        "description": "Jhankad is the sanctum sanctorum of Goddess Sarala, one of the most spiritually elevated expressions of Shaktism. | झनकद माँ सारला का पवित्र स्थान है, जो शक्तिवाद की सबसे ऊँची आध्यात्मिक अभिव्यक्तियों में से एक मानी जाती है।"
      },
      {
        "name": "Paradeep Port (परेदीप बंदरगाह)",
        "image": "https://jagatsinghpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018050187-olwdp2rhnkhbtx89v3wp9ji74r8ggpu9yirsybnvgi.jpg?itok=pzQD51iq",
        "description": "Major sea port of India with enchanting sea view, beaches, marine drive and creeks. | भारत का एक प्रमुख समुद्री बंदरगाह, जहाँ सुंदर समुद्र दृश्य, समुद्र तट, मरीन ड्राइव और नदियाँ हैं।"
      },
      {
        "name": "Gada Kujanga Temple (गदा कुजंग मंदिर)",
        "image": "https://jagatsinghpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018052311-olwdpkmf9f5ryiibytmm2wzyf2sfiyt6cz612kxe6a.jpg?itok=UxxNexWO",
        "description": "Famous for presiding deity Kunja Behari, also known as Subhadra Kshetra. | यहाँ के presiding deity कुंज बिहारी प्रसिद्ध हैं, जिसे सुभद्रा क्षेत्र भी कहा जाता है।"
      },
      {
        "name": "Chandapur Temple Complex (चंदापुर मंदिर परिसर)",
        "image": "https://jagatsinghpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018050166-e1525164269118-olwdp2rhnkhbtx89v3wp9ji74r8ggpu9yirsybnvgi.jpg?itok=LgkCPBZO",
        "description": "Located in Mahilo village, houses temples of Lord Raghunath Jew and Lord Chandrasekhar. | महिलो गाँव में स्थित, जहाँ भगवान रघुनाथ जी और भगवान चंद्रशेखर के मंदिर हैं।"
      },
      {
        "name": "Jagatsinghpur Town (जगतसिंहपुर नगर)",
        "image": "https://jagatsinghpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018052141-olwdpkmf9f5ryiibytmm2wzyf2sfiyt6cz612kxe6a.jpg?itok=3aZ--jDt",
        "description": "Smallest district of Odisha, known for rich cultural heritage and socio-economic contributions. | ओडिशा का सबसे छोटा जिला, अपनी सांस्कृतिक धरोहर और सामाजिक-आर्थिक योगदान के लिए प्रसिद्ध।"
      },
      {
        "name": "Sandhakuda (संधाकुडा)",
        "image": "https://jagatsinghpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-05/2018050152-olwdpfx8b8zccgp5q9lh8g6ng5flghaiobwlo74d1e_0.jpg?itok=90IyHped",
        "description": "Attractive tourist spot with casuarina vegetation, golden beaches, natural creeks and islands. | आकर्षक पर्यटन स्थल, जहाँ कैसुअरीना पेड़, सुनहरे समुद्र तट, प्राकृतिक नदियाँ और द्वीप हैं।"
      }
    ],

    "Jajpur (जाजपुर)": [
      {
        "name": "Biraja Khetra (बिरजा क्षेत्र)",
        "image": "https://jajpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Biraja%20Khetra_0.jpg?itok=INc0n4_B",
        "description": "Biraja Temple or Viraja Kshetra is one of the ancient Hindu temples of Odisha, rebuilt in the 13th century. | बिरजा मंदिर या विरजा क्षेत्र ओडिशा के प्राचीन हिन्दू मंदिरों में से एक है, जिसे 13वीं सदी में पुनर्निर्मित किया गया।"
      },
      {
        "name": "Ratnagiri (रत्नागिरि)",
        "image": "https://jajpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Ratnagiri%201%20%281%29_0.jpg?itok=5ovHckZ_",
        "description": "Important archaeological site and museum under ASI, famous for Buddhist monuments. | एएसआई के अंतर्गत एक महत्वपूर्ण पुरातात्विक स्थल और संग्रहालय, जो बौद्ध स्मारकों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Ashokjhar Waterfall (अशोकझर जलप्रपात)",
        "image": "https://jajpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Ashok%20Jhara%20Waterfall%201.jpg?itok=EPDOCbSw",
        "description": "Scenic waterfall located in Sukinda Block, a popular tourist spot. | सुंदरीय जलप्रपात, जो सुकीन्दा ब्लॉक में स्थित है और लोकप्रिय पर्यटन स्थल है।"
      },
      {
        "name": "Chandikhol (चंडीखोल)",
        "image": "https://jajpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Chandikhol%20Chandi_0.jpg?itok=zrWDEmWQ",
        "description": "Famous for Chandikhol Chandi Temple, named after Goddess Chandi worshipped by Baba Bhairabananda. | चंडीखोल माँ चंडी मंदिर के लिए प्रसिद्ध है, जहाँ बाबा भैरवनंद ने देवी चंडी की पूजा की।"
      }
    ],

    "Jharsuguda (झारसुगुड़ा)": [
      {
        "name": "Jagannath Temple (जगन्नाथ मंदिर)",
        "image": "https://jharsuguda.odisha.gov.in/sites/default/files/styles/330_330/public/2025-04/WhatsApp%20Image%202025-04-23%20at%2011.40.25.jpeg?itok=YHBdXd2o",
        "description": "Shri Patita Paban Shri Khetra Jagannath Temple is a cultural and spiritual landmark of Jharsuguda. | श्री पातित पावन श्री क्षेत्र जगन्नाथ मंदिर, झारसुगुड़ा का एक सांस्कृतिक और आध्यात्मिक स्थल है।"
      },
      {
        "name": "Chandi Mandir (चंडी मंदिर)",
        "image": "https://jharsuguda.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Chandi%20Mandir%20outer%20view_0.jpg?itok=a5R8V755",
        "description": "Located at Brajarajnagar, 30 km from Jharsuguda Railway Station, dedicated to Goddess Chandi. | झारसुगुड़ा रेलवे स्टेशन से 30 किमी दूर ब्रजराजनगर में स्थित, देवी चंडी को समर्पित मंदिर।"
      },
      {
        "name": "Pahadi Mandir (पहाड़ी मंदिर)",
        "image": "https://jharsuguda.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Pahadimandir%20front_0.jpg?itok=-GId1opQ",
        "description": "Situated on a small hilltop 3 km from railway station, dedicated to Lord Shiva. | रेलवे स्टेशन से 3 किमी दूर पहाड़ी पर स्थित भगवान शिव का मंदिर।"
      },
      {
        "name": "Jhadeswar Temple (झडेश्वर मंदिर)",
        "image": "https://jharsuguda.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Jhadeswar%20Temple%20side_0.jpg?itok=YUSI1JGl",
        "description": "Located 1 km from Jharsuguda Railway Station at Purunabasti, an ancient temple of Lord Shiva. | पुरुनाबस्ती, रेलवे स्टेशन से 1 किमी दूर स्थित भगवान शिव का प्राचीन मंदिर।"
      },
      {
        "name": "Koilighughar Waterfall (कोइलिघुघर जलप्रपात)",
        "image": "https://jharsuguda.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Koili%20Ghughar%20view_0.jpg?itok=8nxqzGVL",
        "description": "Beautiful waterfall in Lakhanpur block, 55 km from Jharsuguda, near Kushmelbahal village. | लक्ष्मणपुर ब्लॉक में स्थित यह सुंदर जलप्रपात, झारसुगुड़ा से 55 किमी दूर कुशमेलबाहाल गांव के पास है।"
      }
    ],

    "Kalahandi (कालाहांडी)": [
      {
        "name": "Phurlijharan Waterfall (फुर्लीझरन जलप्रपात)",
        "image": "https://kalahandi.odisha.gov.in/sites/default/files/inline-images/2018022789-225x300_2.jpg",
        "description": "A perennial 30 ft high waterfall located 15 km from Bhawanipatna, surrounded by forests. | भवानपटना से 15 किमी दूर स्थित 30 फीट ऊँचा बारहमासी झरना, जो हरे-भरे जंगलों से घिरा है।"
      },
      {
        "name": "Gudahandi Caves (गुढ़ाहांडी गुफाएँ)",
        "image": "https://kalahandi.odisha.gov.in/sites/default/files/inline-images/2018022712-300x225.jpg",
        "description": "Ancient caves with pictographic paintings, near Ampani, 77 km from Bhawanipatna. | प्राचीन गुफाएँ जिनमें चित्रलिपि बनी है, अमपानी के पास भवानपटना से 77 किमी दूर।"
      },
      {
        "name": "Asurgarh Fort (असुरगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq9dh79shI5e8ButjE-QaVCgbdj2H2eZaEbg&s",
        "description": "Ancient fort ruins near Narla, believed to be the seat of a demon king. | नरला के पास प्राचीन किले के अवशेष, जिसे दैत्यराज की राजधानी माना जाता है।"
      },
      {
        "name": "Ambapani Sanctuary (अंबापानी अभयारण्य)",
        "image": "https://kalahandi.odisha.gov.in/sites/default/files/inline-images/2018022743-1.jpg",
        "description": "Picturesque hills with valley views, home to deer, panthers, and prehistoric paintings. | मनमोहक पहाड़ियाँ और घाटियाँ, जहाँ हिरण, तेंदुए और प्राचीन गुफा चित्र मिलते हैं।"
      },
      {
        "name": "Belkhandi (बेलखंडी)",
        "image": "https://kalahandi.odisha.gov.in/sites/default/files/inline-images/20180306100-258x300.jpg",
        "description": "Located at the confluence of Tel and Uttei rivers, famous for Uma Maheswar temple and archaeological remains. | टेल और उत्तेई नदियों के संगम पर स्थित, उमा महेश्वर मंदिर और पुरातात्विक अवशेषों के लिए प्रसिद्ध।"
      },
      {
        "name": "Junagarh (जुनागढ़)",
        "image": "https://kalahandi.odisha.gov.in/sites/default/files/inline-images/2018022743-225x300.jpg",
        "description": "Old capital with fort ruins and temples, 26 km from Bhawanipatna. | प्राचीन राजधानी जहाँ किले और मंदिरों के अवशेष हैं, भवानपटना से 26 किमी दूर।"
      },
      {
        "name": "Karlapat Wildlife Sanctuary (कार्लापाट वन्यजीव अभयारण्य)",
        "image": "https://kalahandi.odisha.gov.in/sites/default/files/inline-images/2018030650-200x300.jpg",
        "description": "Famous for Khandual waterfall, temple of Goddess Manikeswari, and rich biodiversity. | खंडुआल झरने, माँ मणिकेश्वरी मंदिर और जैव विविधता के लिए प्रसिद्ध।"
      },
      {
        "name": "Mohangiri (मोहनगिरि)",
        "image": "https://kalahandi.odisha.gov.in/sites/default/files/inline-images/2018042244-300x225.jpg",
        "description": "Village with a 6th-century Shiva temple on the bank of Kali Ganga stream. | काली गंगा नदी के किनारे स्थित गाँव, जहाँ 6वीं शताब्दी का शिव मंदिर है।"
      },
      {
        "name": "Rabandhara Waterfall (राबंधारा जलप्रपात)",
        "image": "https://kalahandi.odisha.gov.in/sites/default/files/inline-images/2018022796.jpg",
        "description": "A scenic waterfall 13 km from Bhawanipatna, popular for its serene surroundings. | भवानपटना से 13 किमी दूर स्थित खूबसूरत झरना, जो शांत वातावरण के लिए प्रसिद्ध है।"
      }
    ],

    "Kandhamal (कंधमाल)": [
      {
        "name": "Mandasaru, Raikia (मंदासरु, राइकिया)",
        "image": "https://kandhamal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Mandasaru%2C%20Raikia.jpg?itok=5mt57_Aa",
        "description": "Mandasaru Gorge ecosystem surrounded by dense tropical forest, located in the eastern part of Kandhamal. | घने उष्णकटिबंधीय जंगलों से घिरा मंदासरु गॉर्ज पारिस्थितिकी तंत्र, कंधमाल जिले के पूर्वी भाग में स्थित।"
      },
      {
        "name": "Daringbadi (डारिंगबाड़ी)",
        "image": "https://kandhamal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Daringbadi.jpg?itok=DktiGcAr",
        "description": "A hill station at 3000 ft above sea level, popularly known as the 'Kashmir of Odisha'. | समुद्र तल से 3000 फीट की ऊँचाई पर स्थित हिल स्टेशन, जिसे ‘ओडिशा का कश्मीर’ कहा जाता है।"
      },
      {
        "name": "Jagannath Temple (जगन्नाथ मंदिर)",
        "image": "https://kandhamal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Jagannath%20Temple.jpg?itok=j8Ach8t0",
        "description": "Located in the district headquarters town of Kandhamal, dedicated to Lord Jagannath. | कंधमाल जिला मुख्यालय नगर में स्थित भगवान जगन्नाथ को समर्पित मंदिर।"
      },
      {
        "name": "Putudi Waterfall (पुतुड़ी जलप्रपात)",
        "image": "https://kandhamal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Putudi%20waterfall.jpg?itok=DbfFQ0en",
        "description": "Beautiful 60 ft high waterfall on river Salunki, creating a mesmerizing ambience. | सालुंकी नदी पर 60 फीट ऊँचा आकर्षक जलप्रपात, जो मनमोहक वातावरण बनाता है।"
      },
      {
        "name": "Barala Devi Temple (बराला देवी मंदिर)",
        "image": "https://kandhamal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Barala%20Devi%20Temple.jpg?itok=t411i9eC",
        "description": "Famous temple dedicated to Goddess Barala Devi, regarded as the saviour of the world. | माँ बराला देवी को समर्पित प्रसिद्ध मंदिर, जिन्हें दुनिया की रक्षक माना जाता है।"
      },
      {
        "name": "Belghar (बेलघर)",
        "image": "https://kandhamal.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Belghar%20Wooden%20bungalow.jpg?itok=RxwZ-jP6",
        "description": "Scenic hill area at 2555 ft above sea level, home to elephants and Kutia Kondh tribes. | समुद्र तल से 2555 फीट की ऊँचाई पर स्थित मनमोहक हिल एरिया, हाथियों और कुटिया कोंध जनजाति का घर।"
      }
    ],

    "Kendrapara (केन्द्रपाड़ा)": [
      {
        "name": "Gahirmatha (गहीरमाथा)",
        "image": "https://kendrapara.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Gahirmatha_0.jpg?itok=bt4auI-A",
        "description": "Odisha's only Turtle Sanctuary located near Bhitarkanika National Park, famous for Olive Ridley turtles. | भितरकनिका राष्ट्रीय उद्यान के पास स्थित ओडिशा का एकमात्र कछुआ अभयारण्य, जो ऑलिव रिडले कछुओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Batighar (बातीघर)",
        "image": "https://kendrapara.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Batighar_2.jpg?itok=fvYgqhu6",
        "description": "First lighthouse installed on the eastern coast of India, located 45 km from Kendrapara HQ. | भारत के पूर्वी तट पर स्थापित पहला लाइटहाउस, केंद्रापाड़ा मुख्यालय से 45 किमी दूर।"
      },
      {
        "name": "Shri Baldev Jew Temple (श्री बलदेव ज्यू मंदिर)",
        "image": "https://kendrapara.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Shri%20Baldev%20jew%20Temple_1.jpg?itok=C4kLtjZP",
        "description": "Located at Ichhapur, 5 km from Kendrapara town, dedicated to Lord Baldev Jew with beautiful temple complex. | इच्छापुर, केंद्रापाड़ा शहर से 5 किमी दूर स्थित, भगवान बलदेव ज्यू को समर्पित सुंदर मंदिर परिसर।"
      },
      {
        "name": "Bhitara Kanika (भितरकनिका)",
        "image": "https://kendrapara.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Bhitar%20Kanika_0.jpg?itok=dQP0HaM2",
        "description": "Mangrove forest and saline rivers, part of the former Kanika Estate, rich in biodiversity. | मैंग्रोव जंगल और खारे पानी की नदियों से घिरा क्षेत्र, जो पहले कनिका एस्टेट के अधीन था और जैव विविधता से समृद्ध है।"
      },
      {
        "name": "Hukitola (हुकिटोला)",
        "image": "https://kendrapara.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Hukitola_0.jpg?itok=CcMbOI0D",
        "description": "Located on Jambu island in Bay of Bengal, Kendrapara; an old building with historical significance. | बंगाल की खाड़ी में जम्बू द्वीप पर स्थित ऐतिहासिक महत्व की प्राचीन इमारत।"
      }
    ],

    "Kendujhar (केन्द्रुज्हर)": [
      {
        "name": "Maa Tarini Pitha, Ghatagaon (माँ तारिणी पीठ, घाटकाआन)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Maa%20Tarini%20Pitha%20Ghatagaon_1.jpg?itok=T8ChFMQq",
        "description": "A famous pilgrimage centre of Odisha, Maa Tarini Temple is an important spiritual site. | ओडिशा का प्रसिद्ध तीर्थ स्थल, माँ तारिणी मंदिर एक महत्वपूर्ण आध्यात्मिक स्थान है।"
      },
      {
        "name": "Khandadhar Waterfall (खंडाधार जलप्रपात)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Khandadhar%20Waterfall_2.jpg?itok=Bel4TTrO",
        "description": "One of the most beautiful waterfalls of Odisha, located in Keonjhar district. | ओडिशा का सबसे सुंदर जलप्रपातों में से एक, जो केंदुझार जिले में स्थित है।"
      },
      {
        "name": "Badaghagara Waterfall (बड़ाघागरा जलप्रपात)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Badaghagara%20Waterfall_1.jpg?itok=tSk8eZYW",
        "description": "Located near Keonjhar town amidst lush green forest, offering a spectacular view. | केंदुझार नगर के पास हरे-भरे जंगलों के बीच स्थित यह मनमोहक जलप्रपात है।"
      },
      {
        "name": "Sanaghagara Waterfall (सना घागरा जलप्रपात)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Sanaghagara%20Waterfall_1.jpg?itok=M_5btZaX",
        "description": "Situated 8 km from Keonjhar town on NH-6, a popular scenic waterfall. | केंदुझार नगर से 8 किमी दूर राष्ट्रीय राजमार्ग-6 पर स्थित एक लोकप्रिय जलप्रपात।"
      },
      {
        "name": "Kushaleswar Temple (कुशलेश्वर मंदिर)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Kushaleswar%20Temple_0.jpeg?itok=oTJOQ-RO",
        "description": "Built in 900 AD, dedicated to Lord Kusheleswar Mahadev in Deogaon. | 900 ईस्वी में निर्मित देवगाँव का भगवान कुशलेश्वर महादेव को समर्पित मंदिर।"
      },
      {
        "name": "Kanjipani Ghati (कांजीपानी घाटी)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Kanjipani%20Ghati_2.jpg?itok=1o1-Bpk_",
        "description": "A panoramic natural spot with mountain ranges spreading over 20 km. | 20 किमी तक फैली पहाड़ियों के साथ सुंदर प्राकृतिक दृश्य वाला स्थल।"
      },
      {
        "name": "Keshri Kunda (केशरी कुंड)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Keshri%20Kunda_2.jpg?itok=Lu33XpG9",
        "description": "Sacred site on river Baitarani with two natural holes, popular for holy dips. | बैतरणी नदी पर स्थित दो प्राकृतिक कुंडों वाला पवित्र स्थल, जहाँ श्रद्धालु स्नान करते हैं।"
      },
      {
        "name": "Murga Mahadev Temple (मुर्गा महादेव मंदिर)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Murga%20Mahadev%20Temple_2.jpg?itok=6jdZtJYI",
        "description": "Temple at the foot of Thakurani Hills, dedicated to Lord Shiva. | ठाकुरानी पहाड़ियों की तलहटी में भगवान शिव को समर्पित मंदिर।"
      },
      {
        "name": "Gonasika Temple (गोनासिका मंदिर)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Gonasika%20Temple_0.jpg?itok=0hTRXxke",
        "description": "Surrounded by valleys and hills, a famous pilgrimage centre where Baitarani river originates. | घाटियों और पहाड़ियों से घिरा प्रसिद्ध तीर्थ स्थल, जहाँ बैतरणी नदी का उद्गम होता है।"
      },
      {
        "name": "Hadagarh Reservoir (हड़ागढ़ जलाशय)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Hadagarh%20Reservoir_1.jpg?itok=qp5UKXW5",
        "description": "A large dam built on river Salandi, source of irrigation and water storage. | सालंदी नदी पर बना बड़ा बांध, जो सिंचाई और जलस्रोत का प्रमुख साधन है।"
      },
      {
        "name": "Handibhanga Waterfall (हांडीभांगा जलप्रपात)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Handibhanga%20Waterfall_2.jpg?itok=mxCExofp",
        "description": "Picturesque waterfall located amidst forest and mountain ranges. | हरे-भरे जंगलों और पहाड़ियों के बीच स्थित खूबसूरत जलप्रपात।"
      },
      {
        "name": "Gundichaghagi Waterfall (गुंडिचाघागी जलप्रपात)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Gundichaghagi%20Waterfall_0.jpg?itok=2tEvcUQk",
        "description": "Scenic waterfall on river Musala, surrounded by natural beauty. | मुसला नदी पर स्थित मनमोहक जलप्रपात, जो प्राकृतिक सुंदरता से घिरा है।"
      },
      {
        "name": "Sitabinji Fresco Painting & Rock Inscription (सिताबिंजी भित्तिचित्र और शिला-लेख)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Sitabinji%20Fresco%20Painting%20and%20Rock%20Inscription_2.jpg?itok=s8cV1WKO",
        "description": "Ancient fresco painting and inscriptions located by river Sita in a serene environment. | सीता नदी के किनारे शांत वातावरण में स्थित प्राचीन भित्तिचित्र और शिला-लेख।"
      },
      {
        "name": "Bhimkund (भीमकुंड)",
        "image": "https://kendujhar.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Bhimkund_0.jpg?itok=3693Ci6i",
        "description": "Spectacular waterfall on river Baitarani, associated with Mahabharata legends. | बैतरणी नदी पर स्थित शानदार जलप्रपात, महाभारत की कथाओं से जुड़ा हुआ।"
      }
    ],

    "Khordha (खोरधा)": [
      {
        "name": "Atri (आत्री)",
        "image": "https://khordha.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Atri.jpg?itok=gKX1jfyy",
        "description": "Atri is famous for its perennial hot spring with reputed medicinal properties. | आत्री अपने गर्म जलस्रोत के लिए प्रसिद्ध है, जिसका पानी औषधीय गुणों से युक्त माना जाता है।"
      },
      {
        "name": "Bhubaneswar (भुवनेश्वर)",
        "image": "https://khordha.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Bhubaneswar_2.jpg?itok=3JeW8zIc",
        "description": "Known as the Temple City of India, Bhubaneswar once had about 7000 temples in Ekamra Vana. It is also the capital of Odisha. | 'भारत का मंदिर नगर' कहलाने वाला भुवनेश्वर, एक समय एकाम्र वन में लगभग 7000 मंदिरों से सुशोभित था और यह ओडिशा की राजधानी है।"
      },
      {
        "name": "Rameswar (रामेश्वर)",
        "image": "https://khordha.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Rameswar.jpg?itok=ELpKWeja",
        "description": "An ideal stopover on NH5, also known for its WAC (Way Side Amenity Centre). Best time to visit: October to March. | राष्ट्रीय राजमार्ग 5 पर स्थित यह एक आदर्श पड़ाव स्थल है, जहाँ यात्री ठहरते हैं। घूमने का सर्वोत्तम समय: अक्टूबर से मार्च।"
      },
      {
        "name": "Mangalajodi (मंगलाजोड़ी)",
        "image": "https://khordha.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Mangalajodi.jpg?itok=PcWA8i1p",
        "description": "A famous ecotourism spot located 40 km from district HQ, offering birdwatching and scenic beauty. | जिला मुख्यालय से 40 किमी दूर स्थित यह प्रसिद्ध इको-पर्यटन स्थल है, जहाँ पक्षी-दर्शन और प्राकृतिक सौंदर्य का आनंद लिया जा सकता है।"
      },
      {
        "name": "Dhauli (धौली)",
        "image": "https://khordha.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Dhauli.png?itok=jPZPRXcn",
        "description": "Famous for the Peace Pagoda (Shanti Stupa) built in 1973, commemorating Emperor Ashoka’s transformation after the Kalinga War. | 1973 में निर्मित शांति स्तूप के लिए प्रसिद्ध, यह सम्राट अशोक के कलिंग युद्ध के बाद के हृदय परिवर्तन की याद दिलाता है।"
      },
      {
        "name": "Chilika (Barkul) (चिलिका - बारकुल)",
        "image": "https://khordha.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Chilika%20%28Barkul%29.png?itok=lz8i17N8",
        "description": "Asia’s largest brackish water lagoon, spread over 1,100 sq. km, home to migratory birds and natural beauty. | एशिया की सबसे बड़ी खारे पानी की झील, जो 1,100 वर्ग किमी क्षेत्र में फैली है और प्रवासी पक्षियों तथा प्राकृतिक सौंदर्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Nandan Kanan (नंदन कानन)",
        "image": "https://khordha.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Nandan%20Kanan.png?itok=9or6UwV8",
        "description": "A zoological and botanical garden located 20 km from Bhubaneswar, famous for white tigers and scenic beauty. | भुवनेश्वर से 20 किमी दूर स्थित यह प्राणी उद्यान और वनस्पति उद्यान सफेद बाघों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Khandagiri & Udayagiri Caves (खंडगिरि और उदयगिरि गुफाएँ)",
        "image": "https://khordha.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Khandagir%20%26%20Udayagiri.png?itok=6_i1JPem",
        "description": "Rock-cut caves linked to the Jain emperor Kharavela, with about 40 caves reflecting the Kalinga Empire’s history. | जैन सम्राट खरवेला से जुड़ी लगभग 40 शैल-गुफाएँ, जो कलिंग साम्राज्य के इतिहास को दर्शाती हैं।"
      },
      {
        "name": "Chausathi Jogini Temple, Hirapur (चौसठ योगिनी मंदिर, हीरापुर)",
        "image": "https://khordha.odisha.gov.in/sites/default/files/styles/330_330/public/2023-06/Inside%20View2-%20Chausathi%20Jogini%20Temple.jpg?itok=F7pZnjb_",
        "description": "Tantric temple dedicated to 64 yoginis, carved out of black chlorite stone, believed to be built by Queen Hiradevi. | 64 योगिनियों को समर्पित यह तांत्रिक मंदिर काले क्लोराइट पत्थर से बना है और माना जाता है कि इसे रानी हीरादेवी ने बनवाया था।"
      }
    ],

    "Koraput (कोरापुट)": [
      {
        "name": "Maliguda (मालिगुड़ा)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Maliguda_6.jpg?itok=0xylgc8X",
        "description": "A small village with one of India’s highest railway viaducts, 21 km from Jeypore. | जेयपोर से 21 किमी दूर स्थित एक छोटा सा गाँव, जहाँ भारत के सबसे ऊँचे रेलवे पुलों में से एक है।"
      },
      {
        "name": "Raisil (रैसिल)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/RAISIL.jpg?itok=o0amHv4b",
        "description": "Located 3 km from Laxmipur, a hill with a perennial stream attracting many weekend tourists. | लक्ष्मीपुर से 3 किमी दूर स्थित यह पहाड़ी, एक स्थायी झरने के साथ सप्ताहांत पर्यटकों को आकर्षित करती है।"
      },
      {
        "name": "Sabar Sreekhetra (सबर श्री क्षेत्र)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Sabar%20Sreekhetra.jpg?itok=DGAaEH-z",
        "description": "Koraput town at 2900 ft. offers panoramic views and salubrious climate, with Jagannath Temple as its landmark. | 2900 फीट ऊँचाई पर स्थित कोरापुट नगर अपनी सुंदर जलवायु और जगन्नाथ मंदिर के लिए प्रसिद्ध है।"
      },
      {
        "name": "Gupteswar (गुप्तेश्वर)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/GUPTESWAR.jpg?itok=X3USWFsi",
        "description": "A cave shrine of Lord Shiva, 58 km from Jeypore, amidst deep forest on a green hill. | जेयपोर से 58 किमी दूर हरी पहाड़ी और घने जंगलों के बीच भगवान शिव का गुफा मंदिर।"
      },
      {
        "name": "Deomali (देओमाली)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/DEOMALI.jpg?itok=rfCNFYyj",
        "description": "Odisha’s highest peak (1762 m), ideal for trekking and aero gliding. | ओडिशा की सबसे ऊँची चोटी (1762 मी.), ट्रेकिंग और एयरो ग्लाइडिंग के लिए उपयुक्त।"
      },
      {
        "name": "Machhakund (Duduma) (माछकुंड/दुदुमा)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/MACHHKUND%20%28Duduma%29.jpg?itok=NTqJiUJX",
        "description": "A majestic waterfall, also known as Matsya Tirtha, falling from 175 m. | 175 मीटर ऊँचाई से गिरता यह भव्य जलप्रपात, मत्स्य तीर्थ के नाम से प्रसिद्ध है।"
      },
      {
        "name": "Kechela (केचेला)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/KECHELA.jpg?itok=_uEjWaTn",
        "description": "Village on the southern bank of Kolab River, known for its ancient copper plate inscription. | कोलाब नदी के दक्षिणी तट पर स्थित गाँव, जो प्राचीन ताम्र पट्ट अभिलेख के लिए प्रसिद्ध है।"
      },
      {
        "name": "Gulmi (गुल्मी)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/GULMI.jpg?itok=8hctbRP3",
        "description": "Kolab river forms a whirlpool here, attracting people from Odisha and Chhattisgarh. | कोलाब नदी यहाँ पर भँवर बनाती है, जो ओडिशा और छत्तीसगढ़ से पर्यटकों को आकर्षित करती है।"
      },
      {
        "name": "Sunabeda (सुनाबेड़ा)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/SUNABEDA.jpg?itok=MbcpIFh9",
        "description": "A modern township famous for MIG & Sukhoi factory, museum, and scenic surroundings. | आधुनिक नगर, जो मिग और सुखोई विमान कारखाने, संग्रहालय और सुंदर वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Jolaput (जोलापुट)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/JOLAPUT.jpg?itok=eENiV9Eb",
        "description": "A reservoir over Kolab river spread over 68.2 sq. km, ideal for picnic and trips. | कोलाब नदी पर बना 68.2 वर्ग किमी क्षेत्रफल का जलाशय, पिकनिक और यात्राओं के लिए उपयुक्त।"
      },
      {
        "name": "Kolab (कोलाब)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/KOLAB.jpg?itok=mtawTBT4",
        "description": "Kolab Reservoir at 3000 ft. altitude generates hydroelectric power, offering scenic beauty. | 3000 फीट ऊँचाई पर स्थित कोलाब जलाशय जलविद्युत उत्पादन के साथ प्राकृतिक सौंदर्य का आनंद देता है।"
      },
      {
        "name": "Dumuriput (डुमुरिपुट)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/DUMURIPUT.jpg?itok=-uRo-cCy",
        "description": "Village on NH-26, famous for Sri Ram Temple. | एनएच-26 पर स्थित यह गाँव, श्री राम मंदिर के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kanta Baunsunni, Damanjodi (कंता बौंसुनी, दामांजोडी)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/KANTA%20BAUNSUNNI%20DAMANJODI.jpg?itok=y6wcoEBf",
        "description": "Known for Panchapatmali bauxite mines and NALCO’s Alumina complex. | पंचपटमाली बॉक्साइट खदान और नाल्को के एल्युमिना कारखाने के लिए प्रसिद्ध।"
      },
      {
        "name": "Jeypore (जेयपोर)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/JEYPORE.jpg?itok=YqxP_Jwj",
        "description": "Largest town of Koraput, with royal family’s old fort and historical heritage. | कोरापुट का सबसे बड़ा नगर, जो शाही परिवार के पुराने किले और ऐतिहासिक धरोहर के लिए प्रसिद्ध है।"
      },
      {
        "name": "Subai (सुबई)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/SUBAI.jpg?itok=GQt7OfRA",
        "description": "Village with relics of a Jain monastery containing rare images. | प्राचीन जैन मठ के अवशेष और दुर्लभ मूर्तियों वाला गाँव।"
      },
      {
        "name": "Nandapur (नंदापुर)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/NANDAPUR.jpg?itok=thaBnVgD",
        "description": "Ancient capital of Jeypore Kingdom, known for Batrisa Sinhasana (32-step relic). | जेयपोर साम्राज्य की प्राचीन राजधानी, जो 32 सीढ़ियों वाले 'बत्रिसा सिंहासन' के लिए प्रसिद्ध है।"
      },
      {
        "name": "Onukadelli (ओनुकाडेली)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/ONUKADELLI.jpg?itok=uPO4lSpk",
        "description": "A tribal village near Duduma waterfall, famous for weekly market attracting foreign tourists. | दुदुमा जलप्रपात के पास स्थित जनजातीय गाँव, जिसका साप्ताहिक बाजार विदेशी पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Parab Festival (पराब उत्सव)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/PARAB%2C%20KORAPUT.jpg?itok=QZ2QL-Qz",
        "description": "Annual tribal festival of Koraput, celebrated with great enthusiasm. | कोरापुट का वार्षिक जनजातीय उत्सव, जिसे बड़े उत्साह के साथ मनाया जाता है।"
      },
      {
        "name": "Raja Cave & Balmiki Ashram (राजा गुफा और वाल्मीकि आश्रम)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/RAJA%20CAVE%20%26%20BALMIKI%20ASHRAM.jpg?itok=ACk3x1Ta",
        "description": "Known as Kapat Parbat, believed to be the abode of sage Balmiki’s ancestors. | कपाट पर्वत के नाम से प्रसिद्ध यह स्थान, महर्षि वाल्मीकि के पूर्वजों का निवास माना जाता है।"
      },
      {
        "name": "Balda Cave (बालदा गुफा)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/BALDA%20CAVE.jpg?itok=8Bvqbl0T",
        "description": "Located 66 km from Koraput, a flat plateau with natural beauty, used as playground. | कोरापुट से 66 किमी दूर स्थित यह समतल पठार प्राकृतिक सौंदर्य और खेल के मैदान के लिए प्रसिद्ध है।"
      },
      {
        "name": "Tribal Museum, Koraput (जनजातीय संग्रहालय, कोरापुट)",
        "image": "https://koraput.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/TRIBAL%20MUSEUM%20KORAPUT.jpg?itok=3FYvDvGz",
        "description": "Museum near Jagannath Temple, displaying tribal costumes, crafts, instruments. | जगन्नाथ मंदिर के पास स्थित संग्रहालय, जहाँ जनजातीय वेशभूषा, शिल्प और वाद्ययंत्र प्रदर्शित हैं।"
      }
    ],

    "Malkangiri (मलकानगिरी)": [
      {
        "name": "Balimela (बालिमेला)",
        "image": "https://malkangiri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Balimela.jpg?itok=28m0uIcv",
        "description": "Balimela Dam, 35 km east of Malkangiri, is a major hydro-electric project site. | मलकानगिरि से 35 किमी पूर्व स्थित बालिमेला बाँध, एक प्रमुख जलविद्युत परियोजना स्थल है।"
      },
      {
        "name": "Ammakunda (अम्माकुंडा)",
        "image": "https://malkangiri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Ammakunda.jpg?itok=CU9cDDB1",
        "description": "A beautiful scenic spot in Khoirput Block, 70 km from Malkangiri town. | खैरपुट ब्लॉक में स्थित सुंदर प्राकृतिक स्थल, मलकानगिरि नगर से 70 किमी दूर।"
      },
      {
        "name": "Satiguda Dam (सतिगुड़ा बाँध)",
        "image": "https://malkangiri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Satiguda%20Dam.jpg?itok=WumqK-MR",
        "description": "Located 8 km from Malkangiri, this reservoir provides irrigation to nearby lands and is a picnic spot. | मलकानगिरि से 8 किमी दूर स्थित यह बाँध सिंचाई सुविधा प्रदान करता है और पिकनिक स्थल भी है।"
      },
      {
        "name": "Bhairabi Temple (भैरबी मंदिर)",
        "image": "https://malkangiri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Bhairabi%20Temple.jpg?itok=GJNN21YS",
        "description": "3 km from Malkangiri town, dedicated to Goddess Bhairabi, the hill deity of the region. | मलकानगिरि नगर से 3 किमी दूर स्थित, देवी भैरबी को समर्पित यह मंदिर क्षेत्र की पहाड़ी देवी के रूप में पूजनीय है।"
      }
    ],

    "Mayurbhanj (मयूरभंज)": [
      {
        "name": "Maa Ambika Temple (माँ अंबिका मंदिर)",
        "image": "https://mayurbhanj.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/MAA%20AMBIKA%20TEMPLE.jpg?itok=XTfJKq51",
        "description": "An ancient temple in Baripada, considered as the Bijesthali of the presiding deity Maa Ambika. | बारिपदा का प्राचीन मंदिर, जिसे माँ अंबिका का बीजस्थली माना जाता है।"
      },
      {
        "name": "Jagannath Temple (जगन्नाथ मंदिर)",
        "image": "https://mayurbhanj.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/JAGANNATH%20TEMPLE.jpg?itok=de-pD7u0",
        "description": "Known as Haribaldev Temple, built in 1575 A.D. by Shri Baidyanath Bhanj at Baripada. | हरिबलदेव मंदिर के नाम से प्रसिद्ध, जिसे 1575 ई. में श्री बैद्यनाथ भंज द्वारा बारिपदा में बनवाया गया।"
      },
      {
        "name": "Similipal (सिमिलिपाल)",
        "image": "https://mayurbhanj.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/SIMILIPAL.jpg?itok=N5gHckwA",
        "description": "A biosphere reserve spread over 2750 sq. km, home to tigers, elephants, and rich flora & fauna. | 2750 वर्ग किमी में फैला बायोस्फीयर रिजर्व, जो बाघ, हाथी और समृद्ध वनस्पति व जीव-जंतुओं का घर है।"
      },
      {
        "name": "Devkund (देवकुंड)",
        "image": "https://mayurbhanj.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Devkund_2.jpg?itok=BXXmdEGE",
        "description": "A religious and scenic spot in Mayurbhanj, famous for its waterfall and temple. | मयूरभंज का धार्मिक और दर्शनीय स्थल, अपने जलप्रपात और मंदिर के लिए प्रसिद्ध।"
      },
      {
        "name": "Bhimkund (भीमकुंड)",
        "image": "https://mayurbhanj.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Bhimkund_4.jpg?itok=VFtEQy13",
        "description": "A sacred pool in river Vaitarani, about 40 km from Karanjia, associated with Mahabharata legends. | वैतरणी नदी में पवित्र कुंड, करंजिया से 40 किमी दूर, महाभारत की कथाओं से जुड़ा हुआ।"
      },
      {
        "name": "Ramatirtha (रामतीर्थ)",
        "image": "https://mayurbhanj.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Ramtirtha_1.jpg?itok=fsWSwY8_",
        "description": "Located near Jashipur at the foothills of Similipal National Park, popular for eco-tourism. | जसिपुर के पास, सिमिलिपाल नेशनल पार्क की तलहटी में स्थित, इको-टूरिज्म के लिए प्रसिद्ध।"
      },
      {
        "name": "Khiching (खिचिंग)",
        "image": "https://mayurbhanj.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Khiching_0.jpg?itok=dqgtS1Y6",
        "description": "The ancient capital of Bhanja rulers, famous for multiple temples including Kichakeswari Temple. | भंज राजाओं की प्राचीन राजधानी, जहाँ अनेक मंदिर हैं, जिनमें किचकेश्वरी मंदिर प्रमुख है।"
      }
    ],

    "Nabarangpur (नबरंगपुर)": [
      {
        "name": "Chandan Dhara (चंदन धारा जलप्रपात)",
        "image": "https://nabarangpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Chandandhara%20Waterfall.jpg?itok=YtwieKNK",
        "description": "A natural waterfall located in Jharigam Block, about 90 km from Nabarangpur. The site also has a natural Shiva Linga. | झरीगाम ब्लॉक में स्थित यह प्राकृतिक जलप्रपात नबरंगपुर से 90 किमी दूर है। यहाँ एक प्राकृतिक शिवलिंग भी मौजूद है।"
      },
      {
        "name": "Podagad (पोदागढ़)",
        "image": "https://nabarangpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Scriptures%20at%20Podagad.jpg?itok=1svvmLIV",
        "description": "Historic site with remains of the ancient Nala Dynasty, located 11 km from Umerkote. | प्राचीन नाला राजवंश के अवशेषों वाला ऐतिहासिक स्थल, उमरकोट से 11 किमी दूर स्थित।"
      }
    ],

    "Nayagarh (नयागढ़)": [
      {
        "name": "Kantilo Nilamadhab (कान्तिलो नीलमाधव)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Nilamadhab_0.jpg?itok=64NYspaz",
        "description": "Famous for the temple of Lord Nilamadhaba situated on twin hills along the Mahanadi River. | महानदी नदी के किनारे जुड़वां पहाड़ियों पर स्थित नीलमाधव मंदिर के लिए प्रसिद्ध।"
      },
      {
        "name": "Dasapalla (दशपल्ला)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Dasapalla_0.jpg?itok=b6xV3MDW",
        "description": "Located 40 km from Nayagarh, known for dense forests with rich flora and fauna. | नयागढ़ से 40 किमी दूर, सघन जंगलों और समृद्ध वनस्पतियों व जीवों के लिए प्रसिद्ध।"
      },
      {
        "name": "Sarankul (सरनकुल)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Sarankul_1.jpg?itok=OLGQXJqx",
        "description": "Home to the 15th-century shrine of Sri Ladukeswar (Ladu Baba). | 15वीं शताब्दी के प्रसिद्ध लाडु बाबा मंदिर का स्थल।"
      },
      {
        "name": "Satkosia Gorge (सतकोसिया घाटी)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Satkosia%20George_1.jpg?itok=oXmr9J_G",
        "description": "A rare place where primitive wild nature houses rich flora and fauna. | एक अद्वितीय स्थान जहाँ आदिम जंगली प्रकृति में समृद्ध वनस्पति और जीव-जंतु पाए जाते हैं।"
      },
      {
        "name": "Baramul (बरमुल)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/BOATING%20AT%20BADMUL_0.png?itok=JhFmnUXb",
        "description": "Village on the banks of Mahanadi, known for its magnificent gorge and boating. | महानदी तट पर स्थित गाँव, अपनी सुंदर घाटी और नौकायन के लिए प्रसिद्ध।"
      },
      {
        "name": "Kuturi (कुतुरी)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/kuturi_1.jpg?itok=nUSO1irP",
        "description": "Located 8 km from Baramul, houses the Habitat Development Centre for elephants. | बरमुल से 8 किमी दूर, हाथियों के लिए आवास विकास केंद्र का स्थल।"
      },
      {
        "name": "Gokulananda Temple (गोकुलानंद मंदिर)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Gokulanada%20Temple_1.jpg?itok=gmxh_m11",
        "description": "Temple on a hill near Sidhamula village, offering scenic views of Mahanadi. | सिधमुला गाँव के पास पहाड़ी पर स्थित मंदिर, जहाँ से महानदी का सुंदर दृश्य दिखता है।"
      },
      {
        "name": "Jamupatana (जमुपटना)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Jamupatana_0.jpg?itok=J8yHzLQ4",
        "description": "Famous for Sri Dutikeswar Mahadev shrine and a centuries-old banyan tree. | श्री दुटिकेश्वर महादेव मंदिर और प्राचीन वट वृक्ष के लिए प्रसिद्ध।"
      },
      {
        "name": "Kuanria (कुआँरिया)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Kuanria%20River_0.jpg?itok=UYLQarwj",
        "description": "A scenic spot with a large reservoir and 1.5 km long dam. | विशाल जलाशय और 1.5 किमी लंबे बाँध वाला सुंदर पर्यटन स्थल।"
      },
      {
        "name": "Nayagarh (नयागढ़)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Nayagarh_0.jpg?itok=vMYactbc",
        "description": "District headquarters surrounded by steep hill ranges and natural beauty. | खड़ी पहाड़ियों से घिरा जिला मुख्यालय, प्राकृतिक सुंदरता से भरपूर।"
      },
      {
        "name": "Odagaon (ओडगाँव)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Odagaon_0.jpg?itok=Q0H4MVnL",
        "description": "Known for the famous Raghunathjew Temple dedicated to Lord Ramachandra. | भगवान रामचंद्र को समर्पित प्रसिद्ध रघुनाथज्यू मंदिर के लिए प्रसिद्ध।"
      },
      {
        "name": "Panchupaili Pragana (पंचुपैली प्रगणा)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Panchupalli%20Pragana_2.jpg?itok=Lbsm89Ew",
        "description": "A serene destination located 55 km from Nayagarh, ideal for nature lovers. | नयागढ़ से 55 किमी दूर स्थित शांत स्थल, प्रकृति प्रेमियों के लिए उपयुक्त।"
      },
      {
        "name": "Ranapur (रणपुर)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Ranapur_0.jpg?itok=SC8J-c4R",
        "description": "A beautiful place combining natural beauty with historical heritage. | प्राकृतिक सुंदरता और ऐतिहासिक धरोहर का संगम स्थल।"
      },
      {
        "name": "Udayapur Library (उदयपुर पुस्तकालय)",
        "image": "https://nayagarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Late%20Dasarathi%20Pattnaik_0.jpg?itok=4WU5Q5pU",
        "description": "Home to Banchhanidhi Pathagara, Sri Aurobinda Sangrahalaya and Jadumani Sahitya Sansada. | बंचानिधि पाठागार, श्री अरविंद संग्रहालय और जदुमणि साहित्य संस्था का स्थल।"
      }
    ],

    "Nuapada (नुआपाड़ा)": [
      {
        "name": "Pataleswar Temple, Budhikomna (पातालेश्वर मंदिर, बुधिकोम्ना)",
        "image": "https://nuapada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Pataleswar%20Temple%2CBudhikomna.jpg?itok=tc3Rb3NF",
        "description": "Famous brick temple built in Pancharatha style, unique in Odisha, located in Budhikomna. | ओडिशा की अनोखी पंचरथ शैली में बनी ईंटों की प्रसिद्ध मंदिर, जो बुधिकोम्ना में स्थित है।"
      },
      {
        "name": "Jogeswar Temple, Patora (योगेश्वर मंदिर, पतोरा)",
        "image": "https://nuapada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Jogeswar%20Temple%2CPatora_0.jpg?itok=7b0L_s-B",
        "description": "Scenic temple on the bank of river Jonk, surrounded by green hills, also site of an irrigation project. | जोंक नदी के किनारे हरियाली से घिरी पहाड़ियों के बीच स्थित दर्शनीय मंदिर, साथ ही सिंचाई परियोजना का स्थल।"
      },
      {
        "name": "Patalganga (पातालगंगा)",
        "image": "https://nuapada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Water%20automatically%20flows%20out%20from%20the%20mother%20earth%20at%20Patalganga.jpg?itok=Z4a4samY",
        "description": "Natural perennial spring considered as sacred as the holy Ganges. | प्राकृतिक जलधारा, जिसका पानी गंगा नदी जितना ही पवित्र माना जाता है।"
      },
      {
        "name": "Upkaganga Kunda (उपकागंगा कुंड)",
        "image": "https://nuapada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Upkaganga%20Kunda.jpg?itok=W57PUvkn",
        "description": "Located amidst Sunabeda forest beside two hillocks, water flows in three separate streams. | सुनाबेड़ा वन और दो पहाड़ियों के बीच स्थित स्थल, जहाँ से पानी तीन अलग धाराओं में बहता है।"
      },
      {
        "name": "Saliha (सलीहा)",
        "image": "https://nuapada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Saliha.jpg?itok=rQC1fyx3",
        "description": "Known for the historic protest of 30th September 1930 against taxation by the people of Khariar estate. | 30 सितम्बर 1930 को कर विरोध आंदोलन के लिए प्रसिद्ध, जब खारियार रियासत के लोग यहाँ एकजुट हुए।"
      },
      {
        "name": "Sunabeda (सुनाबेड़ा)",
        "image": "https://nuapada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/2018051024-olwdev8lfci7qe24h71kom8yv3jxv2b87zoyb4st1e.jpg?itok=MJD41P4V",
        "description": "Home to Sunabeda Wildlife Sanctuary and Godhosh waterfall (63m) amidst dense forest. | सुनाबेड़ा वन्यजीव अभयारण्य और 63 मीटर ऊँचे गोधोष झरने के लिए प्रसिद्ध।"
      }
    ],

    "Puri (पुरी)": [
      {
        "name": "Jahania Pira (जहानिया पीरा)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Jahania%20Pira.jpg?itok=ycZKd2Hk",
        "description": "Shrine of Muslim saint Pir Mukudan Jahania near Astarang on the beach. | समुद्र तट के पास अस्तरंग के निकट मुस्लिम संत पीर मुकुदान जहानिया का मंदिर।"
      },
      {
        "name": "Beleswar (बेलेश्वर)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Beleswar_0.jpg?itok=8aLTZkUE",
        "description": "Beleswarpitha temple in revenue village BadaGaon of Gope block, 17 km from Puri. | गोपे ब्लॉक के बड़ा गाँव में स्थित बेलेश्वरपीठ मंदिर, पुरी से 17 किमी दूर।"
      },
      {
        "name": "Pipili (पिपली)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Pipili_0.jpg?itok=24EhkNu3",
        "description": "NAC town famous for traditional Applique works. | पारंपरिक एप्लीक वर्क्स के लिए प्रसिद्ध नगर, पिपली।"
      },
      {
        "name": "Ramachandi (रामचंडी)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Ramachandi_0.jpg?itok=vy382hRJ",
        "description": "Temple of Goddess Ramachandi at Kushabhadra river mouth, 7 km before Konark. | कुशाभद्र नदी के मुहाने पर स्थित देवी रामचंडी का मंदिर, कोणार्क से 7 किमी पहले।"
      },
      {
        "name": "Baliharchandi (बलीहरचंडी)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Baliharchandi.jpg?itok=bxBa7bnL",
        "description": "Temple dedicated to Goddess Harachandi, 27 km southwest of Puri on NH-203. | राष्ट्रीय राजमार्ग 203 पर पुरी से 27 किमी दक्षिण-पश्चिम में देवी हरचंडी को समर्पित मंदिर।"
      },
      {
        "name": "Raghurajpur (रघुराजपुर)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Raghurajpur_0.jpg?itok=1sfDYXng",
        "description": "Village famous for Gotipua dance, near DandaSahi. | गोतीपुआ नृत्य के लिए प्रसिद्ध गाँव, डंडासाही के निकट।"
      },
      {
        "name": "Biswanath Hill (विश्वनाथ हिल)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Biswanath%20Hill_0.jpg?itok=henYabXZ",
        "description": "Temple on Biswanath Mundia hill near Delang, close to Puri and Bhubaneswar. | डेलांग के पास, पुरी और भुवनेश्वर के समीप विश्वनाथ मुंडिया पहाड़ी पर स्थित मंदिर।"
      },
      {
        "name": "Chaurasi (चौरासी)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Chaurasi_0.jpg?itok=ag8Eenz7",
        "description": "Village famous for ancient Varahi temple, the mother goddess with boar face. | प्राचीन वाराही मंदिर के लिए प्रसिद्ध गाँव, माता देवी जिनका सूअर का चेहरा है।"
      },
      {
        "name": "Kuruma (कुरुमा)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Kurumav.jpg?itok=jSO_dKGL",
        "description": "Excavated site of Buddha Vihar, 8 km from Konark. | बुद्ध विहार की खुदाई स्थल, कोणार्क से 8 किमी दूर।"
      },
      {
        "name": "Satyabadi (सत्यबदी)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Satyabadi_0.jpg?itok=3oNLzGrM",
        "description": "Famous for the shrine of Sakhigopal, important pilgrimage centre. | सखिगोपाल के मंदिर के लिए प्रसिद्ध, महत्वपूर्ण तीर्थस्थल।"
      },
      {
        "name": "Alarnath (अलर्नाथ)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Alarnath_0.jpg?itok=PmqwA5zO",
        "description": "Vishnu Mandir where Shri Chaitanya Mahaprabhu stayed in 1610 A.D. | विष्णु मंदिर जहाँ 1610 ई. में श्री चैतन्य महाप्रभु रहे।"
      },
      {
        "name": "Kakatpur (काकतपुर)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Kakatpur_0.jpg?itok=QjPTMf2J",
        "description": "Famous for the shrine of Goddess Mangala on river Prachi bank, 15th century temple. | प्राची नदी के किनारे देवी mangala के मंदिर के लिए प्रसिद्ध, 15वीं सदी का मंदिर।"
      },
      {
        "name": "Chilika (Satpada) (चिलिका, सटपड़ा)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Chilika%20%28Satpada%29.jpg?itok=oyTx9bcv",
        "description": "Largest brackish water lake in Asia, spanning 1100 sq km across 3 districts. | एशिया की सबसे बड़ी खारे पानी की झील, 1100 वर्ग किमी में फैली, तीन जिलों में।"
      },
      {
        "name": "Konark (कोणार्क)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Konark_0.jpg?itok=G6VWy4x2",
        "description": "Site of the 13th-century Sun Temple, also known as Black Pagoda. | 13वीं सदी के सूर्य मंदिर का स्थल, जिसे ब्लैक पगोडा भी कहा जाता है।"
      },
      {
        "name": "Shree Jagannath Temple (श्री जगन्नाथ मंदिर)",
        "image": "https://puri.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Shree%20Jagannath%20Temple.jpg?itok=wcMFsM4w",
        "description": "World-famous temple and longest golden beach, one of the holy Dhams. | विश्व प्रसिद्ध मंदिर और सबसे लंबा सुनहरा समुद्र तट, सबसे पवित्र धामों में से एक।"
      }
    ],

    "Rayagada (रायगढ़ा)": [
      {
        "name": "Chatikona (चाटिकोना)",
        "image": "https://rayagada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Chatikona%20Waterfall_0.gif?itok=JH0OdyWy",
        "description": "Natural spot surrounded by valleys and wooden hills, 48 km from Rayagada. | घाटियों और रंग-बिरंगे लकड़ी के पहाड़ियों से घिरा प्राकृतिक स्थल, रायगढ़ा से 48 किमी दूर।"
      },
      {
        "name": "Minajhola (मिनाझोला)",
        "image": "https://rayagada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Minajhola%2C%20Gudari%202_0.jpg?itok=jT2670Kn",
        "description": "Nature beauty spot with a Shiva temple at the confluence of three rivers, 134 km from Rayagada. | तीन नदियों के संगम पर शिव मंदिर वाला प्राकृतिक सुंदरता स्थल, रायगढ़ा से 134 किमी दूर।"
      },
      {
        "name": "Hanging Bridge, Chekaguda (हैंगिंग ब्रिज, चेकगुड़ा)",
        "image": "https://rayagada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Hanging%20Bridge%2C%20Chekaguda%20Front%20View_0.jpg?itok=anMoE7Hv",
        "description": "Bridge connecting both sides of river Nagavali, 151 meters long, aiding rural tribal connectivity. | नदी नागावली के दोनों किनारों को जोड़ने वाला 151 मीटर लंबा पुल, ग्रामीण जनजातियों के लिए सुविधा।"
      },
      {
        "name": "Laxminarayan Temple, Therubali (लक्ष्मीनारायण मंदिर, थेरुबली)",
        "image": "https://rayagada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/LAXMINARAYAN%20TEMPLE%2C%20THERUBALI.jpg?itok=xwYXrMNv",
        "description": "Famous temple at IMFA Factory with deities Laxminarayan, Hanuman, Jagannath, Balabhadra & Subhadra. | आईएमएफए फैक्ट्री में प्रसिद्ध मंदिर जिसमें भगवान लक्ष्मीनारायण, हनुमान, जगन्नाथ, बलभद्र और सुभद्रा विराजमान हैं।"
      },
      {
        "name": "Maa Majhighariani Temple (माँ मझीघरियानी मंदिर)",
        "image": "https://rayagada.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/MAA%20MAJHIGHARIANI%20TEMPLE_1.jpg?itok=n73vaR9L",
        "description": "Renowned in Southern Odisha & Andhra Pradesh, devotees also come from Madhya Pradesh and Chhattisgarh. | दक्षिण ओडिशा और आंध्र प्रदेश में प्रसिद्ध, भक्त मध्य प्रदेश और छत्तीसगढ़ से भी आते हैं।"
      }
    ],

    "Sambalpur (संबलपुर)": [
      {
        "name": "Ghanteswari Temple (घंटेश्वरी मंदिर)",
        "image": "https://sambalpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Ghanteswari%20Temple.jpg?itok=qQZrf0n9",
        "description": "One of the holiest and beautiful temples in Sambalpur, famous for numerous bells. | संभलपुर का एक पवित्र और सुंदर मंदिर, जहाँ चारों ओर घंटियाँ (घंटी) हैं।"
      },
      {
        "name": "Gudguda Waterfall (गुडगुड़ा जलप्रपात)",
        "image": "https://sambalpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Gudguda%20Waterfall.jpg?itok=qRJwLUX7",
        "description": "A beautiful picnic spot attracting visitors from Sambalpur and nearby districts. | संभलपुर जिले के अंतर्गत आने वाला एक सुंदर पिकनिक स्थल, जो आसपास के लोगों को आकर्षित करता है।"
      },
      {
        "name": "Huma, the Leaning Temple of Lord Shiva (हुमा, झुका हुआ शिव मंदिर)",
        "image": "https://sambalpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Huma%2C%20the%20Leaning%20Temple%20of%20Lord%20Shiva.jpg?itok=kSQ4xlKJ",
        "description": "Located on the left bank of Mahanadi, 23 km south of Sambalpur, famous for its leaning structure. | महानदी के बाएँ किनारे पर स्थित, संभलपुर से 23 किमी दक्षिण में, झुके हुए ढांचे के लिए प्रसिद्ध।"
      },
      {
        "name": "Samaleswari Temple (सामलेश्वर मंदिर)",
        "image": "https://sambalpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Samaleswari%20Temple.jpg?itok=vIQQE-0b",
        "description": "Presiding deity of Sambalpur, a major religious force in western Odisha and Chhattisgarh. | संभलपुर की अधिष्ठात्री देवी, पश्चिमी ओडिशा और छत्तीसगढ़ में एक महत्वपूर्ण धार्मिक शक्ति।"
      },
      {
        "name": "Hirakud Dam (हीराकुंड बांध)",
        "image": "https://sambalpur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Hirakud%20Dam.jpg?itok=Ax-6exC-",
        "description": "The longest earthen dam in the world, 15 km north of Sambalpur on the Mahanadi river. | दुनिया का सबसे लंबा मिट्टी का बांध, संभलपुर से 15 किमी उत्तर में महानदी पर स्थित।"
      }
    ],

    "Subarnapur (सुभर्णपुर)": [
      {
        "name": "Patali Srikhetra (पताली श्रीक्षेत्र)",
        "image": "https://subarnapur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Patali%20Srikhetra.jpg?itok=x6IMUm41",
        "description": "A famous religious site with significant historical importance for Subarnapur and Odisha. | सुभर्णपुर और ओडिशा के लिए ऐतिहासिक दृष्टि से महत्वपूर्ण प्रसिद्ध धार्मिक स्थल।"
      },
      {
        "name": "Pancharatha Temple (पंचरथ मंदिर)",
        "image": "https://subarnapur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Pancharatha%20Temple.jpg?itok=41rDSqL-",
        "description": "A highly revered shrine at Sonpur, resembling the Sun Temple in chariot size. | सोनपुर में एक अत्यंत पूजनीय मंदिर, जो रथ के आकार में सूर्य मंदिर जैसा प्रतीत होता है।"
      },
      {
        "name": "Lankeswari Temple (लंकेश्वरी मंदिर)",
        "image": "https://subarnapur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Lankeswari%20Temple.jpg?itok=PvT_CE-e",
        "description": "Located inside the river Mahanadi at Sonepur town, historically significant. | सोंपुर शहर में महानदी नदी के भीतर स्थित, ऐतिहासिक दृष्टि से महत्वपूर्ण।"
      },
      {
        "name": "Papakshya Ghata (पापक्श्या घाट)",
        "image": "https://subarnapur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Papakshya%20Ghata%20main.jpg?itok=vx7VNUcd",
        "description": "Situated on the bank of river Mahanadi at Binika, 32 km from Sonepur, known for Emperor Ananga Bhimadev-III's leprosy cure. | सोंपुर से 32 किमी दूर बिनिका में महानदी के किनारे स्थित, जहाँ सम्राट अणंग भिमदेव-III को कुष्ठरोग से मुक्ति मिली थी।"
      },
      {
        "name": "Bhima Bhoi Samadhi Pitha, Khaliapali (भीमा भोई समाधि पीठ, खालियापाली)",
        "image": "https://subarnapur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Bhima%20Bhoi%20Samadhi%20Pitha%20%2C%20Khaliapali.jpg?itok=qFaUKfI4",
        "description": "Located 30 km from Sonepur, with Samadhi Mandir or Sunya Mandir, a 110-year-old temple. | सोंपुर से 30 किमी दूर, समाधि मंदिर या शून्य मंदिर के साथ, 110 वर्षीय प्राचीन मंदिर।"
      },
      {
        "name": "Subarnameru Temple (सुवर्णमेड़ु मंदिर)",
        "image": "https://subarnapur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Subarnameru%20Temple%20main.jpg?itok=P1Smr-BO",
        "description": "A Shiva temple believed to have given the district its name. | एक शिव मंदिर, जिसके नाम पर जिला सुवर्णपुर का नाम पड़ा।"
      },
      {
        "name": "Rameswar Temple (रामेश्वर मंदिर)",
        "image": "https://subarnapur.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Rameswar%20Temple%20main.jpg?itok=uaqTCsgL",
        "description": "Situated at the confluence of river Mahanadi and Tel, with an ancient lingam. | महानदी और तेल नदी के संगम पर स्थित, प्राचीन लिंगम वाला मंदिर।"
      }
    ],

    "Sundargarh (सुंदरगढ़)": [
      {
        "name": "Vaishno Devi Temple (वैष्णो देवी मंदिर)",
        "image": "https://sundargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Vaishno%20Devi%20Temple.jpg?itok=moENvLFV",
        "description": "A replica of the original Vaishno Devi Temple of Jammu, situated on a hilltop in Rourkela. | राउरकेला में स्थित, जम्मू के वैष्णो देवी मंदिर की प्रतिकृति, पहाड़ी की चोटी पर स्थित।"
      },
      {
        "name": "Mandira Dam (मंदिरा बांध)",
        "image": "https://sundargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Mandira%20Dam.jpg?itok=NsQKkh8x",
        "description": "Built across the Sankh river near Kansbahal, 16 km upstream from Mandira. | कंसबहल के पास सांख नदी पर निर्मित, मंदिरा से 16 किमी ऊपर।"
      },
      {
        "name": "Hanuman Vatika (हनुमान वाटिका)",
        "image": "https://sundargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Hanuman%20Vatika_1.jpg?itok=bnjy_69g",
        "description": "Famous for one of the highest statues of Hanuman, inaugurated in 1994 by Chief Minister Biju Patnaik. | हनुमान की सबसे ऊँची मूर्तियों में से एक के लिए प्रसिद्ध, 1994 में तत्कालीन मुख्यमंत्री बिज़ू पटनायक द्वारा उद्घाटन।"
      },
      {
        "name": "Vedvyas Dham (वेदव्यास धाम)",
        "image": "https://sundargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Vedvyas%20Dham.jpg?itok=Elw2GhYg",
        "description": "Located at the confluence of Sankha and Koel rivers, forming Brahmani; known for its natural beauty. | सांखा और कोयल नदियों के संगम पर स्थित, ब्रह्मणी नदी का निर्माण करता है; प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
      {
        "name": "Khandadhar Waterfalls (खंडाधर जलप्रपात)",
        "image": "https://sundargarh.odisha.gov.in/sites/default/files/styles/330_330/public/2023-07/Khandadhar%20Waterfalls.jpg?itok=wY_nZlbo",
        "description": "A glittering waterfall amid thick jungles, formed by the perennial Korapani Nala. | घने जंगलों के बीच चमकदार जलप्रपात, जिसका निर्माण करापानी नाला करता है।"
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
