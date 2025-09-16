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

    "Hyderabad (हैदराबाद)": [
      {
        "name": "Charminar (चारमीनार)",
        "description": "Iconic monument of Hyderabad. लाखों लोग हर साल आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/4c/62/2a/caption.jpg?w=800&h=400&s=1"
      },
      {
        "name": "Golconda Fort (गोलकोंडा किला)",
        "description": "Historic fort. इतिहास प्रेमियों के लिए प्रसिद्ध।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr2GVBOoACau-BtSL36QT_UFKNqKSNmOIc7A&s"
      },
      {
        "name": "Ramoji Film City (रामोजी फिल्म सिटी)",
        "description": "World’s largest film studio. लाखों पर्यटक।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/f3/ad/1a/filmi-duniya.jpg?w=1200&h=-1&s=1"
      },
      {
        "name": "Hussain Sagar Lake (हुसैन सागर झील)",
        "description": "Lake with Buddha statue. पर्यटकों की भीड़।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/3d/73/8b/straight-view-of-the.jpg?w=1200&h=-1&s=1"
      },
      {
        "name": "Salar Jung Museum (सलार जंग संग्रहालय)",
        "description": "Rare artifacts. विश्व प्रसिद्ध संग्रहालय।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/a1/66/09/photo3jpg.jpg?w=900&h=500&s=1"
      },
      {
        "name": "Birla Mandir (बिरला मंदिर)",
        "description": "White marble temple. धार्मिक स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/56/ff/7a/photo0jpg.jpg?w=1200&h=1200&s=1"
      },
      {
        "name": "Nehru Zoological Park (नेहरू प्राणी उद्यान)",
        "description": "Zoo with animals. परिवारों के लिए।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/09/e5/9d/36/zoologycal-park-a-view.jpg"
      },
      {
        "name": "Chowmahalla Palace (चौमहल्ला पैलेस)",
        "description": "Nizam’s palace. ऐतिहासिक धरोहर।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/9f/81/d1/photo5jpg.jpg?w=900&h=500&s=1"
      },
      {
        "name": "Mecca Masjid (मक्का मस्जिद)",
        "description": "One of the largest mosques in India. धार्मिक स्थल।",
        "image": "https://c8.alamy.com/comp/D9K7K4/facade-of-a-mosque-mecca-masjid-charminar-hyderabad-andhra-pradesh-D9K7K4.jpg"
      },
      {
        "name": "Lumbini Park (लुंबिनी पार्क)",
        "description": "Laser show and boating. परिवारों का आकर्षण।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/b1/b8/b8/buddha-statue-at-hussein.jpg?w=1200&h=1200&s=1"
      },
      {
        "name": "Snow World (स्नो वर्ल्ड)",
        "description": "India’s first snow park. मनोरंजन स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/ac/5a/59/snow-world.jpg?w=700&h=400&s=1"
      },
      {
        "name": "Shilparamam (शिल्परामम)",
        "description": "Crafts village. कला प्रेमियों के लिए।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/be/cd/da/inside-the-market-at.jpg?w=900&h=-1&s=1"
      },
      {
        "name": "Jalavihar Water Park (जलविहार वाटर पार्क)",
        "description": "Famous water park. बच्चों के लिए मजेदार।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/77/f5/18/sakshi-new-paper-coverage.jpg?w=900&h=500&s=1"
      },
      {
        "name": "KBR National Park (केबीआर नेशनल पार्क)",
        "description": "Greenery and trekking. प्रकृति प्रेमियों के लिए।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/bd/d7/46/greenery.jpg?w=900&h=500&s=1"
      },
      {
        "name": "Birla Planetarium (बिरला तारामंडल)",
        "description": "For space lovers. विज्ञान प्रेमियों के लिए।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/9a/be/b4/caption.jpg?w=1200&h=1200&s=1"
      },
    ],

    "Warangal (वारंगल)": [
      {
        "name": "Warangal Fort (वारंगल किला)",
        "description": "Ancient fort. लाखों लोग घूमने आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/b3/6d/a7/warangal-fort.jpg?w=1200&h=-1&s=1"
      },
      {
        "name": "Thousand Pillar Temple (हज़ार स्तंभ मंदिर)",
        "description": "Kakatiya temple. श्रद्धालु और पर्यटक।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/06/07/df/f8/thousand-pillar-temple.jpg"
      },
      {
        "name": "Bhadrakali Temple (भद्रकाली मंदिर)",
        "description": "Temple of Goddess Bhadrakali. धार्मिक स्थल।",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/11/fa/ab/99/pic-11.jpg"
      },
      {
        "name": "Pakhal Lake (पखाल झील)",
        "description": "Scenic man-made lake. पर्यटकों का आकर्षण।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/b8/15/7e/pakhal-lake.jpg?w=700&h=400&s=1"
      },
      {
        "name": "Eturnagaram Wildlife Sanctuary (एटूरनागारम अभयारण्य)",
        "description": "Wildlife and greenery. प्रकृति प्रेमियों के लिए।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/ae/83/fa/bogatha-waterfalls.jpg?w=1200&h=-1&s=1"
      },
      {
        "name": "Ramappa Temple (रामप्पा मंदिर)",
        "description": "UNESCO World Heritage Site. प्राचीन मंदिर।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/05/76/69/img-20161225-114644-01.jpg?w=1200&h=-1&s=1"
      },
      {
        "name": "Laknavaram Lake (लखनावरम झील)",
        "description": "Beautiful suspension bridge and lake. पर्यटक प्रिय स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/25/d0/57/lakhyavaram-lake-hanging.jpg?w=300&h=300&s=1"
      },
      {
        "name": "Kakatiya Musical Garden (काकतीय म्यूजिकल गार्डन)",
        "description": "Fountains with music. परिवारों के लिए।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/09/53/36/img-20161226-110844-01.jpg?w=900&h=500&s=1"
      },
      {
        "name": "Govindarajula Gutta Hill (गोविंदराजुला गुट्टा पहाड़ी)",
        "description": "Trekking destination. रोमांच प्रेमियों के लिए।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/eb/72/03/img-20161213-wa0015-largejpg.jpg?w=200&h=-1&s=1"
      },
      {
        "name": "Rayaparthy Shiva Temple (रायपर्थी शिव मंदिर)",
        "description": "Ancient Shiva temple. धार्मिक महत्व।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/fa/ab/99/pic-11.jpg?w=300&h=300&s=1"
      },
      {
        "name": "Khush Mahal (खुश महल)",
        "description": "Historical palace. सुल्तानकालीन वास्तुकला।",
        "image": "https://warangaltourism.in/images/places-to-visit-warangal/headers/khush-mahal-warangal-tourism-entry-fee-timings-holidays-reviews-header.jpg"
      },
      {
        "name": "Kakatiya Rock Garden (काकतीय रॉक गार्डन)",
        "description": "Rock sculptures garden. कला प्रेमियों के लिए।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/97/24/18/caption.jpg?w=800&h=400&s=1"
      },
      {
        "name": "Inavolu Mallanna Temple (इनावोलु मल्लन्ना मंदिर)",
        "description": "Temple of Lord Mallanna. धार्मिक स्थल।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/88/57/21/inavolu-mallikarjuna.jpg?w=600&h=400&s=1"
      },
    ],
    "Adilabad (आदिलाबाद)": [
      {
        "name": "Kuntala Waterfall (कुंतला जलप्रपात)",
        "description": "Telangana का सबसे ऊँचा जलप्रपात, घने जंगलों और प्राकृतिक सौंदर्य से घिरा हुआ।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWOagnOHR9bLLjZR1QH3GdEMfvH4zYQ_ocbw&s"
      },
      {
        "name": "Basar Saraswathi Temple (बासर सरस्वती मंदिर)",
        "description": "ज्ञान और शिक्षा की देवी सरस्वती को समर्पित मंदिर, छात्रों और श्रद्धालुओं के लिए प्रसिद्ध।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_CkqHTmMp89L3tvXRB0wDKxwFuiKt6kh6EA&s"
      }
    ],
    "Bhadradri Kothagudem (भद्राद्रि कोठागुडेम)": [
      {
        "name": "Bhadrachalam Temple (भद्राचलम मंदिर)",
        "description": "Lord Rama temple, called Dakshina Ayodhya. लाखों श्रद्धालु हर साल आते हैं।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/15/f4/5b/sri-ramachandra-swamy.jpg?w=1200&h=-1&s=1"
      },
      {
        "name": "Papikondalu (पापिकोंडालु)",
        "description": "Beautiful hill ranges on Godavari River with cruise rides. नेचर और फोटोग्राफी प्रेमियों का स्वर्ग।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdjXyx1kyPsjAlHfm4FUeVvJAfpCyTpqazqQ&s"
      },
      {
        "name": "Kinnerasani Dam (किन्नेरसानी बांध)",
        "description": "Scenic dam with boating facilities. परिवारों और पर्यटकों के लिए लोकप्रिय।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHPAdNfEwpcFh7se0ATWHTQBmRb6WPUSpu6Q&s"
      },


      {
        "name": "Kinnerasani Wildlife Sanctuary (किन्नेरसानी अभयारण्य)",
        "description": "Deer park and wildlife area. बच्चों और परिवारों के लिए आदर्श।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvAvtKc_5nkzYIKj6lBTM5mMt2H4r4gtH-yw&s"
      },

      {
        "name": "Peddakunta Viewpoint (पेड्डाकुंटा व्यूपॉइंट)",
        "description": "Scenic viewpoint offering panoramic valley views. फोटोग्राफी और प्रकृति प्रेमियों के लिए।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeDnL9zdqZ11Kxdwb9ZWsVoPH8wWLqp13WzQ&s"
      },
    ],

    "Hanamkonda (हनमकोंडा)": [
      {
        "name": "Thousand Pillar Temple (हज़ार स्तंभ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPAkTZ7XjIXzdKdi0WdJmIBs-qjU_H3jP_Vw&s",
        "description":
        "Built by the Kakatiya dynasty, this 12th-century temple attracts lakhs of devotees and tourists every year. 12वीं शताब्दी का यह काकतीय मंदिर हर साल लाखों श्रद्धालुओं और पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Bhadrakali Temple (भद्रकाली मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/fa/ab/99/pic-11.jpg?w=900&h=500&s=1",
        "description":
        "One of the oldest temples of Goddess Bhadrakali, located near a serene lake. Every year lakhs of devotees visit here. देवी भद्रकाली का प्राचीन मंदिर, जहाँ हर साल लाखों श्रद्धालु आते हैं।"
      },
      {
        "name": "Warangal Fort (वारंगल किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/b3/6d/a7/warangal-fort.jpg?w=1200&h=1200&s=1",
        "description":
        "A UNESCO tentative site, this fort showcases Kakatiya architecture and attracts huge crowds. यूनेस्को की सूची में शामिल यह किला काकतीय वास्तुकला का प्रतीक है और हर साल बड़ी संख्या में पर्यटकों को आकर्षित करता है।"
      },

      {
        "name": "Kakatiya Musical Garden (काकतीय म्यूजिकल गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTECBk_izEYpJVOzjKob4v8t4FT27iSBxDMXg&s",
        "description":
        "A major attraction in the evenings with musical fountain shows, visited by lakhs of families and tourists every year. शाम के समय संगीतमय फव्वारे का शो देखने हर साल लाखों लोग आते हैं।"
      },
    ],

    "Jagtial (जगत्याल)": [
      {
        "name": "Jagtial Fort (जगत्याल किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0c/91/a9/03/one-side-of-the-fort.jpg",
        "description":
        "A star-shaped fort built in the 18th century by European engineers for the Nizam rulers. हर साल हजारों पर्यटक इस किले की अनोखी संरचना को देखने आते हैं।"
      },
      {
        "name": "Sri Anjaneya Swamy Temple (श्री अंजनेय स्वामी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUS3AeO9wLTebW1g2uCcIwhMI0HeUHE-2iAg&s",
        "description":
        "Famous Hanuman temple located in Jagtial town, attracts devotees from across Telangana. यह हनुमान मंदिर हर साल लाखों श्रद्धालुओं को आकर्षित करता है।"
      },
      {
        "name": "Sri Lakshmi Narasimha Swamy Temple, Dharmapuri (धर्मपुरी लक्ष्मी नरसिंह मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0OLbuRueRx-mlXgJ7dxF7CrttuWg56HOvSA&s",
        "description":
        "One of the most famous temples dedicated to Lord Narasimha, located on the banks of the Godavari River. गोदावरी नदी किनारे बना यह मंदिर लाखों भक्तों की आस्था का केंद्र है।"
      },
      {
        "name": "Kondapur Lake (कोंडापुर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpc6gFGAqbk6lpznGabXii_DWunAo8vUjwjQ&s",
        "description":
        "A scenic lake surrounded by greenery, popular for evening visits and photography. हरी-भरी प्राकृतिक सुंदरता से घिरी यह झील पर्यटकों को बहुत आकर्षित करती है।"
      },
      {
        "name": "Bugga Rameshwaram Temple (बुग्गा रामेश्वरम मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/9a/e6/b8/bugga-ramalingeswara.jpg?w=1200&h=1200&s=1",
        "description":
        "Ancient Shiva temple where water continuously flows from 'lingam'. यह शिव मंदिर अपनी अनोखी प्राकृतिक धारा के लिए प्रसिद्ध है।"
      },
    ],

    "Jangaon (जंगांव)": [
      {
        "name": "Sri Yadadri Lakshmi Narasimha Swamy Temple (श्री यदाद्रि लक्ष्मी नरसिंह स्वामी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiZ_e6mrChbGgap-8rDb6Mu6ESAwb_wyVkWQ&s",
        "description":
        "Located at Yadagirigutta near Jangaon, this temple is one of the most visited pilgrim centers in Telangana. हर साल लाखों श्रद्धालु भगवान नरसिंह के दर्शन करने यहाँ आते हैं।"
      },

      {
        "name": "Kolunapaka Jain Temple (कोलुनापका जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnaI-IT4x3tGICkrx7aMmckX_8C_7ty8zsDg&s",
        "description":
        "An ancient 2,000-year-old Jain temple dedicated to Lord Mahavira, visited by thousands every year. भगवान महावीर को समर्पित 2000 साल पुराना जैन मंदिर।"
      },
      {
        "name": "Shiva Temple at Kolunapaka (कोलुनापका शिव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXj_aTXQtqvmby9mAl0faRbjf48hgwl1AOMQ&s",
        "description":
        "This ancient temple houses one of the rarest 2-ft high Shiva Lingams made of crystal. यहाँ का क्रिस्टल शिवलिंग दुर्लभ और अत्यंत पूजनीय है।"
      },
    ],

    "Jayashankar Bhupalpally (जयशंकर भूपालपल्ली)": [
      {
        "name": "Ramappa Temple (रामप्पा मंदिर)",
        "image": "https://whc.unesco.org/uploads/thumbs/site_1570_0001-1000-750-20200915115449.jpg",
        "description":
        "A UNESCO World Heritage Site built in the 13th century by the Kakatiya dynasty, famous for its intricate carvings and floating bricks. | 13वीं शताब्दी का काकतीय कालीन यह मंदिर यूनेस्को विश्व धरोहर स्थल है, जो अपनी अद्भुत नक्काशी और तैरने वाली ईंटों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Laknavaram Lake (लक्कनावरम झील)",
        "image": "https://www.holidify.com/images/cmsuploads/compressed/attr_wiki_2463_20200519124112.jpg",
        "description":
        "A scenic man-made lake spread across 10,000 acres, surrounded by forests and small islands. A favorite picnic and boating spot. | 10,000 एकड़ में फैली यह कृत्रिम झील चारों ओर जंगल और छोटे द्वीपों से घिरी है। पिकनिक और बोटिंग के लिए प्रसिद्ध।"
      },
      {
        "name": "Eturnagaram Wildlife Sanctuary (एतुरुनगरम वन्यजीव अभयारण्य)",
        "image": "https://www.holidify.com/images/cmsuploads/compressed/2634_20190823132850.jpg",
        "description":
        "One of the oldest sanctuaries in Telangana, home to tigers, leopards, deer, and several rare bird species. | तेलंगाना का सबसे पुराना वन्यजीव अभयारण्य, जहाँ बाघ, तेंदुए, हिरण और कई दुर्लभ पक्षी पाए जाते हैं।"
      },
      {
        "name": "Bogatha Waterfalls (बोगथा जलप्रपात)",
        "image": "https://www.trawell.in/admin/images/upload/262246435Bogatha_Falls_Main.jpg",
        "description":
        "Popularly known as the 'Niagara of Telangana', this waterfall is a breathtaking sight surrounded by greenery. | 'तेलंगाना का नियाग्रा' कहलाने वाला यह जलप्रपात अपनी प्राकृतिक सुंदरता और हरियाली के लिए प्रसिद्ध है।"
      },
      {
        "name": "Pandavula Guhalu (पांडवुला गुहालु)",
        "image": "https://www.telanganatourism.gov.in/images/destinations/heritage-sites/Warangal/pandavula-guhalu/1.jpg",
        "description":
        "Ancient caves believed to be used by the Pandavas during exile, with prehistoric rock paintings. | प्राचीन गुफाएँ जिन्हें पांडवों ने वनवास के दौरान उपयोग किया था, यहाँ प्रागैतिहासिक चित्र भी पाए जाते हैं।"
      },
    ],

    "Jogulamba Gadwal (जोगुलाम्बा गडवाल)": [
      {
        "name": "Jogulamba Temple (जोगुलाम्बा मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-c/1280x250/07/fd/8f/9e/navabhrama-temples.jpg",
        "description": "One of the 18 Shakti Peethas, Jogulamba Temple is dedicated to Goddess Jogulamba. It attracts lakhs of devotees every year. | 18 शक्ति पीठों में से एक, यह मंदिर देवी जोगुलाम्बा को समर्पित है। हर साल लाखों श्रद्धालु यहाँ दर्शन करने आते हैं।"
      },
      {
        "name": "Alampur Nava Brahma Temples (आलमपुर नव ब्रह्म मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/98/4f/0c/nava-brahma-temple.jpg?w=1200&h=1200&s=1",
        "description": "A group of nine ancient temples built in the 7th century by the Badami Chalukyas, dedicated to Lord Shiva. | 7वीं शताब्दी में चालुक्य वंश द्वारा निर्मित 9 प्राचीन शिव मंदिरों का समूह।"
      },
      {
        "name": "Gadwal Fort (गडवाल किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/c7/ef/02/gawaligad-fort.jpg?w=900&h=500&s=1",
        "description": "A massive fort built by the Gadwal rulers, showcasing rich heritage and architecture. | गडवाल शासकों द्वारा निर्मित विशाल किला, जो अपनी समृद्ध धरोहर और वास्तुकला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Priyadarshini Jurala Project (प्रियदर्शिनी जूराला प्रोजेक्ट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNvY9TSzS_LDU-kdMqybAk_vws76Z7lPjfBA&s",
        "description": "A large hydroelectric project on the Krishna River, popular as a picnic spot with scenic views. | कृष्णा नदी पर बना विशाल जलविद्युत प्रोजेक्ट, जो पिकनिक और प्राकृतिक दृश्यों के लिए लोकप्रिय है।"
      },
      {
        "name": "Somasila Temples (सोमसिला मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/44/8d/f4/india.jpg?w=600&h=400&s=1",
        "description": "A group of temples relocated during the construction of the Srisailam Dam, now a famous spiritual site. | श्रीशैलम बांध के निर्माण के दौरान स्थानांतरित मंदिरों का समूह, जो आज धार्मिक स्थल के रूप में प्रसिद्ध है।"
      }
    ],

    "Kamareddy (कामारेड्डी)": [
      {
        "name": "Domakonda Fort (दोमकोंडा किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/3b/c7/24/caption.jpg?w=1200&h=1200&s=1",
        "description": "An ancient fort with unique architectural style, surrounded by a water-filled moat. | एक प्राचीन किला जो अपनी अनोखी वास्तुकला और चारों ओर फैले पानी की खाई के लिए प्रसिद्ध है।"
      },
      {
        "name": "Sri Raja Rajeshwara Swamy Temple, Banda Rameshwaram (श्री राजा राजेश्वर स्वामी मंदिर, बांदा रामेश्वरम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/15/26/bf/sri-rajarajeshwara-swamy.jpg?w=600&h=400&s=1",
        "description": "A historic temple dedicated to Lord Shiva, attracting devotees throughout the year. | भगवान शिव को समर्पित ऐतिहासिक मंदिर, जहाँ सालभर भक्त दर्शन के लिए आते हैं।"
      },
      {
        "name": "Pocharam Wildlife Sanctuary (पोचारम वाइल्डलाइफ सैंक्चुअरी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/90/68/71/pocharam-wildlife-sanctuary.jpg?w=1200&h=-1&s=1",
        "description": "A sanctuary home to deers, leopards, and various migratory birds, spread around Pocharam Lake. | हिरण, तेंदुए और प्रवासी पक्षियों का घर, जो पोचारम झील के आसपास फैला है।"
      },

      {
        "name": "Nizamabad Fort (निज़ामाबाद किला - नज़दीकी आकर्षण)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/21/66/f6/6d/quilla.jpg",
        "description": "Though located in nearby Nizamabad, it is a major attraction for Kamareddy visitors. | पास के निज़ामाबाद में स्थित यह किला कामारेड्डी आने वालों के लिए प्रमुख आकर्षण है।"
      }
    ],
    "Karimnagar (करीमनगर)": [
      {
        "name": "Elgandal Fort (एल्गंडल किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/c8/08/a8/view-from-bottom.jpg?w=1200&h=-1&s=1",
        "description": "A historic fort on the banks of the Manair River, built during the Kakatiya dynasty. | मानेर नदी के किनारे स्थित यह ऐतिहासिक किला काकतीय राजाओं के समय में बनाया गया था।"
      },
      {
        "name": "Lower Manair Dam (लोअर मानेर बांध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ28EVlB-UWQR8K-_PI_yqsBSCz3NUgJ9xOMA&s",
        "description": "A massive dam across Manair River, popular for picnics and boating. | मानेर नदी पर बना विशाल बांध, जो पिकनिक और बोटिंग के लिए मशहूर है।"
      },
      {
        "name": "Ujjaini Mahakali Temple (उज्जैनी महाकाली मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/13/83/67/ujjaini-mahakali-matha.jpg?w=900&h=500&s=1",
        "description": "A prominent temple dedicated to Goddess Mahakali, attracting thousands of devotees. | माता महाकाली को समर्पित यह प्रसिद्ध मंदिर हजारों श्रद्धालुओं को आकर्षित करता है।"
      },
      {
        "name": "Vemulawada Rajarajeshwara Swamy Temple (वेमुलवाडा राजराजेश्वर स्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/15/26/c0/main-temple.jpg?w=1200&h=1200&s=1",
        "description": "An important pilgrimage site for Lord Shiva devotees, often called 'Dakshina Kashi'. | भगवान शिव को समर्पित प्रमुख तीर्थ स्थल, जिसे 'दक्षिण काशी' भी कहा जाता है।"
      },
      {
        "name": "Dharmapuri Lakshmi Narasimha Swamy Temple (धर्मपुरी लक्ष्मी नरसिंह स्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/18/97/e0/main-entrance.jpg?w=900&h=-1&s=1",
        "description": "A famous temple on the banks of the Godavari River, dedicated to Lord Narasimha. | गोदावरी नदी के किनारे स्थित भगवान नरसिंह को समर्पित प्रसिद्ध मंदिर।"
      },

    ],
    "Khammam (खम्मम)": [
      {
        "name": "Khammam Fort (खम्मम किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/5b/c4/ae/fort.jpg?w=700&h=400&s=1",
        "description": "A 1000-year-old fort built by the Kakatiya rulers, offering panoramic views of the town. | काकतीय राजाओं द्वारा निर्मित 1000 साल पुराना किला, जहाँ से पूरे शहर का विहंगम दृश्य देखा जा सकता है।"
      },
      {
        "name": "Lakaram Lake (लकरम झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/56/cc/68/caption.jpg?w=200&h=-1&s=1",
        "description": "A popular lake in Khammam, developed with boating facilities and a park. | खम्मम की प्रसिद्ध झील, जहाँ बोटिंग और पार्क की सुविधा उपलब्ध है।"
      },
      {
        "name": "Kinnerasani Wildlife Sanctuary (किन्नेरसानी वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvAvtKc_5nkzYIKj6lBTM5mMt2H4r4gtH-yw&s",
        "description": "A sanctuary in the Godavari valley, home to tigers, panthers, and migratory birds. | गोदावरी घाटी में स्थित यह अभयारण्य बाघ, चीते और प्रवासी पक्षियों का घर है।"
      },
      {
        "name": "Perantalapalli (पेरंटलपल्ली)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/07/1d/56/63/papi-hills.jpg",
        "description": "A serene village on the banks of the Godavari, famous for its temple and scenic beauty. | गोदावरी नदी के किनारे स्थित शांत गांव, जो अपने मंदिर और प्राकृतिक सुंदरता के लिए मशहूर है।"
      },
      {
        "name": "Nelakondapalli (नेलकोंडपल्ली)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_PYNvtWM2TFcr32eo35J6OZmZgm4p5DjNXg&s",
        "description": "A historic site associated with Buddhism, containing ancient stupas and relics. | बौद्ध धर्म से जुड़ा ऐतिहासिक स्थल, जहाँ प्राचीन स्तूप और अवशेष पाए जाते हैं।"
      },
      {
        "name": "Palair Lake (पलैर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB4KUFrFs8lC5g50inz38FAWTn4kgrsy34rQ&s",
        "description": "A massive freshwater lake, ideal for fishing, boating, and relaxation. | विशाल मीठे पानी की झील, मछली पकड़ने, बोटिंग और विश्राम के लिए उपयुक्त।"
      }
    ],
    "Komaram Bheem Asifabad (कोमाराम भीम आसिफाबाद)": [
      {
        "name": "Kawal Wildlife Sanctuary (कावल वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/c3/a8/30/screenshot-2019-08-13.jpg?w=300&h=-1&s=1",
        "description": "One of the oldest sanctuaries in Telangana, home to tigers, leopards, sloth bears, and migratory birds. | तेलंगाना के सबसे पुराने अभयारण्यों में से एक, जहाँ बाघ, तेंदुए, भालू और प्रवासी पक्षी पाए जाते हैं।"
      },
      {
        "name": "Pochera Waterfalls (पोचेरा जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCTf3gfIupRguPfrpR1Cvg34RZRQTkW4ntVA&s",
        "description": "A stunning perennial waterfall on the Godavari River, surrounded by dense forests. | गोदावरी नदी पर स्थित यह सुंदर जलप्रपात सालभर बहता है और घने जंगलों से घिरा है।"
      },
      {
        "name": "Komaram Bheem Memorial Park (कोमाराम भीम स्मारक पार्क)",
        "image": "https://i.ytimg.com/vi/v_JQJpENYqY/maxresdefault.jpg",
        "description": "A memorial dedicated to tribal freedom fighter Komaram Bheem, showcasing his life and struggle. | आदिवासी स्वतंत्रता सेनानी कोमाराम भीम की स्मृति में बना पार्क, जहाँ उनकी जीवनगाथा प्रदर्शित है।"
      },
      {
        "name": "Gayathri Waterfalls (गायत्री जलप्रपात)",
        "image": "https://i.ytimg.com/vi/PsjrszFmwqE/maxresdefault.jpg",
        "description": "A hidden waterfall in dense forests, also known as 'Gadidha Gundam'. | घने जंगलों में छुपा यह जलप्रपात 'गदिधा गुंडम' के नाम से भी जाना जाता है।"
      },
      {
        "name": "Jainath Temple (जैनाथ मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/71/db/10/screenshot-2019-09-30.jpg?w=1200&h=-1&s=1",
        "description": "An ancient temple dedicated to Lord Lakshmi Narayana Swamy, built in Jain style. | भगवान लक्ष्मी नारायण स्वामी को समर्पित प्राचीन मंदिर, जो जैन शैली में बना है।"
      }
    ],
    "Mahabubabad (महबूबाबाद)": [
      {
        "name": "Bayyaram Lake (बय्याराम झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/da/88/b3/mallela-theertham-waterfalls.jpg?w=1200&h=1200&s=1",
        "description": "A scenic lake surrounded by lush forests, perfect for nature lovers and picnics. | हरे-भरे जंगलों से घिरी सुंदर झील, जो प्रकृति प्रेमियों और पिकनिक के लिए आदर्श है।"
      },
      {
        "name": "Edubadu Caves (एडुबाडु गुफाएँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlLUACypF1EnuKbpINZM7qsM-GZHnsFra3JA&s",
        "description": "Ancient caves with prehistoric rock paintings, a site of archaeological importance. | प्राचीन गुफाएँ जहाँ प्रागैतिहासिक चित्र मिले हैं, पुरातात्विक दृष्टि से महत्वपूर्ण स्थान।"
      },
      {
        "name": "Pandavula Gutta (पांडवुला गुट्टा)",
        "image": "https://i.ytimg.com/vi/FOm4wRBYzAY/maxresdefault.jpg",
        "description": "A hillock with prehistoric rock art and mythological significance linked to Pandavas. | पांडवों से जुड़ा हुआ यह पहाड़ी स्थल प्रागैतिहासिक शिलाचित्रों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kothapalli Waterfalls (कोठापल्ली जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/ef/20/55/foot-of-the-falls.jpg?w=900&h=500&s=1",
        "description": "A mesmerizing waterfall amidst dense forests, a hidden gem of Telangana. | घने जंगलों के बीच स्थित यह मनमोहक जलप्रपात तेलंगाना का छुपा हुआ रत्न है।"
      },
      {
        "name": "Oorattam Waterfalls (ऊरत्तम जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/da/88/b3/mallela-theertham-waterfalls.jpg?w=1200&h=1200&s=1",
        "description": "A seasonal waterfall surrounded by hills, popular among trekkers and nature enthusiasts. | पहाड़ियों से घिरा मौसमी जलप्रपात, ट्रेकिंग और नेचर प्रेमियों के बीच लोकप्रिय।"
      }
    ],
    "Mahbubnagar (महबूबनगर)": [
      {
        "name": "Pillalamarri Banyan Tree (पिल्ललमार्री बरगद का पेड़)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/56/7e/68/photo2jpg.jpg?w=1200&h=-1&s=1",
        "description": "A 700-year-old giant banyan tree spread across 3 acres, a natural wonder. | 700 साल पुराना विशाल बरगद का पेड़, जो 3 एकड़ में फैला हुआ है और प्राकृतिक अजूबा है।"
      },
      {
        "name": "Alampur Jogulamba Temple (आलमपुर जोगुलाम्बा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdCT3bx86AeIB6jLfVPY6AXu1RjhhSMFtekA&s",
        "description": "One of the 18 Shakti Peethas, dedicated to Goddess Jogulamba, located on Tungabhadra River. | 18 शक्तिपीठों में से एक, माँ जोगुलाम्बा को समर्पित मंदिर, तुंगभद्रा नदी किनारे स्थित।"
      },
      {
        "name": "Koilsagar Dam (कोइलसागर बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/dd/cf/20/photo2jpg.jpg?w=1200&h=-1&s=1",
        "description": "A scenic dam with lush green surroundings, popular for picnics and relaxation. | हरियाली से घिरा खूबसूरत बांध, पिकनिक और घूमने के लिए प्रसिद्ध।"
      },
      {
        "name": "Jurala Dam (जूराला बांध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBG6YbslucJA7KvntGMdm13Kc_IgVdZxEIIQ&s",
        "description": "A major irrigation project across River Krishna, also a popular tourist spot. | कृष्णा नदी पर बना प्रमुख सिंचाई परियोजना, जो पर्यटन स्थल के रूप में भी प्रसिद्ध है।"
      },
      {
        "name": "Farahabad Hills (फरहाबाद हिल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/dc/1d/58/views.jpg?w=900&h=-1&s=1",
        "description": "Located in Nallamala Forest, this place offers trekking, wildlife, and stunning views. | नल्लमाला जंगलों में स्थित यह स्थल ट्रेकिंग, वन्यजीव और खूबसूरत दृश्यों के लिए मशहूर है।"
      },

    ],
    "Mancherial (मंचेरियल)": [
      {
        "name": "Kawal Wildlife Sanctuary (कावल वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/e5/52/0f/haritha-eco-resorts-in.jpg?w=1200&h=1200&s=1",
        "description": "A renowned tiger reserve with rich biodiversity, home to tigers, leopards, and migratory birds. | प्रसिद्ध टाइगर रिज़र्व, जहाँ बाघ, तेंदुए और कई प्रवासी पक्षी पाए जाते हैं।"
      },
      {
        "name": "Pranahita Wildlife Sanctuary (प्रणहिता वन्यजीव अभयारण्य)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0e/37/74/df/images-7-largejpg.jpg",
        "description": "Located on the banks of Pranahita River, home to crocodiles, wild boars, and rare birds. | प्रणहिता नदी के किनारे स्थित, जहाँ मगरमच्छ, जंगली सूअर और दुर्लभ पक्षी मिलते हैं।"
      },

      {
        "name": "Shivaram Wildlife Sanctuary (शिवराम वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/f4/d8/6b/sivaram-wildlife-sanctuary.jpg?w=1200&h=-1&s=1",
        "description": "Famous for crocodiles in the Godavari River, also home to deer and peacocks. | गोदावरी नदी में मगरमच्छों के लिए प्रसिद्ध, यहाँ हिरण और मोर भी पाए जाते हैं।"
      },

    ],
    "Medak (मेदक)": [
      {
        "name": "Medak Fort (मेदक किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/7c/29/1a/first-entrance-of-the.jpg?w=1200&h=-1&s=1",
        "description": "A historic fort built during the Kakatiya dynasty, offering panoramic views of the town. | काकतीय राजाओं द्वारा निर्मित ऐतिहासिक किला, जहाँ से पूरे शहर का विहंगम दृश्य देखा जा सकता है।"
      },
      {
        "name": "Medak Cathedral (मेदक कैथेड्रल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/e8/8f/53/side-view.jpg?w=1200&h=-1&s=1",
        "description": "One of the largest churches in Asia, famous for its Gothic architecture and stained glass windows. | एशिया के सबसे बड़े चर्चों में से एक, जो गोथिक वास्तुकला और रंगीन कांच की खिड़कियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Pocharam Wildlife Sanctuary (पोचारम वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/90/68/71/pocharam-wildlife-sanctuary.jpg?w=1200&h=-1&s=1",
        "description": "A sanctuary home to leopards, wolves, and migratory birds, located around Pocharam Lake. | तेंदुए, भेड़िए और प्रवासी पक्षियों का घर, पोचारम झील के आसपास स्थित अभयारण्य।"
      },
      {
        "name": "Edupayala Vana Durga Bhavani Temple (एडुपायला वना दुर्गा भवानी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo95NVLQolPDPI11ZhkrL4CQ-CeoRFzeZErw&s",
        "description": "A famous temple where seven streams of the Manjeera River meet, dedicated to Goddess Durga. | मंजेरा नदी की सात धाराओं के संगम पर स्थित माँ दुर्गा का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Manjeera Reservoir & Dam (मंजेरा जलाशय और बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/a9/3e/c3/photo3jpg.jpg?w=900&h=500&s=1",
        "description": "A major water source for Hyderabad, also a scenic tourist spot with boating facilities. | हैदराबाद की जल आपूर्ति का प्रमुख स्रोत, साथ ही पिकनिक और बोटिंग के लिए सुंदर स्थान।"
      }
    ],
    "Medchal–Malkajgiri (मेडचल–मल्काजगिरि)": [
      {
        "name": "Ramoji Film City (रामोजी फिल्म सिटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX4dn8ETN06XLgf8grxFp1F67DB9fuxLqF2A&s",
        "description": "One of the largest film studio complexes in the world, offering tours, amusement, and cultural attractions. | विश्व के सबसे बड़े फिल्म स्टूडियो परिसर में से एक, जो टूर, मनोरंजन और सांस्कृतिक आकर्षण प्रदान करता है।"
      },
      {
        "name": "Gandipet Lake / Osman Sagar (गंदीपेट झील / उस्मान सागर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/06/ca/9e/pic11.jpg?w=900&h=-1&s=1",
        "description": "A scenic reservoir providing a serene environment for picnics and boating. | मनोरम जलाशय, जो पिकनिक और बोटिंग के लिए शांत वातावरण प्रदान करता है।"
      },
      {
        "name": "Shamirpet Deer Park (शमीरपेट हिरण पार्क)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/13/3b/69/a9/shamirpet-lake-largejpg.jpg",
        "description": "A popular park for wildlife enthusiasts, featuring deer, birds, and picnic spots. | वन्यजीव प्रेमियों के लिए लोकप्रिय पार्क, जहाँ हिरण, पक्षी और पिकनिक स्थल उपलब्ध हैं।"
      },
      {
        "name": "Medchal Fort (मेडचल किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/7c/29/1a/first-entrance-of-the.jpg?w=900&h=500&s=1",
        "description": "A historic fort from the Qutb Shahi era, showcasing ancient architecture and scenic views. | कुतुब शाही कालीन ऐतिहासिक किला, प्राचीन वास्तुकला और मनोरम दृश्यों के लिए प्रसिद्ध।"
      },
      {
        "name": "Shamirpet Lake (शमीरपेट झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/47/47/15/view-from-the-rocks.jpg?w=1200&h=-1&s=1",
        "description": "A beautiful lake surrounded by green landscapes, ideal for boating and relaxation. | हरियाली से घिरी सुंदर झील, बोटिंग और विश्राम के लिए आदर्श।"
      }
    ],
    "Mulugu (मुलुगु)": [
      {
        "name": "Kuntala Waterfalls (कुन्तला जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/a9/9b/56/kuntala-waterfall.jpg?w=1200&h=-1&s=1",
        "description": "The highest waterfall in Telangana, surrounded by dense forests and ideal for trekking. | तेलंगाना का सबसे ऊँचा जलप्रपात, घने जंगलों से घिरा और ट्रेकिंग के लिए उपयुक्त।"
      },
      {
        "name": "Bogatha Waterfalls (बोगथा जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOeqPFxK75DG0qLn03KfzBCHPjLMOUxVrpEA&s",
        "description": "Popularly known as the 'Niagara of Telangana', this waterfall is breathtaking amidst greenery. | 'तेलंगाना का नियाग्रा' कहलाने वाला जलप्रपात, हरी-भरी प्राकृतिक सुंदरता के बीच स्थित।"
      },

      {
        "name": "Tadvai Forests (तदवाई वन क्षेत्र)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0c/ae/83/fa/bogatha-waterfalls.jpg",
        "description": "Dense forest area rich in biodiversity, ideal for nature walks and wildlife spotting. | जैव विविधता से भरपूर घना वन क्षेत्र, प्राकृतिक सैर और वन्यजीव देखने के लिए उत्तम।"
      },
      {
        "name": "Bheemuni Pahad (भीमुणी पहाड़)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSajgr4JTx3E4PHv3LEHcFKaivZxIi0PaRv8Q&s",
        "description": "A scenic hill offering panoramic views of the Mulugu district and surrounding landscapes. | मुलुगु जिले और आसपास के दृश्यों का मनोरम दृश्य प्रस्तुत करने वाला पहाड़ी क्षेत्र।"
      }
    ],
    "Nagarkurnool (नागरकुरनूल)": [
      {
        "name": "Nagarjuna Sagar Dam (नागार्जुन सागर बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/9f/bf/4d/nagarjuna-sagar-dam.jpg?w=1200&h=-1&s=1",
        "description": "One of the largest dams in India on the Krishna River, also famous for boating and scenic views. | कृष्णा नदी पर स्थित भारत के सबसे बड़े बांधों में से एक, बोटिंग और सुंदर दृश्यों के लिए प्रसिद्ध।"
      },
      {
        "name": "Srisailam Temple (स्रीसैलम मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/b2/20/43/mallikarjuna-swamy-temple.jpg?w=1200&h=1200&s=1",
        "description": "A famous pilgrimage site dedicated to Lord Mallikarjuna (Shiva) and Goddess Bhramaramba (Parvati). | भगवान मल्लिकार्जुन (शिव) और माता भ्रामरांबा (पार्वती) को समर्पित प्रसिद्ध तीर्थ स्थल।"
      },
      {
        "name": "Umamaheshwaram Temple (उमामहेश्वरम मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/04/36/43/33/yaganti-temple.jpg",
        "description": "A serene temple located in the Nallamala hills, dedicated to Lord Shiva. | नल्लमाला पहाड़ियों में स्थित शांतिपूर्ण शिव मंदिर।"
      },
      {
        "name": "Kollapur Palace (कोल्लापुर महल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/e3/9d/19/the-maharaja-s-place.jpg?w=900&h=-1&s=1",
        "description": "A historic palace showcasing the architecture and heritage of the region. | ऐतिहासिक महल जो क्षेत्र की वास्तुकला और सांस्कृतिक विरासत को दर्शाता है।"
      },
      {
        "name": "Pamulapadu Waterfalls (पमुलापाडु जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/4f/dd/4b/number-of-falls-vary.jpg?w=1200&h=-1&s=1",
        "description": "A picturesque waterfall surrounded by dense forest, ideal for trekking and nature lovers. | घने जंगलों से घिरा खूबसूरत झरना, ट्रेकिंग और प्रकृति प्रेमियों के लिए उत्तम।"
      }
    ],
    "Nalgonda (नलगोंडा)": [
      {
        "name": "Nagarjuna Sagar Dam (नागार्जुन सागर बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/22/2c/9c/nagarjuna-sagar-dam-nagarjunas.jpg?w=600&h=-1&s=1",
        "description": "One of the largest dams in India on the Krishna River, famous for its scenic beauty and boating. | कृष्णा नदी पर स्थित भारत के सबसे बड़े बांधों में से एक, सुंदर दृश्यों और बोटिंग के लिए प्रसिद्ध।"
      },
      {
        "name": "Rachakonda Fort (राचकोंडा किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/7b/b1/63/rachakonda-fort.jpg?w=1200&h=1200&s=1",
        "description": "A historic fort from the 14th century, offering panoramic views of the surrounding hills. | 14वीं सदी का ऐतिहासिक किला, जो आसपास की पहाड़ियों का विहंगम दृश्य प्रदान करता है।"
      },
      {
        "name": "Yadagirigutta Temple (यादगीरीगुट्टा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/be/64/4d/yadagirigutta-temple.jpg?w=900&h=500&s=1",
        "description": "A popular pilgrimage site dedicated to Lord Narasimha, attracting thousands of devotees annually. | भगवान नरसिंह को समर्पित प्रसिद्ध तीर्थ स्थल, जहाँ हर साल हजारों श्रद्धालु आते हैं।"
      },
      {
        "name": "Pocharam Lake (पोचारम झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/90/68/71/pocharam-wildlife-sanctuary.jpg?w=1200&h=-1&s=1",
        "description": "A serene lake ideal for picnics and boating, surrounded by greenery. | शांतिपूर्ण झील, पिकनिक और बोटिंग के लिए आदर्श, हरी-भरी प्राकृतिक सुंदरता से घिरी।"
      },
      {
        "name": "Chaya Someswara Temple (छाया सोमेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/a4/86/e0/img-20171231-114144-largejpg.jpg?w=1200&h=1200&s=1",
        "description": "A historic Shiva temple known for its unique architecture and shadow phenomenon. | ऐतिहासिक शिव मंदिर, अपनी अनोखी वास्तुकला और छाया के अद्भुत प्रभाव के लिए प्रसिद्ध।"
      }
    ],
    "Narayanpet (नारायणपेट)": [
      {
        "name": "Narsapur Lake (नरसापुर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDfSfeheXIHH9jEj5_HKJPAtTcKAR6imd0xQ&s",
        "description": "A serene lake surrounded by greenery, perfect for picnics and nature walks. | हरे-भरे वातावरण से घिरी शांत झील, पिकनिक और नेचर वॉक के लिए आदर्श।"
      },
      {
        "name": "Chintakunta Temple (चिंतकुंटा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/89/7d/b2/chintaman-ganesh-temple.jpg?w=900&h=500&s=1",
        "description": "A historic temple known for its cultural and religious significance. | ऐतिहासिक मंदिर, अपनी सांस्कृतिक और धार्मिक महत्वता के लिए प्रसिद्ध।"
      },

      {
        "name": "Kuntala Hill Viewpoint (कुन्तला हिल व्यूपॉइंट)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/a9/9b/56/kuntala-waterfall.jpg?w=1200&h=-1&s=1",
        "description": "A scenic viewpoint offering panoramic views of surrounding hills and valleys. | आस-पास की पहाड़ियों और घाटियों का मनोरम दृश्य प्रदान करने वाला सुंदर व्यूपॉइंट।"
      },
      {
        "name": "Bobbili Fort Replica (बॉब्बिली किला प्रतिकृति)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzJVkOKeFPkmgDOH6hW8UMS2VTyf38HCtx-Q&s",
        "description": "A small replica of the historic Bobbili Fort, showcasing architecture and heritage. | ऐतिहासिक बॉब्बिली किले की छोटी प्रतिकृति, जो वास्तुकला और विरासत को दर्शाती है।"
      }
    ],
    "Nirmal (निर्मल)": [
      {
        "name": "Nirmal Fort (निर्मल किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSISe8lWd4N08PkJyOlrm2dFtFPbSc7y0g2Q&s",
        "description": "A historic fort showcasing Kakatiya architecture, offering panoramic views of the town. | काकतीय वास्तुकला वाला ऐतिहासिक किला, जो पूरे शहर का विहंगम दृश्य प्रदान करता है।"
      },


      {
        "name": "Kondagattu Anjaneya Swamy Temple (कोंडगट्टु अंजनेय स्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/e3/bd/ff/kondagattu-anjaneya-swamy.jpg?w=900&h=500&s=1",
        "description": "A popular temple dedicated to Lord Hanuman, attracting devotees from surrounding regions. | भगवान हनुमान को समर्पित प्रसिद्ध मंदिर, जो आसपास के क्षेत्रों से श्रद्धालुओं को आकर्षित करता है।"
      },
      {
        "name": "Nirmal Handicraft Market (निर्मल हस्तशिल्प बाजार)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/a7/3f/75/kondapally-toys.jpg",
        "description": "Famous for wooden toys, paintings, and other handicrafts reflecting local craftsmanship. | लकड़ी के खिलौने, चित्रकला और अन्य हस्तशिल्प के लिए प्रसिद्ध, जो स्थानीय कारीगरी को दर्शाते हैं।"
      }
    ],
    "Nizamabad (निजामाबाद)": [
      {
        "name": "Nizamabad Fort (निजामाबाद किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/21/66/f6/6d/quilla.jpg",
        "description": "A historic fort with ancient architecture, offering panoramic views of Nizamabad town. | प्राचीन वास्तुकला वाला ऐतिहासिक किला, जो निजामाबाद शहर का विहंगम दृश्य प्रदान करता है।"
      },
      {
        "name": "Alisagar Reservoir (अलीसागर जलाशय)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/02/77/bb/39/filename-ali-sagar-lake.jpg",
        "description": "A scenic lake surrounded by lush greenery, popular for boating and picnics. | हरी-भरी प्राकृतिक सुंदरता से घिरी झील, बोटिंग और पिकनिक के लिए प्रसिद्ध।"
      },
      {
        "name": "Nizamabad Jain Temple (निजामाबाद जैन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/73/15/45/temple.jpg?w=1200&h=-1&s=1",
        "description": "An ancient Jain temple known for its peaceful ambiance and intricate carvings. | प्राचीन जैन मंदिर, शांत वातावरण और जटिल नक्काशी के लिए प्रसिद्ध।"
      },
      {
        "name": "Pochampally Lake (पोचम्पल्ली झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/6b/67/e7/front-of-the-dam.jpg?w=1200&h=-1&s=1",
        "description": "A serene lake ideal for nature walks, surrounded by lush forests. | शांत झील, प्राकृतिक सैर और हरे-भरे जंगलों के बीच स्थित।"
      },
      {
        "name": "Nizamabad Thermal Power Station (निजामाबाद थर्मल पावर स्टेशन)",
        "image": "https://elements-resized.envatousercontent.com/elements-video-cover-images/0f17900d-7df5-430c-993d-6d8ed819ae83/video_preview/video_preview_0000.jpg?w=500&cf_fit=cover&q=85&format=auto&s=cd81d98136c34bab3d173e721eb973015d2d23f91c927358b667dea9e84c5747",
        "description": "An industrial landmark, occasionally visited for educational tours and local sightseeing. | एक औद्योगिक स्थल, जिसे कभी-कभी शैक्षिक यात्रा और स्थानीय पर्यटन के लिए देखा जाता है।"
      }
    ],
    "Peddapalli (पेद्दपल्ली)": [
      {
        "name": "Kuntala Waterfalls (कुन्तला जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/a9/9b/56/kuntala-waterfall.jpg?w=1200&h=-1&s=1",
        "description": "The highest waterfall in Telangana, surrounded by lush forests and ideal for trekking. | तेलंगाना का सबसे ऊँचा जलप्रपात, घने जंगलों से घिरा और ट्रेकिंग के लिए उपयुक्त।"
      },

      {
        "name": "Ramagundam Temple (रामगुंडम मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/05/76/69/img-20161225-114644-01.jpg?w=600&h=400&s=1",
        "description": "A famous local temple dedicated to Lord Shiva, attracting devotees year-round. | भगवान शिव को समर्पित प्रसिद्ध मंदिर, जहाँ साल भर श्रद्धालु आते हैं।"
      },
      {
        "name": "Peddapalli Thermal Power Station (पेद्दपल्ली थर्मल पावर स्टेशन)",
        "image": "https://elements-resized.envatousercontent.com/elements-video-cover-images/0f17900d-7df5-430c-993d-6d8ed819ae83/video_preview/video_preview_0000.jpg?w=500&cf_fit=cover&q=85&format=auto&s=cd81d98136c34bab3d173e721eb973015d2d23f91c927358b667dea9e84c5747",
        "description": "An industrial landmark, occasionally visited for educational tours. | एक औद्योगिक स्थल, जिसे कभी-कभी शैक्षिक यात्रा के लिए देखा जाता है।"
      },
      {
        "name": "Kondagattu Anjaneya Swamy Temple (कोंडगट्टु अंजनेय स्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/4a/20/a2/entrance.jpg?w=1200&h=-1&s=1",
        "description": "A scenic temple located amidst hills, dedicated to Lord Hanuman. | पहाड़ियों के बीच स्थित खूबसूरत मंदिर, भगवान हनुमान को समर्पित।"
      }
    ],
    "Rajanna Sircilla (राजन्ना सिरसिल्ला)": [

      {
        "name": "Kaleshwaram Temple (कलेश्वरम मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/f3/a6/81/20150907-083225-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "A revered temple dedicated to Lord Shiva, attracting thousands of devotees annually. | भगवान शिव को समर्पित प्रसिद्ध मंदिर, जहाँ हर साल हजारों श्रद्धालु आते हैं।"
      },
      {
        "name": "Sircilla Lake (सिरसिल्ला झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/cb/ee/80/photo4jpg.jpg?w=400&h=300&s=1",
        "description": "A serene lake ideal for picnics and relaxation, surrounded by greenery. | शांत झील, पिकनिक और विश्राम के लिए आदर्श, हरियाली से घिरी हुई।"
      },

      {
        "name": "Konda Pochamma Temple (कोंडा पोचम्मा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/f8/0a/fd/caption.jpg?w=800&h=400&s=1",
        "description": "A famous local deity temple located amidst scenic surroundings. | प्राकृतिक सुंदरता से घिरे प्रसिद्ध स्थानीय देवी का मंदिर।"
      }
    ],
    "Rangareddy (रंगारेड्डी)": [
      {
        "name": "Shamirpet Lake (शमीरपेट झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/3b/69/a9/shamirpet-lake-largejpg.jpg?w=900&h=500&s=1",
        "description": "A scenic lake surrounded by greenery, ideal for picnics and nature walks. | हरी-भरी प्राकृतिक सुंदरता से घिरी सुंदर झील, पिकनिक और प्राकृतिक सैर के लिए आदर्श।"
      },
      {
        "name": "Ramoji Film City (रामोजी फिल्म सिटी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/f3/ad/1a/filmi-duniya.jpg?w=1200&h=-1&s=1",
        "description": "One of the largest film studio complexes in the world, offering tours, amusement, and cultural attractions. | विश्व के सबसे बड़े फिल्म स्टूडियो परिसर में से एक, जो टूर, मनोरंजन और सांस्कृतिक आकर्षण प्रदान करता है।"
      },
      {
        "name": "Medchal Fort (मेडचल किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/7c/29/1a/first-entrance-of-the.jpg?w=900&h=500&s=1",
        "description": "A historic fort from the Qutb Shahi era, offering panoramic views of the surroundings. | कुतुब शाही कालीन ऐतिहासिक किला, जो आसपास का विहंगम दृश्य प्रदान करता है।"
      },


    ],
    "Sangareddy (संगारेड्डी)": [
      {
        "name": "Pochampally Handloom Village (पोचम्पल्ली हैंडलूम गांव)",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/07/70/95/24.jpg",
        "description": "Famous for traditional handloom sarees, showcasing exquisite local craftsmanship. | पारंपरिक हैंडलूम साड़ियों के लिए प्रसिद्ध, जो उत्कृष्ट स्थानीय कारीगरी को दर्शाते हैं।"
      },
      {
        "name": "Sangareddy Fort (संगारेड्डी किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgWL1v6x4WRprVz7cBlTkR-l1Scl3jzk_Lzw&s",
        "description": "A historic fort offering insights into the region's history and architecture. | ऐतिहासिक किला, जो क्षेत्र के इतिहास और वास्तुकला की झलक प्रदान करता है।"
      },

      {
        "name": "Pocharam Lake (पोचारम झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/90/68/71/pocharam-wildlife-sanctuary.jpg?w=1200&h=-1&s=1",
        "description": "A serene lake ideal for picnics and boating, surrounded by nature. | शांत झील, पिकनिक और बोटिंग के लिए आदर्श, प्राकृतिक सुंदरता से घिरी।"
      },
      {
        "name": "Keesara Temple (कीसारा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOtePkWJG6x2CoN_YGMcpJJriB_XsIQ5HOYw&s",
        "description": "A historic temple dedicated to Lord Shiva, popular among devotees. | भगवान शिव को समर्पित ऐतिहासिक मंदिर, श्रद्धालुओं के बीच प्रसिद्ध।"
      }
    ],
    "Siddipet (सिद्दीपेट)": [
      {
        "name": "Komuravelli Mallanna Temple (कोमुरावेली मल्लन्ना मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/21/8e/fa/d5/the-idols-in-the-cave.jpg",
        "description": "A famous temple dedicated to Lord Mallanna, attracting thousands of devotees annually. | भगवान मल्लन्ना को समर्पित प्रसिद्ध मंदिर, जहाँ हर साल हजारों श्रद्धालु आते हैं।"
      },
    ],
    "Suryapet (सूर्यापेट)": [

      {
        "name": "Neredu Gutta Temple (नेरदु गुट्टा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx_9du3xB5-uiNpLoVjNcRDDwk3l1UxwAEQQ&s",
        "description": "A historic hilltop temple attracting devotees from surrounding areas. | पहाड़ी पर स्थित ऐतिहासिक मंदिर, जो आसपास के क्षेत्रों से श्रद्धालुओं को आकर्षित करता है।"
      },
      {
        "name": "Suryapet Fort (सूर्यापेट किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-c/1280x250/12/bc/81/e2/a-overview-of-temple.jpg",
        "description": "An ancient fort showcasing the region's historical significance. | क्षेत्र के ऐतिहासिक महत्व को दर्शाने वाला प्राचीन किला।"
      },
      {
        "name": "Kottapalli Reservoir (कोट्टापल्ली जलाशय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/5a/a0/b6/reservoir-kotpally.jpg?w=1200&h=1200&s=1",
        "description": "A reservoir offering boating and serene natural surroundings. | शांतिपूर्ण जलाशय, जो बोटिंग और प्राकृतिक सैर के लिए आदर्श है।"
      },
      {
        "name": "Mamidikonda Temple (मामिडिकोंडा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/c1/8d/97/manyamkonda-sri-lakshmi.jpg?w=1200&h=-1&s=1",
        "description": "A popular temple dedicated to Lord Shiva, attracting devotees year-round. | भगवान शिव को समर्पित प्रसिद्ध मंदिर, जहाँ साल भर श्रद्धालु आते हैं।"
      }
    ],
    "Vikarabad (विकाराबाद)": [
      {
        "name": "Ananthagiri Hills (अनंतगिरी हिल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/dc/1d/58/views.jpg?w=1200&h=1200&s=1",
        "description": "A popular hill station surrounded by dense forests, ideal for trekking and nature walks. | घने जंगलों से घिरी प्रसिद्ध हिल स्टेशन, ट्रेकिंग और प्राकृतिक सैर के लिए आदर्श।"
      },
      {
        "name": "Ananthagiri Temple (अनंतगिरी मंदिर)",
        "image": "https://c8.alamy.com/comp/GWTNHT/anantha-padmanabha-swamy-temple-at-ananthagiri-hills-GWTNHT.jpg",
        "description": "An ancient temple situated amidst the hills, attracting devotees and tourists. | पहाड़ियों के बीच स्थित प्राचीन मंदिर, जो श्रद्धालुओं और पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Kotepally Reservoir (कोटेपल्ली जलाशय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/5a/a0/b6/reservoir-kotpally.jpg?w=1200&h=-1&s=1",
        "description": "A scenic reservoir surrounded by greenery, ideal for picnics and relaxation. | हरी-भरी सुंदरता से घिरा जलाशय, पिकनिक और विश्राम के लिए आदर्श।"
      },

      {
        "name": "Doulthabad Fort (दौलथाबाद किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/27/b5/34/daulatabad-fort.jpg?w=900&h=500&s=1",
        "description": "A historic fort with ancient architecture, offering panoramic views of the surrounding area. | प्राचीन वास्तुकला वाला ऐतिहासिक किला, जो आसपास के क्षेत्र का विहंगम दृश्य प्रदान करता है।"
      }
    ],
    "Wanaparthy (वनपर्थी)": [
      {
        "name": "Wanaparthy Fort (वनपर्थी किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyRT4WvE9yxk_lmwZv4l9aAX1Y3wGH5aaFLg&s",
        "description": "A historic fort showcasing the architecture and history of the region. | क्षेत्र के इतिहास और वास्तुकला को प्रदर्शित करने वाला ऐतिहासिक किला।"
      },
      {
        "name": "Singareni Temple (सिंगरेनी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQalYQ_YNz8Zi4kuTxu_TNzTDDmiugrl0VMHw&s",
        "description": "A popular temple attracting devotees from surrounding areas. | आसपास के क्षेत्रों से श्रद्धालुओं को आकर्षित करने वाला प्रसिद्ध मंदिर।"
      },

      {
        "name": "Peddamandadi Reservoir (पेड्डामंदादी जलाशय)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/c/c9/NagarjunaSagarDam.JPG",
        "description": "A serene reservoir ideal for picnics and relaxation. | पिकनिक और विश्राम के लिए शांतिपूर्ण जलाशय।"
      },
      {
        "name": "Ramappa Temple (रामप्पा मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/2/29/Ramappa_Temple_%28Human_Scale%29.jpg",
        "description": "A historic temple reflecting exquisite Kakatiya architecture. | शानदार काकतीय वास्तुकला वाला ऐतिहासिक मंदिर।"
      }
    ],
    "Yadadri Bhuvanagiri (यादाद्रि भुवनगिरि)": [
      {
        "name": "Yadadri Laxmi Narasimha Swamy Temple (यादाद्री लक्ष्मी नरसिंह स्वामी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6WjXDGgHH0ldoo3MLle107Z0xHmehoHdbdQ&s",
        "description": "A famous temple dedicated to Lord Narasimha, attracting thousands of devotees annually. | भगवान नरसिंह को समर्पित प्रसिद्ध मंदिर, जहाँ हर साल हजारों श्रद्धालु आते हैं।"
      },
      {
        "name": "Bhuvanagiri Fort (भुवनगिरी किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0e/3b/71/34/photo2jpg.jpg",
        "description": "A historic fort known for its architectural grandeur and scenic views. | ऐतिहासिक किला, जो अपनी भव्य वास्तुकला और खूबसूरत दृश्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Keesara Temple (कीसारा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzn4UIGnz48SAmnQz2CuP_u8RJaaUtS9GdQg&s",
        "description": "A scenic temple dedicated to Lord Shiva, popular among devotees and tourists. | भगवान शिव को समर्पित सुंदर मंदिर, श्रद्धालुओं और पर्यटकों के बीच लोकप्रिय।"
      },
      {
        "name": "Ramanpahad Lake (रामनपहाड झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/25/d0/57/lakhyavaram-lake-hanging.jpg?w=1200&h=1200&s=1",
        "description": "A serene lake surrounded by greenery, ideal for picnics and relaxation. | हरियाली से घिरी शांत झील, पिकनिक और विश्राम के लिए आदर्श।"
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
