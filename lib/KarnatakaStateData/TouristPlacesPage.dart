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

    "Bagalkot (बागलकोट)": [
      {
        "name": "Badami Caves (बादामी गुफाएँ)",
        "image": "https://cdn.s3waas.gov.in/s3a1d33d0dfec820b41b54430b50e96b5c/uploads/bfi_thumb/2018072683-olwdyf9pausp830yt3ho7m9ughxv6wl3j3sr1tp58y.jpg",
        "description": "The Badami cave temples are located in the town of Badami in the north-central part of Karnataka, India. The temples are known for their rock-cut architecture and intricate carvings. | कर्नाटक के उत्तर-मध्य भाग में स्थित बादामी की गुफा मंदिर, शिल्पकला और बारीक नक्काशी के लिए प्रसिद्ध हैं।"
      },
      {
        "name": "Aihole (ऐहोले)",
        "image": "https://cdn.s3waas.gov.in/s3a1d33d0dfec820b41b54430b50e96b5c/uploads/bfi_thumb/2018072380-olwdycg6qcou99529k9si4zgocbrjt9wipualztbrm.jpg",
        "description": "Aihole has been a part of Hindu mythologies. It has a natural axe-shaped rock on the Malaprabha river bank, known as the 'cradle of Indian architecture'. | हिंदू पौराणिक कथाओं से जुड़ा ऐहोले, मालप्रभा नदी किनारे स्थित है और इसे 'भारतीय वास्तुकला की जन्मभूमि' कहा जाता है।"
      },
      {
        "name": "Pattadakal (पट्टडकल)",
        "image": "https://cdn.s3waas.gov.in/s3a1d33d0dfec820b41b54430b50e96b5c/uploads/bfi_thumb/2019080358-olwe4rohflhdlbt6rc80jimut4o25crveibqo2ah8y.jpg",
        "description": "The Pattadakal monuments are a UNESCO World Heritage Site, known for their blend of northern and southern Indian architectural styles. | पट्टडकल के स्मारक यूनेस्को विश्व धरोहर स्थल हैं, जो उत्तर और दक्षिण भारतीय स्थापत्य शैलियों के संगम को दर्शाते हैं।"
      },
      {
        "name": "Mahakuta (महाकूट)",
        "image": "https://cdn.s3waas.gov.in/s3a1d33d0dfec820b41b54430b50e96b5c/uploads/bfi_thumb/2018072193-olwdy9mo5ukzaf95q11wsnp2w6pnwpypibvu65xiaa.jpg",
        "description": "The Mahakuta group of temples is located in Mahakuta village, Bagalkot district, and is an important site of early Chalukyan architecture. | बागलकोट जिले के महाकूट गाँव में स्थित यह प्राचीन चालुक्य स्थापत्य कला का महत्वपूर्ण केंद्र है।"
      },
      {
        "name": "Kudalasangama (कूडलसंगम)",
        "image": "https://cdn.s3waas.gov.in/s3a1d33d0dfec820b41b54430b50e96b5c/uploads/bfi_thumb/2018072355-olwdybicjinjxn6ff1v5xn802ygec4666l6t4pupxu.jpg",
        "description": "Kudalasangama is a major pilgrimage site for Lingayats, located at the confluence of the Krishna and Malaprabha rivers. | कृष्णा और मालप्रभा नदियों के संगम पर स्थित कूडलसंगम, लिंगायत समुदाय का प्रमुख तीर्थ स्थल है।"
      },
      {
        "name": "Almatti Dam (अलमट्टी बाँध)",
        "image": "https://cdn.s3waas.gov.in/s3a1d33d0dfec820b41b54430b50e96b5c/uploads/bfi_thumb/2018073048-olwdzc61y21qifp6gzpm4vyz8zfpob7pbmmquicd76.jpg",
        "description": "The Almatti Dam is a hydroelectric project on the Krishna River, serving as a major source of irrigation and power in North Karnataka. | कृष्णा नदी पर बना अलमट्टी बाँध उत्तर कर्नाटक का प्रमुख जलविद्युत एवं सिंचाई स्रोत है।"
      }
    ],

    "Ballari (बल्लारी)": [
      {
        "name": "Hampi (हम्पी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/93/e1/07/queen-s-cooled-chamber.jpg?w=1000&h=-1&s=1",
        "description": "Hampi is a UNESCO World Heritage Site known for its ancient ruins, temples, and monuments that reflect the glory of the Vijayanagara Empire. | हम्पी यूनेस्को विश्व धरोहर स्थल है, जहाँ प्राचीन खंडहर, मंदिर और स्मारक विजयनगर साम्राज्य की भव्यता को दर्शाते हैं।"
      },
      {
        "name": "Kaladham (कलाधाम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/0e/60/a8/kaladham.jpg?w=1000&h=-1&s=1",
        "description": "Kaladham is a cultural space and museum near Hampi, where visitors can experience art, exhibitions, and interactive shows related to the region's heritage. | कलाधाम हम्पी के पास एक सांस्कृतिक स्थल और संग्रहालय है, जहाँ कला, प्रदर्शनी और विरासत से जुड़े कार्यक्रम आयोजित होते हैं।"
      },
      {
        "name": "Bellary Fort (बेल्लारी किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/b4/7d/57/bellary.jpg?w=1000&h=-1&s=1",
        "description": "The Bellary Fort is a historic polygonal fort divided into Upper and Lower parts, known for its strategic architecture and citadel. | बेल्लारी का ऐतिहासिक किला ऊपरी और निचले भागों में बंटा है, जो अपनी रणनीतिक वास्तुकला और दुर्ग के लिए प्रसिद्ध है।"
      },
      {
        "name": "Mylara Lingeshwara Temple (मायलार लिंगेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/99/84/26/mylara-lingeshwara-temple.jpg?w=1000&h=-1&s=1",
        "description": "A popular religious destination dedicated to Lord Shiva, visited by families and devotees during festivals with colorful light decorations. | भगवान शिव को समर्पित यह धार्मिक स्थल त्योहारों के समय रोशनी से सजाया जाता है और बड़ी संख्या में श्रद्धालु यहाँ आते हैं।"
      },
      {
        "name": "Sri Guru Kottureshwara Temple (श्री गुरु किट्टुरेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/57/23/9c/colour-full-light-decoration.jpg?w=1000&h=800&s=1",
        "description": "A revered temple in Kottur, dedicated to Guru Kottureshwara Swamy, known for its live darshan and spiritual atmosphere. | किट्टूर में स्थित यह मंदिर गुरु किट्टुरेश्वर स्वामी को समर्पित है और अपने लाइव दर्शन एवं धार्मिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kumaraswamy Temple (कुमारस्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/70/04/76/kumaraswamy-temple.jpg?w=600&h=500&s=1",
        "description": "Located in Hampi, the Kumaraswamy Temple is an ancient shrine with significant historical and cultural importance. | हम्पी में स्थित कुमारस्वामी मंदिर एक प्राचीन तीर्थ है जिसका ऐतिहासिक और सांस्कृतिक महत्व है।"
      },
      {
        "name": "Lakshmi Narasimha Temple (लक्ष्मी नरसिंह मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/da/25/ab/photo1jpg.jpg?w=1000&h=800&s=1",
        "description": "Famous for the largest monolithic statue of Narasimha sitting on SheshaNaag, this temple is one of the iconic sites of Hampi. | हम्पी में स्थित यह मंदिर विशाल एकाश्म प्रतिमा नरसिंह की वजह से प्रसिद्ध है, जिसमें वे शेषनाग पर विराजमान हैं।"
      },
      {
        "name": "Mahanavami Dibba (महानवमी डिब्बा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/24/a6/9d/mahanavmi-dibba.jpg?w=1000&h=-1&s=1",
        "description": "An elevated platform used by Vijayanagara kings for viewing festivals and ceremonies, offering panoramic views of Hampi. | विजयनगर राजाओं द्वारा उत्सव और समारोह देखने हेतु प्रयोग किया जाने वाला विशाल मंच, जहाँ से हम्पी का विहंगम दृश्य दिखता है।"
      },
      {
        "name": "Shri Ujjaini Saddharma Peetha (श्री उज्जैनी सद्धर्म पीठ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/98/ea/18/bellary.jpg?w=1000&h=-1&s=1",
        "description": "A spiritual center and temple known for its religious importance and peaceful environment. | यह धार्मिक स्थल अपनी आध्यात्मिक महत्ता और शांत वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Royal Enclosures (रॉयल एनक्लोज़र्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1e/b9/55/92/capti_r.jpg?w=900&h=700&s=1",
        "description": "The Royal Enclosures at Hampi were once the seat of power, housing ministerial offices, meeting halls, and ceremonial structures. | हम्पी के रॉयल एनक्लोज़र्स कभी सत्ता का केंद्र थे, जहाँ मंत्री कार्यालय, सभा कक्ष और समारोह स्थल स्थित थे।"
      },
      {
        "name": "Wonder Mountain Valley Resort (वंडर माउंटेन वैली रिज़ॉर्ट)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/2c/3a/57/spectacular-views-all.jpg?w=1200&h=1200&s=1",
        "description": "An amusement and water park spread over 83 acres including an organic farm, located near Narihalla dam backwaters. | नरीहल्ला बाँध के पास 83 एकड़ में फैला यह वॉटर पार्क और रिज़ॉर्ट परिवार और पर्यटकों के लिए आकर्षण का केंद्र है।"
      },
    ],

    "Belagavi (बेलगावी)": [
      {
        "name": "Gokak Falls (गोकाक जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s382f2b308c3b01637c607ce05f52a2fed/uploads/2018/07/2018071691.jpg",
        "description": "Gokak Falls, about 60 km from Belagavi, is a horse-shoe shaped waterfall on the Ghataprabha River, dropping from 170 feet. Famous for its width and shape, it resembles Niagara in form. Best visited during monsoon. | बेलगावी से 60 किमी दूर गोकाक जलप्रपात, घाटप्रभा नदी पर स्थित है। 170 फीट ऊँचा यह झरना अपनी चौड़ाई और आकृति के लिए प्रसिद्ध है। इसका स्वरूप नियाग्रा फॉल्स जैसा माना जाता है।"
      },
      {
        "name": "Yellamma Temple (Saundatti) (येल्लम्मा मंदिर, सवदत्ती)",
        "image": "https://cdn.s3waas.gov.in/s382f2b308c3b01637c607ce05f52a2fed/uploads/2018/07/2018071643.jpg",
        "description": "Located 70 km from Belagavi, the ancient temple of Goddess Renuka (Yellamma) is built in Chalukyan and Rashtrakuta style. Pilgrims visit from Maharashtra, Goa, Andhra Pradesh and Karnataka, especially during annual Jatras. | देवी रेणुका (येल्लम्मा) का प्राचीन मंदिर सवदत्ती में स्थित है। चालुक्य और राष्ट्रकूट शैली में निर्मित यह मंदिर जत्राओं के दौरान हज़ारों श्रद्धालुओं को आकर्षित करता है।"
      },
      {
        "name": "Godachinmalki Falls (गोडचिनमल्की जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s382f2b308c3b01637c607ce05f52a2fed/uploads/2018/07/2018071635.jpg",
        "description": "Located 16 km from Gokak, Godachinmalki Falls is a two-step waterfall formed by the Markandeya River, falling first from 25 m and then from 18 m into a rocky valley. | गोकाक से 16 किमी दूर मार्कंडेय नदी पर स्थित यह झरना दो स्तरों पर गिरता है – पहले 25 मीटर और फिर 18 मीटर की ऊँचाई से।"
      },
      {
        "name": "Belagavi Fort (बेलगावी किला)",
        "image": "https://cdn.s3waas.gov.in/s382f2b308c3b01637c607ce05f52a2fed/uploads/2018/07/2018071612.jpg",
        "description": "Built in the 12th century by the Ratta rulers, Belagavi Fort has temples, mosques, and bastis coexisting. Indo-Sarcenic and Deccan architecture can be seen here. Safa Masjid inside is among the finest in the city. | 12वीं सदी में रट्टा शासकों द्वारा निर्मित बेलगावी किला हिंदू और मुस्लिम स्थापत्य का अनोखा संगम है। यहाँ गणपति और दुर्गा मंदिर के साथ-साथ सफा मस्जिद भी स्थित है।"
      },
      {
        "name": "Kamala Basti (कमल बस्ती)",
        "image": "https://cdn.s3waas.gov.in/s382f2b308c3b01637c607ce05f52a2fed/uploads/2018/07/2018071656.jpg",
        "description": "Built in 1204 in late Chalukyan style, Kamala Basti houses a black stone idol of Lord Neminatha. Its Mukhamantapa ceiling has a beautifully carved lotus. | 1204 ई. में चालुक्य शैली में बनी यह जैन बस्ती भगवान नेमिनाथ की काले पत्थर की प्रतिमा के लिए प्रसिद्ध है। छत पर कमल की नक्काशी अद्भुत है।"
      },
      {
        "name": "Navilutirtha (नवीलतीर्थ)",
        "image": "https://cdn.s3waas.gov.in/s382f2b308c3b01637c607ce05f52a2fed/uploads/2018/07/20180716100.jpg",
        "description": "About 10 km from Saundatti, Navilutirtha is a valley once full of peacocks. The Malaprabha Dam (Renukasagar) is situated here, making it a good picnic spot. | सवदत्ती से 10 किमी दूर नवीलतीर्थ अपने मोरों और मालप्रभा बाँध (रेणुकासागर) के लिए प्रसिद्ध है। यह एक लोकप्रिय पिकनिक स्थल है।"
      },
      {
        "name": "Rakaskop (राकसकोप्पा बाँध)",
        "image": "https://cdn.s3waas.gov.in/s382f2b308c3b01637c607ce05f52a2fed/uploads/2018/07/2018071624.jpg",
        "description": "Located 16 km from Belagavi, Rakaskop Dam on the Markandeya River supplies drinking water to the city. Local legends associate it with a giant (Rakkasa). | बेलगावी से 16 किमी दूर मार्कंडेय नदी पर बना यह बाँध शहर की पेयजल आपूर्ति करता है। मान्यता है कि यहाँ एक राक्षस रहता था।"
      },
      {
        "name": "Kapileshwara Temple (कपिलेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s382f2b308c3b01637c607ce05f52a2fed/uploads/2018/07/2018071661.jpg",
        "description": "Known as 'Dakshina Kashi', this ancient temple is believed to be one of the oldest in Belagavi. The self-originated Jyotirlinga makes it a must-visit during Shravan and Mahashivratri. | 'दक्षिण काशी' कहलाने वाला यह मंदिर बेलगावी का सबसे प्राचीन माना जाता है। यहाँ का स्वयंभू ज्योतिर्लिंग श्रावण और महाशिवरात्रि पर विशेष महत्व रखता है।"
      }
    ],

    "Bengaluru Urban (बेंगलुरु शहरी)": [
      {
        "name": "Cubbon Park (कब्बन पार्क)",
        "image": "https://cdn.s3waas.gov.in/s33621f1454cacf995530ea53652ddf8fb/uploads/bfi_thumb/2018071948-olw88vw84nczfcu2zmjq2jrdeajfi8oyo2lgiaipdq.jpg",
        "description": "Cubbon Park, officially Sri Chamarajendra Park, is a 300-acre green oasis in the heart of Bengaluru, housing rich flora, fauna, and historic buildings like the High Court and State Library. | कब्बन पार्क, जिसे आधिकारिक रूप से श्री चामराजेंद्र पार्क कहा जाता है, बेंगलुरु के बीचोंबीच 300 एकड़ में फैला हरियाली भरा उद्यान है। यहाँ उच्च न्यायालय और राज्य पुस्तकालय जैसी इमारतें भी स्थित हैं।"
      },
      {
        "name": "ISKCON Temple (इस्कॉन मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33621f1454cacf995530ea53652ddf8fb/uploads/bfi_thumb/2018073097-olw8976aensfaodp5rf8wgwwiwzu2lxqpmfa9m1zb2.jpg",
        "description": "Situated on Hare Krishna Hill, ISKCON Bengaluru is known for its modern Dravidian-style architecture, gold-plated dhwaja-stambha, and cultural programs promoting spiritual knowledge. | हरे कृष्णा हिल पर स्थित इस्कॉन मंदिर अपनी आधुनिक द्रविड़ शैली की वास्तुकला, स्वर्ण-लेपित ध्वजस्तंभ और आध्यात्मिक ज्ञान फैलाने वाले सांस्कृतिक कार्यक्रमों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Muthyalamaduvu (मुथ्यालमाडुवु)",
        "image": "https://cdn.s3waas.gov.in/s33621f1454cacf995530ea53652ddf8fb/uploads/bfi_thumb/2018080924-olw89844lhtpmacc09tvgyod4av7ab1h1r2rqw0l4u.jpg",
        "description": "About 5 km from Anekal, Muthyalamaduvu is a scenic waterfall surrounded by hills and greenery. The fall resembles a string of pearls when water flows, hence the name 'Muthyala'. | अनेकल से 5 किमी दूर मुथ्यालमाडुवु अपने झरने और प्राकृतिक सुंदरता के लिए प्रसिद्ध है। पानी गिरते समय यह मोतियों की माला जैसा प्रतीत होता है।"
      },
      {
        "name": "Bannerghatta Biological Park (बन्नेरघट्टा जैविक उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s33621f1454cacf995530ea53652ddf8fb/uploads/bfi_thumb/2018081396-e1534264360407-olw89gkob05ais01mvhilejigrpi7kz22wy52do1ku.jpg",
        "description": "Part of Bannerghatta National Park, the Biological Park has a zoo, safari, butterfly park, and rescue center. It is a popular destination for families and wildlife enthusiasts. | बन्नेरघट्टा राष्ट्रीय उद्यान का हिस्सा यह जैविक उद्यान चिड़ियाघर, सफारी, तितली उद्यान और बचाव केंद्र के लिए प्रसिद्ध है। यह परिवारों और वन्यजीव प्रेमियों के लिए आकर्षण का केंद्र है।"
      },
      {
        "name": "Big Banyan Tree (डोड्डा आलद मारा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCLmYAQ9jgrbll4i9NCwFiL7NaGIMRENnxUA&s",
        "description": "The Big Banyan Tree, over 400 years old and spread across 3 acres, is one of Bengaluru's most unique natural attractions and a popular picnic spot. | 400 साल पुराना और 3 एकड़ में फैला डोड्डा आलद मारा (बड़ा बरगद का पेड़) बेंगलुरु का प्रमुख प्राकृतिक आकर्षण और पिकनिक स्थल है।"
      },
      {
        "name": "Tipu Sultan’s Summer Palace (टीपू सुल्तान ग्रीष्मकालीन महल)",
        "image": "https://cdn.s3waas.gov.in/s33621f1454cacf995530ea53652ddf8fb/uploads/bfi_thumb/2019080363-olw89kc12caft7ul0x40vdlcub6z2ddzffk2zhigvy.jpg",
        "description": "An Indo-Islamic architectural marvel, Tipu Sultan’s Summer Palace was the summer residence of the Mysorean ruler. Made mostly of teakwood, it showcases ornate arches and balconies. | इंडो-इस्लामिक शैली में बना यह महल मैसूर के शासक टीपू सुल्तान का ग्रीष्मकालीन निवास था। मुख्यतः सागौन लकड़ी से निर्मित, इसमें सुंदर मेहराब और बालकनियाँ देखने योग्य हैं।"
      },
      {
        "name": "Bengaluru Palace (बेंगलुरु पैलेस)",
        "image": "https://cdn.s3waas.gov.in/s33621f1454cacf995530ea53652ddf8fb/uploads/bfi_thumb/2018073043-olw895am0zpunggfgqlzrhdzc593n7qa1d4bb24rni.jpg",
        "description": "Inspired by England's Windsor Castle, Bengaluru Palace is famous for its Tudor-style architecture, sprawling grounds, and royal history of the Wodeyar dynasty. | इंग्लैंड के विंडसर कैसल से प्रेरित बेंगलुरु पैलेस ट्यूडर शैली की वास्तुकला, विशाल प्रांगण और वोडेयार वंश के शाही इतिहास के लिए प्रसिद्ध है।"
      }
    ],

    "Bengaluru Rural (बेंगलुरु ग्रामीण)": [
      {
        "name": "Devanahalli Fort & Tippu’s Birth Place (देवनहल्ली किला और टीपू का जन्मस्थान)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025042413-r4tmz6g48gnvuvrmzoym199wxt2sldne12zz0d8t8e.jpeg",
        "description": "Built in the 16th century, Devanahalli Fort is historically significant as the birthplace of Tipu Sultan. The fort has ancient temples and stone structures. | 16वीं सदी में निर्मित देवनहल्ली किला टीपू सुल्तान का जन्मस्थान होने के कारण प्रसिद्ध है। किले में प्राचीन मंदिर और पत्थर की संरचनाएँ हैं।"
      },
      {
        "name": "Kote Venugopalaswamy Temple (कोटे वेणुगोपालस्वामी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025042470-scaled-r4tkuoczzvxqxew3pmhq3k9ceu5c47xuufjavmobni.jpg",
        "description": "An ancient temple dedicated to Lord Krishna, located inside Devanahalli Fort, known for its Dravidian architecture. | देवनहल्ली किले के अंदर स्थित यह प्राचीन मंदिर भगवान कृष्ण को समर्पित है और द्रविड़ शैली की वास्तुकला का उदाहरण है।"
      },
      {
        "name": "Kundana Betta (कुंदना बेट्टा)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025042430-r4thay2jad3190fdkeut9smedvpq4wuym83z60296m.jpg",
        "description": "A popular trekking destination near Devanahalli with panoramic views and a serene environment. | देवनहल्ली के पास स्थित यह पहाड़ी ट्रेकिंग और प्राकृतिक दृश्यों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Avati Betta (आवटी बेट्टा)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/17520417497747-r8hqp8snf0uygdeltgg8z04gi069jjv00fgnf4azni.png",
        "description": "A scenic hillock ideal for sunrise views, meditation, and short treks, also housing Avati temples. | यह खूबसूरत पहाड़ी सूर्योदय देखने, ध्यान और छोटे ट्रेक के लिए उपयुक्त है। यहाँ प्राचीन मंदिर भी स्थित हैं।"
      },
      {
        "name": "Timmaraya Swamy Temple (तिम्माराय स्वामी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/17520413975853-r8hqg1xglca0xmr7hhfklbm7edh2a3dhextqhpxkhq.png",
        "description": "An ancient temple dedicated to Lord Vishnu, located in Avati village, known for its cultural importance. | अवती गाँव में स्थित यह प्राचीन मंदिर भगवान विष्णु को समर्पित है और सांस्कृतिक दृष्टि से महत्वपूर्ण है।"
      },
      {
        "name": "Avati Lake (आवटी झील)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/17520409637735-scaled-r8hq4tquykwq9b2b1mpzt5lzyot8c8swjday4qkuta.jpg",
        "description": "A calm and scenic lake near Avati, offering a peaceful environment for visitors. | आवटी गाँव के पास स्थित यह शांत और सुंदर झील आगंतुकों को शांति का अनुभव कराती है।"
      },
      {
        "name": "Hosakote Lake (होसकोटे झील)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070315-r87dvl7kgbmj353wuvf0owt4sdsxvutjdek0cgq6f2.jpg",
        "description": "A large freshwater lake near Hoskote, popular for birdwatching and photography. | होसकोटे के पास स्थित यह झील पक्षी-दर्शन और फोटोग्राफी के लिए प्रसिद्ध है।"
      },
      {
        "name": "Dharmeshwara Temple, Kondrahalli (धर्मेश्वर मंदिर, कोन्द्राहल्ली)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070335-r87d4uou1z0wufy0zbd1rnp4htl2xsoed2isx4dbem.png",
        "description": "An ancient Shiva temple in Kondrahalli, visited by devotees especially during Shivaratri. | कोन्द्राहल्ली में स्थित यह प्राचीन शिव मंदिर महाशिवरात्रि पर विशेष रूप से पूजनीय है।"
      },
      {
        "name": "Kalabhairaveshwara Temple, Jadigenahalli (कालभैरवेश्वर मंदिर, जडिगेनहल्ली)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070362-r87b6sruph4lknp91j90fu3ep0va9vkkec72bq8l4u.png",
        "description": "A temple dedicated to Lord Kalabhairava, revered as a protector deity in the region. | भगवान कालभैरव को समर्पित यह मंदिर क्षेत्र में रक्षक देवता के रूप में पूजनीय है।"
      },
      {
        "name": "Ghati Subramanya (घाटी सुब्रमण्य)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025042424-scaled-r4tqjsp3ecqci0xxyaeu7suj5v4vue95polt1ejhtq.jpg",
        "description": "One of the most famous temples dedicated to Lord Subramanya, located near Doddaballapur. | डोड्डाबल्लापुर के पास स्थित भगवान सुब्रमण्य को समर्पित यह मंदिर बहुत प्रसिद्ध है।"
      },
      {
        "name": "Sri Shanimahathma Temple, Chikka Madhure (श्री शनि महात्मा मंदिर, चिका मधुरे)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025042446-scaled-r4tl1b407t0kud9azhoyow0fapgkfc9of98mrwubr2.jpg",
        "description": "A popular temple dedicated to Lord Shani, attracting devotees from across Karnataka. | भगवान शनि को समर्पित यह मंदिर कर्नाटक भर से श्रद्धालुओं को आकर्षित करता है।"
      },
      {
        "name": "Makalidurga Hill (माकलिदुर्गा हिल)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025042489-scaled-r4tkckyufp61fn6adax9lmmwqtbyxz3vcvftavi5fi.jpg",
        "description": "A trekking destination near Doddaballapur with a fort at the top and scenic views. | डोड्डाबल्लापुर के पास स्थित यह पहाड़ी ट्रेकिंग और प्राचीन किले के लिए प्रसिद्ध है।"
      },
      {
        "name": "Shivagange Hill (शिवगंगे हिल)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025042461-scaled-r4tl79f7i15ydgm082bwhdxiqk496bwh8pzc700kce.jpg",
        "description": "A hill with a unique shape resembling a shivalinga, known for trekking and spiritual significance. | शिवलिंग जैसी आकृति वाली यह पहाड़ी ट्रेकिंग और धार्मिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Nijagal Siddara Betta (निजगल सिद्दरा बेट्टा)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070439-1-r88wvhja0fyg2772n7017sh5zd5087vlwzm0bj4266.png",
        "description": "A rocky hill with caves, temples, and trekking routes, popular among adventure seekers. | गुफाओं, मंदिरों और ट्रेकिंग मार्गों वाली यह पहाड़ी रोमांच प्रेमियों के लिए आकर्षण का केंद्र है।"
      },
      {
        "name": "Manne (Manyapura) (मन्ने/मान्यपुरा)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070323-r87f6wf4g4e3gkdwlbn06z0d6km1ben5vkntxukt8e.png",
        "description": "An ancient site with temples and historical ruins, once a Jain center of learning. | मन्ने प्राचीन मंदिरों और ऐतिहासिक खंडहरों के लिए प्रसिद्ध है और कभी यह जैन शिक्षा का केंद्र था।"
      },
      {
        "name": "Shirdi Sai Baba Temple (शिर्डी साई बाबा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/17520403293642-r8hpo61tua3si39ebfi0mcxwyux1xco5kx35y7a132.png",
        "description": "A temple dedicated to Sai Baba of Shirdi, visited by devotees for peace and blessings. | शिर्डी के साई बाबा को समर्पित यह मंदिर श्रद्धालुओं के लिए शांति और आशीर्वाद का स्थान है।"
      },
      {
        "name": "Gundumgere Lake (गुंडुमगेर झील)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025042489-r4tuddcpof25rf3xm983nl29531vfleuylz6ock54u.jpeg",
        "description": "A serene lake surrounded by greenery, suitable for birdwatching and relaxation. | हरियाली से घिरी यह शांत झील पक्षी-दर्शन और विश्राम के लिए उपयुक्त है।"
      },
      {
        "name": "Vrukshodyana Tree Park (वृक्षोद्यान ट्री पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/17520392227602-r8hovagbvikntd7gxy4n0na3yp93g410xzk5663g8u.png",
        "description": "A green eco-park showcasing a wide variety of trees and plants, ideal for nature lovers. | पेड़ों और पौधों की विविधता को प्रदर्शित करता यह पर्यावरणीय उद्यान प्रकृति प्रेमियों के लिए उपयुक्त है।"
      },
      {
        "name": "Kempegowda International Airport (केम्पेगौड़ा अंतर्राष्ट्रीय हवाई अड्डा)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/17520385321964-r8hod9vovtwtafdk55s286y22u1twyi8gtf418t3i6.jpg",
        "description": "The main international airport serving Bengaluru, also features art installations and modern architecture. | बेंगलुरु का मुख्य अंतर्राष्ट्रीय हवाई अड्डा, अपनी आधुनिक वास्तुकला और कलात्मक सज्जा के लिए भी प्रसिद्ध है।"
      },
      {
        "name": "Hullukudi Betta (हुल्लुकुड़ी बेट्टा)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025042355-scaled-r4s2fdny81t2eovomphcpzfzwv9vh1o04t7ejvqtj2.jpg",
        "description": "A small hillock suitable for hiking and enjoying panoramic rural landscapes. | यह छोटी पहाड़ी हाइकिंग और ग्रामीण दृश्यों का आनंद लेने के लिए उपयुक्त है।"
      },
      {
        "name": "Uddana Veerabhadra Swamy Temple (उड्डाना वीरभद्र स्वामी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070481-r88vidgux2q3fojafgqsfon4ll7l1jwi5whom1xla6.png",
        "description": "A temple dedicated to Lord Veerabhadra, an incarnation of Lord Shiva, revered for its spiritual significance. | भगवान वीरभद्र को समर्पित यह मंदिर शिवभक्तों के लिए अत्यंत पूजनीय है।"
      },
      {
        "name": "Mahima Ranganath Swamy Temple (महिमा रंगनाथ स्वामी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070350-r87g3dqcm0usnh7exd2wcrxs5winavl90c7uy2f27y.png",
        "description": "An ancient temple dedicated to Lord Ranganatha, showcasing Dravidian temple architecture. | भगवान रंगनाथ को समर्पित यह प्राचीन मंदिर द्रविड़ शैली की वास्तुकला का उदाहरण है।"
      },
      {
        "name": "Veerabhadra Swamy Temple, Devarahosahalli (वीरभद्र स्वामी मंदिर, देवरहोसहल्ली)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070312-r87flnhxpil3o8yhg777tqzst9wf4e7i8l9636pdku.png",
        "description": "Located in Devarahosahalli, this temple is a spiritual site dedicated to Lord Veerabhadra. | देवरहोसहल्ली में स्थित यह मंदिर भगवान वीरभद्र को समर्पित है।"
      },
      {
        "name": "Ramlingeshwara Temple, Baradi Betta (रामलिंगेश्वर मंदिर, बराड़ी बेट्टा)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070373-r87el4hq4akyhs0lqws5fgtxr7xwzu70vskvp2v5dq.png",
        "description": "Situated on Baradi Betta hill, this temple of Lord Shiva is also a trekking spot. | बराड़ी बेट्टा पहाड़ी पर स्थित भगवान शिव का यह मंदिर ट्रेकिंग के लिए भी प्रसिद्ध है।"
      },
      {
        "name": "Sapta Maateyara Temple, Jadigenhalli (सप्त मातेर मंदिर, जडिगेनहल्ली)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070396-r8775vzl2yr7ou6x7w9l1ej5sj45lqaah3i8u13ke6.png",
        "description": "A unique temple dedicated to the Sapta Maatrikas (Seven Mother Goddesses), worshipped for protection and prosperity. | सात मातृकाओं को समर्पित यह मंदिर उनकी पूजा और आशीर्वाद के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kalakunte Ranganath Swamy Temple (कलकुंटे रंगनाथ स्वामी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3aba3b6fd5d186d28e06ff97135cade7f/uploads/bfi_thumb/2025070342-r878wyxnqp3yuqk8v5w8dhgszg6y6gpshbncajketa.png",
        "description": "An ancient temple of Lord Ranganatha with traditional Dravidian style architecture. | भगवान रंगनाथ का यह प्राचीन मंदिर द्रविड़ शैली की परंपरा को दर्शाता है।"
      }
    ],

    "Bidar (बिदर)": [
      {
        "name": "Karanja Dam (करंजा बाँध)",
        "image": "https://cdn.s3waas.gov.in/s32ca65f58e35d9ad45bf7f3ae5cfd08f1/uploads/2022/01/2022010516-scaled-600x300.jpg",
        "description": "Karanja Irrigation Project is located near Byalhalli village in Bhalki taluk of Bidar district across Karanja River, a tributary of river Manjra. It irrigates around 29,227 hectares of land. | करंजा बाँध भालकी तालुक में करंजा नदी पर स्थित है। यह लगभग 29,227 हेक्टेयर भूमि की सिंचाई करता है।"
      },
      {
        "name": "Papnash Shiva Temple (पापनाश शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32ca65f58e35d9ad45bf7f3ae5cfd08f1/uploads/2022/04/2022040113-600x300.jpg",
        "description": "Believed to have a Shiva Linga installed by Shri Ram, this temple lies in a valley with a natural spring flowing into a pond called ‘Papnasha’. Popular during Mahashivratri. | मान्यता है कि यहाँ स्थापित शिवलिंग श्रीराम द्वारा स्थापित किया गया था। प्राकृतिक झरना पापनाश कुंड में गिरता है। महाशिवरात्रि पर विशेष भीड़ रहती है।"
      },
      {
        "name": "Guru Nanak Jhira Sahib (गुरु नानक झीरा साहिब)",
        "image": "https://cdn.s3waas.gov.in/s32ca65f58e35d9ad45bf7f3ae5cfd08f1/uploads/2022/01/2022010345-600x300.jpg",
        "description": "One of the holiest Sikh shrines, it is believed Guru Nanak performed a miracle here by bringing forth a spring of crystal-clear water. Pilgrims visit year-round. | गुरु नानक जी द्वारा प्रकट कराए गए झरने के लिए प्रसिद्ध यह गुरुद्वारा सिखों के सबसे पवित्र स्थलों में से एक है।"
      },
      {
        "name": "Anubhava Mantapa (अनुभव मंटप)",
        "image": "https://cdn.s3waas.gov.in/s32ca65f58e35d9ad45bf7f3ae5cfd08f1/uploads/2022/01/2022010420-1-600x300.jpg",
        "description": "Known as the first parliament of mankind, established by Basavanna and led by Prabhudeva. It was a platform for free speech, thought and discussions on Vachana literature. | बसवन्ना द्वारा स्थापित यह स्थल मानव इतिहास की पहली संसद माना जाता है, जहाँ विचार-विमर्श और वचन साहित्य का संकलन हुआ।"
      },
      {
        "name": "Mailar Mallanna Temple (मैळार मल्लन्ना मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32ca65f58e35d9ad45bf7f3ae5cfd08f1/uploads/2022/01/2022010425-600x300.jpg",
        "description": "Dedicated to Lord Khandoba, a form of Lord Shiva known as Martanda Bhairava. The idol is covered in turmeric, symbolizing prosperity. | भगवान खांडोबा (शिव का अवतार) को समर्पित यह मंदिर विशेष रूप से कुरुबा समुदाय में प्रसिद्ध है।"
      },
      {
        "name": "Bidar Fort (बिदर किला)",
        "image": "https://cdn.s3waas.gov.in/s32ca65f58e35d9ad45bf7f3ae5cfd08f1/uploads/bfi_thumb/2018081635-olw7lgqyz4d4gw2u0pznhz065h7omz2b8d6uew0r8q.png",
        "description": "Built in the 15th century by Sultan Ahmed Shah Bahmani, Bidar Fort is known for its Persian-style architecture and historic significance. | 15वीं सदी में सुल्तान अहमद शाह बहमनी द्वारा निर्मित यह किला फ़ारसी शैली की वास्तुकला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Guru Nanak Jhira Sahib (गुरु नानक झीरा साहिब)",
        "image": "https://cdn.s3waas.gov.in/s32ca65f58e35d9ad45bf7f3ae5cfd08f1/uploads/bfi_thumb/2018081640-olw7lhot5yeesi1gv8ea2grmqv31uo61khubw5zd2i.png",
        "description": "Guru Nanak Jhira Sahib Gurudwara is one of the holiest places for Sikhs, located in Bidar. Legend says Guru Nanak visited during a famine, and a spring of crystal-clear water miraculously flowed from the laterite rocks. Even today, devotees believe the water has healing properties. | बिदर में स्थित गुरु नानक झीरा साहिब सिखों के पवित्र स्थलों में से एक है। मान्यता है कि यहाँ गुरु नानक ने अकाल के समय चमत्कार किया और बाद से यहाँ से स्वच्छ जल का झरना प्रवाहित हो रहा है। आज भी श्रद्धालु इस जल को औषधीय मानते हैं।"
      },
      {
        "name": "Papnash Shiva Temple (पापनाश शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s32ca65f58e35d9ad45bf7f3ae5cfd08f1/uploads/bfi_thumb/2018081675-olw7lhot5yeesi1gv8ea2grmqv31uo61khubw5zd2i.png",
        "description": "Papnash Shiva Temple is an ancient temple in Bidar believed to have a Shiva Linga installed by Lord Rama while returning from Lanka. The temple is situated in a serene valley, with a natural spring flowing into a pond called 'Papnasha'. It is especially crowded during Maha Shivaratri. | पापनाश शिव मंदिर बिदर का प्राचीन मंदिर है, जहाँ मान्यता है कि भगवान राम ने शिवलिंग की स्थापना की थी। घाटी में स्थित यह मंदिर प्राकृतिक झरने और 'पापनाशा' तालाब के लिए प्रसिद्ध है। महाशिवरात्रि के समय यहाँ विशेष भीड़ होती है।"
      }
    ],

    "Chamarajanagar (चामराजनगर)": [
      {
        "name": "Barchukki Falls (बारचुक्की जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3959a557f5f6beb411fd954f3f34b21c3/uploads/bfi_thumb/2019021683-olwagnh63ijyo2yy7lsz5x4k6fdrpkcxyvltmm8zcu.jpg",
        "description": "Barchukki Falls, located in Kollegal Taluk of Chamarajanagar, is a part of the Shivanasamudra Falls on the Cauvery River. It is a scenic waterfall surrounded by lush greenery and attracts visitors throughout the year. | बारचुक्की जलप्रपात, चामराजनगर के कोलेगल तालुक में स्थित, कावेरी नदी पर बने शिवनासमुद्र जलप्रपात का हिस्सा है। यह झरना अपनी प्राकृतिक सुंदरता और हरे-भरे जंगलों के बीच गिरते जल के लिए प्रसिद्ध है।"
      },
      {
        "name": "Himavad Gopalaswamy Betta (हिमवाद गोपालस्वामी बेट्टा)",
        "image": "https://cdn.s3waas.gov.in/s3959a557f5f6beb411fd954f3f34b21c3/uploads/bfi_thumb/2019021676-olwaftec0tesck6n38swy4pt63i0v91j6qqa9rhkvy.jpg",
        "description": "Himavad Gopalaswamy Betta is the highest peak in Chamarajanagar, located in Gundlupete Taluk. It houses the famous Gopalaswamy Temple dedicated to Lord Krishna and is often covered in mist. The area is part of Bandipur National Park and offers breathtaking views. | हिमवाद गोपालस्वामी बेट्टा, गुंडलुपेट तालुक में स्थित, चामराजनगर की सबसे ऊँची पहाड़ी है। यहाँ भगवान कृष्ण को समर्पित प्रसिद्ध गोपालस्वामी मंदिर स्थित है। यह जगह अक्सर धुंध से ढकी रहती है और बंदीपुर राष्ट्रीय उद्यान का हिस्सा है।"
      },
      {
        "name": "Biligirirangana Hills (BR Hills) (बिलिगिरीरंगना हिल्स)",
        "image": "https://cdn.s3waas.gov.in/s3959a557f5f6beb411fd954f3f34b21c3/uploads/bfi_thumb/2019021674-olwaftec0tesck6n38swy4pt63i0v91j6qqa9rhkvy.jpg",
        "description": "The Biligirirangana Hills, popularly known as BR Hills, are situated at the southeastern edge of Karnataka bordering Tamil Nadu. Known for the Biligiri Ranganatha Temple and the BR Wildlife Sanctuary, it is a hub of biodiversity and eco-tourism. | बिलिगिरीरंगना हिल्स (बीआर हिल्स) कर्नाटक और तमिलनाडु की सीमा पर स्थित एक प्रसिद्ध पहाड़ी क्षेत्र है। यहाँ बिलिगिरी रंगनाथ मंदिर और वन्यजीव अभयारण्य स्थित है। यह क्षेत्र अपनी जैव विविधता और इको-टूरिज्म के लिए प्रसिद्ध है।"
      },
      {
        "name": "Male Mahadeshwara Hills (MM Hills) (माले महादेवेश्वर हिल्स)",
        "image": "https://cdn.s3waas.gov.in/s3959a557f5f6beb411fd954f3f34b21c3/uploads/bfi_thumb/2019021694-olwaftec0tesck6n38swy4pt63i0v91j6qqa9rhkvy.jpg",
        "description": "Male Mahadeshwara Hills, located in Hanur Taluk of Chamarajanagar, is a prominent pilgrimage town dedicated to Lord Mahadeshwara (a form of Shiva). Surrounded by dense forests and hills, it is both a religious and natural attraction. | माले महादेवेश्वर हिल्स, हनूर तालुक में स्थित एक प्रमुख तीर्थ स्थल है जो भगवान महादेवेश्वर (शिव) को समर्पित है। यह घने जंगलों और पहाड़ियों से घिरा हुआ धार्मिक और प्राकृतिक आकर्षण का केंद्र है।"
      }
    ],

    "Chikkaballapur (चिक्कबल्लापुर)": [
      {
        "name": "Nandi Hills (नंदी हिल्स)",
        "image": "https://cdn.s3waas.gov.in/s35751ec3e9a4feab575962e78e006250d/uploads/2018/06/2018062387-768x512.jpg",
        "description": "Situated 60 km north of Bengaluru at 1478 m above sea level, Nandi Hills was the summer retreat of Tipu Sultan and later developed by the British into a hill station. It offers breathtaking views from Tippu’s Drop and houses the Yoga Nandeeshwara Temple. | नंदी हिल्स, बेंगलुरु से 60 किमी दूर और 1478 मीटर की ऊँचाई पर स्थित है। यह टीपू सुल्तान का ग्रीष्मकालीन निवास था। यहाँ से ‘टीपूज़ ड्रॉप’ से अद्भुत दृश्य दिखाई देते हैं और योगानंदीश्वर मंदिर भी स्थित है।"
      },
      {
        "name": "Chintamani (चिंतामणि)",
        "image": "https://cdn.s3waas.gov.in/s35751ec3e9a4feab575962e78e006250d/uploads/2018/07/2018072624.jpg",
        "description": "Chintamani town is known for its gold, silver trade, and agarbathi industry. About 8 km away is the Murugmulla Dargah of Fakhi Shah Wali, one of Karnataka’s oldest dargahs, attracting pilgrims during the annual urs. | चिंतामणि अपने सोने-चाँदी के व्यापार और अगरबत्ती उद्योग के लिए प्रसिद्ध है। यहाँ का मुरुगमुल्ला दरगाह कर्नाटक के सबसे पुराने दरगाहों में से है।"
      },
      {
        "name": "Gummanayaka Fort (गुम्मनायक किला)",
        "image": "https://cdn.s3waas.gov.in/s35751ec3e9a4feab575962e78e006250d/uploads/2018/07/2018072698.jpg",
        "description": "Founded around 1350 by chieftain Gummanayaka, this fort near Bagepalli is noted for its fortified circular rock rising 150 feet above the hilly tract. | लगभग 1350 में गुम्मनायक द्वारा निर्मित यह किला, बगेपल्ली के पास स्थित है और इसकी गोलाकार चट्टान 150 फीट ऊँची है।"
      },
      {
        "name": "Muddenahalli (मुड्डेनहल्लि)",
        "image": "https://cdn.s3waas.gov.in/s35751ec3e9a4feab575962e78e006250d/uploads/2018/06/2018062551-768x576.jpg",
        "description": "Birthplace of Sir M. Visvesvaraya, Muddenahalli houses his memorial museum. The nearby Bhoga Nandeeshwara Temple is an excellent example of Dravidian temple architecture. | यह महान अभियंता एवं राजनेता सर एम. विश्वेश्वरैया का जन्मस्थान है। यहाँ उनका स्मारक संग्रहालय और भोगा नंदीश्वर मंदिर स्थित है।"
      },
      {
        "name": "Jakkalamadagu Dam (जक्कलमडगु बाँध)",
        "image": "https://cdn.s3waas.gov.in/s35751ec3e9a4feab575962e78e006250d/uploads/2018/06/2018062323.jpg",
        "description": "The main source of drinking water for Chikkaballapur town, Jakkalamadagu Dam is located amidst serene surroundings. | यह बाँध चिक्कबल्लापुर शहर की प्रमुख पेयजल आपूर्ति का स्रोत है और प्राकृतिक सौंदर्य से भरपूर है।"
      },
      {
        "name": "Nehru Guest House (नेहरू गेस्ट हाउस)",
        "image": "https://cdn.s3waas.gov.in/s35751ec3e9a4feab575962e78e006250d/uploads/2018/07/2018072623.jpg",
        "description": "Built in memory of Pandit Jawaharlal Nehru at Nandi Hills, Nehru Nilaya hosted the Second SAARC summit in 1986. | नंदी हिल्स पर निर्मित नेहरू गेस्ट हाउस 1986 में दूसरे सार्क शिखर सम्मेलन का स्थल था।"
      },
      {
        "name": "Tippu’s Drop (टीपूज़ ड्रॉप)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfcNSe74raB3WShWWF7HsD_xd_EYaKtfl25Q&s",
        "description": "A 60 m high cliff at Nandi Hills from where prisoners were executed during Tipu Sultan’s reign. It now offers panoramic views of the plains below. | नंदी हिल्स की 60 मीटर ऊँची चट्टान, जहाँ से टीपू सुल्तान के समय कैदियों को नीचे फेंका जाता था। आज यह अद्भुत दृश्य देखने का स्थान है।"
      },
      {
        "name": "Visvesvaraya Tomb (विश्वेश्वरैया समाधि)",
        "image": "https://cdn.s3waas.gov.in/s35751ec3e9a4feab575962e78e006250d/uploads/2018/06/2018062944.jpg",
        "description": "Located at Muddenahalli, this is the tomb of Sir M. Visvesvaraya, India’s eminent engineer and statesman. | मुड्डेनहल्लि में स्थित यह महान अभियंता और राजनेता सर एम. विश्वेश्वरैया की समाधि है।"
      },
      {
        "name": "Surasadmagiri Hill (सुरसद्मगिरि हिल)",
        "image": "https://cdn.s3waas.gov.in/s35751ec3e9a4feab575962e78e006250d/uploads/2018/07/2018072632.jpg",
        "description": "Situated northwest of Gudibanda town, this hill fort was built by Byregowda, a local chieftain. It is a historical site amidst natural beauty. | गुडिबंडा के उत्तर-पश्चिम में स्थित यह ऐतिहासिक पहाड़ी किला स्थानीय सरदार बैरेगौड़ा ने बनवाया था।"
      },
      {
        "name": "Srinivasa Sagara Kere (श्रीनिवास सागर झील)",
        "image": "https://cdn.s3waas.gov.in/s35751ec3e9a4feab575962e78e006250d/uploads/2018/07/2018072650.jpg",
        "description": "A beautiful lake near Chikkaballapur, popular for its calm surroundings and scenic beauty. | चिक्कबल्लापुर के पास स्थित यह झील अपनी प्राकृतिक सुंदरता और शांत वातावरण के लिए प्रसिद्ध है।"
      }
    ],

    "Chikkamagaluru (चिक्कमगलुरु)": [
      {
        "name": "Mullayanagiri (मुल्लयनगिरि)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/25/6e/67/caption.jpg?w=1000&h=800&s=1",
        "description": "At 1930 m, Mullayanagiri is the highest peak in Karnataka. It offers a scenic drive, 270° panoramic views, cool climate, and a short hike to a Shiva temple at the hilltop. | 1930 मीटर की ऊँचाई पर स्थित मुल्लयनगिरि कर्नाटक की सबसे ऊँची चोटी है। यहाँ से शानदार दृश्य दिखाई देते हैं और शिखर पर शिव मंदिर स्थित है।"
      },
      {
        "name": "Z Point (ज़ पॉइंट)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/17/44/b2/z-point.jpg?w=1000&h=800&s=1",
        "description": "A famous viewpoint near Kemmanagundi offering dramatic sunrise and sunset views. It is also en route to Hebbe Falls. | केम्मनगुंडी के पास स्थित यह प्रसिद्ध व्यू प्वाइंट सूर्योदय और सूर्यास्त के लिए मशहूर है और हेब्बे फॉल्स के रास्ते में आता है।"
      },
      {
        "name": "Hebbe Falls (हेब्बे झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/56/3e/a3/hebbe-falls.jpg?w=1000&h=800&s=1",
        "description": "A 551 ft high waterfall inside Bhadra Wildlife Sanctuary, surrounded by dense forests and coffee estates. Accessible by jeep and trek. | भद्रा वन्यजीव अभयारण्य में स्थित 551 फीट ऊँचा झरना घने जंगलों और कॉफी बागानों से घिरा है।"
      },
      {
        "name": "Jhari Waterfalls (झरी झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/98/76/70/waterfall.jpg?w=800&h=600&s=1",
        "description": "Also called Buttermilk Falls, it is surrounded by dense forest and coffee plantations. Jeeps are available from the main road. | जिसे बटरमिल्क फॉल्स भी कहा जाता है, यह झरना घने जंगलों और कॉफी बागानों से घिरा है।"
      },
      {
        "name": "Kudremukh Peak (कुद्रेमुख शिखर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/8c/d0/a0/view.jpg?w=800&h=600&s=1",
        "description": "Located at 1892 m, Kudremukh Peak is a popular trekking spot in the Western Ghats, offering scenic grasslands and wildlife sightings. | 1892 मीटर ऊँचा कुद्रेमुख शिखर पश्चिमी घाट में ट्रेकिंग के लिए मशहूर है।"
      },
      {
        "name": "Shri Shankara Matha (श्री शंकर मठ, चिकमगलूरु)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/5a/0c/de/few-snaps-in-sringeri.jpg?w=1000&h=-1&s=1",
        "description": "A serene temple dedicated to Adi Shankaracharya. Devotees are served free meals and the place radiates spiritual calmness. | आदि शंकराचार्य को समर्पित यह मंदिर अपनी शांति और मुफ्त भोजन सेवा के लिए प्रसिद्ध है।"
      },
      {
        "name": "Baba Budangiri (बाबा बुदनगिरि)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/6d/00/ea/enroute-baba-budangiri.jpg?w=1000&h=-1&s=1",
        "description": "A mountain range famous for its shrine to the Sufi saint Baba Budan and its caves. It is also known as Dattatreya Peetha. | यह पर्वत श्रृंखला सूफी संत बाबा बुदान की दरगाह और गुफाओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Hirekolale Lake (हिरकोलाले झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/7b/f6/0c/front-view.jpg?w=1000&h=800&s=1",
        "description": "A man-made lake surrounded by mountains, ideal for sunrise and sunset views. | पहाड़ों से घिरी यह कृत्रिम झील सूर्योदय और सूर्यास्त देखने के लिए प्रसिद्ध है।"
      },
      {
        "name": "Sri Veeranarayana Temple (श्री वीरनारायण मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/7f/02/58/img20201227140823-largejpg.jpg?w=1000&h=-1&s=1",
        "description": "A fine example of Hoysala architecture located near Belavadi village. Known for its beautiful sculptures and intricate carvings. | बेलवाडी गाँव के पास स्थित यह मंदिर होयसला स्थापत्य का उत्कृष्ट उदाहरण है।"
      },
      {
        "name": "Kudremukh National Park (कुद्रेमुख राष्ट्रीय उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/07/d2/73/photo1jpg.jpg?w=1000&h=-1&s=1",
        "description": "Spread across 600 sq km, this national park is home to tigers, leopards, deer, and lush grasslands. Designated as a park in 1987. | 600 वर्ग किमी में फैला यह राष्ट्रीय उद्यान 1987 में घोषित हुआ और इसमें बाघ, तेंदुए और हिरण पाए जाते हैं।"
      },
      {
        "name": "Bhadra Wildlife Sanctuary (भद्रा वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/55/ec/7e/20160102-103625-largejpg.jpg?w=1000&h=800&s=1",
        "description": "Covers 490 sq km with a rich variety of flora and fauna. Safari trips are available but animal sightings vary. | 490 वर्ग किमी में फैला यह अभयारण्य विविध वन्यजीवों से भरपूर है, हालाँकि सफारी में पशुओं की झलक भाग्य पर निर्भर है।"
      },
      {
        "name": "Kalasa (कलसा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f4/e3/6e/madugundi-water-falls.jpg?w=1000&h=800&s=1",
        "description": "A temple town on the banks of Bhadra River, known for its Kalaseshwara Temple dedicated to Lord Shiva. | भद्रा नदी के तट पर स्थित यह नगर अपने कालसेश्वर शिव मंदिर के लिए प्रसिद्ध है।"
      }
    ],

    "Chitradurga (चित्रदुर्ग)": [
      {
        "name": "Fort of Chitradurga (चित्तदुर्गा का किला)",
        "image": "https://cdn.s3waas.gov.in/s3a8ecbabae151abacba7dbde04f761c37/uploads/bfi_thumb/2018091847-olwbdqeomlu9a0x21elaf2lktmbtm2ouum60o776da.jpg",
        "description": "The fort of Chitradurga is the most prominent monument of the district. Known for its seven concentric fortification walls, secret passages, and historic significance during the rule of Nayakas of Chitradurga. | चित्तदुर्गा का किला अपने सात परकोटों, गुप्त मार्गों और नायक वंश के ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Vani Vilasa Sagara Dam (वाणी विलास सागर बाँध)",
        "image": "https://cdn.s3waas.gov.in/s3a8ecbabae151abacba7dbde04f761c37/uploads/bfi_thumb/2018092558-olwbdrcitfvjlmvovwzwzkd1f076trsl6qti5h5s72.jpg",
        "description": "Built by the Mysore Maharajas before independence, Vani Vilasa Sagara is the oldest dam in Karnataka. Surrounded by scenic beauty, it is a popular tourist spot. | मैसूर महाराजाओं द्वारा स्वतंत्रता से पहले निर्मित यह कर्नाटक का सबसे पुराना बाँध है और अपनी प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      }
    ],

    "Dakshina Kannada (दक्षिण कन्नड़)": [
      {
        "name": "Mangala Devi Temple, Mangaluru (मंगलादेवी मंदिर, मंगलुरु)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071052.jpg",
        "description": "10th century Mangala Devi Temple gave the town its name. Located just 2 km from the heart of Mangaluru city. | 10वीं सदी का मंगलादेवी मंदिर, जिसने शहर का नाम दिया। शहर के केंद्र से केवल 2 किमी दूर स्थित।"
      },
      {
        "name": "Kadri Manjunatha Temple, Mangaluru (काद्री मंजुनाथ मंदिर, मंगलुरु)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071087.jpg",
        "description": "Famous 11th century temple on Kadri Hill with natural springs, laterite caves (Pandava Caves), and bronze statues pointing to Buddhist origins. Kadri Kambala (buffalo race) held in December. | काद्री हिल पर 11वीं सदी का प्रसिद्ध मंदिर, प्राकृतिक झरने, लाटेराइट गुफाएं और बौद्धिक धरोहर। दिसंबर में काद्री कंबला (भैंस दौड़) आयोजित होती है।"
      },
      {
        "name": "Kudroli Gokarnatheshwara Temple, Mangaluru (कुद्रोलि गोकर्णनाथेश्वर मंदिर, मंगलुरु)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071037.jpg",
        "description": "Built by Shri Narayana Guru in Chola Gopuram style. Main deity is Lord Shiva. Navaratri and Shivaratri are major festivals; Mangaluru Dasara celebrated here. | श्री नारायण गुरु द्वारा स्थापित, चोल गोपुरम शैली में निर्मित। मुख्य देवता भगवान शिव। नवरात्रि और शिवरात्रि बड़े त्योहार हैं।"
      },
      {
        "name": "Dharmasthala Manjunatha Temple (धर्मस्थल मंजुनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071083.jpg",
        "description": "75 km east of Mangaluru, combines Shaivaite, Vaishnavite and Jain traditions. Features 39 ft Bahubali statue and Manjusha Museum. Laksha Deepotsava festival in Nov-Dec. | मंगलुरु से 75 किमी पूर्व, शैव, वैष्णव और जैन परंपराओं का मिश्रण। 39 फीट बहुबली प्रतिमा और मंजुषा संग्रहालय। लाख दीपोत्सव नवम्बर-दिसम्बर में।"
      },
      {
        "name": "Kukke Subrahmanya Temple (कुके श्री सुब्रह्मण्य मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071039.jpg",
        "description": "104 km from Mangaluru, located between hills. God Subrahmanya worshipped as a serpent. Ritual dance Nagamandala performed here. | मंगलुरु से 104 किमी दूर, पहाड़ियों के बीच स्थित। भगवान सुब्रह्मण्य सर्प रूप में पूजित। नागमंडला नृत्य आयोजित।"
      },
      {
        "name": "Kateel Durga Parameshwari Temple (काटील दुर्गा परमेश्वरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/20180710100.jpg",
        "description": "20 km east of Mangaluru, situated on an island in Nandini river. Chief deity is naturally formed (udhbhava) Durga. | मंगलुरु से 20 किमी पूर्व, नंदिनी नदी के द्वीप पर स्थित। मुख्य देवता प्राकृतिक रूप से निर्मित दुर्गा।"
      },
      {
        "name": "Southadka Sri Ganapathy Temple (साउथड़का श्री गणपति मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071079.jpg",
        "description": "3 km from Kokkada, Belthangadi Taluk. Lord Maha Ganapathi is outdoors without a temple structure, surrounded by greenery. | कोक्कड़ा से 3 किमी, बेल्थंगडी तालुक। भगवान महा गणपति खुले में, मंदिर संरचना के बिना, हरियाली से घिरा।"
      },
      {
        "name": "Sri Durga Parameshwari Temple, Bappanadu, Mulki (बप्पनाडु दुर्गा परमेश्वरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071029.jpg",
        "description": "29 km from Mangaluru, south coast of Shambhavi river. Known for Bappanadu Dolu (musical drum) during annual festival. | मंगलुरु से 29 किमी दूर, शंभवी नदी के दक्षिण तट पर। वार्षिक उत्सव में बप्पनाडु ढोल प्रसिद्ध।"
      },
      {
        "name": "Sri Rajarajeswari Temple, Polali (राजराजेश्वरी मंदिर, पोलाली)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071059.jpg",
        "description": "20 km from Mangaluru, on banks of Phalguni river. Annual 'Polali Chendu' football festival represents fight of good over evil. | मंगलुरु से 20 किमी दूर, फल्गुनी नदी के किनारे। वार्षिक 'पोलाली चेंदु' फुटबॉल उत्सव।"
      },
      {
        "name": "Sri Mahalingeswara Temple, Puttur (महालिंगेश्वर मंदिर, पुत्तुर)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071026.jpg",
        "description": "Located in Puttur main city. One of the well-known temples of Dakshina Kannada. | पुत्तुर मुख्य शहर में स्थित। दक्षिण कन्नड़ के प्रसिद्ध मंदिरों में से एक।"
      },
      {
        "name": "Sri Karinjeshwara Temple, Karinje (करींजेश्वर मंदिर, करींजे)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071085.jpg",
        "description": "Located in Karinje village, 38 km from Mangaluru. Shiva-Parvati temple on hilltop with beautiful surroundings. | करींजे गाँव में स्थित, मंगलुरु से 38 किमी दूर। पहाड़ी पर शिव-पार्वती मंदिर।"
      },
      {
        "name": "Anantha Padmanabha Temple, Kudupu (कुडुपु अनंथा पद्मनाभ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071061.jpg",
        "description": "10 km from Mangaluru city on Mangaluru-Karkala highway. Dedicated to Lord Vishnu, famous for serpent worship. | मंगलुरु से 10 किमी दूर, मार्ग मंगलुरु-कार्कला। भगवान विष्णु को समर्पित, नाग पूजा के लिए प्रसिद्ध।"
      },
      {
        "name": "Narahari Parvatha Sadashiva Temple, Bantval (नरहरी पर्वत सदाशिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33a835d3215755c435ef4fe9965a3f2a0/uploads/2018/07/2018071048.jpg",
        "description": "28 km from Mangaluru, on hilltop. Dedicated to Lord Shiva. Pilgrims need to climb the hill to reach the temple. | मंगलुरु से 28 किमी दूर, पहाड़ी के ऊपर। भगवान शिव को समर्पित। श्रद्धालुओं को मंदिर पहुँचने के लिए चढ़ाई करनी होती है।"
      }
    ],

    "Davangere (दावणगेरे)": [
      {
        "name": "Harihareshwara Temple (हरिहरश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/4d/9e/3b/caption.jpg?w=1000&h=800&s=1",
        "description": "Located at Harihar along the banks of Tungabhadra River. Built in 1223–1224 CE by Polalva, a commander and minister. | तार्किक टंगभद्रा नदी के किनारे स्थित। 1223–1224 ईस्वी में पोलाल्वा द्वारा निर्मित।"
      },
      {
        "name": "Kunduvada Kere (कुंडुवाडा केरे)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/68/fb/70/lovely-view-of-the-sunset.jpg?w=1000&h=800&s=1",
        "description": "A peaceful lake in Davangere, known for fresh air and serene surroundings. | दावणगेरे में शांत झील, ताजी हवा और सुंदर परिवेश के लिए प्रसिद्ध।"
      },
      {
        "name": "Musafirkhana and Honda / Rameshwara Temple (मुसाफिरखाना और रामेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/8f/d5/c5/there-are-4-levels-below.jpg?w=1000&h=800&s=1",
        "description": "Exhibits Vijayanagar architecture with Hoysala influence. Historic site and point of interest. | विजयनगर शैली में होय्सल प्रभाव, ऐतिहासिक स्थल और पर्यटक आकर्षण।"
      },
      {
        "name": "Theertha Rameshwara (तीर्थ रामेश्वर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/a3/56/56/rameshwara-temple.jpg?w=1000&h=-1&s=1",
        "description": "Religious site surrounded by magnificent natural beauty. Known for spiritual significance. | सुंदर प्राकृतिक सौंदर्य से घिरा धार्मिक स्थल। आध्यात्मिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Kalleshvara Temple (कल्लेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/5a/cc/ce/the-carvings-above-the.jpg?w=1000&h=800&s=1",
        "description": "One of the oldest temples in the region, built by kings, showcasing ancient architecture. | क्षेत्र के सबसे पुराने मंदिरों में से एक, राजाओं द्वारा निर्मित, प्राचीन वास्तुकला प्रदर्शित।"
      },
      {
        "name": "Sri Anjaneya Swamy Temple (श्री अंजनेय स्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/48/f3/25/sri-anjaneya-swamy-temple.jpg?w=900&h=700&s=1",
        "description": "Connected by road from Bidadi about 13 km, located on banks of Vrushabhavati River, surrounded by greenery. | बिदाडी से सड़क मार्ग द्वारा 13 किमी, वृशभावती नदी के किनारे, हरियाली से घिरा।"
      },
      {
        "name": "Nilagunda Bhimeshvara Temple (नीलगुंडा भीमेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/a8/28/b1/temple-exterior.jpg?w=1000&h=-1&s=1",
        "description": "One of the oldest temples, very pleasant place with historical significance. | सबसे पुराने मंदिरों में से एक, ऐतिहासिक महत्व के साथ सुखद स्थल।"
      },
      {
        "name": "Uchangidurga Fort (उचंगिदुर्गा किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/82/23/a2/fort-ruins.jpg?w=1000&h=800&s=1",
        "description": "Located on a small hill near Anaji, historic site with ancient ruins. | अनाजी के पास छोटी पहाड़ी पर स्थित, ऐतिहासिक स्थल और प्राचीन खंडहर।"
      },
      {
        "name": "Glass House (ग्लास हाउस)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/62/12/eb/glass-house-with-light.jpg?w=1000&h=-1&s=1",
        "description": "Park with organized trees, lake on the opposite side, good for visitors. | व्यवस्थित वृक्षों वाला पार्क, सामने झील, पर्यटकों के लिए उपयुक्त।"
      },
      {
        "name": "Bathi Gudda (बाटी गुड्डा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/9c/fb/c2/bathi-gudda.jpg?w=500&h=400&s=1",
        "description": "One of the old forts in India, offers scenic views and historical architecture. | भारत के पुराने किलों में से एक, दृश्य और ऐतिहासिक वास्तुकला के लिए प्रसिद्ध।"
      }
    ],

    "Dharwad (धारवाड़)": [
      {
        "name": "Chandramouleshwara Temple, Unkal (चंद्रमौलश्वर मंदिर, उंकल)",
        "image": "https://cdn.s3waas.gov.in/s3eefc9e10ebdc4a2333b42b2dbb8f27b6/uploads/bfi_thumb/2018082894-olwdjijv7uv94zb3c7d60g10lon9x6rg6ztdqdwq9u.jpg",
        "description": "Chalukya architectural monument located in the suburbs of Hubballi. Historic temple known for its architecture. | चालुक्य वास्तुकला की इमारत, हब्बली के उपनगर में स्थित। वास्तुकला के लिए प्रसिद्ध ऐतिहासिक मंदिर।"
      },
      {
        "name": "Shambulingeshwara Temple, Kundgol (शंभुलिंगेश्वर मंदिर, कुंडगोल)",
        "image": "https://cdn.s3waas.gov.in/s3eefc9e10ebdc4a2333b42b2dbb8f27b6/uploads/bfi_thumb/2018082866-olwdjhm110tytdcghoyjfy9k0arwphnpuv5w93y4g2.jpg",
        "description": "Ancient Shambulingeshwara and Brahma temples, along with Rameshwara, Basavanna, Kalmeshwara, and Siddalingeshwara. Historic and religious site. | प्राचीन शंभुलिंगेश्वर और ब्रह्मा मंदिर, रameshwara, बसवन्ना, कालमेश्वर और सिद्धलिंगेश्वर सहित। ऐतिहासिक और धार्मिक स्थल।"
      },
      {
        "name": "Tamboor Basavanna Temple, Kalaghatagi (तंबूर बसवन्ना मंदिर, कालघाटगी)",
        "image": "https://cdn.s3waas.gov.in/s3eefc9e10ebdc4a2333b42b2dbb8f27b6/uploads/bfi_thumb/2018082879-olwdjhm110tytdcghoyjfy9k0arwphnpuv5w93y4g2.jpg",
        "description": "Important pilgrimage center for Lingayat faith. Temple of Basavanna is a key attraction. | लिंगायत धर्म के लिए महत्वपूर्ण तीर्थस्थल। बसवन्ना मंदिर प्रमुख आकर्षण।"
      },
      {
        "name": "Shri Amruteshwara Temple, Annigeri (श्री अमृतेश्वर मंदिर, अन्नीगेरी)",
        "image": "https://cdn.s3waas.gov.in/s3eefc9e10ebdc4a2333b42b2dbb8f27b6/uploads/bfi_thumb/2018082863-olwdjhm110tytdcghoyjfy9k0arwphnpuv5w93y4g2.jpg",
        "description": "Built in 1050 CE, historic and religious temple in Dharwad District. | 1050 ईस्वी में निर्मित, धारवाड़ जिले का ऐतिहासिक और धार्मिक मंदिर।"
      },
      {
        "name": "Sadhankere Garden, Dharwad (साधनकेरी उद्यान, धारवाड़)",
        "image": "https://cdn.s3waas.gov.in/s3eefc9e10ebdc4a2333b42b2dbb8f27b6/uploads/bfi_thumb/2018082792-olwdjgo6u6sohrdtn6jwvgi3ewwjhsjziqiertzima.jpg",
        "description": "Park honoring Kannada poet Dr. Dattatreya Ramachandra Bendre. Scenic and recreational spot. | कन्नड़ कवि डॉ. दत्तात्रेय रामचंद्र बेन्द्र को समर्पित पार्क। प्राकृतिक सौंदर्य और मनोरंजन स्थल।"
      },
      {
        "name": "Tapovana, Dharwad (तपोवन, धारवाड़)",
        "image": "https://cdn.s3waas.gov.in/s3eefc9e10ebdc4a2333b42b2dbb8f27b6/uploads/bfi_thumb/2018082799-olwdjgo6u6sohrdtn6jwvgi3ewwjhsjziqiertzima.jpg",
        "description": "Meditation and yoga center, 5 km from town towards Haliyala Road. | ध्यान और योग केंद्र, शहर से 5 किमी, हलियाला रोड की ओर।"
      }
    ],

    "Gadag (गदग)": [
      {
        "name": "Gadag Zoo (गदग चिड़ियाघर)",
        "image": "https://cdn.s3waas.gov.in/s3912d2b1c7b2826caf99687388d2e8f7c/uploads/bfi_thumb/2021070741-p9r2hkkpw8g6odzcprwhnm0c47q94mfu3tv8f8az1e.jpg",
        "description": "Established in 1972, also known as Binkadakatti Zoo. Home to various species. | 1972 में स्थापित, बिनकदकट्टी चिड़ियाघर के नाम से भी जाना जाता है। विभिन्न प्रजातियों का घर।"
      },
      {
        "name": "Kashi Vishwanatheshwar, Lakkundi (काशी विश्वनाथेश्वर, लक्कुंडी)",
        "image": "https://cdn.s3waas.gov.in/s3912d2b1c7b2826caf99687388d2e8f7c/uploads/bfi_thumb/2018073039-olwajoifit3iwwnlj6r6v71xokddta8q2j488bsbfm.gif",
        "description": "Lakkundi is a paradise of temples, 11 km southeast of Gadag. | लक्कुंडी मंदिरों का स्वर्ग, गदग से 11 किमी दक्षिण-पूर्व में स्थित।"
      },
      {
        "name": "Kappat Gudda, Mundaragi (कप्पट गुड्डा, मुंडरगी)",
        "image": "https://cdn.s3waas.gov.in/s3912d2b1c7b2826caf99687388d2e8f7c/uploads/bfi_thumb/2018073063-olwak3juk5o42o1r3d97z39b6qb98fwfgljzwr60o2.jpg",
        "description": "Located in southern Gadag. The top of Kappat Gudda is 750 meters above sea level. | गदग के दक्षिणी भाग में स्थित। कप्पट गुड्डा की ऊँचाई 750 मीटर है।"
      },
      {
        "name": "Trikuteshwar Temple, Gadag (त्रिकूटेश्वर मंदिर, गदग)",
        "image": "https://cdn.s3waas.gov.in/s3912d2b1c7b2826caf99687388d2e8f7c/uploads/bfi_thumb/2018073060-olwak2m0dbmtr2348uulelhulcfw0qsp4gwifh7eua.jpg",
        "description": "Beautiful Shiva temple in Gadag town, famous for its architecture. | गदग शहर में सुंदर शिव मंदिर, अपनी वास्तुकला के लिए प्रसिद्ध।"
      },
      {
        "name": "Veeranarayana Temple, Gadag (वीरनारायण मंदिर, गदग)",
        "image": "https://cdn.s3waas.gov.in/s3912d2b1c7b2826caf99687388d2e8f7c/uploads/bfi_thumb/2018073080-olwak7b7bht9d3wahevq92b5k9sq38bct45xtv0fz6.jpg",
        "description": "Built around 1117 by Hoysala king Vishnuvardhana. Famous Hindu temple. | लगभग 1117 में होयसला राजा विष्णुवर्धन द्वारा निर्मित। प्रसिद्ध हिंदू मंदिर।"
      }
    ],

    "Hassan (हासन)": [
      {
        "name": "Shettihalli Church (शेट्टीहल्ली चर्च)",
        "image": "https://cdn.s3waas.gov.in/s386b122d4358357d834a87ce618a55de0/uploads/bfi_thumb/20180721100-olwae58mx7o8u3zfc772a1xlanfjjeox9v73yy04qq.png",
        "description": "Located 2 km from Shettihalli, built in the 1860s by the French. Famous for its scenic beauty. | शेट्टीहल्ली से 2 किमी दूर स्थित, 1860 के दशक में फ्रांसीसियों द्वारा निर्मित। प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      },
      {
        "name": "Shravanabelagola Temple (श्रवणबेलगोला मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s386b122d4358357d834a87ce618a55de0/uploads/bfi_thumb/2018072780-olwadynrldf8ku8zemcoalld4ybz1iyswympm09vya.jpg",
        "description": "About 150 km northwest of Bangalore. Prominent Jain pilgrimage centre. | बेंगलुरु से लगभग 150 किमी उत्तर-पश्चिम। प्रमुख जैन तीर्थ स्थल।"
      },
      {
        "name": "Chennakeshava Temple, Belur (चेननाकेशव मंदिर, बेलूर)",
        "image": "https://cdn.s3waas.gov.in/s386b122d4358357d834a87ce618a55de0/uploads/bfi_thumb/2018071289-olwadc3n1ckcu75r2clmmraavpf5wsh8tuz23d7c3m.png",
        "description": "Located on the banks of river Yagachi, 38 km from Hassan. World-famous tourist destination. | यगाची नदी के किनारे, हासन से 38 किमी दूर। विश्व प्रसिद्ध पर्यटन स्थल।"
      },
      {
        "name": "Hoysaleshwara Temple, Halebidu (होयसलेश्वर मंदिर, हलेबिडु)",
        "image": "https://cdn.s3waas.gov.in/s386b122d4358357d834a87ce618a55de0/uploads/bfi_thumb/2018071252-olwad7eg36dx85cktskhsagzws2buayl57pmozeayq.png",
        "description": "Twin temples of Hoysaleshwara and Kedareshwara built by Vishnuvardhana and Ballala-II. Excellent example of Hoysala architecture. | विष्णुवर्धन और बल्लाल-II द्वारा निर्मित होयसलेश्वर और केदारेश्वर की जुड़वां मंदिरें। होयसला वास्तुकला का उत्कृष्ट उदाहरण।"
      },
      {
        "name": "Manjarabad Fort (मंजराबाद किला)",
        "image": "https://cdn.s3waas.gov.in/s386b122d4358357d834a87ce618a55de0/uploads/bfi_thumb/2018071034-olwadzlls7giwg7m94rav3ctqc7c982j93a73a8hs2.png",
        "description": "Prominent tourist destination in Hassan district, located near Sakaleshpur. | हासन जिले में प्रमुख पर्यटन स्थल, साकलेश्वर के पास स्थित।"
      },
      {
        "name": "Hasanamba Temple (हसनांबा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s386b122d4358357d834a87ce618a55de0/uploads/bfi_thumb/2018072490-olwaebti91x93dpv9s1g9i9tgcj41af1mrribvqdj6.png",
        "description": "Main tower newly constructed in Dravidian style. Three major temples on site. | मुख्य टॉवर हाल ही में द्रविड़ शैली में निर्मित। स्थल पर तीन प्रमुख मंदिर हैं।"
      },
      {
        "name": "Gorur Dam (गोरूर बांध)",
        "image": "https://cdn.s3waas.gov.in/s386b122d4358357d834a87ce618a55de0/uploads/bfi_thumb/2018072163-olwae66h41pj5py26ploujp1w1awr3snlzulg7yqki.png",
        "description": "Built across Hemavati River, a tributary of Kaveri, located at Gorur. | हेमावती नदी पर निर्मित, कावेरी की उपनदी, गोरूर में स्थित।"
      },
      {
        "name": "Bisle Ghat, Sakleshpur (बिसले घाट, साकलेश्वर)",
        "image": "https://cdn.s3waas.gov.in/s386b122d4358357d834a87ce618a55de0/uploads/bfi_thumb/2018072184-1-olwae74bavqthbwp180bf1gihf69yswdy4i2xhxcea.png",
        "description": "40-hectare reserved forest area in Hettur hobli, Sakleshpur taluk. Known for scenic beauty. | हेत्टर होब्लि, साकलेश्वर तालुक में 40 हेक्टेयर आरक्षित वन क्षेत्र। प्राकृतिक सुंदरता के लिए प्रसिद्ध।"
      }
    ],

    "Haveri (हावेरी)": [
      {
        "name": "Siddhesvara Temple (सिद्धेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d5cfead94f5350c12c322b5b664544c1/uploads/bfi_thumb/2018080716-olwcky1jv7jm59it79f4b62q3j1atxiu3w2ic15z42.jpg",
        "description": "Located within Haveri city limits, walking distance from the bus stand. | हावेरी शहर के भीतर स्थित, बस स्टैंड से पैदल दूरी पर।"
      },
      {
        "name": "Tarakeshwara Temple (तारकेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d5cfead94f5350c12c322b5b664544c1/uploads/bfi_thumb/2018080224-olwckx3podibtnk6cr0hqob9i55xm8f3rrf0ur7daa.jpg",
        "description": "Named after the Tarakeshwara form of Lord Shiva. Historical temple of architectural significance. | भगवान शिव के तारकेश्वर रूप के नाम पर। स्थापत्य दृष्टि से ऐतिहासिक मंदिर।"
      },
      {
        "name": "Galageshwara Temple (गालागेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3d5cfead94f5350c12c322b5b664544c1/uploads/bfi_thumb/2018080219-olwckx3podibtnk6cr0hqob9i55xm8f3rrf0ur7daa.jpg",
        "description": "Also known as Galaganatha Temple, located in the village of Galaganath. Historical significance. | गालागनाथ गांव में स्थित, गालागनाथ मंदिर के नाम से भी जाना जाता है। ऐतिहासिक महत्व।"
      }
    ],

    "Kalaburagi (कलाबुरगी)": [
      {
        "name": "Dargah Khwaja Bandanawaz (दर्गाह ख्वाजा बंदनावाज)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/ac/90/65/photo1jpg.jpg?w=1000&h=-1&s=1",
        "description": "Women allowed in campus but not inside individual structures. Men need to cover heads. Famous Sufi shrine. | महिलाएँ परिसर में प्रवेश कर सकती हैं लेकिन संरचनाओं के अंदर नहीं। पुरुषों को सिर ढकना आवश्यक। प्रसिद्ध सूफी स्थल।"
      },
      {
        "name": "Chandralamba Temple (चंद्रालंबा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/22/c0/b7/main-temple.jpg?w=1000&h=800&s=1",
        "description": "Temple dedicated to goddess Chandrala Parameshwari. Pilgrims visit for blessings. | देवी चंद्राल परमेश्वरी को समर्पित मंदिर। श्रद्धालु आशीर्वाद लेने आते हैं।"
      },
      {
        "name": "Sharana Basaveshwara Temple (शरणा बसवेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/1e/f0/a9/temple.jpg?w=600&h=-1&s=1",
        "description": "Temple serves free meals to all pilgrims irrespective of religion. | मंदिर सभी श्रद्धालुओं को धर्म की परवाह किए बिना भोजन प्रदान करता है।"
      },
      {
        "name": "Gulbarga Fort (गुलबर्गा किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/a6/6a/89/images-2-largejpg.jpg?w=300&h=300&s=1",
        "description": "Historic fort with many ruined structures. One notable structure opposite the entrance houses 3 significant features. | ऐतिहासिक किला जिसमें कई खंडहरित संरचनाएँ हैं। प्रवेश द्वार के सामने एक संरचना में तीन महत्वपूर्ण विशेषताएँ हैं।"
      },
      {
        "name": "Dattatreya Temple (दत्तात्रेय मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/b0/25/77/entry-gate-of-shri-dattatreya.jpg?w=1000&h=800&s=1",
        "description": "Millions visit the Nirguna padukas of Sri Nrusimha Saraswathy. | लाखों लोग श्री नरसिंह सरस्वती के निर्गुण पादुकाओं के दर्शन करने आते हैं।"
      },
      {
        "name": "Chandrampalli Dam (चंद्रमपल्ली बाँध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/b2/cf/ae/chandrampalli-dam.jpg?w=700&h=-1&s=1",
        "description": "Big tank bund for walking; other side covered with forest. | पैदल चलने के लिए बड़ा बांध; दूसरी तरफ जंगल है।"
      },
      {
        "name": "The Haft Gumbaz Tomb (हाफ़्त गुम्बाज़ मकबरा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/8a/3c/af/img-20171218-124921-hdr.jpg?w=1000&h=-1&s=1",
        "description": "Tomb dedicated to Sultan Mujahid Shah, featuring curved designs all around. | सुल्तान मुजाहिद शाह को समर्पित मकबरा, चारों ओर घुमावदार डिज़ाइन के साथ।"
      },
      {
        "name": "Buddha Vihar (बुद्ध विहार)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/a6/5f/aa/download-largejpg.jpg?w=300&h=300&s=1",
        "description": "Peaceful vihara with meditation room. Talking and photography not allowed inside. | शांतिपूर्ण विहार जिसमें ध्यान कक्ष है। अंदर बात करना और फ़ोटोग्राफी निषिद्ध।"
      },
      {
        "name": "Manyakheta (मन्यखेता)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/1a/4c/f4/entrance.jpg?w=1000&h=800&s=1",
        "description": "Ancient ruins located 40 km from Gulbarga towards Sedam. | गुलबर्गा से 40 किमी दूर, सेडम की ओर स्थित प्राचीन खंडहर।"
      }
    ],

    "Kodagu (कोडगु)": [
      {
        "name": "Nagarahole Tiger Reserve (नगराहोले टाइगर रिज़र्व)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/20230227100-scaled-q2rx59pe1orkad1vxfqt6zant34do6nybh2h66i2ri.jpg",
        "description": "Spread over Mysore and Kodagu, covering 847.981 sq km. Important tiger reserve. | मैसूर और कोडगु में फैला, 847.981 वर्ग किमी क्षेत्र। महत्वपूर्ण बाघ अभयारण्य।"
      },
      {
        "name": "Harangi Tree Park and Elephant Camp (हरंगी ट्री पार्क और एलीफेंट कैंप)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2023011360-scaled-q0lljzx7ijp8cv4ff83urhcxvlop35rtb0wj71doxq.jpg",
        "description": "New elephant camp inaugurated in 2022 at Harangi, Kushalanagar taluk. | 2022 में हरंगी, कुशलनगर तालुक में नया हाथी शिविर।"
      },
      {
        "name": "Mandalpatti View Point (मंडालपट्टी व्यू प्वाइंट)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2023011360-q0lm0rdle6nbeirvjgyc892v8z2ccubhlzq9aoixz2.jpeg",
        "description": "Magnificent viewpoint overlooking Pushpagiri forests in Western Ghats. | पश्चिमी घाट में पुष्पगिरी जंगलों के दृश्य वाला शानदार स्थल।"
      },
      {
        "name": "Barpole White Water River Rafting (बारपोले रिवर राफ्टिंग)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2022120247-pyk5qneefd34mhj4aajo95k49apvqqarmw39wds6f2.jpg",
        "description": "27 km from Gonikoppal and 78 km from Madikeri; famous river rafting spot. | गोणिकॉपल से 27 किमी और मडिकेरी से 78 किमी; प्रसिद्ध रिवर राफ्टिंग स्थल।"
      },
      {
        "name": "Glenlorna Tea Plantation (ग्लेनलॉर्ना टी प्लांटेशन)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2022120250-2-pyk5iam1odndf9o12oj239gm5zwfbl4ntjbwbu65q6.jpg",
        "description": "1 km from Barapole River Rafting Point, 20 km from Gonikoppal. | बारपोले रिवर राफ्टिंग प्वाइंट से 1 किमी, गोणिकॉपल से 20 किमी।"
      },
      {
        "name": "Omkareshwara Temple (ओंकारेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018073015-olwcjxdt8dkvn0tfjxj58qpb1qqg3e6mxxr7vlhz0e.jpeg",
        "description": "Built by Lingarajendra II in 1820 to atone for killing an innocent Brahmin. | 1820 में लिंगराजेन्द्र द्वितीय द्वारा निर्दोष ब्राह्मण की हत्या का प्रायश्चित करने के लिए बनाया गया।"
      },
      {
        "name": "Bhagamandala (भगमंडला)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018072684-olwcjxdt8dkvn0tfjxj58qpb1qqg3e6mxxr7vlhz0e.jpg",
        "description": "Religious place 39 km from Madikeri. Features Triveni Sangama (confluence of three rivers: Cauvery, etc.). | मडिकेरी से 39 किमी दूर धार्मिक स्थल। त्रिवेणी संगम (तीन नदियों का संगम) यहाँ।"
      },
      {
        "name": "Nagarahole National Park (नगराहोले नेशनल पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018072613-olwcjwfz1jjlbeuspf4io8xugcv2vp2wlt3qebjd6m.jpg",
        "description": "Also called Rajiv Gandhi National Park. 'Nagarahole' means 'Cobra-river'. | राजीव गांधी नेशनल पार्क के नाम से भी जाना जाता है। 'नगराहोले' का अर्थ है 'नाग नदी'।"
      },
      {
        "name": "Raja’s Seat (राजा का सीट)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018073068-olwcjybnf7m5yms2efxrt8grn4ltb3ada2epcvgku6.jpg",
        "description": "1 km west of Madikeri bus stand; popular viewpoint of Kodava kings. | मडिकेरी बस स्टैंड से 1 किमी पश्चिम; कोडावा राजाओं का लोकप्रिय दृष्टिकोण।"
      },
      {
        "name": "Talacauvery (तालकावरी)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018070747-olwcjtmgh1fqckyw5vwmyrngo78z8lrplf59yhnjpa.jpg",
        "description": "Birthplace of sacred river Cauvery, 46 km from Madikeri. | पवित्र कावेरी नदी का जन्मस्थान, मडिकेरी से 46 किमी।"
      },
      {
        "name": "Dubare Elephant Camp (डुबरे एलीफेंट कैंप)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018070765-olwcjtmgh1fqckyw5vwmyrngo78z8lrplf59yhnjpa.jpg",
        "description": "Unique eco-tourism destination; training camp of Mysore Dasara elephants. | अद्वितीय ईको-टूरिज्म स्थल; मैसूर दशहरा हाथियों का प्रशिक्षण शिविर।"
      },
      {
        "name": "Chiklihole Reservoir (चिक्लीहोल जलाशय)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018070764-olwcjtmgh1fqckyw5vwmyrngo78z8lrplf59yhnjpa.jpg",
        "description": "Large water body offering relaxation and tranquillity. | विश्राम और शांति देने वाला बड़ा जलाशय।"
      },
      {
        "name": "Harangi Dam (हरंगी बाँध)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018070760-olwcjtmgh1fqckyw5vwmyrngo78z8lrplf59yhnjpa.jpg",
        "description": "33 km from Madikeri; reservoir in beautiful natural locale. | मडिकेरी से 33 किमी; सुंदर प्राकृतिक स्थल में जलाशय।"
      },
      {
        "name": "Madikeri Fort (मडिकेरी किला)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018072677-olwcjk82kp2v4hcjorud9u0uqcjb3mqe84mf5q1hfi.jpg",
        "description": "Located 500m from Madikeri bus stand on a hillock; built by Mudduraja. | मडिकेरी बस स्टैंड से 500 मीटर, पहाड़ी पर स्थित; मडूराजा द्वारा निर्मित।"
      },
      {
        "name": "Raja’s Tomb (Gaddige) (राजा का मकबरा / गद्दीगे)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018072037-olwcjukanvh0o6xj0eb9j9ex9l4cgavfxjsrfrm5j2.jpg",
        "description": "Tombs of Veerajendra and wives, 1.5 km from Madikeri bus stand. | वीरजेंद्र और उनकी पत्नियों के मकबरे, मडिकेरी बस स्टैंड से 1.5 किमी।"
      },
      {
        "name": "Abbey Falls (एबी फॉल्स)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018062652-olwcjpv3ppal254crua4oslmanridtcs8wjc1dt4e6.jpg",
        "description": "9 km from Madikeri; mountain stream cascading over rockface. | मडिकेरी से 9 किमी; पहाड़ी धारा चट्टान पर गिरती हुई।"
      },
      {
        "name": "Mallalli Water Falls (मल्लाल्ली जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018072341-olwcjcpd20skjlngwolcpvx5z9kde1wjj3ejbicmta.jpg",
        "description": "120 feet tall waterfall at the foot of Pushpagiri hills. | पुष्पगिरी पहाड़ियों के तल पर 120 फीट ऊँचा जलप्रपात।"
      },
      {
        "name": "Nalknad Aramane (Palace) (नलकनाड अरामने / महल)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018072657-olwcjcpd20skjlngwolcpvx5z9kde1wjj3ejbicmta.jpg",
        "description": "Palace built by Doddavirarajendra after escaping Tippu Sultan’s troops. | टिप्पू सुल्तान की सेनाओं से बचने के बाद डोड्डाविरराजेंद्र द्वारा निर्मित महल।"
      },
      {
        "name": "Irpu Waterfalls (इरपू जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018072626-olwcjcpd20skjlngwolcpvx5z9kde1wjj3ejbicmta.jpeg",
        "description": "Falls running through Bhramagiri hills in Kutta village. | कुट्टा गाँव में भरमागिरी पहाड़ियों से बहता जलप्रपात।"
      },
      {
        "name": "Nisargadhama (निसर्गधाम)",
        "image": "https://cdn.s3waas.gov.in/s3c8ed21db4f678f3b13b9d5ee16489088/uploads/bfi_thumb/2018072691-olwcjdn78utuv7m3r6zzadomknfqlr09v820ssb8n2.jpg",
        "description": "Tranquil forest resort on an island in the Cauvery, 28 km from Madikeri. | कावेरी नदी के द्वीप पर शांतिपूर्ण वन रिसॉर्ट, मडिकेरी से 28 किमी।"
      }
    ],

    "Kolar (कोलार)": [
      {
        "name": "Kolaramma Temple (कोलारम्मा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2018/08/2018080338.jpg",
        "description": "Historic Ganga-Chola temple in east of Kolar city. 'L' shaped with two sanctums; main deity Kolaramma along with Sapthamatrikas, Ganesha and Veerabhadra. | कोलार शहर के पूर्व में ऐतिहासिक गंगा-चोल मंदिर। 'एल' आकार का, दो गरभगृह; मुख्य देवता कोलारम्मा और सप्तमातृकाएँ, गणेश और वीरभद्र।"
      },
      {
        "name": "Antara Gange (अंतरगंगे)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092595-300x200.jpg",
        "description": "3 km west of Kolar city, natural spring from Basavanna, Deepa Stambha hilltop view, Kashi Visweswara temple. | कोलार से 3 किमी पश्चिम, बसवन्ना की प्राकृतिक झरना, दीप स्तंभ पहाड़ी दृश्य, काशी विश्वेश्वर मंदिर।"
      },
      {
        "name": "Someshwara Temple (सोमेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092525-300x200.jpg",
        "description": "Grand Dravidian architecture; open Mantapa, Kalyana and Vasantha Mantapas; Someshwara Linga 1.5 ft; beautiful Pushkarini and outer Gopura. | विशाल द्रविड़ वास्तुकला; खुला मंडप, कल्याण और वसंत मंडप; सोमेश्वर लिंग 1.5 फीट; सुंदर पुष्करिणी और बाहरी गोपुर।"
      },
      {
        "name": "Kurudumale (कुरुडुमाले)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092519-225x300.jpeg",
        "description": "12 km from Mulbagal; Vinayaka vigraha 13.5 ft; Vijayanagara textured Mukha Mantapa; Someshwara temple on boulder base. | मुलबगल से 12 किमी; विनायक विग्रह 13.5 फीट; विजयनगर शैली मंडप; बाउंडर बेस पर सोमेश्वर मंदिर।"
      },
      {
        "name": "Mulbagal (मुलबगल)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092598-300x200.jpg",
        "description": "Temple complex with Anjaneya, Rama-Sita-Lakshmana, Lakshmi Narasimha, Venugopala; Tirumala Venkatesha, Kanchi Varadaraja and Govindaraja also present. | अंजनेय, राम-सीता-लक्ष्मण, लक्ष्मी नरसिंह, वेनुगोपाल सहित मंदिर परिसर; तिरुमला वेंकटेश, कांची वरदराज और गोविंदराज।"
      },
      {
        "name": "Narasimha Theertha / Sripadaraju Mutt (नरसिंह तीर्थ / श्रीपादरायु मठ)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092537-300x200.jpg",
        "description": "2 km from Mulbagal; cave of Sri Vyasaraya; Yoga Narasimha Swamy swayambhu; Rathotsava in June-July. | मुलबगल से 2 किमी; श्री व्यासराय का गुफा; योग नरसिंह स्वामी स्वयंभू; रथोत्सव जून-जुलाई।"
      },
      {
        "name": "Avani (आवणी)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092512-300x200.jpg",
        "description": "12 km from Mulbagal; Ramalingeswara Swamy, Sita-Parvati temple; Lava Kusha Linga; historic inscriptions; Saraswathi temple for meditation. | मुलबगल से 12 किमी; रामालिंगेश्वर स्वामी, सीता-पार्वती मंदिर; लव-कुश लिंग; ऐतिहासिक शिलालेख; सरस्वती मंदिर।"
      },
      {
        "name": "Bangaru Tirupathi (बंगारु तिरुपति)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092586-300x200.jpg",
        "description": "Resembling Tirupati Venkateshwara, located at Guttahalli; main deity east facing, Padmavathi temple nearby, large pond (Kalyani). | तिरुपति वेंकटेश्वर के समान, गुट्टाहल्ली में; मुख्य देवता पूर्व की ओर, पास में पद्मावती मंदिर, बड़ा कल्याणी।"
      },
      {
        "name": "Virupakshi Temple (विरुपाक्षी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092573-300x200.jpg",
        "description": "Built by Lekkanna Dandesha; exquisitely carved main temple; Simha Vahana Durga temple; Manmatha Pushkarini; four-armed Durga with lion. | लेक्कन्ना डंडेशा द्वारा निर्मित; मुख्य मंदिर अत्यंत नक्काशीदार; सिम्ह वाहन दुर्गा मंदिर; मनमथ पुष्करिणी; शेर के साथ चार भुजाओं वाली दुर्गा।"
      },
      {
        "name": "Kolar Gold Fields (कोलार गोल्ड फील्ड्स)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092521-300x225.jpeg",
        "description": "Mining region and taluk; Robertsonpet headquarters; famous gold mining area; first power generation in early 1900s. | खनन क्षेत्र और तालुक; रॉबर्टसनपेट मुख्यालय; प्रसिद्ध सोने की खान; 1900 के दशक की शुरुआत में पहली विद्युत् उत्पादन।"
      },
      {
        "name": "Budikote (बुडिकोटे)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092559-300x200.jpg",
        "description": "Small village in Bangarpet Taluk; old fort; birthplace of Hyder Ali. | बंगलुरु तालुक में छोटा गाँव; पुराना किला; हैदर अली का जन्मस्थान।"
      },
      {
        "name": "Kotilinga (कोटिलिंग)",
        "image": "https://cdn.s3waas.gov.in/s3c0f168ce8900fa56e57789e2a2f2c9d0/uploads/2020/09/2020092545-300x225.jpeg",
        "description": "6 km from KGF; thousands of Shiva Lingas; main Shivalinga 108 ft tall; Lord Nandi 35 ft; eleven sub-temples; area of 15 acres. | केजीएफ से 6 किमी; हजारों शिवलिंग; मुख्य शिवलिंग 108 फीट; भगवान नंदी 35 फीट; 11 उप-मंदिर; 15 एकड़ क्षेत्र।"
      }
    ],

    "Koppal (कोप्पल)": [
      {
        "name": "Sri Krishnadevaraya Tomb (कृष्णदेवराया समाधि)",
        "image": "https://cdn.s3waas.gov.in/s36cd67d9b6f0150c77bda2eda01ae484c/uploads/bfi_thumb/2018072514-olw9gxlx38d0paca0hkgzmhcfd4dwpjqihaxdxe3vc.jpg",
        "description": "50' x 50' structure with 64 columns; an architectural tribute to Krishnadevaraya. | 50' x 50' संरचना, 64 स्तंभों के साथ; कृष्णदेवराया को समर्पित वास्तुकला।"
      },
      {
        "name": "Anjinadri-Betta / Anjanadri Parvata (अंजानाद्रि-बेट्टा / अंजानाद्रि पर्वत)",
        "image": "https://cdn.s3waas.gov.in/s36cd67d9b6f0150c77bda2eda01ae484c/uploads/bfi_thumb/2018080337-olw9guseiq95qggdgycla56yn7ia9m8ji3cgy3iae0.jpg",
        "description": "Believed to be the birthplace of Hanuman, the monkey God, in Hampi. | हम्पी में हनुमान भगवान का जन्मस्थान माना जाता है।"
      },
      {
        "name": "Huligemma Temple (हुलीगम्मा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s36cd67d9b6f0150c77bda2eda01ae484c/uploads/bfi_thumb/2018072568-olw9gle0mdwaicu0zuabl7kcpcsm4n784stm5bw848.jpg",
        "description": "13th-century temple devoted to Goddess Huligemma in Huligi. | 13वीं सदी का हुलीगम्मा मंदिर, हुलिगी।"
      },
      {
        "name": "Mahadeva Temple (महादेव मंदिर, इतागी)",
        "image": "https://cdn.s3waas.gov.in/s36cd67d9b6f0150c77bda2eda01ae484c/uploads/bfi_thumb/2018072542-olw9gle0mdwaicu0zuabl7kcpcsm4n784stm5bw848.jpg",
        "description": "Built in 1112 CE using abundant soapstone; first temple in the region using this material. | 1112 ईस्वी में निर्मित; साबुन पत्थर से बना पहला मंदिर।"
      },
      {
        "name": "Kanakachalapathi Temple (कनकाचलपति मंदिर, कनकागिरी)",
        "image": "https://cdn.s3waas.gov.in/s36cd67d9b6f0150c77bda2eda01ae484c/uploads/bfi_thumb/2018072545-olw9gle0mdwaicu0zuabl7kcpcsm4n784stm5bw848.jpg",
        "description": "Historical temple in Kanakagiri, 20 km north of Koppal; significant Vijayanagar-era architecture. | कनकागिरी में ऐतिहासिक मंदिर, कोप्पल से 20 किमी उत्तर; विजयनगर कालीन वास्तुकला।"
      },
      {
        "name": "Navabrindavanam Anegundi (नवाबृंदावनम्, अनगुंडी)",
        "image": "https://cdn.s3waas.gov.in/s36cd67d9b6f0150c77bda2eda01ae484c/uploads/bfi_thumb/2018072519-olw9gle0mdwaicu0zuabl7kcpcsm4n784stm5bw848.jpg",
        "description": "Located on a small island on Tungabhadra; contains samadhis of nine saints, followers of Madhvacharya. | तुंगभद्र नदी के छोटे द्वीप पर स्थित; नौ संतों के समाधि स्थल।"
      },
      {
        "name": "Chintamani Temple Anegundi (चिंतामणि मंदिर, अनगुंडी)",
        "image": "https://cdn.s3waas.gov.in/s36cd67d9b6f0150c77bda2eda01ae484c/uploads/bfi_thumb/2018090455-olw9h38y88kqmy433k08el23zocl6w64j97u9l5qu0.jpg",
        "description": "Historic temple highlighting the glory of Krishnadevaraya and Vijayanagar empire. | कृष्णदेवराया और विजयनगर साम्राज्य की महिमा को दर्शाने वाला ऐतिहासिक मंदिर।"
      },
      {
        "name": "Pampa Sarovar (पम्पा सरोवर)",
        "image": "https://cdn.s3waas.gov.in/s36cd67d9b6f0150c77bda2eda01ae484c/uploads/bfi_thumb/2018072517-olw9gle0mdwaicu0zuabl7kcpcsm4n784stm5bw848.jpg",
        "description": "One of the five sacred sarovars in India; important in Hindu mythology. | भारत के पांच पवित्र सरोवरों में से एक; हिंदू पौराणिक कथाओं में महत्वपूर्ण।"
      },
      {
        "name": "Koppal Fort (कोप्पल किला)",
        "image": "https://cdn.s3waas.gov.in/s36cd67d9b6f0150c77bda2eda01ae484c/uploads/bfi_thumb/2018072596-olw9gle0mdwaicu0zuabl7kcpcsm4n784stm5bw848.jpg",
        "description": "Historical fort of Koppal; exact origin and builder unknown but significant for heritage and architecture. | कोप्पल का ऐतिहासिक किला; निर्माता अज्ञात, परंपरा और वास्तुकला के लिए महत्वपूर्ण।"
      }
    ],

    "Mandya (मांड्या)": [
      {
        "name": "Mahadevapura (महादेवपुरा)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120395-1-pylyys00ka2frmxfgo9pxsob14ezwshztyhdrfd7gi.jpg",
        "description": "15 km east of Srirangapattana, on the right bank of the river Kaveri. | श्रीरंगपट्टण से 15 किमी पूर्व, कावेरी नदी के दाहिने तट पर।"
      },
      {
        "name": "Karighatta (करीघट्टा)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120331-1-pylyztlk5nhwo1etd4ispj6qsj9ogon9b4ksyhtgjm.jpg",
        "description": "5 km east of Srirangapattana; historic hill with religious significance. | श्रीरंगपट्टण से 5 किमी पूर्व; ऐतिहासिक और धार्मिक महत्व वाला पहाड़।"
      },
      {
        "name": "Gosaigha / Gosai Ghat (गोसाई घाट)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120365-scaled-pylz0v73r0xdkfw79krvh9p6jy4d0ksisao85k9pmq.jpg",
        "description": "1 km south of river Kaveri; adventure and scenic spot. | कावेरी नदी के दक्षिण में 1 किमी; साहसिक और प्राकृतिक सुंदरता वाला स्थल।"
      },
      {
        "name": "Sangam / Sangama (संगम)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120392-scaled-pylz20k03qhzra84k2ngiz9gowgif9cplzdl9qke0y.jpg",
        "description": "Confluence of Shimsha and Kaveri rivers, called 'Tore Kudala'. | शिम्शा और कावेरी नदियों का संगम, 'तोर कुदला' के नाम से प्रसिद्ध।"
      },
      {
        "name": "Balamuri (बलामुरी)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120334-scaled-pylz35wwgg2ly4k1ukj1kotqtusntxwwfo2ydwv2f6.jpg",
        "description": "3 km northwest from Belagola; adventure and scenic site. | बेलगोल से 3 किमी उत्तर-पश्चिम; साहसिक और प्राकृतिक स्थल।"
      },
      {
        "name": "Nimishamba Temple (निमिषाम्बा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120343-1-scaled-pylz4e3bdnr33srvolmibvoeqyqwvpsa9qqrxx1kaq.jpg",
        "description": "Historic temple on the northern bank of Kaveri at Ganjam; Puranic legend attached. | कावेरी नदी के उत्तर तट पर गंजम में स्थित; पुराणिक कथाओं वाला मंदिर।"
      },
      {
        "name": "Hulikere (हुलिकेरे)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120338-pylz5bxi7p1epreq7092tn504u44ktimee897vne2q.jpg",
        "description": "Built during Krishna Raja Sagara Dam construction; supports local agriculture. | कृष्णराज सागर बांध निर्माण के समय; स्थानीय कृषि के लिए उपयोगी।"
      },
      {
        "name": "Ranganathittu (रंगनाथित्टु)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120339-scaled-pylz6apj8kd0nc07jxa9vwd243cphmcov6d7z47toi.jpg",
        "description": "3 km west of Srirangapattana; natural beauty and recreational spot. | श्रीरंगपट्टण से 3 किमी पश्चिम; प्राकृतिक सुंदरता और मनोरंजन स्थल।"
      },
      {
        "name": "Brindavan Garden / KRS Brindavan (ब्रिंदावन गार्डन)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120319-scaled-pylz7lpgqa5cru3xxhlmcki3tcx26hj9pmzhyya51e.jpg",
        "description": "Located at the bottom of KRS Dam; world famous gardens. | KRS बांध के तल में स्थित; विश्व प्रसिद्ध उद्यान।"
      },
      {
        "name": "KRS Dam (कृष्णराज सागर बांध)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120345-pylz8md64tjjcmmozfg2jt92zdwdioksuoffoqrsaq.jpg",
        "description": "Dam across river Kaveri at Kannambadi; scenic and recreational importance. | कावेरी नदी पर बांध, कानम्बाड़ी में; प्राकृतिक और मनोरंजन महत्व।"
      },
      {
        "name": "Dariya Doulath (दरियादौलत)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120397-scaled-pylz9tlqv76q6ovvyy4wqicab3z9crcgcmfrrgzoci.jpg",
        "description": "Historic site outside the fortified area, near Sangama. | किलेबंदी क्षेत्र के बाहर ऐतिहासिक स्थल, संगम के पास।"
      },
      {
        "name": "Kotebetta (कोटेबेट्टा)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120321-pylzdz231uvbgousq8ql8ymkrdimcmtrx65z2gu2v6.jpg",
        "description": "Religious village 8 km from sub-district headquarters. | धार्मिक गांव, उप-जिला मुख्यालय से 8 किमी।"
      },
      {
        "name": "Kambadahalli / Panchakuta Basadi (कंबदहल्ली / पंचकूट बासादी)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120373-pylzf78hz2jsmd2mk9u205h8ohgveep5r8tsmh0kqq.jpg",
        "description": "Historic temple complex in Kambadahalli village. | कंबदहल्ली गाँव में ऐतिहासिक मंदिर परिसर।"
      },
      {
        "name": "Halathi (हालथी)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120344-pylzghal9yauf97q3bqrwbutsd5uvks09ksl514a9u.jpg",
        "description": "Sacred site of Puranic importance near village Alati. | अलती गांव के पास पुराणिक महत्व वाला पवित्र स्थल।"
      },
      {
        "name": "Adichunchanagiri (अदिचुंचनागिरी)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120317-scaled-pylzkw5bcycaxcszbqeq3prq6hew0fan7f1n8skr2a.jpg",
        "description": "Pilgrim centre 20 km north from Nagamangala. | नागमंगला से 20 किमी उत्तर; तीर्थ स्थल।"
      },
      {
        "name": "Arathi Ukkada (आरति उक्कड़ा)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120360-scaled-pym70pbwkmyctpsmhzv30mun7neq3vhh0ygynxho8y.jpg",
        "description": "Religious site connected to Gouthama Maharshi and Ahalya legend. | गौतम महर्षि और अहल्या की कथा से जुड़ा धार्मिक स्थल।"
      },
      {
        "name": "Kunthi Betta (कुंठी बेट्टा)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120367-scaled-pym7235cmuujx1s9f3eb6sa2p2l6ftz8vt1p3lft36.jpg",
        "description": "Adventure and historic site at the foot of Kunti Betta. | कुंठी बेट्टा के पांव में साहसिक और ऐतिहासिक स्थल।"
      },
      {
        "name": "Tonnuru Lake / Kere Thonnuru (टोनुरु झील)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120373-1-scaled-pym73f34beo6d5umn64a7y6kzq0wce9k2ebgkpgq9u.jpg",
        "description": "Historic site 10 km NW of Pandavapura; ancient inscriptions present. | पांडवपुरा से 10 किमी उत्तर-पश्चिम; प्राचीन शिलालेख मौजूद।"
      },
      {
        "name": "Melukote (मेलुकोटे)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120388-scaled-pym6zsfjxfpbjd4eu3n53d5if5wvmguv8fmyv8ugaq.jpg",
        "description": "Adventure and historic religious site on Yadugiri hill, 24 km north of Pandavapura. | यदुगिरि पहाड़ पर, पांडवपुरा से 24 किमी उत्तर; साहसिक और ऐतिहासिक धार्मिक स्थल।"
      },
      {
        "name": "Kokkare Belluru (कोक्करे बेल्लुरु)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120380-scaled-pym0dnzgkdqabn0db65lfgdot3ldmviuhtyq3pwwle.jpg",
        "description": "18 km NW of Madduru; natural beauty and scenic importance. | मडूरु से 18 किमी उत्तर-पश्चिम; प्राकृतिक सुंदरता।"
      },
      {
        "name": "Konanahalli Lake (कोनानहल्ली झील)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120335-pym0bojq4z0ht9w4wb9y5yenntdhdvn8w0dtmoutqa.jpg",
        "description": "Located near Bengaluru–Mysuru highway; scenic lake. | बेंगलुरु-मysuru हाईवे के पास; प्राकृतिक सुंदर झील।"
      },
      {
        "name": "Guttalu Lake (गुत्तालु झील)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120338-1-pym08zqcl1bylfsrlnfdj4u6h4mod1yw6p6t76udj6.jpg",
        "description": "Near Guttalu Sri Arkeshwara Temple; natural scenic spot. | गुत्तालु श्री अर्केश्वर मंदिर के पास; प्राकृतिक स्थल।"
      },
      {
        "name": "Sri Basaveshwara Temple, Ganadalu (श्री बसवेश्वर मंदिर, गणादलु)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120389-pym0k37r9mitnpohsy3tgu12xvxo8f0tdmg65se22q.jpg",
        "description": "Religious temple in Ganadalu village, 11 km from Mandya HQ. | गणादलु गांव में धार्मिक मंदिर, मंड्या मुख्यालय से 11 किमी।"
      },
      {
        "name": "Hosaholalu / Lakshminarayana Temple (होसाहोलालु / लक्ष्मीनारायण मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120349-scaled-pylzqwc70uk93o2y9bux177qt3tb6t4wp53bmfo7b6.jpg",
        "description": "Historic temple in Hosaholalu near Krishnarajapet. | कृष्णराजापेट के पास होसाहोलालु में ऐतिहासिक मंदिर।"
      },
      {
        "name": "Kikkeri Temple (किक्केरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120399-scaled-pylvhi2dp6koekwczitqmeqoudvw115v9wdp5t44qq.jpg",
        "description": "Historic and religious hobli centre 14 km NW of Krishnarajapete. | कृष्णराजापेट से 14 किमी उत्तर-पश्चिम; ऐतिहासिक और धार्मिक स्थल।"
      },
      {
        "name": "Hemagiri Falls (हेमागिरि जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120331-pylvclcq0burrw11nefvlnc15y2vtxobxlqexse58i.jpg",
        "description": "Small hill with river Hemavathi; adventure and scenic beauty. | हेमावथी नदी वाला छोटा पहाड़; साहसिक और प्राकृतिक स्थल।"
      },
      {
        "name": "Hanumantha Nagara (हनुमंथ नगर)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120320-scaled-pylv722xrg9zek2hz0ayx1mb89d2i3p8i7fh74llvm.jpg",
        "description": "Hamlet of Karadakere village; scenic and religious importance. | करदकरे गांव का छोटा गांव; प्राकृतिक और धार्मिक महत्व।"
      },
      {
        "name": "Jain Monuments at Aretippuru (जैन स्मारक, अरतिप्पुरु)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120357-pylve5r1edzz4hr4i2thr93ot2cwnrw85cvjqe2iv6.jpg",
        "description": "Historic Jain site with 10 monuments. | 10 स्मारकों वाला ऐतिहासिक जैन स्थल।"
      },
      {
        "name": "Shivapura Satyagraha Soudha (शिवपुरा सत्याग्रह सौधा)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120364-1-pylvvra9cq38ho6vqoo1ft8d6rmarrrb8gkt6vz6de.jpg",
        "description": "Historic town famous for Satyagraha movement; freedom struggle site. | सत्याग्रह आंदोलन के लिए प्रसिद्ध ऐतिहासिक शहर; स्वतंत्रता संग्राम स्थल।"
      },
      {
        "name": "Gagana Chukki Falls (गगना चुक्की जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120311-pym6zcgap93g1zrmfeqhez6obm3mzm3fi8jppji58i.jpg",
        "description": "Falls on left bank of Kaveri; scenic and recreational spot. | कावेरी नदी के बाएं तट पर जलप्रपात; प्राकृतिक स्थल।"
      },
      {
        "name": "Chikkamuttatti / Muttettiraya Temple (चिक्कामुत्तत्ती / मुठेटिराया मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120343-pylywti4bpdxkvrtwbsp8sgqh82gvhq4k9jyro9qf6.jpg",
        "description": "Historic and religious site with stone pillars near mango grove. | आम के बाग के पास ऐतिहासिक और धार्मिक स्थल, पत्थर के स्तंभों के साथ।"
      },
      {
        "name": "Muttatti Temple (मुठाट्टी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120395-pylviq8sme95k946tjx7dllcrhu52t193z1iptamma.jpg",
        "description": "45 km SE from Malavalli; historic and religious temple on Cauvery bank. | मळावली से 45 किमी दक्षिण-पूर्व; कावेरी नदी के किनारे ऐतिहासिक मंदिर।"
      },
      {
        "name": "Antaravalli Beta (अंतरावल्ली)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120398-pylw5bb6u366iyb5xtdhsef2lsin0zp2jrciu5t342.jpg",
        "description": "15 km NE from Malavalli; historic adventure site with inscriptions. | मळावली से 15 किमी उत्तर-पूर्व; शिलालेख वाला ऐतिहासिक स्थल।"
      },
      {
        "name": "Hosabudanuru (होसाबुदनुरु)",
        "image": "https://cdn.s3waas.gov.in/s3f1c1592588411002af340cbaedd6fc33/uploads/bfi_thumb/2022120364-pylvtdqy2su555n4m5ozmwtf4pbwbbbqkp7mipi03m.jpg",
        "description": "Historic and religious site with inscriptions, 5 km from taluk centre. | शिलालेखों वाला ऐतिहासिक और धार्मिक स्थल, तालुक केंद्र से 5 किमी।"
      }
    ],

    "Mysuru (मिसूरु)": [
      {
        "name": "Jaganmohan Palace (जगन्नाथ मोहन पैलेस)",
        "image": "https://cdn.s3waas.gov.in/s30d3180d672e08b4c5312dcdafdf6ef36/uploads/bfi_thumb/2018080651-olw6vcsbtfjau7yx40572v4srt1luv1p5edwsmtj7i.jpg",
        "description": "Built in 1861 by Mummadi Krishnaraja Wodeyar in traditional Hindu architectural style. | 1861 में मुम्मडी कृष्णराज वोडेयार द्वारा पारंपरिक हिंदू वास्तुकला में निर्मित।"
      },
      {
        "name": "Railway Museum (रेलवे म्यूजियम)",
        "image": "https://cdn.s3waas.gov.in/s30d3180d672e08b4c5312dcdafdf6ef36/uploads/bfi_thumb/2018080679-olw6vdq609kl5txjyijtncw9d6wz2k5fhj1e9ws51a.jpg",
        "description": "Located on Princess Road; established in 1979 showcasing historic trains. | प्रिंसेस रोड पर स्थित; 1979 में स्थापित, ऐतिहासिक रेलगाड़ियों का प्रदर्शन।"
      },
      {
        "name": "Chamundi Hill (चामुंडी हिल)",
        "image": "https://cdn.s3waas.gov.in/s30d3180d672e08b4c5312dcdafdf6ef36/uploads/bfi_thumb/2018080396-olw6vawnfrgq701nezbxxvlvl1avfgu8h52xu2wbjy.jpg",
        "description": "Home to Chamundeswari Temple, 3,489 ft above sea level. | चामुंडेश्वरी मंदिर, समुद्र तल से 3,489 फीट ऊपर।"
      },
      {
        "name": "Srikanteshwara / Nanjundeswara Temple (श्रीकांतेश्वर / नांजुंडेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9K1Z1ne4R4qayu4pt9YrXZvVxfVdsHhofkw&s",
        "description": "Located on the right bank of river Kapila in Nanjangud. | नांजुंगुड में कापिला नदी के दाहिने तट पर स्थित।"
      },
      {
        "name": "Mysuru Palace / Amba Vilas Palace (मिसूरु पैलेस / अम्बा विलास पैलेस)",
        "image": "https://cdn.s3waas.gov.in/s30d3180d672e08b4c5312dcdafdf6ef36/uploads/bfi_thumb/2018080622-olw6uyoqyx0002jeec1sjgovv0z3nehq3glmlhefsu.jpg",
        "description": "Historical palace in Mysuru, known for its grand architecture and royal heritage. | मिसूरु का ऐतिहासिक महल, भव्य वास्तुकला और शाही धरोहर के लिए प्रसिद्ध।"
      },
      {
        "name": "Mysuru Zoo / Sri Chamarajendra Zoological Garden (मिसूरु जू / श्री चमराजेंद्र चिड़ियाघर)",
        "image": "https://cdn.s3waas.gov.in/s30d3180d672e08b4c5312dcdafdf6ef36/uploads/bfi_thumb/2018080622-1-olw6uyoqyx0002jeec1sjgovv0z3nehq3glmlhefsu.jpg",
        "description": "Started in 1892 by Chamaraja Wodeyar X; home to numerous species. | 1892 में चमराज वोडेयार X द्वारा स्थापित; विभिन्न प्रजातियों का घर।"
      },
      {
        "name": "St Philomena’s Church (सेंट फिलोमेना चर्च)",
        "image": "https://cdn.s3waas.gov.in/s30d3180d672e08b4c5312dcdafdf6ef36/uploads/bfi_thumb/2018080613-olw6uyoqyx0002jeec1sjgovv0z3nehq3glmlhefsu.jpg",
        "description": "Built in 1804 in Gothic style, featuring statue of St. Philomena. | 1804 में गोथिक शैली में निर्मित, सेंट फिलोमेना की मूर्ति सहित।"
      },
      {
        "name": "Talakadu (तालकाडु)",
        "image": "https://cdn.s3waas.gov.in/s30d3180d672e08b4c5312dcdafdf6ef36/uploads/bfi_thumb/2018080653-olw6uyoqyx0002jeec1sjgovv0z3nehq3glmlhefsu.jpg",
        "description": "Historic site on left bank of Kaveri where the river bends sharply. | कावेरी नदी के बाएं तट पर ऐतिहासिक स्थल, जहाँ नदी तीव्र मोड़ लेती है।"
      },
      {
        "name": "Kabini / Kapila River (कबिनी / कपिला नदी)",
        "image": "https://cdn.s3waas.gov.in/s30d3180d672e08b4c5312dcdafdf6ef36/uploads/bfi_thumb/2018080656-olw6uyoqyx0002jeec1sjgovv0z3nehq3glmlhefsu.jpg",
        "description": "River originating in Wayanad District; important for wildlife and scenery. | वायनाड जिले से उत्पन्न नदी; वन्य जीवन और प्राकृतिक सौंदर्य के लिए महत्वपूर्ण।"
      },
      {
        "name": "Karanji Lake (करंजी झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTit8Bb3Fw4vig7Att-9n0hbU7fWwI6433IuQ&s",
        "description": "Scenic lake with boating and birdwatching; timings 8:30 am to 5:30 pm. | सुंदर झील, नौका विहार और पक्षी दर्शन के लिए; समय 8:30 पूर्वाह्न से 5:30 अपराह्न।"
      }
    ],

    "Ramanagara (रामनगर)": [
      {
        "name": "Shri Someshwara Swamy Temple (श्री सोमेश्वर स्वामी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s35f0f5e5f33945135b874349cfbed4fb9/uploads/bfi_thumb/2024022070-qk2ohaeeqixwkj8jn0sngsmntqw6s77nesbn9ud62q.jpg",
        "description": "Nestled in historic town of Magadi; important religious site. | मैगड़ी के ऐतिहासिक शहर में स्थित; महत्वपूर्ण धार्मिक स्थल।"
      },
      {
        "name": "Shri Kabbalamma Devi Temple (श्री काब्बलम्मा देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s35f0f5e5f33945135b874349cfbed4fb9/uploads/bfi_thumb/2024021640-qjvw1on61wy32x5j5ceqzcetn70v05e5ksekjlmkg2.jpg",
        "description": "Located along Kanakapura Main Road; serene religious site. | कनकपुरा मुख्य सड़क के किनारे; शांतिपूर्ण धार्मिक स्थल।"
      },
      {
        "name": "WonderLa (वंडरला)",
        "image": "https://cdn.s3waas.gov.in/s35f0f5e5f33945135b874349cfbed4fb9/uploads/bfi_thumb/2018072435-1-olw966cf87hdqruo36zbn5dcxs5fh44xw8lfsz73sy.jpg",
        "description": "Amusement park on Bangalore-Mysore Highway, 25 km from Bangalore. | बेंगलुरु-मysore हाइवे पर 25 किमी दूर, मनोरंजन पार्क।"
      },
      {
        "name": "Ramadevara Betta (रामदेवर बेत्ता)",
        "image": "https://cdn.s3waas.gov.in/s35f0f5e5f33945135b874349cfbed4fb9/uploads/bfi_thumb/2024021664-qjvt72lfz0h7ne7cbzmxs8lb2wscpo11gwkci5rrpe.jpg",
        "description": "Prominent hill amidst picturesque landscape of Ramanagara. | रमणगरा के खूबसूरत परिदृश्य में स्थित प्रमुख पहाड़ी।"
      },
      {
        "name": "Innovative Film City (इननोवेटिव फिल्म सिटी)",
        "image": "https://cdn.s3waas.gov.in/s35f0f5e5f33945135b874349cfbed4fb9/uploads/bfi_thumb/2018072447-1-olw967a9f1io2dtaxpdy7n4tj60sot8o8d8xa95pmq.jpg",
        "description": "Located on Bangalore-Mysore Highway, 35 km from Bangalore; similar to Ramoji Film City. | बेंगलुरु-मysore हाइवे पर 35 किमी दूर; रामोजी फिल्म सिटी जैसी।"
      },
      {
        "name": "Janapada Loka (जनपद लोक / फोकल म्यूजियम)",
        "image": "https://cdn.s3waas.gov.in/s35f0f5e5f33945135b874349cfbed4fb9/uploads/bfi_thumb/2018072860-olw96bzgd7p3ofmh69f323y4i3dmrarbx0icomyqrm.jpg",
        "description": "Folk museum showcasing Karnataka’s folk culture, 4 km from Ramanagara. | कर्नाटक की लोक संस्कृति का प्रदर्शन करने वाला संग्रहालय, रमणगरा से 4 किमी।"
      },
      {
        "name": "Sangama and Mekedatu (संगम और मेकेदातु)",
        "image": "https://cdn.s3waas.gov.in/s35f0f5e5f33945135b874349cfbed4fb9/uploads/bfi_thumb/2018071974-olw964gqujet3jxee662i5ufr0ep1pxh7zaguf9w5e.jpg",
        "description": "Village in Kanakapura taluk; confluence of rivers near Ramanagara, 60 km away. | कनकपुरा तालुक का गांव; रमणगरा से 60 किमी दूर नदियों का संगम।"
      },
      {
        "name": "Manchanabele Reservoir (मंचनबेले जलाशय)",
        "image": "https://cdn.s3waas.gov.in/s35f0f5e5f33945135b874349cfbed4fb9/uploads/bfi_thumb/2018072068-1-olw966cf87hdqruo36zbn5dcxs5fh44xw8lfsz73sy.jpg",
        "description": "Dam about 18 km from Ramanagara; also accessible via Magadi. | रमणगरा से 18 किमी दूर; मैगड़ी मार्ग से भी पहुंचा जा सकता है।"
      },
      {
        "name": "Kanva Dam / Arkavati Dam (कान्वा डैम / अर्कावती डैम)",
        "image": "https://cdn.s3waas.gov.in/s35f0f5e5f33945135b874349cfbed4fb9/uploads/bfi_thumb/2018080347-olw96dv4qvrobnjqva8c73h1ov4d6oysl9tbn6vyf6.jpg",
        "description": "15 km from Ramanagara near Kannamangala; Kanva river named after sage Kanva. | रमणगरा से 15 किमी, कन्नामंगल के पास; कान्वा नदी का नाम ऋषि कान्वा पर।"
      }
    ],

    "Raichur (रायचूर)": [
      {
        "name": "Sugureshwara Temple (सुगुरेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2023120550-qgcp6f5pxtvdrc0b6hl3tyh8rp2sb3nqysgnzgep6m.jpeg",
        "description": "Tucked away in the serene town of Devasugur; important religious site. | देवसुगुर के शांत शहर में स्थित; महत्वपूर्ण धार्मिक स्थल।"
      },
      {
        "name": "Sri Dattatreya Temple, Kuruvapura (श्री दत्तात्रेय मंदिर, कुरुवापुर)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2020090544-ov0otq7wnftgnfunhqoutymcji4uxj0d8f5jphczcu.jpg",
        "description": "Pilgrimage site dedicated to Lord Dattatreya; attracts devotees from all over. | भगवान दत्तात्रेय को समर्पित तीर्थस्थल; भक्तों को आकर्षित करता है।"
      },
      {
        "name": "Raichur Fort (रायचूर किला)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2021070532-p9o2rjvtylc3ywxqm7ghv6c1nm2ot3438r5wm4962m.jpg",
        "description": "Historic fort in the heart of Raichur city; known for its architecture and past strategic importance. | रायचूर शहर के केंद्र में ऐतिहासिक किला; वास्तुकला और ऐतिहासिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Panchamukhi Anjaneya Temple, Ganadala (पंचमुखी अंजनेय मंदिर, गणदाला)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2020090532-ov0oncvabv3hyl3sozjvxkhvlhjardpv0vz2lyt1j2.jpg",
        "description": "Nestled in scenic landscapes; religious significance. | सुन्दर दृश्यों में स्थित; धार्मिक महत्व।"
      },
      {
        "name": "Maliyabad Stone Elephant (मलियाबाद पत्थर का हाथी)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2020090519-ov0ojc453dlcamy268zc9l0w45crtzr74ziapcro5a.jpg",
        "description": "Historic stone sculpture in Raichur town. | रायचूर शहर में ऐतिहासिक पत्थर की मूर्ति।"
      },
      {
        "name": "Naradagadde (नारदगड्डे)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2020090571-ov0of2wg5drlq74m0wr5h5oracbxzbuy7x65h92ubi.jpg",
        "description": "Island village near Kuruvukala; religious significance. | कुरुवुकला के पास द्वीप गांव; धार्मिक महत्व।"
      },
      {
        "name": "Hatti Goldmines (हट्टी गोल्डमाइंस)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2020090554-ov0pmtc44vmvx1lnnbb8zmduaqrr4chckdwgbq8eta.jpg",
        "description": "Gold mining area in Deccan Plateau; historical significance. | डेक्कन पठार में सोने की खान; ऐतिहासिक महत्व।"
      },
      {
        "name": "Kalluru Sri Mahalaxmi Devi Temple (कल्लुरु श्री महालक्ष्मी देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2020090584-ov0o85t7uaam9j6fff30mejlv8fobje2xoahaxc64e.jpg",
        "description": "Located about 20 km from Raichur; attracts pilgrims. | रायचूर से लगभग 20 किमी दूर; तीर्थयात्रियों को आकर्षित करता है।"
      },
      {
        "name": "Amba Math (अम्बा माता मठ)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2021081017-pbebg02tt8vxpbbmvuxsds6seh9obvdywpnbjm9r0e.jpg",
        "description": "Religious site in Raichur city. | रायचूर शहर में धार्मिक स्थल।"
      },
      {
        "name": "Jaladurga Fort (जलादुर्गा किला)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2023120698-qgej5ypu6ht7lledobvwdhwzecbrl0egwmz90e5zwe.jpeg",
        "description": "Historic fort in Raichur district. | रायचूर जिले में ऐतिहासिक किला।"
      },
      {
        "name": "Ashoka Inscription (अशोक शिलालेख)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2021070595-p9ntbc6sbblxrv4785boe0zxcyy0syhl4up5eooy66.jpg",
        "description": "Located in Maski village; historical importance. | मास्की गांव में स्थित; ऐतिहासिक महत्व।"
      },
      {
        "name": "Mudgal Fort (मुडगल किला)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2020090567-ov0peeo3084k2ltaqohdoqrf0o7k9t3s2ru3smp6gu.jpg",
        "description": "Historic fort in Raichur; strategic significance. | रायचूर में ऐतिहासिक किला; रणनीतिक महत्व।"
      },
      {
        "name": "500-Year-Old Tree, Devadurga (500 साल का पेड़, देवदुर्गा)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2020090566-ov0plybfvcgf9wupofwk7c7mp10n2c27g4dfhlieim.jpg",
        "description": "Ancient tree in Devadurga town; historic landmark. | देवदुर्गा शहर में प्राचीन पेड़; ऐतिहासिक स्थल।"
      },
      {
        "name": "Gundalabandi Falls (गुंडलाबंदी झरना)",
        "image": "https://cdn.s3waas.gov.in/s34b04a686b0ad13dce35fa99fa4161c65/uploads/bfi_thumb/2020090513-ov0pm30mtimuvynvwzxp1t0xnydh4tkv4rmuvzbfni.jpg",
        "description": "Waterfalls along Bidar-Srirangapatna Highway; natural beauty. | बीदर-सिरंगपट्टणा हाईवे के किनारे झरना; प्राकृतिक सुंदरता।"
      }
    ],

    "Shivamogga (शिवमोग्गा)": [
      {
        "name": "Jog Falls (जोग फ़ॉल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/44/df/4b/jogg-falls.jpg?w=1000&h=800&s=1",
        "description": "Majestic waterfall surrounded by verdant forests; seasonal bird watching available. | हरित जंगलों से घिरा भव्य जलप्रपात; मौसमी पक्षी दर्शन संभव।"
      },
      {
        "name": "Sakrebailu Elephant Camp (सकरेबैलू हाथी शिविर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/17/c8/c4/sakrebailu-elephant-camp.jpg?w=1000&h=800&s=1",
        "description": "Elephant bathing, rides, and sight-seeing with elephants of different ages and sexes. | विभिन्न उम्र और लिंग के हाथियों के साथ नहाना, सवारी और दर्शन।"
      },
      {
        "name": "Kodachadri (कोडचाद्री)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/e8/ec/7e/kodachadri.jpg?w=1000&h=800&s=1",
        "description": "Popular trekking destination, 26 km round trip; scenic natural beauty. | प्रसिद्ध ट्रेकिंग स्थल, 26 किमी राउंड ट्रिप; प्राकृतिक सुंदरता।"
      },
      {
        "name": "Kundadri (कुंडाद्री)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/1f/e8/70/kundadri.jpg?w=1000&h=800&s=1",
        "description": "17th-century Jain temple atop the hill; cloud-surrounded experience. | 17वीं सदी का जैन मंदिर; बादलों से घिरा अनुभव।"
      },
      {
        "name": "Sharavati River (शरावती नदी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/71/e0/34/honnemarudu.jpg?w=400&h=-1&s=1",
        "description": "Scenic river with small islands; access to Sigandhur temple. | छोटे द्वीपों के साथ सुरम्य नदी; सिगंधुर मंदिर तक पहुँच।"
      },
      {
        "name": "Kudajadri Hills (कुड़जाद्री पहाड़ियाँ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/ca/c9/e9/caption.jpg?w=1000&h=800&s=1",
        "description": "Trekking and temple visits amidst beautiful nature. | सुंदर प्राकृतिक वातावरण में ट्रेकिंग और मंदिर दर्शन।"
      },
      {
        "name": "Tiger and Lion Safari, Shimoga (शिवमोग्गा टाइगर और लायन सफारी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/c4/b4/0f/safari-tiger-enclosure.jpg?w=1000&h=-1&s=1",
        "description": "Zoo and safari experience suitable for families with children. | बच्चों वाले परिवारों के लिए उपयुक्त चिड़ियाघर और सफारी अनुभव।"
      },
      {
        "name": "Keladi (केलाडी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/78/a7/9e/img-20151102-wa0015-largejpg.jpg?w=1000&h=800&s=1",
        "description": "Historic Rameshwar temple; ancient site worth visiting. | ऐतिहासिक रामेश्वर मंदिर; पुराने स्थल की यात्रा करने योग्य।"
      },
      {
        "name": "Dabbe Falls (डब्बे जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/5c/a2/9e/path-of-trek-and-waterfalls.jpg?w=1000&h=800&s=1",
        "description": "Beautiful waterfall with excellent climate; scenic and relaxing. | शानदार जलप्रपात, सुंदर दृश्य और आरामदायक।"
      },
      {
        "name": "Bhadra River Project Dam (भद्र नदी परियोजना बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/dd/71/70/photo4jpg.jpg?w=1000&h=800&s=1",
        "description": "Dam near Bhadravati and Shimoga; scenic surroundings. | भद्रावती और शिवमोग्गा के पास बांध; सुरम्य परिवेश।"
      },
      {
        "name": "Hidlumane Falls (हिड्लुमाने जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/8b/85/dd/img-20171215-111509-largejpg.jpg?w=1000&h=-1&s=1",
        "description": "Series of falls at the base of Kodachadri hill in Mookambika reserve forest. | मूकांबिका रिज़र्व फ़ॉरेस्ट में कोडचाद्री पहाड़ी के आधार पर झरने की श्रृंखला।"
      },
      {
        "name": "Linganamakki Dam (लिंगानमक्की बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/8f/f8/a5/view-of-dam.jpg?w=1000&h=800&s=1",
        "description": "Restricted area dam; best visited June to October. | प्रतिबंधित क्षेत्र का बांध; जून से अक्टूबर में दौरा करें।"
      },
      {
        "name": "Nagara Fort (नगर किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/7f/5b/30/img-20180330-132121-largejpg.jpg?w=1000&h=800&s=1",
        "description": "Historic fort with scenic views; good for photography. | ऐतिहासिक किला, सुंदर दृश्य; फोटोग्राफी के लिए उपयुक्त।"
      },
      {
        "name": "Mattur Lake (मत्तुर झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/8c/26/ae/mattur-lake.jpg?w=1000&h=800&s=1",
        "description": "Village known for Sanskrit usage; tranquil lakeside experience. | संस्कृत भाषा के प्रयोग के लिए प्रसिद्ध गांव; शांतिपूर्ण झील का अनुभव।"
      },
      {
        "name": "BRP Dam (बीआरपी बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/d7/23/c4/img-20190310-182752-largejpg.jpg?w=1000&h=800&s=1",
        "description": "Scenic hilltop dam; ideal for sunset views and water sports. | सुरम्य पहाड़ी पर बांध; सूर्यास्त दृश्य और जल क्रीड़ा के लिए आदर्श।"
      },
      {
        "name": "Shivappanaika Palace Museum (शिवप्पनायका पैलेस म्यूजियम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/fa/2c/ff/photo3jpg.jpg?w=1000&h=-1&s=1",
        "description": "Collection of artifacts in a wooden palace surrounded by gardens. | बगीचों से घिरे लकड़ी के महल में कलाकृतियों का संग्रह।"
      },
      {
        "name": "Talasi Abbi Falls (तलासी अब्बी जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/79/c1/ee/very-cool-place-superb.jpg?w=1000&h=-1&s=1",
        "description": "Waterfall with marked road signs; hidden gem near Shivamogga. | शिवमोग्गा के पास जलप्रपात; सड़क संकेतों से आसानी से पहचाना जा सकता है।"
      },
      {
        "name": "Kunchikal Falls (कुंचिकल जलप्रपात)",
        "image": "https://blogs.tripzygo.in/wp-content/uploads/2025/02/kunchikal-waterfalls-1024x683.jpg",
        "description": "Tallest waterfall in the region; located near Gajanur Dam. | क्षेत्र का सबसे ऊँचा जलप्रपात; गजनूर बांध के पास स्थित।"
      },
      {
        "name": "Gajanur Dam (गजनूर बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/27/ca/e0/gajanur-dam.jpg?w=1000&h=-1&s=1",
        "description": "Dam with scenic view; on the way to Sakrebailu Elephant Camp. | सुरम्य दृश्य वाला बांध; सकरेबैलू हाथी शिविर के रास्ते में।"
      },
      {
        "name": "Tunga Anicut Dam (तुंगा एनीकट बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/0a/9b/df/dam-view-walk.jpg?w=1000&h=800&s=1",
        "description": "Small dam across Tunga River; peaceful surrounding. | तुंगा नदी पर छोटा बांध; शांतिपूर्ण परिवेश।"
      }
    ],

    "Tumakuru (तुमकुरु)": [
      {
        "name": "HutriDurga (हुत्रिदुर्गा)",
        "image": "https://cdn.s3waas.gov.in/s3edfbe1afcf9246bb0d40eb4d8027d90f/uploads/bfi_thumb/2023042424-scaled-q5hezq21nwib0mywrk2sik1xydq4qr3oth3j3imrjy.jpg",
        "description": "A historical fort with impressive architecture in Karnataka. | कर्नाटक में शानदार वास्तुकला वाला ऐतिहासिक किला।"
      },
      {
        "name": "Araluguppe Chennakesava Temple (अरालुगुप्पे चेनकेशव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3edfbe1afcf9246bb0d40eb4d8027d90f/uploads/bfi_thumb/2023042426-1-scaled-q5hd7gt8gmjncab0za5xk9sk14ftjn09nfll1jwmwu.jpg",
        "description": "Where heritage and spirituality meet, tucked away in the heart of Karnataka. | कर्नाटक के दिल में विरासत और धार्मिक मंदिर।"
      },
      {
        "name": "Devarayana Durga (देवरायना दुर्गा)",
        "image": "https://cdn.s3waas.gov.in/s3edfbe1afcf9246bb0d40eb4d8027d90f/uploads/bfi_thumb/2023043020-scaled-q5rerakupe8c2e3aoy0vt9uemt32vtxrhsm9wf7kla.jpg",
        "description": "A natural and spiritual retreat; small hill station with scenic views. | प्राकृतिक और आध्यात्मिक स्थल; सुरम्य दृश्यों वाला छोटा हिल स्टेशन।"
      },
      {
        "name": "Siddaganga Mutt (सिद्धगंगा मठ)",
        "image": "https://cdn.s3waas.gov.in/s3edfbe1afcf9246bb0d40eb4d8027d90f/uploads/bfi_thumb/2018082717-olwdnhfd0vr11465o8q6rxxsr1e22e8fr8ra9jzj7i.jpg",
        "description": "Famous centre for pilgrimage, with temple dedicated to Siddhalingeshwara. | तीर्थस्थल के रूप में प्रसिद्ध, सिद्धलिंगेश्वर को समर्पित मंदिर।"
      },
      {
        "name": "Madhugiri Fort (मधुगिरी किला)",
        "image": "https://cdn.s3waas.gov.in/s3edfbe1afcf9246bb0d40eb4d8027d90f/uploads/bfi_thumb/2023043045-scaled-q5rf9q6wqfgrr3bd1wvhpmdu0u87u549d172prvmke.jpg",
        "description": "A majestic fort with rich history, located in Madhugiri town. | मधुगिरी शहर में ऐतिहासिक और भव्य किला।"
      },
      {
        "name": "Siddara Hill (सिद्धरा हिल)",
        "image": "https://cdn.s3waas.gov.in/s3edfbe1afcf9246bb0d40eb4d8027d90f/uploads/bfi_thumb/2023042492-scaled-q5hefgnacgrsr8ef2ssaro48zdlatmnzd6uqoso9oe.jpg",
        "description": "A trekker’s paradise in Karnataka; scenic and adventurous. | कर्नाटक में ट्रेकर्स के लिए स्वर्ग; सुंदर और रोमांचक स्थल।"
      },
      {
        "name": "Pavagada Solar Park (पावगड़ा सोलर पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3edfbe1afcf9246bb0d40eb4d8027d90f/uploads/bfi_thumb/2018082875-olwdnn2e5vyqyrxyrb5y6wikbcm9ckuts0o757r666.jpg",
        "description": "A vast solar park spread over 13,000 acres. | 13,000 एकड़ में फैला विशाल सौर ऊर्जा पार्क।"
      },
      {
        "name": "Kaggaladu Bird Sanctuary (कग्गलाडु पक्षी अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s3edfbe1afcf9246bb0d40eb4d8027d90f/uploads/bfi_thumb/2018082818-1-olwdnl6ps7w6bk0p2acp1wzn4kvix6nd3rd86ntyim.jpg",
        "description": "Second largest painted storks sanctuary in South Asia; ideal for bird watching. | दक्षिण एशिया का दूसरा सबसे बड़ा पेंटेड स्टॉर्क्स अभयारण्य; पक्षी दर्शन के लिए आदर्श।"
      }
    ],

    "Udupi (उडुपी)": [
      {
        "name": "Sri Mookambika Devi Temple (श्री मूकांबिका देवी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s36bc24fc1ab650b25b4114e93a98f1eba/uploads/bfi_thumb/2018081973-olw9entyxd3kk1ixjd12nia600bpyqtpe8m8rwm5mq.jpg",
        "description": "One of the Seven Mukthi Sthalas of Karnataka; located about 80 km from Udupi. | कर्नाटक के सात मुक्तिस्तलाओं में से एक; उडुपी से लगभग 80 किमी दूर स्थित।"
      },
      {
        "name": "Sri Krishna Matt (श्री कृष्ण मठ)",
        "image": "https://cdn.s3waas.gov.in/s36bc24fc1ab650b25b4114e93a98f1eba/uploads/bfi_thumb/2018081965-olw9entyxd3kk1ixjd12nia600bpyqtpe8m8rwm5mq.jpg",
        "description": "Unique feature: statue of Lord Krishna can be viewed through nine holes. | अद्वितीय विशेषता: भगवान कृष्ण की मूर्ति को नौ छेदों के माध्यम से देखा जा सकता है।"
      },
      {
        "name": "Mandharthi Shree Durgaparameshwari Temple (मंधारती श्री दुर्गापरमेश्वरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s36bc24fc1ab650b25b4114e93a98f1eba/uploads/bfi_thumb/2018081222-olw9el0gcuzpl7n0ztt6y0zs7upmbniidunsc2qc5e.png",
        "description": "Historic temple associated with five daughters of King Shankachooda; religious significance. | राजा शंकचूड की पांच बेटियों से जुड़ा ऐतिहासिक मंदिर; धार्मिक महत्व।"
      }
    ],

    "Uttara Kannada (उत्तर कन्नड़)": [
      {
        "name": "Sathodi Falls (साथोड़ी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023052619-q70q263yojyn8z9196gun9ifar0wziww524fm727l6.jpg",
        "description": "Picturesque rectangular-shaped waterfall in the Western Ghats; several streams converge near Kallaramane Ghat. | पश्चिमी घाट में सुंदर आयताकार जलप्रपात; कई धाराएँ कल्लारामने घाट के पास मिलती हैं।"
      },
      {
        "name": "Bhimkol (भीमकोल, करवार)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023052330-scaled-q6vereuw1iiejsne2ua0tm2wtoz2h3yrmryggg4hka.jpg",
        "description": "Lake amidst greenery; attractive destination for nature lovers. | हरियाली के बीच झील; प्रकृति प्रेमियों के लिए आकर्षक स्थल।"
      },
      {
        "name": "Magod Falls (मगोड जलप्रपात, येल्लापुर)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023052260-1-scaled-q6u1rgyao3t2zivg9d8anqkcwn7vlb8ls2pgszje96.jpg",
        "description": "Popular waterfall on river Bedti in Yellapur taluk; scenic natural beauty. | येल्लापुर तालुक में बेद्ती नदी पर प्रसिद्ध जलप्रपात; सुरम्य प्राकृतिक सुंदरता।"
      },
      {
        "name": "Nadhibag Beach (नदिभाग बीच, अंकोला)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023051916-q6ojv4zqnj4tufd3cu334jdpam58ky4tlwkfyiuuwa.jpg",
        "description": "Small river reaches bay with roaring waves and cool breeze; ideal for canoeing. | छोटी नदी खाड़ी में पहुँचती है, साथ ही गरजती लहरें और ठंडी हवा; कनोइंग के लिए आदर्श।"
      },
      {
        "name": "Sharavati Backwater (शरावती बैकवाटर, होन्नावर)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023051872-q6muq60jp66490ebhgbwny1ue6gcvcfgc3u9lm9ckq.jpg",
        "description": "Hidden gem offering mangrove forest exploration and beautiful sunset views. | छिपा हुआ रत्न, जहाँ मैनग्रोव जंगल की खोज और सुंदर सूर्यास्त का आनंद लिया जा सकता है।"
      },
      {
        "name": "Apsarakonda Falls (अप्सरकोंडा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023051875-q6mzq1epiuefyp4g5pcsb20aplvyu7ibee28otk7vu.jpg",
        "description": "Waterfall named after angels (Apsara); serene and divine spot. | अप्सरा (देवदूत) के नाम पर जलप्रपात; शांत और दिव्य स्थल।"
      },
      {
        "name": "Vibhuthi Falls (विभूति जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023031673-q3le1mc2kcatcakesq0t7yx7o2qx0i0gfskkz28jca.jpg",
        "description": "Located in Achave Gram Panchayat; 'Vibhuthi' means limestone. | अचावे ग्राम पंचायत में स्थित; 'विभूति' का अर्थ है चूना पत्थर।"
      },
      {
        "name": "Tilmati Beach (तिलमती बीच)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023031697-q3l4g8izbvhvag97lffv14jtr53koav3maxoquc9nu.jpg",
        "description": "Sand resembles black sesame; named after it. | रेत काले तिल जैसी दिखती है; इसी नाम पर नामित।"
      },
      {
        "name": "Yana (याना, कुम्टा)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023022372-q2kivkj93dr2dcum1wbn43ekb8oajlgrweh8jt87oq.jpg",
        "description": "Village located in forests of Uttara Kannada; famous for rock formations. | उत्तर कन्नड़ के जंगलों में स्थित गांव; चट्टानों के निर्माण के लिए प्रसिद्ध।"
      },
      {
        "name": "Mirjan Fort (मिर्जान किला, कुम्टा)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023022280-q2itr9zv2ppt5swc7t4rgbwoutmye4gfdypoo3mgve.jpg",
        "description": "Fort known for red laterite stone construction; historical architecture. | लाल लेटराइट पत्थर से निर्मित किला; ऐतिहासिक वास्तुकला के लिए प्रसिद्ध।"
      },
      {
        "name": "Sharavathi Mangrove Boardwalk (शरावती मैनग्रोव बोर्डवॉक, होन्नावर)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023022094-1-q2fmgdroi1gctoazj289zalypqvdsooucxux9s74dm.jpg",
        "description": "Wooden walkway amidst mangrove forest for adventure and recreation. | मैनग्रोव जंगल के बीच लकड़ी का रास्ता; साहसिक और मनोरंजन गतिविधियों के लिए।"
      },
      {
        "name": "Jenukallu Gudda (जेनुकल्लु गुद्दा, येल्लापुर)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2023021511-q26ktzsyo4e06lq71htvswcfhr12eimf0i9k473kkq.jpg",
        "description": "Viewpoint in Magod village; panoramic views of nature. | मगोड गांव में दृष्टिकोण स्थल; प्राकृतिक सुंदरता के मनोरम दृश्य।"
      },
      {
        "name": "Murdeshwara (मूर्डेश्वरा)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2022122656-scaled-pzq60g8seqw6xpt8rzqna5grrkvehzu66itvaman6y.jpg",
        "description": "Famous temple town with large Shiva statue; pilgrimage site. | विशाल शिव मूर्ति वाला प्रसिद्ध मंदिर नगर; तीर्थस्थल।"
      },
      {
        "name": "Dandeli Wildlife Sanctuary (डंडेली वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2022122674-pzq7thorb1xgadc5zlubb8lzieaq411jgfwdqvuyne.jpg",
        "description": "Covers forests of Uttara Kannada along Kali river; adventure spot. | काली नदी के किनारे उत्तर कन्नड़ के जंगलों में फैला; साहसिक गतिविधियों के लिए।"
      },
      {
        "name": "Om Beach Gokarna (ओम बीच, गोकार्न)",
        "image": "https://cdn.s3waas.gov.in/s3df7f28ac89ca37bf1abd2f6c184fe1cf/uploads/bfi_thumb/2022122713-pzry4qgnm6re0gwg0rehenx45nmuzlkc7gto2rs356.jpg",
        "description": "Famous for Mahabaleshwara Temple; holy and scenic beach. | महाबलेश्वर मंदिर के लिए प्रसिद्ध; पवित्र और सुरम्य बीच।"
      }
    ],

    "Vijayanagara (विजयनगर)": [
      {
        "name": "Ankasamudra Bird Sanctuary, Hagaribommanahalli Taluk (अंकसमुद्र पक्षीधाम, हगरिबोम्मनहल्ली तालुक)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2024112193-qxdijwruazc7jjsa2l59qgku47afuikaa6m5eq4av6.jpg",
        "description": "One of the ancient villages of Hagaribommanahalli taluk; adventure, historic, scenic beauty. | हगरिबोम्मनहल्ली तालुक का प्राचीन गांव; साहसिक, ऐतिहासिक, प्राकृतिक सुंदरता।"
      },
      {
        "name": "Mallikarjuna Temple, Kuruvatti, Huvina Hadagali Taluk (मल्लिकार्जुन मंदिर, कुरुवत्ति, हुविना हडगली तालुक)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2024112177-qxdi93mnpkji0zhj6wxq26s06okhbtnesoj4q65af6.jpg",
        "description": "Famous temple built during Kalyana Chalukya period; historic and scenic site. | कल्याण चालुक्य काल में निर्मित प्रसिद्ध मंदिर; ऐतिहासिक और सुरम्य स्थल।"
      },
      {
        "name": "Marulasiddheshwar Temple-Ujjini, Kottoor Taluk (मरुलसिद्धेश्वर मंदिर-उज्जिनी, कोट्टूर तालुक)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2024112151-qxdhatgkg3m0kza8dlgkmc7s7rjjl8juezylluz7cy.jpg",
        "description": "Famous ancient temple, also known as Saddharma Simhasana Peetha; religious and historic site. | प्रसिद्ध प्राचीन मंदिर, जिसे सद्धर्म सिंहासन पीठ भी कहा जाता है; धार्मिक और ऐतिहासिक स्थल।"
      },
      {
        "name": "Mylara Lingeshwar Temple-Mylara, Hovina Hadagali (मायलारा लिंगेश्वर मंदिर-मायलारा, हुविना हडगली)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2024112182-qxdg5ifw472edva7kqos1rgkg74vc2khejwge480si.png",
        "description": "Situated on the right bank of Tungabhadra River; famous religious place. | तुंगभद्र नदी के दाहिने किनारे स्थित; प्रसिद्ध धार्मिक स्थल।"
      },
      {
        "name": "Kotturu Basaveshwara-Kotturu (कोट्टूर बसवेश्वर-कोट्टूर)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2024112050-scaled-qxbwsqpqyr44f1w5ycsovmqae98ukxeqr982tmx88y.jpg",
        "description": "Historic administrative and trading center; important historic site. | ऐतिहासिक प्रशासनिक और व्यापारिक केंद्र; महत्वपूर्ण ऐतिहासिक स्थल।"
      },
      {
        "name": "Purandara Mandapam, Hampi (पुरंदर मंडपम, हम्पी)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2024112012-qxbvxerf5k81ezekwt8drjd5jvoe050ug6dexldnnm.jpg",
        "description": "Open expanse of sandstone pillars near Vittala Temple; historic site. | विट्टाला मंदिर के पास बालू पत्थर के स्तंभों का खुला क्षेत्र; ऐतिहासिक स्थल।"
      },
      {
        "name": "Matanga Parvata, Hampi (मतंगा पर्वत, हम्पी)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2024112091-qxbnkoacjsjeuc8mztfh0fdzftypad4hroatcja6f6.png",
        "description": "Highest hill east of Virupaksha Temple; historic and scenic site. | विरुपाक्ष मंदिर के पूर्व का सबसे ऊँचा पर्वत; ऐतिहासिक और सुरम्य स्थल।"
      },
      {
        "name": "Ugranarasimha Temple, Hampi (उग्रनरसिंह मंदिर, हम्पी)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2021102763-pf6032o05etlfx0fzeg65vyqwp4mqqcvyaxz4k3oci.jpg",
        "description": "6.7 meters high monolith depicting Vishnu in man-lion form; historic temple. | 6.7 मीटर ऊँचा विशाल शिला जो विष्णु को मानव-शेर रूप में दर्शाती है; ऐतिहासिक मंदिर।"
      },
      {
        "name": "Kamal Mahal, Hampi (कमल महल, हम्पी)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2021102772-pf5zn5agch0ops5azilqwwnkjnmqbd4mfgzsdrpts2.jpg",
        "description": "Lotus Mahal with open pavilions and balconies; historic architecture. | कमल महल, खुले मंडप और बालकनी के साथ; ऐतिहासिक वास्तुकला।"
      },
      {
        "name": "Stone Chariot, Hampi (स्टोन चारियट, हम्पी)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2021102634-pf4vdb4as0asui490tdwyro6vxp5mdddrfu011en7m.jpg",
        "description": "Located in Vijaya Vithala Temple courtyard; historic and iconic. | विजया विठ्ठला मंदिर के आंगन में स्थित; ऐतिहासिक और प्रतीकात्मक।"
      },
      {
        "name": "Virupaksha Temple, Hampi (विरुपाक्ष मंदिर, हम्पी)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2021102630-pf4lc3p0hxu3cysg7ol1sx1gzi1dpleormuuz4yy9u.jpg",
        "description": "Dedicated to Lord Shiva and consort Pampadevi; still active religious site. | भगवान शिव और पत्नी पम्पादेवी को समर्पित; आज भी सक्रिय धार्मिक स्थल।"
      },
      {
        "name": "Mahanavami Dibba, Hampi (महानवमी डिब्बा, हम्पी)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2021102690-pf4iboz49tfkc09d8tm289vmjoddyb15v26ue9pjwi.jpg",
        "description": "Massive platform where Vijayanagara kings once sat; historic landmark. | विशाल मंच जहां विजयनगर के राजा बैठते थे; ऐतिहासिक स्थल।"
      },
      {
        "name": "Queen’s Bath, Hampi (क्वीन्स बाथ, हम्पी)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2021102657-pf4dz7scjp85kxjvyomwn9e6hhmnk8tsokhxazpxqa.jpg",
        "description": "Extensive royal bath structure; historic architecture. | विस्तृत शाही स्नान संरचना; ऐतिहासिक वास्तुकला।"
      },
      {
        "name": "Tunga Bhadra Dam, Hosapet (तुंगा भद्र बांध, होसपेट)",
        "image": "https://cdn.s3waas.gov.in/s3dd45045f8c68db9f54e70c67048d32e8/uploads/bfi_thumb/2021102218-pexsuqyl3fg29h8wxqz56epr04sgltn6cz893ctq82.jpg",
        "description": "Constructed across Tungabhadra River; natural and scenic beauty. | तुंगभद्र नदी पर निर्मित; प्राकृतिक और सुरम्य दृश्य।"
      }
    ],

    "Vijayapura (विजयपुरा)": [
      {
        "name": "Almatti Dam, Almatti (आलमट्टी बांध, आलमट्टी)",
        "image": "https://cdn.s3waas.gov.in/s3fa14d4fe2f19414de3ebd9f63d5c0169/uploads/bfi_thumb/2018080673-olwdvv5jyp82jxzvqd5fibsrfq2vp8i9wq65bdk5q6.jpg",
        "description": "Dam project on the Krishna River in North Karnataka; scenic and engineering marvel. | उत्तर कर्नाटक में कृष्णा नदी पर बांध परियोजना; सुरम्य दृश्य और इंजीनियरिंग चमत्कार।"
      },
      {
        "name": "Gagan Mahal, Vijayapura (गगन महल, विजयपुरा)",
        "image": "https://cdn.s3waas.gov.in/s3fa14d4fe2f19414de3ebd9f63d5c0169/uploads/bfi_thumb/2018080644-olwdvu7prv6s8c18vuqsxu1auc7ihjejklinu3ljwe.jpg",
        "description": "Fortified palace with wide moat; historical citadel. | चौड़े खाई वाले किले वाला महल; ऐतिहासिक किलेबंदी।"
      },
      {
        "name": "Asar Mahal, Vijayapura (आसर महल, विजयपुरा)",
        "image": "https://cdn.s3waas.gov.in/s3fa14d4fe2f19414de3ebd9f63d5c0169/uploads/bfi_thumb/2018080673-1-olwdvv5jyp82jxzvqd5fibsrfq2vp8i9wq65bdk5q6.jpg",
        "description": "Built by Mohammed Adil Shah around 1646; historic architecture. | मोहम्मद आदिल शाह द्वारा 1646 के आसपास निर्मित; ऐतिहासिक वास्तुकला।"
      },
      {
        "name": "Upli Buruz, Vijayapura (उप्ली बुर्ज, विजयपुरा)",
        "image": "https://cdn.s3waas.gov.in/s3fa14d4fe2f19414de3ebd9f63d5c0169/uploads/bfi_thumb/2018080625-olwdvu7prv6s8c18vuqsxu1auc7ihjejklinu3ljwe.jpg",
        "description": "Tower built around 1584 by Hyder Khan; 80-foot-high historic structure. | हैदर खान द्वारा 1584 के आसपास निर्मित 80 फीट ऊँचा ऐतिहासिक बुर्ज।"
      },
      {
        "name": "Bara Kamaan, Vijayapura (बड़ा कमान, विजयपुरा)",
        "image": "https://cdn.s3waas.gov.in/s3fa14d4fe2f19414de3ebd9f63d5c0169/uploads/bfi_thumb/2018080631-olwdvu7prv6s8c18vuqsxu1auc7ihjejklinu3ljwe.jpg",
        "description": "Historic gateway almost in the city center; architectural landmark. | शहर के केंद्र के लगभग स्थित ऐतिहासिक द्वार; वास्तुशिल्पीय स्थल।"
      },
      {
        "name": "Shiva Statue, Shivagiri (शिव प्रतिमा, शिवगिरी)",
        "image": "https://cdn.s3waas.gov.in/s3fa14d4fe2f19414de3ebd9f63d5c0169/uploads/bfi_thumb/2018080621-olwdvu7prv6s8c18vuqsxu1auc7ihjejklinu3ljwe.jpg",
        "description": "85-foot tall statue of Lord Shiva; religious and iconic monument. | 85 फीट ऊँची भगवान शिव की प्रतिमा; धार्मिक और प्रतीकात्मक स्थल।"
      },
      {
        "name": "Ibrahim Rouza, Vijayapura (इब्राहिम रूज़ा, विजयपुरा)",
        "image": "https://cdn.s3waas.gov.in/s3fa14d4fe2f19414de3ebd9f63d5c0169/uploads/bfi_thumb/2018080687-olwdvv5jyp82jxzvqd5fibsrfq2vp8i9wq65bdk5q6.jpg",
        "description": "Exquisite tomb complex on the western outskirts; historic significance. | शहर के पश्चिमी किनारे पर सुंदर मकबरा समूह; ऐतिहासिक महत्व।"
      },
      {
        "name": "Gol Gumbaz, Vijayapura (गोल गुम्बज, विजयपुरा)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/gol-gumbaz-bijapur-karnataka-3-attr-hero?qlt=82&ts=1727415007347",
        "description": "Most famous monument in Vijayapura; tomb of Sultan Mohammed Adil Shah. | विजयपुरा का सबसे प्रसिद्ध स्मारक; सुल्तान मोहम्मद आदिल शाह का मकबरा।"
      }
    ],

    "Yadgir (यादगिर)": [
      {
        "name": "Chand Huseni Darga, Gogi (चाँद हुसैनी दरगाह, गोगी)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018062529-olwc3tfe3liynm7umguc0b1wj04z6589278mrvdvni.jpg",
        "description": "Place of historical importance; 12 km from Shahapur; famous for Chand Huseni Darga. | ऐतिहासिक महत्व का स्थल; शाहपुर से 12 किमी दूर; चाँद हुसैनी दरगाह के लिए प्रसिद्ध।"
      },
      {
        "name": "Siddalingeshwar Temple (सिद्धालिंगेश्वर मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018062585-olwc3w8wo3mtmg3r6027pscab5r2t8jg2l737p9p4u.jpg",
        "description": "Panchakuta temple with four separate garbhagruhas; intricate architectural design. | पंचकुटा मंदिर जिसमें चार अलग-अलग गर्भगृह हैं; जटिल वास्तुकला।"
      },
      {
        "name": "Nanayya Temple, Shirval (नानय्या मंदिर, शिरवाल)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018062083-olwc3muirr9yecheovzy0upodb1eo9i4pao8exnmv2.jpg",
        "description": "Historical temple 15 km from Shahapur; also called South Varanasi. | ऐतिहासिक मंदिर शाहपुर से 15 किमी दूर; दक्षिण वाराणसी के नाम से भी प्रसिद्ध।"
      },
      {
        "name": "Taylor Manzil (टेलर मंज़िल)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018061911-olwc3kyue37dr4k4zv6ovv6r6jao8vao11d9gdqf7i.jpg",
        "description": "Bungalow built by British officer Philip Meadows Taylor in 1840; notable architecture. | ब्रिटिश अधिकारी फिलिप मेड़ोज़ टेलर द्वारा 1840 में निर्मित बंगला; उल्लेखनीय वास्तुकला।"
      },
      {
        "name": "Venugopalaswami Temple, Surapur (वेंगुपालस्वामी मंदिर, सुरापुर)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018062585-1-olwc3w8wo3mtmg3r6027pscab5r2t8jg2l737p9p4u.jpg",
        "description": "Constructed by Raja Pitambar Bahari Pidda Nayaka in 1705; near beautiful Devara Bhavi. | राजा पितांबर बहारी पिद्दा नायक द्वारा 1705 में निर्मित; सुंदर देवराभावी के पास।"
      },
      {
        "name": "Yerur Temple, Yevur (एरूर मंदिर, येवुर)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018062592-olwc3x6quxo3y22e0iguaa3qwjmg0xn6epukoz8aym.jpg",
        "description": "Located 32 km north-east of Surapur; inscriptions from 11-12th centuries Kalyana Chalukyas and Kalachuris. | सुरापुर से 32 किमी उत्तर-पूर्व में स्थित; 11-12वीं सदी के कल्याण चालुक्य और कलाचुरी शिलालेख।"
      },
      {
        "name": "Basavasagar Dam (बसवसागर बांध)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018062141-e1529573509608-olwc3nscylb8pyg1jeeklch4yowrvylv1fbpw7m8ou.jpg",
        "description": "Dam on Krishna River; boon to Yadgir and neighboring districts. | कृष्णा नदी पर बांध; यादगिर और पड़ोसी जिलों के लिए वरदान।"
      },
      {
        "name": "Bonal Bird Sanctuary, Shorapur Taluk (बोनाल बर्ड सेंचुअरी, शोरापुर तालुक)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018062579-olwc3vb2h9ljau54bhnl5aktprvpljfpqgjlqfb3b2.jpg",
        "description": "Second largest bird sanctuary after Ranganthittu; wetland near Bonal village. | रंगंथिट्टू के बाद दूसरा सबसे बड़ा पक्षी अभयारण्य; बोनाल गांव के पास वेटलैंड।"
      },
      {
        "name": "Wagangera Fort (वागंगेरा किला)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018062540-1-olwc3ud8afk8z86hgz8ykstd4e0cdubzebw495chha.jpg",
        "description": "Situated on Shorapur hill range; power center in pre-Nizam times. | शोरापुर पहाड़ी श्रेणी में स्थित; प्री-निजाम काल में शक्ति केंद्र।"
      },
      {
        "name": "Sleeping Buddha Hill (स्लीपिंग बुद्धा हिल)",
        "image": "https://cdn.s3waas.gov.in/s3ba3866600c3540f67c1e9575e213be0a/uploads/bfi_thumb/2018061327-olwc3h7hmr28goplltk6lw4wszt7e2vqoirbj9vzwe.jpg",
        "description": "Hill made up of four hills resembling a sleeping Buddha; popular natural attraction. | चार पहाड़ियों से बनी पहाड़ी जो सोते हुए बुद्ध जैसी दिखती है; लोकप्रिय प्राकृतिक आकर्षण।"
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
