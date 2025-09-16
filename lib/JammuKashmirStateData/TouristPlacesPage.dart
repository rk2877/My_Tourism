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

  // ✅ आपके पास पहले से यह Map होगा
  final Map<String, List<Map<String, String>>> districtPlaces = {

    "Jammu (जम्मू)": [
      {
        "name": "Akhnoor Fort (अख्नूर किला)",
        "image": "https://cdn.s3waas.gov.in/s3979d472a84804b9f647bc185a877a8b5/uploads/bfi_thumb/2018081462-olwai51xyv546g6j0fczdjn46lqp93jutn0eea2waq.jpg",
        "description": "Situated on the banks of the Chenab River, Akhnoor Fort is a historic site offering beautiful views and holds great archaeological significance. | चिनाब नदी के किनारे स्थित अख्नूर किला ऐतिहासिक महत्व का स्थल है और यहाँ से सुंदर दृश्य दिखाई देते हैं।"
      },
      {
        "name": "Raghunath Temple (रघुनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3979d472a84804b9f647bc185a877a8b5/uploads/bfi_thumb/2018080779-olwai443s13tuu7w5wyct1vnl7vc1eg4hicwx04agy.jpg",
        "description": "One of the largest temple complexes in North India, dedicated to Lord Rama, with seven shrines each having its own Shikhara. | उत्तर भारत के सबसे बड़े मंदिर परिसरों में से एक, यह भगवान राम को समर्पित है और इसमें सात शिखर वाले मंदिर शामिल हैं।"
      },
      {
        "name": "Mubarak Mandi Palace (मुबारक मंड़ी पैलेस)",
        "image": "https://cdn.s3waas.gov.in/s3979d472a84804b9f647bc185a877a8b5/uploads/bfi_thumb/2018080790-olwai443s13tuu7w5wyct1vnl7vc1eg4hicwx04agy.jpg",
        "description": "A grand palace that was once the royal residence of the Dogra rulers of Jammu. The palace showcases beautiful architecture and historical artifacts. | यह भव्य महल कभी जम्मू के डोगरा शासकों का शाही निवास था और इसमें शानदार वास्तुकला और ऐतिहासिक कलाकृतियाँ देखने को मिलती हैं।"
      },
      {
        "name": "Amar Mahal Palace Museum (अमर महल पैलेस म्यूज़ियम)",
        "image": "https://cdn.s3waas.gov.in/s3979d472a84804b9f647bc185a877a8b5/uploads/bfi_thumb/2018080791-olwahfoauc6dgz7e4me2081o577sh9r3q5eaft4iyq.jpg",
        "description": "Built in 1862 in French chateau-style, this palace now serves as a museum with a rich collection of books, paintings, and royal artifacts. | 1862 में फ्रेंच शैली में निर्मित यह महल अब एक संग्रहालय है जिसमें पुस्तकों, पेंटिंग्स और शाही वस्तुओं का भंडार है।"
      },
      {
        "name": "Bahu Fort (बाहु किला)",
        "image": "https://cdn.s3waas.gov.in/s3979d472a84804b9f647bc185a877a8b5/uploads/bfi_thumb/2018080740-olwahfoauc6dgz7e4me2081o577sh9r3q5eaft4iyq.jpg",
        "description": "Located 5 km from Jammu city, Bahu Fort is one of the oldest structures in the region with a temple dedicated to Goddess Kali inside. | जम्मू शहर से 5 किमी दूर स्थित बाहु किला क्षेत्र की सबसे पुरानी संरचनाओं में से एक है, जिसके अंदर काली माता का मंदिर है।"
      },
      {
        "name": "Mansar Lake (मानसर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIgAK3xslQb9G5EKY6JXb4UZSly_I-BiIR1g&s",
        "description": "A beautiful lake surrounded by lush forests, popular for boating, picnics, and sacred shrines nearby. | हरे-भरे जंगलों से घिरी यह झील नौकायन, पिकनिक और पास स्थित धार्मिक स्थलों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Surinsar Lake (सुरीनसर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaO7Vttv-Y6GbMzh_3yecHIFgn8YrPAWHsfA&s",
        "description": "A serene lake with mythological importance, located about 24 km from Jammu. | जम्मू से लगभग 24 किमी दूर स्थित यह शांत झील पौराणिक महत्व रखती है।"
      },
      {
        "name": "Peer Kho Cave Temple (पीर खो गुफा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgv7Fdg_2GXkNnnDd5TTSAV6DEQJNshQ4QRQ&s",
        "description": "An ancient cave temple dedicated to Lord Shiva, also known as 'Jamvant Cave Temple'. | भगवान शिव को समर्पित यह प्राचीन गुफा मंदिर 'जामवंत गुफा मंदिर' के नाम से भी जाना जाता है।"
      },
      {
        "name": "Ranbireshwar Temple (रणबीरश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeqbtbuVXJYqpjmIA4VZm8eNdCqAfYLpaVEg&s",
        "description": "Built by Maharaja Ranbir Singh, this temple is dedicated to Lord Shiva and houses one of the largest Shiva Lingams in North India. | महाराजा रणबीर सिंह द्वारा निर्मित यह मंदिर भगवान शिव को समर्पित है और उत्तर भारत के सबसे बड़े शिवलिंगों में से एक यहाँ स्थापित है।"
      },
    ],

    "Kathua (कठुआ)": [
      {
        "name": "Sukrala Mata Temple (सुक्राला माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3eb163727917cbba1eea208541a643e74/uploads/bfi_thumb/2021032777-p4tl3vkwxpverix3pwrt0xc9jrfpcq9n1odh8jzjfc.jpg",
        "description": "A famous shrine dedicated to the mother goddess, located about 9.6 km from Billawar. | माता देवी को समर्पित प्रसिद्ध मंदिर, जो बिलावर से लगभग 9.6 किमी दूर स्थित है।"
      },
      {
        "name": "Sarthal (सार्थल)",
        "image": "https://cdn.s3waas.gov.in/s3eb163727917cbba1eea208541a643e74/uploads/bfi_thumb/2021032720-p4tkvb9uo25czfcxq7i6b352pdnb809ojae7tsoo48.jpg",
        "description": "A beautiful meadow at an altitude of 7000 ft, covered with snow for six months and ideal for adventure lovers. | 7000 फीट की ऊँचाई पर स्थित खूबसूरत घास का मैदान, जो छह महीने तक बर्फ से ढका रहता है और रोमांच प्रेमियों के लिए आकर्षण है।"
      },
      {
        "name": "Airwan Temple (ऐरवान मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3eb163727917cbba1eea208541a643e74/uploads/bfi_thumb/2021032748-p4tkp2mfanltwmf960ec95twqael4chu0eh64nxrfc.jpg",
        "description": "An ancient Shiva temple located in Airwan village, about 15 km from Kathua. | ऐरवान गाँव में स्थित प्राचीन शिव मंदिर, जो कठुआ से लगभग 15 किमी दूर है।"
      },
      {
        "name": "Mata Bala Sundri Temple, Nagri (माता बाला सुंदरी मंदिर, नागरी)",
        "image": "https://cdn.s3waas.gov.in/s3eb163727917cbba1eea208541a643e74/uploads/bfi_thumb/2021032738-p4tkfcygoab5xoj5vt94hm2fqya1kxxoobsjlqc7q0.jpg",
        "description": "A historic shrine located near Parole village, about 13 km from Kathua. | कठुआ से 13 किमी दूर, परोल गाँव के पास स्थित ऐतिहासिक बाला सुंदरी मंदिर।"
      },
      {
        "name": "Chanchalo Mata Temple (चंचलो माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3eb163727917cbba1eea208541a643e74/uploads/bfi_thumb/2021032639-scaled-p4s6ni8eczebm9as1rv7sa44t03h4pegnh5hxh4z6g.jpg",
        "description": "A holy temple dedicated to Mata Chanchlo Devi, visited by devotees throughout the year. | माता चंचलो देवी को समर्पित पवित्र मंदिर, जहाँ सालभर श्रद्धालु आते हैं।"
      },
      {
        "name": "Atal Setu (अटल सेतु)",
        "image": "https://cdn.s3waas.gov.in/s3eb163727917cbba1eea208541a643e74/uploads/bfi_thumb/2021032643-scaled-p4s5w2c0u3tyo35raeubhpeoh1cpetgkjni6jntqu0.jpg",
        "description": "India’s first cable-stayed bridge in Jammu & Kashmir, a major attraction for tourists. | जम्मू-कश्मीर का पहला केबल-स्टे ब्रिज, जो पर्यटकों के लिए बड़ा आकर्षण है।"
      },
      {
        "name": "Dhaggar (धग्गर)",
        "image": "https://cdn.s3waas.gov.in/s3eb163727917cbba1eea208541a643e74/uploads/bfi_thumb/2021032657-p4s5ezlkoggfr3yp014b70j7z1inkro474umop57vc.jpg",
        "description": "A scenic spot ideal for trekking and enjoying natural beauty. | प्राकृतिक सुंदरता और ट्रैकिंग के लिए प्रसिद्ध स्थल।"
      },
      {
        "name": "Jourian Wali Mata Temple (जोरियां वाली माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3eb163727917cbba1eea208541a643e74/uploads/bfi_thumb/2021032665-scaled-p4s3smsadqkkymq8rb14w8o0av5ap9016asf39o460.jpg",
        "description": "A religious temple dedicated to Mata, located in Bani region. | माता को समर्पित धार्मिक मंदिर, जो बानी क्षेत्र में स्थित है।"
      },
      {
        "name": "Chattergala (चत्तरगला)",
        "image": "https://cdn.s3waas.gov.in/s3eb163727917cbba1eea208541a643e74/uploads/bfi_thumb/2018081176-olwdf7ghjh4g0hoi8hikw801bxvfzfd4eo3peofw2g.jpg",
        "description": "A beautiful meadow on the Bani-Sarthal-Bhaderwah trek route, famous for adventure tourism. | बानी-सार्थल-भद्रवाह ट्रैक मार्ग पर स्थित खूबसूरत घास का मैदान, जो साहसिक पर्यटन के लिए प्रसिद्ध है।"
      }
    ],

    "Samba (सांबा)": [
      {
        "name": "Shri Narsingh Dev Ji Temple (श्री नरसिंह देव जी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a97da629b098b75c294dffdc3e463904/uploads/bfi_thumb/2018040452-olwbd5q8g91y6lr3e5nhw7tfr55qwqerfrtc441u66.jpg",
        "description": "Situated just 300 meters from the National Highway at Ghagwal, this centuries-old temple is dedicated to Lord Vishnu and attracts a large number of devotees. | घगवाल में राष्ट्रीय राजमार्ग से केवल 300 मीटर की दूरी पर स्थित यह सदियों पुराना मंदिर भगवान विष्णु को समर्पित है और बड़ी संख्या में श्रद्धालु यहाँ आते हैं।"
      },
      {
        "name": "Baba Sidh Goria Shrine (बाबा सिद्ध गोरिया मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a97da629b098b75c294dffdc3e463904/uploads/bfi_thumb/2018040440-olwbd4se9f0nuzsgjn8vbq1z5radp1b13n5umu38ce.jpg",
        "description": "One of the most popular shrines in Samba, where lakhs of devotees visit annually. Baba Sidh Goria is the presiding deity of many clans. | सांबा का सबसे लोकप्रिय धार्मिक स्थल, जहाँ हर साल लाखों श्रद्धालु आते हैं। बाबा सिद्ध गोरिया कई कुलों के इष्ट देवता माने जाते हैं।"
      },
      {
        "name": "Utterbehni Temple (उत्तरेभनी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a97da629b098b75c294dffdc3e463904/uploads/bfi_thumb/2023072846-qa2k3uggwneakgzo7ntztbcmq82hvq15qiyh4qxl32.jpeg",
        "description": "Located on the banks of the sacred Devika river, Utterbehni is known for its centuries-old temples and spiritual atmosphere. | पवित्र देविका नदी के किनारे स्थित उत्तरेभनी अपने सदियों पुराने मंदिरों और धार्मिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Baba Chamlyal Shrine (बाबा चमलियाल दरगाह)",
        "image": "https://cdn.s3waas.gov.in/s3a97da629b098b75c294dffdc3e463904/uploads/bfi_thumb/2018040461-olwbd5q8g91y6lr3e5nhw7tfr55qwqerfrtc441u66.jpg",
        "description": "Located on the zero line of the Indo-Pak border, this shrine is visited by hundreds of thousands of pilgrims from both India and Pakistan every year. | भारत-पाकिस्तान सीमा रेखा पर स्थित यह दरगाह हर साल लाखों श्रद्धालुओं द्वारा भारत और पाकिस्तान दोनों ओर से देखी जाती है।"
      },
      {
        "name": "Chichi Mata Temple (चीची माता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a97da629b098b75c294dffdc3e463904/uploads/bfi_thumb/2023072889-e1690532034683-qa2j0d8hv5cqy2c2qli339zojmnildb0b4kbidguf2.jpeg",
        "description": "According to legend, the smallest finger of Goddess Sati fell at this place, making it a significant Shaktipeeth. | मान्यता है कि यहाँ देवी सती की सबसे छोटी उंगली गिरी थी, जिससे यह स्थान एक महत्वपूर्ण शक्ति पीठ माना जाता है।"
      }
    ],

    "Udhampur (उधमपुर)": [
      {
        "name": "Beni Sangam (बेनी संगम)",
        "image": "https://cdn.s3waas.gov.in/s33cec07e9ba5f5bb252d13f5f431e4bbb/uploads/bfi_thumb/2025070642-r8c9owad3d1apcnqeyxau8uq6sordn2zcs9cuez3e2.jpeg",
        "description": "Beni Sangam, located in Chenani, is a sacred site where the confluence of rivers and scenic surroundings create a blend of natural beauty and spirituality. | बेनी संगम, चेनानी में स्थित, एक पवित्र स्थान है जहाँ नदियों का संगम और मनमोहक प्राकृतिक वातावरण आध्यात्मिक शांति प्रदान करता है।"
      },
      {
        "name": "Sankri Devta Temple (शंकरि देवता मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33cec07e9ba5f5bb252d13f5f431e4bbb/uploads/bfi_thumb/2018111759-olw87uano4zuupkqcw6xctq78ox8vkw9z49yp0ud4a.jpg",
        "description": "Situated on a hillock in Meer village of Panchari block, Sankri Devta temple is known for its scenic beauty and spiritual significance. | पंचारी ब्लॉक के मीर गाँव की पहाड़ी पर स्थित शंकरि देवता मंदिर अपनी प्राकृतिक सुंदरता और धार्मिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Moungri Cave Shiv Mandir (मौंगरी गुफा शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33cec07e9ba5f5bb252d13f5f431e4bbb/uploads/bfi_thumb/2018112013-olw87v8huz156bjd7eljxbhnu2sm3a00b8xg6asyy2.jpg",
        "description": "Moungri, earlier known as Sonara (meaning land of 100 streams), houses ancient cave shrines dedicated to Lord Shiva. | मौंगरी, जिसे प्राचीन काल में सोनारा कहा जाता था, में भगवान शिव को समर्पित प्राचीन गुफा मंदिर स्थित हैं।"
      },
      {
        "name": "Sudh Mahadev and Mantalai (सुध महादेव और मंटलाई)",
        "image": "https://cdn.s3waas.gov.in/s33cec07e9ba5f5bb252d13f5f431e4bbb/uploads/bfi_thumb/2018111789-olw87v8huz156bjd7eljxbhnu2sm3a00b8xg6asyy2.jpg",
        "description": "A highly revered Shiva temple located 42 km from Patnitop, Sudh Mahadev with nearby Mantalai is a historic and spiritual destination. | पटनीटॉप से 42 किमी दूर स्थित यह प्राचीन शिव मंदिर (सुध महादेव) और निकट का मंटलाई धार्मिक और ऐतिहासिक महत्व का स्थान है।"
      },
      {
        "name": "Ramnagar Fort (रामनगर किला)",
        "image": "https://cdn.s3waas.gov.in/s33cec07e9ba5f5bb252d13f5f431e4bbb/uploads/bfi_thumb/2021040269-scaled-p542etb2zu91c2ojy3up453rc8f1yxy26smytd0vsa.jpg",
        "description": "Situated on the bank of Kud river, Ramnagar Fort is a historic site that reflects the architectural and cultural heritage of the region. | कुद नदी के किनारे स्थित रामनगर किला क्षेत्र की स्थापत्य और सांस्कृतिक धरोहर को दर्शाता है।"
      },
      {
        "name": "Krimachi Temples (क्रीमाची मंदिर समूह)",
        "image": "https://cdn.s3waas.gov.in/s33cec07e9ba5f5bb252d13f5f431e4bbb/uploads/bfi_thumb/2021040135-scaled-p52lvi9rkl70lxwrukuu3emppmfe3ll8tp3g65a7l6.jpg",
        "description": "Krimachi, located 12 km from Udhampur, is home to an ancient group of temples believed to date back to the 8th-9th century. | उदयंपुर से 12 किमी दूर स्थित क्रीमाची प्राचीन मंदिर समूह 8वीं-9वीं शताब्दी का माना जाता है।"
      },
      {
        "name": "Devika River (देविका नदी)",
        "image": "https://cdn.s3waas.gov.in/s33cec07e9ba5f5bb252d13f5f431e4bbb/uploads/bfi_thumb/2021070885-p9t2p0avrljtglal3cby04j1mar5hhiixega42uacq.jpg",
        "description": "The Devika river, also known as the sister of Ganga, flows through Udhampur and holds immense religious significance. | देविका नदी, जिसे गंगा की बहन कहा जाता है, उदयंपुर से होकर बहती है और धार्मिक दृष्टि से अत्यंत महत्वपूर्ण है।"
      }
    ],

    "Reasi (रियासी)": [
      {
        "name": "Siyad Baba (सियाद बाबा झरना)",
        "image": "https://cdn.s3waas.gov.in/s3c5ff2543b53f4cc0ad3819a36752467b/uploads/bfi_thumb/2018032242-olwc3cicv2wjnhpngz6av3wrkm2wd5djde5cgn7yta.jpg",
        "description": "Siyad Baba is considered one of the biggest waterfalls in North India, attracting nature lovers and devotees alike. | सियाद बाबा उत्तर भारत के सबसे बड़े झरनों में से एक है, जो प्रकृति प्रेमियों और श्रद्धालुओं के लिए आकर्षण का केंद्र है।"
      },
      {
        "name": "Shiv Khori Cave Temple (शिव खोड़ी गुफा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c5ff2543b53f4cc0ad3819a36752467b/uploads/bfi_thumb/2018031668-olwc3bkio8v9bvr0mgroam5az87j5g9t19huzd9czi.jpg",
        "description": "Located at Ransoo, Shiv Khori is a famous cave shrine dedicated to Lord Shiva and a major pilgrimage destination. | रांसू में स्थित शिव खोड़ी भगवान शिव को समर्पित एक प्रसिद्ध गुफा मंदिर और प्रमुख तीर्थस्थल है।"
      },
      {
        "name": "Shri Mata Vaishno Devi Shrine (श्री माता वैष्णो देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c5ff2543b53f4cc0ad3819a36752467b/uploads/bfi_thumb/2018031630-olwc3amohetz09sdryd1q4duduc5xr62p4udi3ar5q.jpg",
        "description": "One of the holiest Hindu shrines, Vaishno Devi is located in the Trikuta Hills and visited by millions of devotees annually. | माता वैष्णो देवी का पवित्र धाम त्रिकुटा पहाड़ियों में स्थित है और हर साल लाखों श्रद्धालु यहाँ दर्शन करने आते हैं।"
      },
      {
        "name": "Bhim Garh Fort (भीमगढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3c5ff2543b53f4cc0ad3819a36752467b/uploads/bfi_thumb/2018031682-olwc3bkio8v9bvr0mgroam5az87j5g9t19huzd9czi.jpg",
        "description": "Also known as Reasi Fort, Bhim Garh Fort was built by General Zorawar Singh and showcases Dogra heritage. | भीमगढ़ किला, जिसे रियासी किला भी कहा जाता है, जनरल ज़ोरावर सिंह द्वारा निर्मित है और डोगरा धरोहर को दर्शाता है।"
      },
      {
        "name": "Dera Baba Banda Bahadur (डेरा बाबा बंदा बहादुर)",
        "image": "https://cdn.s3waas.gov.in/s3c5ff2543b53f4cc0ad3819a36752467b/uploads/bfi_thumb/2018032237-olwc3cicv2wjnhpngz6av3wrkm2wd5djde5cgn7yta.jpg",
        "description": "A historic gurudwara associated with Baba Banda Singh Bahadur, attracting Sikh and Hindu pilgrims. | यह ऐतिहासिक स्थल बाबा बंदा सिंह बहादुर से जुड़ा है और सिख व हिंदू श्रद्धालुओं के लिए पूजनीय स्थान है।"
      },
      {
        "name": "Salal Power Project (सलाल जलविद्युत परियोजना)",
        "image": "https://cdn.s3waas.gov.in/s3c5ff2543b53f4cc0ad3819a36752467b/uploads/bfi_thumb/2018032210-olwc3bkio8v9bvr0mgroam5az87j5g9t19huzd9czi.jpg",
        "description": "Located 23 km from Reasi, the Salal Dam is a major hydroelectric project and also a tourist attraction. | रियासी से 23 किमी दूर स्थित सलाल जलविद्युत परियोजना पर्यटकों और तकनीकी महत्व का स्थान है।"
      },
      {
        "name": "Baba Aghar Jitto (बाबा अघर जित्तो)",
        "image": "https://cdn.s3waas.gov.in/s3c5ff2543b53f4cc0ad3819a36752467b/uploads/bfi_thumb/2018032285-olwc3cicv2wjnhpngz6av3wrkm2wd5djde5cgn7yta.jpg",
        "description": "Baba Aghar Jitto, a farmer and spiritual devotee of Vaishno Devi, is revered for his sacrifice and devotion. | बाबा अघर जित्तो एक किसान और माता वैष्णो देवी के भक्त थे, जो अपनी आस्था और बलिदान के लिए पूजनीय हैं।"
      },
      {
        "name": "Nau Devi Temple (नौ देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c5ff2543b53f4cc0ad3819a36752467b/uploads/bfi_thumb/2018032276-olwc3cicv2wjnhpngz6av3wrkm2wd5djde5cgn7yta.jpg",
        "description": "Situated 9 km from Katra, Nau Devi Temple is dedicated to nine manifestations of Goddess Durga inside a sacred cave. | कटरा से 9 किमी दूर स्थित नौ देवी मंदिर एक पवित्र गुफा में देवी दुर्गा के नौ रूपों को समर्पित है।"
      }
    ],

    "Ramban (रामबन)": [
      {
        "name": "Sanasar (सनासर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/5e/d3/ff/img-20180828-131303-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Known as 'Mini Gulmarg', Sanasar is famous for paragliding, trekking, and scenic meadows. | 'मिनी गुलमर्ग' कहलाने वाला सनासर पैराग्लाइडिंग, ट्रैकिंग और सुंदर घास के मैदानों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Patnitop (पटनीटॉप)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdg1q_kHAnCiXo7w0mTrUQVlW8Q5vMf49RBg&s",
        "description": "One of the most popular hill resorts in J&K, offering mesmerizing views, adventure sports, and snowfall in winters. | जम्मू-कश्मीर का प्रसिद्ध हिल स्टेशन पटनीटॉप अपने अद्भुत नज़ारों, एडवेंचर स्पोर्ट्स और सर्दियों की बर्फबारी के लिए जाना जाता है।"
      },
      {
        "name": "Nashri Tunnel (नश्री सुरंग)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/ac/55/06/getlstd-property-photo.jpg?w=700&h=-1&s=1",
        "description": "Also known as Dr. Syama Prasad Mookerjee Tunnel, it is India's longest road tunnel connecting Chenani with Nashri. | डॉ. श्यामा प्रसाद मुखर्जी सुरंग, भारत की सबसे लंबी सड़क सुरंग है, जो चेनानी को नश्री से जोड़ती है।"
      },
      {
        "name": "Baglihar Dam (बगलीहार डैम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW9AFskoIEpi8iXEF-J3n6SXImE-kXw6-8UQ&s",
        "description": "A major hydroelectric project on the Chenab River, also known as Baglihar Hydroelectric Power Project. | चिनाब नदी पर स्थित यह बगलीहार जलविद्युत परियोजना तकनीकी दृष्टि से महत्वपूर्ण और पर्यटन का केंद्र है।"
      }
    ],

    "Doda (डोडा)": [
      {
        "name": "Dessa Valley (डेसा वैली)",
        "image": "https://cdn.s3waas.gov.in/s3dc6a70712a252123c40d2adba6a11d84/uploads/bfi_thumb/2018102243-olwdeqjed88iw6lvwza4sdz0eyr85ydswtmz1cb828.jpg",
        "description": "Dessa Valley, surrounded by lush green hills, is a serene natural destination offering peace and scenic beauty. | चारों ओर हरी-भरी पहाड़ियों से घिरी डेसा वैली एक शांत प्राकृतिक स्थान है जो शांति और मनमोहक दृश्यों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Padri (पदरी)",
        "image": "https://cdn.s3waas.gov.in/s3dc6a70712a252123c40d2adba6a11d84/uploads/bfi_thumb/2018071260-olwdeonpzk5y8yom7ygvneg3870hqk6c8kc02se0eo.jpg",
        "description": "Located on the Bhaderwah-Chamba National Highway, Padri is a breathtaking landscape about 41 km from Bhaderwah. | भद्रवाह-चंबा नेशनल हाईवे पर स्थित पदरी, भद्रवाह से लगभग 41 किमी दूर एक मनोहारी स्थल है।"
      },
      {
        "name": "Telli Garh (टेल्लीगढ़)",
        "image": "https://cdn.s3waas.gov.in/s3dc6a70712a252123c40d2adba6a11d84/uploads/bfi_thumb/2018100668-olwdeonpzk5y8yom7ygvneg3870hqk6c8kc02se0eo.jpg",
        "description": "Telli Garh is a scenic spot identified for a tourist complex, featuring picturesque surroundings and natural charm. | टेल्लीगढ़ एक खूबसूरत स्थल है जिसे पर्यटन परिसर के लिए चुना गया है, यहाँ की प्राकृतिक सुंदरता अत्यंत आकर्षक है।"
      },
      {
        "name": "Jai Valley (जै वैली)",
        "image": "https://cdn.s3waas.gov.in/s3dc6a70712a252123c40d2adba6a11d84/uploads/bfi_thumb/2018071253-olwdenpvsq4nxcpzdg292wommt54iv2lwfoilifekw.jpg",
        "description": "Jai Valley, located 32 km northeast of Bhaderwah, is an evergreen valley known for its breathtaking greenery and fresh atmosphere. | भद्रवाह से 32 किमी उत्तर-पूर्व में स्थित जै वैली सदाबहार हरियाली और ताज़गी भरे वातावरण के लिए जानी जाती है।"
      }
    ],

    "Kishtwar (किश्तवार)": [
      {
        "name": "Chowgan (चौगान)",
        "image": "https://cdn.s3waas.gov.in/s317d63b1625c816c22647a73e1482372b/uploads/bfi_thumb/2018032792-olw717c7go0ts60n89guet5u8o3his5h0qlh5un5hs.jpg",
        "description": "Chowgan is a vast playground and grazing field located in the heart of Kishtwar town, serving as a central hub for social and cultural activities. | चौगान किश्तवाड़ के बीचों-बीच स्थित विशाल मैदान है, जो खेल, सामाजिक और सांस्कृतिक गतिविधियों का मुख्य केंद्र है।"
      },
      {
        "name": "Machail Mata (मचैल माता)",
        "image": "https://cdn.s3waas.gov.in/s317d63b1625c816c22647a73e1482372b/uploads/bfi_thumb/2018032889-olw70yvnr5p8vocxlnt7adaow796li7vzkq3uczp1s.jpg",
        "description": "Machail Mata temple, located in Machail village, is a famous Himalayan pilgrimage visited by thousands of devotees every year. | मचैल गाँव में स्थित मचैल माता मंदिर एक प्रसिद्ध हिमालयी तीर्थ है जहाँ हर वर्ष हज़ारों श्रद्धालु दर्शन करने आते हैं।"
      },
      {
        "name": "Kishtwar National Park (किश्तवाड़ राष्ट्रीय उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s317d63b1625c816c22647a73e1482372b/uploads/bfi_thumb/2018032813-olw70yvnr5p8vocxlnt7adaow796li7vzkq3uczp1s.jpg",
        "description": "Spread over 2190 sq. km, Kishtwar High Altitude National Park is home to snow leopards, Himalayan bears, musk deer, and diverse flora. | 2190 वर्ग किमी में फैला किश्तवाड़ उच्च-ऊंचाई राष्ट्रीय उद्यान हिम तेंदुए, हिमालयी भालू, कस्तूरी मृग और विविध वनस्पतियों का घर है।"
      },
      {
        "name": "Sinthan Top (सिन्थन टॉप)",
        "image": "https://cdn.s3waas.gov.in/s317d63b1625c816c22647a73e1482372b/uploads/bfi_thumb/2018032893-olw70yvnr5p8vocxlnt7adaow796li7vzkq3uczp1s.jpg",
        "description": "Sinthan Top, located on the border of Kishtwar and Anantnag, is a scenic mountain pass known for its panoramic views and snow-covered landscapes. | किश्तवाड़-अनंतनाग सीमा पर स्थित सिन्थन टॉप एक मनोरम पहाड़ी दर्रा है, जो बर्फ से ढके नज़ारों और विस्तृत दृश्यों के लिए प्रसिद्ध है।"
      }
    ],

    "Poonch (पुंछ)": [
      {
        "name": "Chakkan da Bagh (चकन दा बाग)",
        "image": "https://cdn.s3waas.gov.in/s31905aedab9bf2477edc068a355bba31a/uploads/bfi_thumb/2018081019-olw73x3e339cmbj33petspbzm6tzzl1nnsd67e4eim.jpg",
        "description": "Chakkan da Bagh is an LOC Trade Centre located on the historic 46 km long Poonch-Rawlakote road, about 8 km south of Poonch town. | चकन दा बाग नियंत्रण रेखा पर स्थित एक व्यापार केंद्र है, जो ऐतिहासिक 46 किमी लंबे पुंछ-रावलकोट मार्ग पर, पुंछ शहर से लगभग 8 किमी दक्षिण में है।"
      },
      {
        "name": "Pir ki Gali (पीर की गली)",
        "image": "https://cdn.s3waas.gov.in/s31905aedab9bf2477edc068a355bba31a/uploads/bfi_thumb/2018081624-olw74hru9g1npqp1qycmbk44oo02oxbr2mpurh9qpq.jpg",
        "description": "Pir ki Gali, situated on the Mughal Road, is a high-altitude mountain pass offering breathtaking views of the Pir Panjal range. | मुगल रोड पर स्थित पीर की गली एक उच्च हिमालयी दर्रा है, जहाँ से पीर पंजाल पर्वत श्रृंखला के अद्भुत दृश्य दिखाई देते हैं।"
      },
      {
        "name": "Than Pir (थन पीर)",
        "image": "https://cdn.s3waas.gov.in/s31905aedab9bf2477edc068a355bba31a/uploads/bfi_thumb/2018081097-olw741sl19fs8dc9c9fyn65al46u22kbcfmllrxfni.jpg",
        "description": "Than Pir is a famous shrine located in Tehsil Mandi, 43 km northeast of Poonch town, surrounded by scenic hills. | थन पीर पुंछ शहर से 43 किमी उत्तर-पूर्व में तहसील मंडी में स्थित एक प्रसिद्ध दरगाह है, जो सुंदर पहाड़ियों से घिरी हुई है।"
      },
      {
        "name": "Loran Valley (लोरन घाटी)",
        "image": "https://cdn.s3waas.gov.in/s31905aedab9bf2477edc068a355bba31a/uploads/bfi_thumb/2018081085-olw740uqufehwrdmhr1c2odtzqbgudgl0az44hyttq.jpeg",
        "description": "Loran is a picturesque valley village located 35 km from Poonch town at the base of high mountains. | लोरन एक सुंदर घाटी गाँव है, जो पुंछ से 35 किमी दूर ऊँचे पर्वतों के तल पर बसा है।"
      },
      {
        "name": "Noori Chammb (नूरी छंब)",
        "image": "https://cdn.s3waas.gov.in/s31905aedab9bf2477edc068a355bba31a/uploads/bfi_thumb/2018081096-olw741sl19fs8dc9c9fyn65al46u22kbcfmllrxfni.jpg",
        "description": "Noori Chammb waterfall, named after Mughal Queen Noor Jahan, is famous for its natural beauty and refreshing surroundings. | मुगल रानी नूरजहाँ से जुड़ा नूरी छंब झरना अपनी प्राकृतिक सुंदरता और मनोहारी वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Nandishool Waterfall (नंदीशूल जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s31905aedab9bf2477edc068a355bba31a/uploads/bfi_thumb/2018081027-olw73y189xamxxhpy7tgd73g7kpd7a5dzx0noo30ce.jpeg",
        "description": "Nandishool is a mesmerizing waterfall located 12 km from Loran and 6 km from Sultan Pathri, known for its pristine beauty. | नंदीशूल एक आकर्षक जलप्रपात है, जो लोरन से 12 किमी और सुल्तान पथरी से 6 किमी दूर स्थित है, और अपनी स्वच्छ सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Budha Amarnath, Mandi (बुढ़ा अमरनाथ, मंडी)",
        "image": "https://cdn.s3waas.gov.in/s31905aedab9bf2477edc068a355bba31a/uploads/bfi_thumb/2018081617-olw742qf83h2jzaw6rul7nwr6i279ro1oka331w1ha.jpg",
        "description": "Budha Amarnath temple in Mandi village is a revered religious site dedicated to Lord Shiva, surrounded by grassy hills. | मंडी गाँव में स्थित बुढ़ा अमरनाथ मंदिर भगवान शिव को समर्पित एक प्रमुख धार्मिक स्थल है, जो घास से ढकी पहाड़ियों से घिरा हुआ है।"
      }
    ],

    "Rajouri (राजौरी)": [
      {
        "name": "Shahdara Sharief (शाहदरा शरीफ़)",
        "image": "https://cdn.s3waas.gov.in/s31aa48fc4880bb0c9b8a3bf979d3b917e/uploads/bfi_thumb/2018082897-olw736rwrq9bl8lbde19uvz2zefq0256863krn7fcu.jpg",
        "description": "Shahdara Sharief is the shrine of Baba Ghulam Shah Badshah (R.A.), located in the northern edge of Rajouri district, visited by devotees from all faiths. | शाहदरा शरीफ़ बाबा ग़ुलाम शाह बडशाह (र.अ.) की दरगाह है, जो राजौरी जिले के उत्तरी छोर पर स्थित है और सभी धर्मों के श्रद्धालुओं द्वारा देखी जाती है।"
      },
      {
        "name": "Doodadhari Temple (दूधाधारी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s31aa48fc4880bb0c9b8a3bf979d3b917e/uploads/bfi_thumb/2018082834-olw72xdivdwgd4yyw9z05ych1jq1v33uuvkpyvld32.jpg",
        "description": "Doodadhari Temple, also known as Doodadhari Barfani Ashram, is a famous religious site in Rajouri dedicated to spiritual learning and peace. | दूधाधारी मंदिर, जिसे दूधाधारी बर्फ़ानी आश्रम भी कहा जाता है, राजौरी में स्थित एक प्रसिद्ध धार्मिक स्थल है, जो आध्यात्मिक शिक्षा और शांति के लिए जाना जाता है।"
      },
      {
        "name": "Dhanidhar Fort (धनीधर किला)",
        "image": "https://cdn.s3waas.gov.in/s31aa48fc4880bb0c9b8a3bf979d3b917e/uploads/bfi_thumb/2018121822-olw72xdivdwgd4yyw9z05ych1jq1v33uuvkpyvld32.jpg",
        "description": "Dhanidhar Fort was built after Maharaja Ranjit Singh’s conquest of Kashmir in 1819, and it served as a key defense structure in Rajouri. | धनीधर किला 1819 में महाराजा रणजीत सिंह द्वारा कश्मीर विजय के बाद बनवाया गया था और यह राजौरी में एक प्रमुख रक्षा ढांचा रहा।"
      },
      {
        "name": "Kotranka Budhal (कोटरांका बुढ़ल)",
        "image": "https://cdn.s3waas.gov.in/s31aa48fc4880bb0c9b8a3bf979d3b917e/uploads/bfi_thumb/2018121878-olw72xdivdwgd4yyw9z05ych1jq1v33uuvkpyvld32.jpg",
        "description": "Kotranka, located 40 km from Rajouri on the right bank of the Ans River, is an attractive scenic spot surrounded by natural beauty. | कोटरांका, राजौरी से 40 किमी दूर अंस नदी के दाहिने तट पर स्थित है, जो प्राकृतिक सुंदरता से घिरा एक आकर्षक स्थल है।"
      },
      {
        "name": "Rajouri Jama Masjid (राजौरी जामा मस्जिद)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnBJVP5d8C6EaLquYzkU4rwEaNwz56PmRvxQ&s",
        "description": "The Jama Masjid in Rajouri is an important religious and historical mosque reflecting the region’s cultural heritage. | राजौरी की जामा मस्जिद एक प्रमुख धार्मिक और ऐतिहासिक स्थल है, जो क्षेत्र की सांस्कृतिक धरोहर को दर्शाती है।"
      },
      {
        "name": "Rajouri Shiv Mandir (राजौरी शिव मंदिर)",
        "image": "https://c8.alamy.com/comp/KXWTG0/dehradun-india-november-07-2015-tapkeshwar-mahadev-temple-in-dehradun-KXWTG0.jpg",
        "description": "The Shiv Mandir in Rajouri is a revered temple dedicated to Lord Shiva, attracting devotees throughout the year. | राजौरी का शिव मंदिर भगवान शिव को समर्पित एक पूजनीय मंदिर है, जहाँ पूरे वर्ष श्रद्धालु आते हैं।"
      }
    ],

    "Srinagar (श्रीनगर)": [
      {
        "name": "Chashma Shahi (चश्मा शाही)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018030395-olwdmmemkujtl4lzlno8vz6fes0eytsu9gkt3o4iv2.jpg",
        "description": "Chashma Shahi or ‘Royal Spring’ is one of the Mughal gardens in Srinagar, famous for its natural spring, terraced lawns, and floral beauty. | चश्मा शाही श्रीनगर का एक मुगल गार्डन है, जो अपने प्राकृतिक झरने, सीढ़ीनुमा लॉन और फूलों की खूबसूरती के लिए प्रसिद्ध है।"
      },
      {
        "name": "Badamwari (बादामवारी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO27Asj84UG-80Rkh-y4dsmuvBvRFPHE1l9w&s",
        "description": "Badamwari is a historic almond garden in Srinagar, famous for the early bloom of almond flowers during spring. | बादामवारी श्रीनगर का ऐतिहासिक बाग है, जो वसंत ऋतु में बादाम के फूलों की शुरुआती खिलावट के लिए प्रसिद्ध है।"
      },
      {
        "name": "Nigeen Lake (निगीन झील)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018032933-olwdmoaayime8cj9aohi0ypcljr5e80axpvs281qim.jpg",
        "description": "Nigeen Lake is a tranquil, mildly eutrophic lake in Srinagar, popular for shikara rides and houseboats. | निगीन झील श्रीनगर की शांत झील है, जो शिकारा सवारी और हाउसबोट्स के लिए मशहूर है।"
      },
      {
        "name": "Dal Lake (डल झील)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018032917-olwdmncgrol3wqkmg62vggxw05vs6iwkll8aky34ou.jpg",
        "description": "Dal Lake, often called the Jewel of Srinagar, is known for its houseboats, floating markets, and breathtaking views of the Himalayas. | डल झील, जिसे श्रीनगर का गहना कहा जाता है, हाउसबोट्स, तैरते बाज़ार और हिमालयी नज़ारों के लिए मशहूर है।"
      },
      {
        "name": "Hari Parbat Fort (हारी पर्वत किला)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018032935-olwdmoaayime8cj9aohi0ypcljr5e80axpvs281qim.jpg",
        "description": "Hari Parbat Fort, overlooking Dal Lake, is a historic and religious site offering panoramic views of Srinagar. | हारी पर्वत किला डल झील के पास स्थित एक ऐतिहासिक और धार्मिक स्थल है, जहाँ से श्रीनगर का मनोरम दृश्य दिखाई देता है।"
      },
      {
        "name": "Dachigam National Park (डाचीगाम राष्ट्रीय उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018032965-olwdmoaayime8cj9aohi0ypcljr5e80axpvs281qim.jpg",
        "description": "Dachigam National Park, 22 km from Srinagar, is famous for the Hangul deer and diverse wildlife. | डाचीगाम राष्ट्रीय उद्यान, श्रीनगर से 22 किमी दूर स्थित है और हंगुल हिरण व विविध वन्यजीवों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Harwan Garden (हरवन गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBrCXR363wz1AcoyewxgPfMA-JfIv5-sBrOQ&s",
        "description": "Harwan Garden is a large scenic spot with a canal flowing through it, located 19 km from Srinagar. | हरवन गार्डन एक सुंदर स्थल है, जिसमें नहर बहती है और यह श्रीनगर से 19 किमी दूर स्थित है।"
      },
      {
        "name": "Tulip Garden (ट्यूलिप गार्डन)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018032942-olwdmoaayime8cj9aohi0ypcljr5e80axpvs281qim.jpg",
        "description": "Indira Gandhi Memorial Tulip Garden in Srinagar is Asia’s largest tulip garden, spread across vast terraces with vibrant blooms. | इंदिरा गांधी मेमोरियल ट्यूलिप गार्डन एशिया का सबसे बड़ा ट्यूलिप गार्डन है, जहाँ रंग-बिरंगे फूल खिलते हैं।"
      },
      {
        "name": "Botanical Garden (बोटैनिकल गार्डन)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018032972-olwdmoaayime8cj9aohi0ypcljr5e80axpvs281qim.jpg",
        "description": "Botanical Garden, established in 1969 near Dal Lake, houses a wide variety of flora including rare plants. | बोटैनिकल गार्डन, 1969 में डल झील के पास स्थापित हुआ था और यहाँ अनेक प्रकार के दुर्लभ पौधे पाए जाते हैं।"
      },
      {
        "name": "Pari Mahal (परी महल)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018032918-olwdmncgrol3wqkmg62vggxw05vs6iwkll8aky34ou.jpg",
        "description": "Pari Mahal, also called the Angels’ Abode, is a seven-terraced garden on Zabarwan Hills overlooking Dal Lake. | परी महल, जिसे 'फ़रिश्तों का निवास' कहा जाता है, ज़बरवान पहाड़ियों पर स्थित सात-स्तरीय बाग है जो डल झील को देखता है।"
      },
      {
        "name": "Nishat Bagh (निशात बाग़)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018030370-olwdmin9tieoaorg7m1qm04l18iy41dwwxyv6ka3jy.jpg",
        "description": "Nishat Bagh, located on the eastern side of Dal Lake, is a terraced Mughal garden known for its scenic beauty and historic charm. | निशात बाग़ डल झील के पूर्वी किनारे पर स्थित एक मुगल गार्डन है, जो अपनी प्राकृतिक सुंदरता और ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Shalimar Garden (शालीमार बाग़)",
        "image": "https://cdn.s3waas.gov.in/s3f4b9ec30ad9f68f89b29639786cb62ef/uploads/bfi_thumb/2018030335-olwdmmemkujtl4lzlno8vz6fes0eytsu9gkt3o4iv2.jpg",
        "description": "Shalimar Garden, built by Emperor Jahangir, is a famous Mughal garden in Srinagar connected to Dal Lake, symbolizing Persian-style landscaping. | शालीमार बाग़, जिसे बादशाह जहांगीर ने बनवाया था, श्रीनगर का प्रसिद्ध मुगल गार्डन है जो डल झील से जुड़ा हुआ है और फारसी शैली की बागवानी का प्रतीक है।"
      }
    ],

    "Ganderbal (गांदरबल)": [
      {
        "name": "Sonamarg (सोनमर्ग)",
        "image": "https://cdn.s3waas.gov.in/s3192fc044e74dffea144f9ac5dc9f3395/uploads/bfi_thumb/2018121165-1-olw76k139cvb6xp6pcg5ajdjm3u2l0ijou97oc7n26.jpg",
        "description": "Sonamarg, meaning ‘meadow of gold’, is surrounded by snowy mountains with the Sindh River meandering along. | सोनमर्ग, जिसका अर्थ है 'सोने का घास का मैदान', बर्फ से ढके पहाड़ों और बहती सिंध नदी की वजह से प्रसिद्ध है।"
      },
      {
        "name": "Mansbal Lake (मानसबाल झील)",
        "image": "https://cdn.s3waas.gov.in/s3192fc044e74dffea144f9ac5dc9f3395/uploads/bfi_thumb/2018101656-olw76g9qi0q5whunbatn0kbp8kclq83mcbn9r8d7r2.jpg",
        "description": "Manasbal Lake, the deepest lake in Kashmir, is located in Ganderbal district and is known for lotus flowers in summer. | मानसबाल झील कश्मीर की सबसे गहरी झील है, जो गंदेरबल ज़िले में स्थित है और गर्मियों में खिले हुए कमल के फूलों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Thajiwas Glacier (थाजिवास ग्लेशियर)",
        "image": "https://cdn.s3waas.gov.in/s3192fc044e74dffea144f9ac5dc9f3395/uploads/bfi_thumb/2018112034-olw7633zuc85dydrg54v1nn8x65gqgndmiih1cwq66.jpg",
        "description": "Thajiwas Glacier at 9,186 feet offers a stunning view of silvery ice against green meadows and blue sky. | थाजिवास ग्लेशियर 9,186 फीट की ऊँचाई पर स्थित है और हरे मैदानों व नीले आसमान के बीच बर्फीली सुंदरता का अद्भुत दृश्य प्रस्तुत करता है।"
      },
      {
        "name": "Gadsar Lake (गडसर झील)",
        "image": "https://cdn.s3waas.gov.in/s3192fc044e74dffea144f9ac5dc9f3395/uploads/bfi_thumb/2018112050-olw7633zuc85dydrg54v1nn8x65gqgndmiih1cwq66.jpg",
        "description": "Gadsar Lake, near Sonamarg, is a serene high-altitude lake offering solitude and trekking opportunities. | गडसर झील सोनमर्ग के पास एक शांत उच्च-ऊंचाई वाली झील है जो ट्रेकिंग और सुकून के लिए जानी जाती है।"
      },
      {
        "name": "Nilagrad (निलाग्रद)",
        "image": "https://cdn.s3waas.gov.in/s3192fc044e74dffea144f9ac5dc9f3395/uploads/bfi_thumb/2018112089-olw7633zuc85dydrg54v1nn8x65gqgndmiih1cwq66.jpg",
        "description": "Nilagrad is where a red-colored stream meets the Indus River, considered sacred by locals. | निलाग्रद वह जगह है जहाँ लाल रंग की धारा सिंधु नदी से मिलती है और इसे स्थानीय लोग पवित्र मानते हैं।"
      },
      {
        "name": "Kheer Bhawani Temple (क्षीर भवानी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3192fc044e74dffea144f9ac5dc9f3395/uploads/bfi_thumb/2018112035-olw7633zuc85dydrg54v1nn8x65gqgndmiih1cwq66.jpg",
        "description": "The Kheer Bhawani Temple, dedicated to Goddess Ragnya Devi, is located amidst a natural spring in Ganderbal. | क्षीर भवानी मंदिर, जो देवी रग्न्या देवी को समर्पित है, गंदेरबल ज़िले में एक प्राकृतिक झरने के बीच स्थित है।"
      }
    ],

    "Budgam (बडगाम)": [
      {
        "name": "Doodhpathri (दूधपतरी)",
        "image": "https://cdn.s3waas.gov.in/s31141938ba2c2b13f5505d7c424ebae5f/uploads/bfi_thumb/2021040768-p5cpy0j353m9jb9mxcb9rg4u3rh798932tzdi9wryi.jpg",
        "description": "Doodhpathri, meaning 'Valley of Milk,' is a scenic hill station in Budgam surrounded by lush meadows and pine trees. | दूधपतरी, जिसका अर्थ है 'दूध की घाटी', बडगाम में स्थित एक खूबसूरत हिल स्टेशन है जो हरे-भरे मैदानों और देवदार के पेड़ों से घिरा हुआ है।"
      },
      {
        "name": "Yusmarg (युसमर्ग)",
        "image": "https://cdn.s3waas.gov.in/s31141938ba2c2b13f5505d7c424ebae5f/uploads/bfi_thumb/2021040765-p5d2d4fe03oc1xtg4lupsme2dvqkm78ojt9zgiz896.jpg",
        "description": "Yusmarg, often called 'Meadow of Jesus,' is a peaceful spot in Budgam ideal for picnics, trekking, and nature walks. | युसमर्ग, जिसे 'यीशु का मैदान' भी कहा जाता है, बडगाम का शांत स्थल है जो पिकनिक, ट्रैकिंग और प्राकृतिक सैर के लिए मशहूर है।"
      },
      {
        "name": "Tosamaidan (तोसामैदान)",
        "image": "https://cdn.s3waas.gov.in/s31141938ba2c2b13f5505d7c424ebae5f/uploads/bfi_thumb/2018091452-olw78gnkfr620m97ti5mdod10unoec6jpygy6d2qa2.jpg",
        "description": "Tosamaidan is a vast meadow in Khag tehsil of Budgam, known for its lush pastures and panoramic mountain views. | तोसामैदान, खग तहसील (बडगाम) का विशाल मैदान है, जो हरी-भरी घासभूमि और पहाड़ों के मनोरम दृश्यों के लिए प्रसिद्ध है।"
      }
    ],

    "Baramulla (बारामुला)": [
      {
        "name": "Parihaspora (परीहासपुरा)",
        "image": "https://cdn.s3waas.gov.in/s3884d247c6f65a96a7da4d1105d584ddd/uploads/bfi_thumb/2018051676-olwa2x20xqgg8yenmzocb2rglsrfxutq7alrgwsmc8.jpg",
        "description": "Parihaspora is an ancient town 26 km from Srinagar, known for its historical ruins built by King Lalitaditya. | परिहासपुरा, श्रीनगर से 26 किमी दूर एक प्राचीन नगर है, जो राजा ललितादित्य द्वारा निर्मित ऐतिहासिक खंडहरों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Gulmarg (गुलमर्ग)",
        "image": "https://cdn.s3waas.gov.in/s3884d247c6f65a96a7da4d1105d584ddd/uploads/bfi_thumb/2018051691-olwa2x20xqgg8yenmzocb2rglsrfxutq7alrgwsmc8.jpg",
        "description": "Gulmarg, meaning 'Meadow of Flowers,' is a famous hill station ideal for skiing, gondola rides, and natural beauty. | गुलमर्ग, जिसका अर्थ है 'फूलों का मैदान', एक प्रसिद्ध हिल स्टेशन है जो स्कीइंग, गोंडोला राइड और प्राकृतिक सुंदरता के लिए मशहूर है।"
      },
      {
        "name": "Ziyarat Baba Reshi (ज़ियारत बाबा रेशी)",
        "image": "https://cdn.s3waas.gov.in/s3884d247c6f65a96a7da4d1105d584ddd/uploads/bfi_thumb/2018051640-olwa2mpsuk2ap8tobd7g1nde2k6el6oohvff6v7y8o.jpg",
        "description": "The shrine of Baba Reshi, located 13 km from Gulmarg, is a spiritual site attracting pilgrims and tourists alike. | बाबा रेशी की दरगाह, गुलमर्ग से 13 किमी दूर स्थित एक धार्मिक स्थल है, जो श्रद्धालुओं और पर्यटकों को आकर्षित करती है।"
      },
      {
        "name": "Wular Lake (वुलर झील)",
        "image": "https://cdn.s3waas.gov.in/s3884d247c6f65a96a7da4d1105d584ddd/uploads/bfi_thumb/2018051610-olwa2mpsuk2ap8tobd7g1nde2k6el6oohvff6v7y8o.jpg",
        "description": "Wular Lake, Asia’s second-largest freshwater lake, lies at the foothills of the Haramuk Mountain. | वुलर झील, एशिया की दूसरी सबसे बड़ी मीठे पानी की झील है, जो हरमुक पर्वत की तलहटी में स्थित है।"
      }
    ],

    "Kupwara (कुपवाड़ा)": [
      {
        "name": "Seemab Valley (सीमाब वैली)",
        "image": "https://cdn.s3waas.gov.in/s302a32ad2669e6fe298e607fe7cc0e1a0/uploads/bfi_thumb/2018120419-olw69zwdr8vayn6ef5twafs6qdmwcsjxklm2yxnxfm.jpg",
        "description": "Seemab Valley, about 4 km from the tourist reception centre Kupwara, is the entrance to Lolab Valley and a serene spot for visitors. | सीमाब वैली, पर्यटक स्वागत केंद्र कुपवाड़ा से लगभग 4 किमी दूर, लोलाब घाटी के प्रवेश द्वार पर स्थित एक शांत और खूबसूरत जगह है।"
      },
      {
        "name": "Lolab Valley (लोलाब घाटी)",
        "image": "https://cdn.s3waas.gov.in/s302a32ad2669e6fe298e607fe7cc0e1a0/uploads/bfi_thumb/2018111598-olw69y0pdksqbf94q50n5g99jlw5xecgwcb40dqps2.jpg",
        "description": "Lolab Valley, named after Maharaja Lolo, stretches nearly 25 km and is known for its lush green forests and pastures. | लोलाब घाटी, जिसका नाम महाराजा लोला के नाम पर पड़ा, लगभग 25 किमी तक फैली हुई है और अपने हरे-भरे जंगलों व चारागाहों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Bangus Valley (बंगस घाटी)",
        "image": "https://cdn.s3waas.gov.in/s302a32ad2669e6fe298e607fe7cc0e1a0/uploads/bfi_thumb/2018110659-olw69qhzuwifqjk1y1rmli5ksix87tim7b38661v5u.jpg",
        "description": "Bangus Valley is a lesser-known yet stunning destination in Kashmir with vast meadows and untapped tourism potential. | बंगस घाटी कश्मीर का अपेक्षाकृत कम-ज्ञात लेकिन बेहद खूबसूरत स्थान है, जो अपने विशाल घास के मैदानों और अनछुए पर्यटन अवसरों के लिए जानी जाती है।"
      },
      {
        "name": "Sadhna Pass (साधना दर्रा)",
        "image": "https://cdn.s3waas.gov.in/s302a32ad2669e6fe298e607fe7cc0e1a0/uploads/bfi_thumb/2018111342-olw69yyjkeu0n17rknf9py0q4zrj53g78gylhnpblu.jpg",
        "description": "Sadhna Pass connects Karnah tehsil with the rest of Kupwara district, offering breathtaking winter views in the Himalayas. | साधना दर्रा, कर्नाह तहसील को कुपवाड़ा जिले से जोड़ता है और हिमालय में सर्दियों के दौरान अद्भुत दृश्य प्रस्तुत करता है।"
      }
    ],

    "Bandipora (बांदीपोरा)": [
      {
        "name": "Gurez Valley (गुरेज़ घाटी)",
        "image": "https://cdn.s3waas.gov.in/s3918317b57931b6b7a7d29490fe5ec9f9/uploads/bfi_thumb/2024053155-qoyfzvikek2weu5yychzey16g1w6zs19jwx1zwqio0.jpg",
        "description": "Gurez Valley, also known as Gurais, is a remote valley in the Himalayas at about 2,400m altitude, 86 km from Bandipora. It is famous for its natural beauty and adventure tourism. | गुरेज़ घाटी, जिसे गुरैस भी कहा जाता है, हिमालय में समुद्र तल से लगभग 2,400 मीटर की ऊँचाई पर स्थित है। यह बांदीपोरा से 86 किमी दूर है और अपनी प्राकृतिक सुंदरता व रोमांचक पर्यटन के लिए प्रसिद्ध है।"
      },
      {
        "name": "Wular Lake (वुलर झील)",
        "image": "https://cdn.s3waas.gov.in/s3918317b57931b6b7a7d29490fe5ec9f9/uploads/bfi_thumb/2018080956-olwab70vvemsczqfx0jynlxrghs45nyodo0uoq4em8.jpg",
        "description": "Wular Lake, one of Asia’s largest freshwater lakes, is located in Bandipora and is fed by the Jhelum River. Its size varies between 30 to 260 sq km. | वुलर झील, एशिया की सबसे बड़ी मीठे पानी की झीलों में से एक है, जो बांदीपोरा में स्थित है और झेलम नदी से पोषित होती है। इसका आकार 30 से 260 वर्ग किलोमीटर तक बदलता रहता है।"
      },
      {
        "name": "Nishat Park (निशात पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3918317b57931b6b7a7d29490fe5ec9f9/uploads/bfi_thumb/2018080958-olwab70vvemsczqfx0jynlxrghs45nyodo0uoq4em8.jpg",
        "description": "Nishat Park in Bandipora, built in 1954, was inspired by the Mughal Nishat Garden of Srinagar and serves as a peaceful green space on the outskirts of the town. | बांदीपोरा का निशात पार्क 1954 में बनाया गया था और यह श्रीनगर के प्रसिद्ध मुगल निशात गार्डन से प्रेरित है। यह शहर के बाहरी क्षेत्र में एक शांत हरियाली से भरी जगह है।"
      },
      {
        "name": "Chota Amarnath (छोटा अमरनाथ)",
        "image": "https://cdn.s3waas.gov.in/s3918317b57931b6b7a7d29490fe5ec9f9/uploads/bfi_thumb/2018080985-olwab70vvemsczqfx0jynlxrghs45nyodo0uoq4em8.jpg",
        "description": "Chota Amarnath, a sacred cave in the dense forests of Arin, is visited by pilgrims during Sharvan Purnima. Inside, carvings related to Lord Shiva can be seen. | छोटा अमरनाथ, अरिन के घने जंगलों में स्थित एक पवित्र गुफा है। श्रद्धालु यहाँ श्रावण पूर्णिमा के दिन जाते हैं, जहाँ भगवान शिव से संबंधित प्राकृतिक आकृतियाँ देखी जाती हैं।"
      }
    ],

    "Pulwama (पुलवामा)": [
      {
        "name": "Aharbal Waterfall (अहरबल जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/cd/6d/d2/aharbal-waterfall.jpg?w=1200&h=1200&s=1",
        "description": "Situated on the River Vishav, Aharbal is a majestic waterfall in Pulwama with scenic pine forests around. It is often called the 'Niagara of Kashmir'. | पुलवामा जिले में विशव नदी पर स्थित अहरबल जलप्रपात को 'कश्मीर का नियाग्रा' कहा जाता है। यह देवदार के जंगलों से घिरा हुआ है।"
      },
      {
        "name": "Tarsar and Marsar Lakes (तर्शार और मरशार झील)",
        "image": "https://cdn.s3waas.gov.in/s3c75b6f114c23a4d7ea11331e7c00e73c/uploads/bfi_thumb/2018051961-olwcfsvkk1mdys4uvzdstwhb8ha9imwn579sipb05m.png",
        "description": "These twin alpine lakes are located near the village of Nagberan in Pulwama. They are popular trekking destinations and are associated with Kashmiri folklore. | पुलवामा जिले में नागबेरन गाँव के पास स्थित ये जुड़वां झीलें प्रसिद्ध ट्रेकिंग स्थल हैं और कश्मीरी लोककथाओं से जुड़ी हुई हैं।"
      },
      {
        "name": "Kungwattan (कुंगवट्टन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEUYDghckxqhPnbNJzPKMjVTYNZNpOTDW3fLL8YTL_JOkOsRWUifC5COjUORfaZ9uyiAs&usqp=CAU",
        "description": "Kungwattan is a serene meadow at an altitude of about 8,400 ft, located 8 km from Aharbal. It is known for its untouched natural beauty. | कुंगवट्टन समुद्र तल से लगभग 8,400 फीट की ऊँचाई पर स्थित एक खूबसूरत घास का मैदान है, जो अहरबल से 8 किमी दूर है।"
      },
      {
        "name": "Kounsarnag Lake (कौंसरनाग झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxcB3rnVOxd5vZUsxzjQlT_rJKmC7uOMAd2Q&s",
        "description": "Kounsarnag is a high-altitude lake in the Pir Panjal mountains at 4000m. The Vishav River originates from this lake. | कौंसरनाग झील समुद्र तल से 4000 मीटर ऊँचाई पर पीर पंजाल पहाड़ियों में स्थित है। झेलम की सहायक विशव नदी का उद्गम यही से होता है।"
      },
      {
        "name": "Avantishwar Temple (अवंतिश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/49/7d/df/the-ruined-temple.jpg?w=1200&h=1200&s=1",
        "description": "Built in the 9th century AD by Raja Avanti Varma, this temple is located in Jawbrari village of Pulwama and is dedicated to Lord Vishnu and Shiva. | 9वीं शताब्दी में राजा अवंती वर्मा द्वारा निर्मित यह मंदिर पुलवामा के जव्ब्रारी गाँव में स्थित है और भगवान विष्णु तथा शिव को समर्पित है।"
      },
      {
        "name": "Payer Temple (पायर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/99/20/4f/payer-temple.jpg?w=800&h=400&s=1",
        "description": "Located 3 km south of Pulwama town, this ancient temple is one of the important religious attractions of the district. | पुलवामा शहर से 3 किमी दक्षिण में स्थित यह प्राचीन मंदिर जिले के प्रमुख धार्मिक स्थलों में से एक है।"
      },
      {
        "name": "Shopping (सफरन / केसर की खरीदारी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFyEG0Pd2VeQZpue3ulaZDi-6NlDli3h_cWQ&s",
        "description": "Pulwama is famous for saffron cultivation. Tourists can buy high quality Kashmiri saffron here. | पुलवामा केसर की खेती के लिए प्रसिद्ध है। यहाँ पर्यटक उच्च गुणवत्ता वाला कश्मीरी केसर खरीद सकते हैं।"
      }
    ],

    "Shopian (शोपियां)": [
      {
        "name": "Peer Ki Gali (पीर की गली)",
        "image": "https://cdn.s3waas.gov.in/s3d34ab169b70c9dcd35e62896010cd9ff/uploads/bfi_thumb/2020080671-otkas2fvdjl8r0d3ms56pp88mer7qnadhljiojxpfm.jpg",
        "description": "The Pir Panjal Pass, also known as Peer Ki Gali, is a famous mountain pass located in the Pir Panjal Range. It is a scenic destination on the historic Mughal Road. | पीर पंजाल दर्रा, जिसे पीर की गली कहा जाता है, शोपियां जिले में मुगल रोड पर स्थित एक सुंदर और ऐतिहासिक स्थल है।"
      },
      {
        "name": "Aharbal Waterfall (अहरबल जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3d34ab169b70c9dcd35e62896010cd9ff/uploads/bfi_thumb/2020080674-e1596707459275-otka14efgipbxfi4z4u78i0jkrkf30bds8afezvzsy.jpg",
        "description": "Also called the 'Niagara Falls of Kashmir', Aharbal Waterfall is a popular natural attraction in Shopian district surrounded by pine forests. | अहरबल जलप्रपात को 'कश्मीर का नियाग्रा' कहा जाता है। यह शोपियां जिले का प्रमुख प्राकृतिक स्थल है और देवदार के जंगलों से घिरा हुआ है।"
      },
      {
        "name": "Mughal Road (मुगल रोड)",
        "image": "https://cdn.s3waas.gov.in/s3d34ab169b70c9dcd35e62896010cd9ff/uploads/bfi_thumb/2018120747-olwcfqzo36fjyv2ijikd0z9zvun9a5w9268vtyvbia.jpg",
        "description": "The Mughal Road is a historic route that connected Kashmir with the rest of India during the Mughal era. Today it is an important highway and a scenic drive through the Pir Panjal mountains. | मुगल रोड ऐतिहासिक मार्ग है जो मुग़ल काल में कश्मीर को भारत के अन्य हिस्सों से जोड़ता था। आज यह शोपियां जिले से होकर जाने वाला एक महत्वपूर्ण राजमार्ग और सुंदर मार्ग है।"
      },
      {
        "name": "Kousarnag Lake (कौंसरनाग झील)",
        "image": "https://cdn.s3waas.gov.in/s3d34ab169b70c9dcd35e62896010cd9ff/uploads/bfi_thumb/2018120772-olwcfo65iobp016lzzchbhzm3p15n2l21safe4zi0y.jpg",
        "description": "Located at an altitude of about 4000m in the Pir Panjal mountains, Kousarnag is a high-altitude glacial lake known for its crystal-clear waters. | समुद्र तल से लगभग 4000 मीटर की ऊँचाई पर स्थित कौंसरनाग झील शोपियां जिले का एक हिमनदीय झील है, जो अपनी स्वच्छ जलधारा के लिए प्रसिद्ध है।"
      }
    ],

    "Anantnag (अनंतनाग)": [
      {
        "name": "Lidderwat Trek (लिद्दरवाट ट्रेक)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2025012276-1-r0djcb5u37djq0kty8z48siws9mso37amch4cxyg9e.jpg",
        "description": "The Lidderwat Valley is an extension between the Kolahoi and Tarsar Ranges and serves as a base camp for the Kolahoi glacier. | लिद्दरवाट घाटी कोलहोई और तर्सार श्रृंखलाओं के बीच फैली हुई है और कोलहोई ग्लेशियर के लिए बेस कैंप का काम करती है।"
      },
      {
        "name": "Tulian Lake (तुलियन झील)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2025012242-1-scaled-r0dj7aotn0ihsvuz82yqy22eqacbm7atxj7w7te1g2.jpg",
        "description": "Tulian Lake is a high-altitude glacial lake near Pahalgam, known for its pristine beauty. | तुलियन झील पहलगाम के पास स्थित एक उच्च ऊंचाई वाली हिमनदीय झील है, जो अपनी स्वच्छ सुंदरता के लिए जानी जाती है।"
      },
      {
        "name": "Katarnag Lake (कटारनाग झील)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2025012248-1-r0dj0pthsri8j5f1n8krhpu916rtqh6h0ytja35902.jpg",
        "description": "Katarnag Lake is a serene high-altitude lake located in the Aru Valley. | कटारनाग झील अरु घाटी में स्थित एक शांत उच्च ऊंचाई वाली झील है।"
      },
      {
        "name": "Ziarat Baba Hyder Reshi Shrine (जियारत बाबा हैदर रेशी दरगाह)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2025012248-r0di7e8qltd8d20bv2aq7m7lxhammdrwnu79ccmd3m.jpg",
        "description": "Also known as Harda Reshi, this shrine is dedicated to saint Hyder Reshi in Anantnag. | हर्दा रेशी के नाम से प्रसिद्ध यह दरगाह अनंतनाग के संत हैदर रेशी को समर्पित है।"
      },
      {
        "name": "Ziarat Hazrat Zain-ud-Din Wali (जियारत हज़रत ज़ैन-उद-दीन वली, ऐशमुखाम)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2025012276-r0dhwwdmaezypt975iypd9kb4l12o23t7vy2f46mky.jpg",
        "description": "This shrine of Hazrat Zain-ud-Din Wali is located about 20 km from Pahalgam, on a hillock. | हज़रत ज़ैन-उद-दीन वली की यह दरगाह पहलगाम से लगभग 20 किमी दूर एक पहाड़ी पर स्थित है।"
      },
      {
        "name": "Martand Sun Temple (मार्तंड सूर्य मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2025012259-r0dhibvocv1yref2888vpxx3nku9cy9l7rx4mpsb0y.jpg",
        "description": "A spectacular ancient temple dedicated to Surya (the Sun God), located near Anantnag. | यह भव्य प्राचीन मंदिर सूर्य देव को समर्पित है और अनंतनाग के पास स्थित है।"
      },
      {
        "name": "Verinag (वेरीनाग)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2018112295-olw7yq8z0hiz1ec3bd0njjqz4f2nvbai7iilizif2q.jpg",
        "description": "Famous for its beautiful spring with deep blue waters, Verinag lies on the road to Jammu. | अपनी गहरी नीली जलधारा वाले सुंदर झरने के लिए प्रसिद्ध वेरीनाग जम्मू मार्ग पर स्थित है।"
      },
      {
        "name": "Achabal (अछबल)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2018112215-olw7x9m0driwz8gjuq9jnx15uua3w9hjc9zenhogr6.jpg",
        "description": "Achabal is a beautiful spring that gushes out from the Sonsanwar Hill, known for its Mughal gardens. | अछबल एक सुंदर झरना है जो सोंसनवार पहाड़ी से निकलता है और अपने मुगल बागों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kokernag (कोकरनाग)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2018112275-olw7yq8z0hiz1ec3bd0njjqz4f2nvbai7iilizif2q.jpg",
        "description": "A famous health resort, Kokernag is known for its pure spring waters and scenic beauty. | कोकरनाग एक प्रसिद्ध स्वास्थ्य स्थल है, जो अपने शुद्ध जलस्रोत और प्राकृतिक सुंदरता के लिए जाना जाता है।"
      },
      {
        "name": "Pahalgam (पहलगाम)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2018112210-olw7ynfgfzf42kg6rtsru2glc9gk87zb74k535mlle.jpg",
        "description": "One of the most popular resorts of Kashmir, Pahalgam is famous for its meadows and valleys. | कश्मीर का प्रसिद्ध स्वास्थ्य स्थल, पहलगाम अपनी घाटियों और घास के मैदानों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Shri Amarnath Ji (श्री अमरनाथ जी)",
        "image": "https://cdn.s3waas.gov.in/s330ef30b64204a3088a26bc2e6ecf7602/uploads/bfi_thumb/2018112234-olw7yodamtgee6etmc7eek81xnbxfx31j97mkfl7f6.jpg",
        "description": "The holy Amarnath cave shrine is one of the most important pilgrimage sites for Hindus. | पवित्र अमरनाथ गुफा हिंदुओं के प्रमुख तीर्थ स्थलों में से एक है।"
      }
    ],

    "Kulgam (कुलगाम)": [
      {
        "name": "Aharbal Waterfall (अहरबल जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3dbe272bab69f8e13f14b405e038deb64/uploads/bfi_thumb/2018051541-olwcp94x6vfxcx9j1mgk8kxs43sv3zmjp7pmios0le.jpg",
        "description": "Known as the Niagara Falls of Kashmir, Aharbal is a spectacular waterfall on the Veshu River. | कश्मीर का 'नियाग्रा फॉल्स' कहलाने वाला अहरबल, विषु नदी पर स्थित एक शानदार जलप्रपात है।"
      },
      {
        "name": "Kausarnag Lake (कौसरनाग झील)",
        "image": "https://cdn.s3waas.gov.in/s3dbe272bab69f8e13f14b405e038deb64/uploads/bfi_thumb/2021041081-p5iccrze2tj1lvp3p52e081n1z1zlke3u6u34x8p36.png",
        "description": "A high-altitude glacial lake situated in the Pir Panjal range, source of the Veshu River. | पीर पंजाल पर्वतमाला में स्थित यह हिमनदीय झील विषु नदी का उद्गम स्थल है।"
      },
      {
        "name": "Chiranbal (चिरनबल)",
        "image": "https://cdn.s3waas.gov.in/s3dbe272bab69f8e13f14b405e038deb64/uploads/bfi_thumb/2021041011-p5ie43e0g27do9q4z0cogquflcz33kr6vkujwxczya.png",
        "description": "A picturesque meadow valley located near Manzgam, surrounded by forests and mountains. | मंजगाम के पास स्थित यह सुंदर घास का मैदान, जंगलों और पहाड़ों से घिरा हुआ है।"
      },
      {
        "name": "Badi Bahek (बड़ी बाहेक)",
        "image": "https://cdn.s3waas.gov.in/s3dbe272bab69f8e13f14b405e038deb64/uploads/bfi_thumb/2021041261-p5ln2pb36u7lklkxz2gxu7ocanf3oskwg5orv28z5u.png",
        "description": "A hidden scenic spot in DH Pora, famous for its greenery and alpine landscapes. | डी.एच. पोरा क्षेत्र का छुपा हुआ प्राकृतिक स्थल, हरियाली और अल्पाइन दृश्यों के लिए प्रसिद्ध।"
      },
      {
        "name": "Houen Heng Peak (हूएन हेंग चोटी)",
        "image": "https://cdn.s3waas.gov.in/s3dbe272bab69f8e13f14b405e038deb64/uploads/bfi_thumb/2021041248-p5lo8l07p3jiv4qxf66ixn7p4ozunaucvg3lmw5hxe.png",
        "description": "Also called Dog’s Horn Peak, this 4200m high mountain offers trekking adventures. | जिसे डॉग्स हॉर्न पीक भी कहते हैं, यह 4200 मीटर ऊँचा पर्वत ट्रेकिंग के लिए प्रसिद्ध है।"
      },
      {
        "name": "Panchanpathri (पंचनपठरी)",
        "image": "https://cdn.s3waas.gov.in/s3dbe272bab69f8e13f14b405e038deb64/uploads/bfi_thumb/2021041260-p5lpk0wyn2hiulu3e6fna688ht5s5c6n29gumnt5vm.png",
        "description": "A serene meadow near Sheikh ul Aalam Astaan at Chimmer, popular for picnics and nature walks. | चिम्मर में शेख-उल-आलम आस्तान के पास स्थित शांत घास का मैदान, पिकनिक और नेचर वॉक के लिए उपयुक्त।"
      },
      {
        "name": "Vasak Nag Spring (वसक नाग कुंड)",
        "image": "https://cdn.s3waas.gov.in/s3dbe272bab69f8e13f14b405e038deb64/uploads/bfi_thumb/2021041289-p5lnpc95s7776ip6scqhe00zbpuc2dg6k7aqxyonb6.png",
        "description": "A cold-water spring of historic significance located in Devsar. | देवसर में स्थित ऐतिहासिक महत्व का ठंडे पानी का झरना।"
      },
      {
        "name": "Ziyarat Sharief Sheikh Ul Aalam (RA), Chimmer (जियारत शरीफ शेख-उल-आलम, चिम्मर)",
        "image": "https://cdn.s3waas.gov.in/s3dbe272bab69f8e13f14b405e038deb64/uploads/bfi_thumb/2021041246-p5lok4gvlvc9erzg15rmjqdfp0435inpskg7r71hj6.png",
        "description": "A revered shrine dedicated to Sheikh Noor-ud-din Noorani (RA). | शेख नूर-उद-दीन नूरानी (RA) को समर्पित एक पूजनीय दरगाह।"
      },
      {
        "name": "Syed Simnania (RA) Ziyarat (जियारत सैयद सिमनानिया)",
        "image": "https://cdn.s3waas.gov.in/s3dbe272bab69f8e13f14b405e038deb64/uploads/bfi_thumb/2021041224-p5lp5l47nopyi8t4pfqyhbebzqbswpv2qspc8n7vgi.png",
        "description": "Kulgam derives its name from this Iranian saint’s shrine. | कुलगाम का नाम इसी ईरानी संत की दरगाह से पड़ा है।"
      }
    ],



  };
  @override
  Widget build(BuildContext context) {
    final allPlaces = districtPlaces[widget.districtName] ?? [];

    // ✅ Search filter
    final filteredPlaces = allPlaces
        .where((place) =>
        place["name"]!.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.districtName} Tourist Places",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      // ✅ Search box + list
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

          // ✅ Places list
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