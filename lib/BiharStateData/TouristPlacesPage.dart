import 'package:flutter/material.dart';
import 'PlaceDetailsPage.dart';

class TouristPlacesPage extends StatelessWidget {
  final String districtName;

  TouristPlacesPage({super.key, required this.districtName});

  final Map<String, List<Map<String, String>>> districtPlaces = {
    "Patna (पटना)": [
      {
        "name": "Golghar",
        "image": "assets/images/golghar.jpg",
        "description": "Golghar, built in 1786 by Captain John Garstin, is a massive granary offering panoramic views of Patna. गोलघर, 1786 में कैप्टन जॉन गार्स्टिन द्वारा बनाया गया एक विशाल अन्नागार है, जहाँ से पटना का शानदार नज़ारा दिखता है।"
      },
      {
        "name": "Patna Museum",
        "image": "assets/images/patna_museum.jpg",
        "description": "Patna Museum houses rare artifacts, paintings, and ancient relics. पटना संग्रहालय में दुर्लभ कलाकृतियाँ और प्राचीन वस्तुएँ रखी हैं।"
      },
      {
        "name": "Sanjay Gandhi Biological Park",
        "image": "assets/images/sanjay_gandhi_bio_park.jpg",
        "description": "A famous zoo and botanical garden. प्रसिद्ध चिड़ियाघर और बॉटनिकल गार्डन।"
      },
      {
        "name": "Takht Sri Patna Sahib",
        "image": "assets/images/takht_patina_sahib.jpg",
        "description": "A sacred Sikh Gurudwara dedicated to Guru Gobind Singh Ji. गुरु गोविंद सिंह जी को समर्पित पवित्र गुरुद्वारा।"
      },
      {
        "name": "Buddha Smriti Park",
        "image": "assets/images/buddha_smriti_park.jpg",
        "description": "Memorial park dedicated to Lord Buddha. भगवान बुद्ध को समर्पित स्मारक पार्क।"
      },
      {
        "name": "Kumhrar Park",
        "image": "assets/images/kumhrar_park.jpg",
        "description": "Ancient archaeological site from Mauryan period. मौर्य काल का प्राचीन पुरातात्विक स्थल।"
      },
      {
        "name": "Agam Kuan",
        "image": "assets/images/agum_kuan.jpg",
        "description": "Ancient well dating back to Ashoka period. अशोक काल का प्राचीन कुआँ।"
      },
      {
        "name": "Padri Ki Haveli",
        "image": "assets/images/padri_ki_haveli.jpg",
        "description": "Oldest church in Bihar built in 1772. बिहार का सबसे पुराना चर्च, 1772 में बना।"
      },
      {
        "name": "Gandhi Maidan",
        "image": "assets/images/gandhi_maidan.jpg",
        "description": "Historic ground where major political rallies are held. ऐतिहासिक मैदान, जहाँ महत्वपूर्ण रैलियाँ होती हैं।"
      },
      {
        "name": "Planetarium Patna",
        "image": "assets/images/patna_planetarium.jpg",
        "description": "One of Asia’s largest planetariums. एशिया के सबसे बड़े तारामंडलों में से एक।"
      },
      {
        "name": "Eco Park",
        "image": "assets/images/eco_park.jpg",
        "description": "Green park with walking tracks and boating. हरियाली से भरा पार्क जिसमें बोटिंग की सुविधा।"
      },
      {
        "name": "Khuda Bakhsh Library",
        "image": "assets/images/khuda_bakhsh_library.jpg",
        "description": "Library with rare manuscripts. दुर्लभ पांडुलिपियों वाली लाइब्रेरी।"
      },
      {
        "name": "Funtasia Water Park",
        "image": "assets/images/funtasia_water_park.jpg",
        "description": "First water park of Bihar. बिहार का पहला वॉटर पार्क।"
      },
      {
        "name": "Mahavir Mandir",
        "image": "assets/images/mahavir_mandir.jpg",
        "description": "Famous Hanuman temple near Patna Junction. पटना जंक्शन के पास प्रसिद्ध हनुमान मंदिर।"
      },
      {
        "name": "ISKCON Temple",
        "image": "assets/images/iskcon_patna.jpg",
        "description": "Beautiful temple of Lord Krishna. भगवान कृष्ण का भव्य मंदिर।"
      },
      {
        "name": "Ganga Ghat",
        "image": "assets/images/ganga_ghat_patna.jpg",
        "description": "Famous riverfront for Ganga Aarti. गंगा आरती के लिए प्रसिद्ध तट।"
      },
      {
        "name": "Patna Sahib Fort",
        "image": "assets/images/patna_sahib_fort.jpg",
        "description": "Historical fort near Gurudwara Patna Sahib. गुरुद्वारा पटना साहिब के पास का ऐतिहासिक किला।"
      },
      {
        "name": "Rajdhani Vatika",
        "image": "assets/images/rajdhani_vatika.jpg",
        "description": "Public park for recreation. मनोरंजन के लिए सार्वजनिक पार्क।"
      },
      {
        "name": "Srikrishna Science Centre",
        "image": "assets/images/science_centre.jpg",
        "description": "Interactive science exhibits. इंटरएक्टिव विज्ञान प्रदर्शनी।"
      },
      {
        "name": "Japanese Peace Pagoda",
        "image": "assets/images/peace_pagoda.jpg",
        "description": "Buddhist monument for peace. शांति के लिए बौद्ध स्मारक।"
      },
      {
        "name": "Badi Patan Devi Temple",
        "image": "assets/images/badi_patan_devi.jpg",
        "description": "One of the 51 Shakti Peethas. 51 शक्ति पीठों में से एक।"
      },
      {
        "name": "Chhoti Patan Devi Temple",
        "image": "assets/images/chhoti_patan_devi.jpg",
        "description": "Ancient temple of Goddess Durga. माँ दुर्गा का प्राचीन मंदिर।"
      },
      {
        "name": "Pathar Ki Masjid",
        "image": "assets/images/pathar_ki_masjid.jpg",
        "description": "Mosque made of stone built in 1621. पत्थर से बनी मस्जिद, 1621 में निर्मित।"
      },
      {
        "name": "Hanuman Mandir Birla Colony",
        "image": "assets/images/hanuman_mandir_birla.jpg",
        "description": "Popular Hanuman temple in Birla Colony. बिरला कॉलोनी का प्रसिद्ध हनुमान मंदिर।"
      },
      {
        "name": "NIT Ghat",
        "image": "assets/images/nit_ghat.jpg",
        "description": "Popular spot for evening strolls along the Ganga. गंगा किनारे घूमने का लोकप्रिय स्थान।"
      }
    ],

    "Gaya (गया)": [
      {
        "name": "Mahabodhi Temple",
        "image": "assets/images/mahabodhi.jpg",
        "description": "A UNESCO World Heritage Site in Bodh Gaya, where Buddha attained enlightenment. यूनेस्को विश्व धरोहर स्थल, जहाँ बुद्ध को ज्ञान की प्राप्ति हुई।"
      },
      {
        "name": "Bodhi Tree",
        "image": "assets/images/bodhi_tree.jpg",
        "description": "Sacred tree under which Buddha meditated. पवित्र वृक्ष जिसके नीचे बुद्ध ने ध्यान किया।"
      },
      {
        "name": "Great Buddha Statue",
        "image": "assets/images/great_buddha.jpg",
        "description": "80 feet tall statue of Lord Buddha. भगवान बुद्ध की 80 फीट ऊँची मूर्ति।"
      },
      {
        "name": "Dungeshwari Cave Temples",
        "image": "assets/images/dungeshwari.jpg",
        "description": "Caves where Buddha meditated before enlightenment. गुफाएँ जहाँ बुद्ध ने ज्ञान प्राप्ति से पहले ध्यान किया।"
      },
      {
        "name": "Vishnupad Temple",
        "image": "assets/images/vishnupad.jpg",
        "description": "Temple dedicated to Lord Vishnu. भगवान विष्णु को समर्पित मंदिर।"
      },
      {
        "name": "Muchalinda Lake",
        "image": "assets/images/muchalinda.jpg",
        "description": "Sacred lake near Mahabodhi Temple. महाबोधि मंदिर के पास पवित्र झील।"
      },
      {
        "name": "Barabar Caves",
        "image": "assets/images/barabar_caves.jpg",
        "description": "Ancient rock-cut caves from Mauryan period. मौर्य काल की प्राचीन गुफाएँ।"
      },
      {
        "name": "Indosan Nippon Japanese Temple",
        "image": "assets/images/indosan_temple.jpg",
        "description": "Japanese style Buddhist temple. जापानी शैली का बौद्ध मंदिर।"
      },
      {
        "name": "Tibetan Monastery",
        "image": "assets/images/tibetan_monastery.jpg",
        "description": "Colorful Tibetan Buddhist monastery. रंगीन तिब्बती बौद्ध मठ।"
      },
      {
        "name": "Royal Bhutan Monastery",
        "image": "assets/images/bhutan_monastery.jpg",
        "description": "Bhutanese architecture monastery. भूटानी वास्तुकला का मठ।"
      },
      {
        "name": "Chinese Temple",
        "image": "assets/images/chinese_temple.jpg",
        "description": "Chinese style Buddhist temple. चीनी शैली का बौद्ध मंदिर।"
      },
      {
        "name": "Thai Monastery",
        "image": "assets/images/thai_monastery.jpg",
        "description": "Thai style monastery with golden statue. थाई शैली का मठ, जिसमें स्वर्ण प्रतिमा है।"
      },
      {
        "name": "Vietnamese Temple",
        "image": "assets/images/vietnamese_temple.jpg",
        "description": "Vietnamese style Buddhist temple. वियतनामी शैली का बौद्ध मंदिर।"
      },
      {
        "name": "Animesh Lochana Chaitya",
        "image": "assets/images/animesh_lochana.jpg",
        "description": "Spot where Buddha meditated without blinking. स्थान जहाँ बुद्ध ने बिना पलक झपकाए ध्यान किया।"
      },
      {
        "name": "Ratnagarh",
        "image": "assets/images/ratnagarh.jpg",
        "description": "Place associated with Buddha’s sermons. बुद्ध के उपदेशों से जुड़ा स्थान।"
      },
      {
        "name": "Sujata Stupa",
        "image": "assets/images/sujata_stupa.jpg",
        "description": "Stupa dedicated to Sujata who offered kheer to Buddha. सुजाता को समर्पित स्तूप।"
      },
      {
        "name": "Phalgu River",
        "image": "assets/images/phalgu_river.jpg",
        "description": "Sacred river for pind daan rituals. पिंड दान के लिए पवित्र नदी।"
      },
      {
        "name": "Pretshila Hills",
        "image": "assets/images/pretshila_hills.jpg",
        "description": "Hill known for pind daan rituals. पिंड दान के लिए प्रसिद्ध पहाड़ी।"
      },
      {
        "name": "Ramshila Hills",
        "image": "assets/images/ramshila_hills.jpg",
        "description": "Hill with ancient temple of Lord Rama. भगवान राम का प्राचीन मंदिर वाली पहाड़ी।"
      },
      {
        "name": "Dev Ghat",
        "image": "assets/images/dev_ghat.jpg",
        "description": "Sacred ghat on Phalgu river. फल्गु नदी का पवित्र घाट।"
      },
      {
        "name": "Bodhgaya Archaeological Museum",
        "image": "assets/images/bodhgaya_museum.jpg",
        "description": "Museum with Buddhist relics. बौद्ध अवशेषों वाला संग्रहालय।"
      },
      {
        "name": "Sita Kund",
        "image": "assets/images/sita_kund.jpg",
        "description": "Sacred pond related to Goddess Sita. देवी सीता से जुड़ा पवित्र सरोवर।"
      },
      {
        "name": "Hindustan Tibetan Temple",
        "image": "assets/images/hind_tibetan_temple.jpg",
        "description": "Buddhist temple with Tibetan influence. तिब्बती प्रभाव वाला बौद्ध मंदिर।"
      },
      {
        "name": "Gaya Pind Daan Center",
        "image": "assets/images/pind_daan_center.jpg",
        "description": "Center for performing ancestral rituals. पितृ कर्म कराने का केंद्र।"
      },
      {
        "name": "Niranjana River",
        "image": "assets/images/niranjana_river.jpg",
        "description": "River near Bodh Gaya with historical importance. ऐतिहासिक महत्व वाली नदी।"
      }
    ],

     "Nalanda (नालंदा)":[
      {
        "name": "Nalanda University Ruins (नालंदा विश्वविद्यालय अवशेष)",
        "image": "assets/images/nalanda_university.jpg",
        "description": "These are the ruins of the ancient Nalanda University, a world-famous center of learning from the 5th century. यह 5वीं शताब्दी का प्राचीन नालंदा विश्वविद्यालय है, जो विश्व प्रसिद्ध शिक्षा केंद्र था।"
      },
      {
        "name": "Hiuen Tsang Memorial Hall (ह्वेनसांग स्मारक हॉल)",
        "image": "assets/images/hiuen_tsang.jpg",
        "description": "A memorial dedicated to Chinese traveler Hiuen Tsang. चीनी यात्री ह्वेनसांग को समर्पित एक स्मारक।"
      },
      {
        "name": "Nalanda Archaeological Museum (नालंदा पुरातत्व संग्रहालय)",
        "image": "assets/images/nalanda_museum.jpg",
        "description": "Houses ancient artifacts, sculptures, and manuscripts from Nalanda's history. इसमें नालंदा के इतिहास से जुड़े प्राचीन अवशेष, मूर्तियाँ और पांडुलिपियाँ हैं।"
      },
      {
        "name": "Black Buddha Temple (काला बुद्ध मंदिर)",
        "image": "assets/images/black_buddha.jpg",
        "description": "A unique temple with a black stone statue of Lord Buddha. यह भगवान बुद्ध की काले पत्थर की प्रतिमा वाला अद्वितीय मंदिर है।"
      },
      {
        "name": "Surya Mandir, Baragaon (सूर्य मंदिर, बरागांव)",
        "image": "assets/images/surya_mandir_baragaon.jpg",
        "description": "An ancient Sun temple famous for Chhath Puja celebrations. यह प्राचीन सूर्य मंदिर है, जो छठ पूजा के लिए प्रसिद्ध है।"
      },
      {
        "name": "Nav Nalanda Mahavihara (नव नालंदा महाविहार)",
        "image": "assets/images/nav_nalanda.jpg",
        "description": "A modern center for Pali and Buddhist studies. पाली और बौद्ध अध्ययन का एक आधुनिक केंद्र।"
      },
      {
        "name": "Bargain Stupa (बरगाँव स्तूप)",
        "image": "assets/images/bargain_stupa.jpg",
        "description": "A small ancient stupa related to Buddhist history. बौद्ध इतिहास से जुड़ा एक छोटा प्राचीन स्तूप।"
      },
      {
        "name": "Kundalpur (कुंडलपुर)",
        "image": "assets/images/kundalpur.jpg",
        "description": "Believed to be the birthplace of Lord Mahavira. यह भगवान महावीर का जन्मस्थान माना जाता है।"
      },
      {
        "name": "Pawapuri Jal Mandir (पावापुरी जल मंदिर)",
        "image": "assets/images/pawapuri_jalmandir.jpg",
        "description": "A beautiful Jain temple in the middle of a lake. एक झील के बीच स्थित सुंदर जैन मंदिर।"
      },
      {
        "name": "Surya Kund (सूर्य कुंड)",
        "image": "assets/images/surya_kund.jpg",
        "description": "A sacred pond near the Sun Temple in Nalanda. नालंदा के सूर्य मंदिर के पास स्थित पवित्र कुंड।"
      },
      {
        "name": "Telhara (टेलहारा)",
        "image": "assets/images/telhara.jpg",
        "description": "An archaeological site of an ancient Buddhist monastery. एक प्राचीन बौद्ध मठ का पुरातात्विक स्थल।"
      },
      {
        "name": "Rajgir Ropeway (राजगीर रोपवे)",
        "image": "assets/images/rajgir_ropeway.jpg",
        "description": "A ropeway ride leading to the Vishwa Shanti Stupa. विश्व शांति स्तूप तक जाने वाली रोपवे सवारी।"
      },
      {
        "name": "Vishwa Shanti Stupa (विश्व शांति स्तूप)",
        "image": "assets/images/vishwa_shanti_stupa.jpg",
        "description": "A Japanese-built peace pagoda on Ratnagiri hill. रत्नागिरी पहाड़ी पर जापान निर्मित शांति स्तूप।"
      },
      {
        "name": "Bimbisar Jail (बिंबिसार जेल)",
        "image": "assets/images/bimbisar_jail.jpg",
        "description": "Historic prison where King Bimbisar was imprisoned by his son. ऐतिहासिक जेल जहां राजा बिंबिसार को उनके पुत्र ने कैद किया था।"
      },
      {
        "name": "Cyclopean Wall (साइक्लोपियन वॉल)",
        "image": "assets/images/cyclopean_wall.jpg",
        "description": "An ancient stone wall surrounding old Rajgir. प्राचीन राजगीर को घेरे हुए पत्थरों की दीवार।"
      },
      {
        "name": "Hot Springs, Rajgir (गरम पानी कुंड, राजगीर)",
        "image": "assets/images/hot_springs_rajgir.jpg",
        "description": "Natural hot springs believed to have medicinal value. औषधीय गुणों वाले प्राकृतिक गरम पानी के कुंड।"
      },
      {
        "name": "Ajatshatru Fort (अजातशत्रु किला)",
        "image": "assets/images/ajatshatru_fort.jpg",
        "description": "Fort built by King Ajatshatru in 6th century BC. 6वीं शताब्दी ईसा पूर्व में राजा अजातशत्रु द्वारा निर्मित किला।"
      },
      {
        "name": "Griddhakuta Hill (गृद्धकूट पहाड़ी)",
        "image": "assets/images/griddhakuta_hill.jpg",
        "description": "A sacred hill where Buddha delivered sermons. पवित्र पहाड़ी जहां बुद्ध ने उपदेश दिए।"
      },
      {
        "name": "Maniyar Math (मणियार मठ)",
        "image": "assets/images/maniyar_math.jpg",
        "description": "An archaeological site with ancient relics. प्राचीन अवशेषों वाला पुरातात्विक स्थल।"
      },
      {
        "name": "Son Bhandar Caves (सोन भंडार गुफाएँ)",
        "image": "assets/images/son_bhandar_caves.jpg",
        "description": "Ancient rock-cut caves believed to hold treasures. खजाने को संजोए रखने वाली प्राचीन गुफाएँ।"
      },
      {
        "name": "Jarasandh Akhara (जरासंध अखाड़ा)",
        "image": "assets/images/jarasandh_akhara.jpg",
        "description": "Historic site associated with Mahabharata's Jarasandh. महाभारत के जरासंध से जुड़ा ऐतिहासिक स्थल।"
      },
      {
        "name": "Veerayatan Museum (वीरायतन संग्रहालय)",
        "image": "assets/images/veerayatan_museum.jpg",
        "description": "Jain museum showcasing art and history. जैन कला और इतिहास प्रदर्शित करने वाला संग्रहालय।"
      },
      {
        "name": "Pandu Pokhar (पांडु पोखर)",
        "image": "assets/images/pandu_pokhar.jpg",
        "description": "Amusement park and historical pond in Rajgir. राजगीर में मनोरंजन पार्क और ऐतिहासिक पोखर।"
      },
      {
        "name": "Swarna Bhandar (स्वर्ण भंडार)",
        "image": "assets/images/swarna_bhandar.jpg",
        "description": "Legendary site believed to store gold treasures. स्वर्ण खजाने को संजोए रखने वाला पौराणिक स्थल।"
      },
    ],

    "Sheohar (शिवहर)":[
    {
      "name": "Ambika Sthan Temple (अंबिका स्थान मंदिर)",
      "image": "assets/images/ambika_sthan_temple.jpg",
      "description":
      "Ambika Sthan Temple is a famous shrine of Goddess Durga in Sheohar district. "
          "अंबिका स्थान मंदिर, शिवहर जिले में माँ दुर्गा का प्रसिद्ध तीर्थ स्थल है।"
    },
    {
      "name": "Bhawan Pokhar (भवन पोखर)",
      "image": "assets/images/bhawan_pokhar.jpg",
      "description":
      "Bhawan Pokhar is a sacred pond associated with local religious beliefs. "
          "भवन पोखर स्थानीय धार्मिक मान्यताओं से जुड़ा एक पवित्र सरोवर है।"
    },
    {
      "name": "Sheohar Kali Mandir (शिवहर काली मंदिर)",
      "image": "assets/images/sheohar_kali_temple.jpg",
      "description":
      "This ancient Kali Temple attracts devotees especially during festivals. "
          "यह प्राचीन काली मंदिर त्योहारों के समय भक्तों को आकर्षित करता है।"
    },
    {
      "name": "Janaki Asthan (जानकी स्थान)",
      "image": "assets/images/janaki_asthan.jpg",
      "description":
      "Janaki Asthan is a religious site dedicated to Goddess Sita. "
          "जानकी स्थान माता सीता को समर्पित धार्मिक स्थल है।"
    },
    {
      "name": "Kamala River Ghat (कमला नदी घाट)",
      "image": "assets/images/kamala_river_ghat.jpg",
      "description":
      "Kamala River Ghat is a peaceful place for pilgrims and locals. "
          "कमला नदी घाट श्रद्धालुओं और स्थानीय लोगों के लिए शांत स्थान है।"
    },
    {
      "name": "Shiv Mandir, Pipra (शिव मंदिर, पिपरा)",
      "image": "assets/images/shiv_mandir_pipra.jpg",
      "description":
      "A temple dedicated to Lord Shiva, known for its religious importance. "
          "भगवान शिव को समर्पित यह मंदिर धार्मिक महत्व के लिए जाना जाता है।"
    },
    {
      "name": "Hanuman Mandir, Sheohar Bazar (हनुमान मंदिर, शिवहर बाजार)",
      "image": "assets/images/hanuman_mandir_sheohar.jpg",
      "description":
      "Hanuman Mandir in Sheohar Bazar is a center of faith for locals. "
          "शिवहर बाजार का हनुमान मंदिर स्थानीय श्रद्धालुओं का आस्था केंद्र है।"
    },
    {
      "name": "Baba Bhairav Sthan (बाबा भैरव स्थान)",
      "image": "assets/images/bhairav_sthan.jpg",
      "description":
      "This temple of Bhairav Baba is an important spiritual destination. "
          "बाबा भैरव स्थान शिवहर का एक प्रमुख आध्यात्मिक स्थल है।"
    },
    {
      "name": "Durga Mandir, Dumri (दुर्गा मंदिर, डुमरी)",
      "image": "assets/images/durga_mandir_dumri.jpg",
      "description":
      "Durga Mandir in Dumri is a place of devotion for Goddess Durga. "
          "डुमरी का दुर्गा मंदिर माता दुर्गा की भक्ति का केंद्र है।"
    },
    {
      "name": "Panch Mandir (पंच मंदिर)",
      "image": "assets/images/panch_mandir.jpg",
      "description":
      "Panch Mandir is a cluster of five temples reflecting Hindu culture. "
          "पंच मंदिर हिंदू संस्कृति को दर्शाने वाले पाँच मंदिरों का समूह है।"
    },
    {
      "name": "Rani Sthan (रानी स्थान)",
      "image": "assets/images/rani_sthan.jpg",
      "description":
      "Rani Sthan is a small temple with deep cultural beliefs. "
          "रानी स्थान एक छोटा मंदिर है जो गहरी सांस्कृतिक मान्यताओं से जुड़ा है।"
    },
    {
      "name": "Sheohar District Museum (शिवहर जिला संग्रहालय)",
      "image": "assets/images/sheohar_museum.jpg",
      "description":
      "The district museum preserves local heritage and cultural items. "
          "जिला संग्रहालय स्थानीय धरोहर और सांस्कृतिक वस्तुओं को संजोता है।"
    },
    {
      "name": "Mata Kali Asthan (माता काली स्थान)",
      "image": "assets/images/mata_kali_asthan.jpg",
      "description":
      "A temple dedicated to Goddess Kali, visited by many devotees. "
          "माता काली स्थान देवी काली को समर्पित मंदिर है।"
    },
    {
      "name": "Raj Devi Mandir (राज देवी मंदिर)",
      "image": "assets/images/raj_devi_mandir.jpg",
      "description":
      "Raj Devi Mandir is one of the popular temples in Sheohar. "
          "राज देवी मंदिर शिवहर के प्रसिद्ध मंदिरों में से एक है।"
    },
    {
      "name": "Sati Mai Sthan (सती माई स्थान)",
      "image": "assets/images/sati_mai_sthan.jpg",
      "description":
      "Sati Mai Sthan is a spiritual site dedicated to local goddess. "
          "सती माई स्थान एक स्थानीय देवी को समर्पित धार्मिक स्थल है।"
    },
    {
      "name": "Jageshwar Nath Temple (जगेश्वर नाथ मंदिर)",
      "image": "assets/images/jageshwar_nath_temple.jpg",
      "description":
      "This temple is dedicated to Lord Shiva, attracting many devotees. "
          "जगेश्वर नाथ मंदिर भगवान शिव को समर्पित है।"
    },
    {
      "name": "Bhola Asthan (भोला स्थान)",
      "image": "assets/images/bhola_sthan.jpg",
      "description":
      "Bhola Asthan is a sacred site of faith and devotion. "
          "भोला स्थान आस्था और भक्ति का पवित्र स्थल है।"
    },
    {
      "name": "Rani Pokhar (रानी पोखर)",
      "image": "assets/images/rani_pokhar.jpg",
      "description":
      "Rani Pokhar is a historical pond linked to ancient folklore. "
          "रानी पोखर एक ऐतिहासिक सरोवर है जो प्राचीन कथाओं से जुड़ा है।"
    },
    {
      "name": "Baba Basukinath Mandir (बाबा बसुकीनाथ मंदिर)",
      "image": "assets/images/basukinath_mandir.jpg",
      "description":
      "This temple is dedicated to Lord Basukinath, a form of Lord Shiva. "
          "बाबा बसुकीनाथ मंदिर भगवान शिव के स्वरूप को समर्पित है।"
    },
    {
      "name": "Sundar Asthan (सुंदर स्थान)",
      "image": "assets/images/sundar_sthan.jpg",
      "description":
      "Sundar Asthan is known for its peaceful spiritual environment. "
          "सुंदर स्थान अपनी शांत आध्यात्मिक वातावरण के लिए प्रसिद्ध है।"
    },
    {
      "name": "Jagannath Mandir (जगन्नाथ मंदिर)",
      "image": "assets/images/jagannath_temple.jpg",
      "description":
      "A temple dedicated to Lord Jagannath, visited during Rath Yatra. "
          "जगन्नाथ मंदिर भगवान जगन्नाथ को समर्पित है और रथ यात्रा में विशेष होता है।"
    },
    {
      "name": "Sheohar Fort Remains (शिवहर किला अवशेष)",
      "image": "assets/images/sheohar_fort.jpg",
      "description":
      "The remains of Sheohar Fort tell stories of its glorious past. "
          "शिवहर किला अवशेष इसके गौरवशाली अतीत की कहानियाँ बताते हैं।"
    },
    {
      "name": "Kali Sthan, Piprahi (काली स्थान, पिपराही)",
      "image": "assets/images/kali_sthan_piprahi.jpg",
      "description":
      "This temple is dedicated to Goddess Kali in Piprahi village. "
          "पिपराही गाँव का यह काली मंदिर माँ काली को समर्पित है।"
    },
    {
      "name": "Durga Sthan, Dumra (दुर्गा स्थान, डुमरा)",
      "image": "assets/images/durga_sthan_dumra.jpg",
      "description":
      "Durga Sthan in Dumra is an important religious site for worship. "
          "डुमरा का दुर्गा स्थान एक महत्वपूर्ण धार्मिक स्थल है।"
    },
  ],


  "Bhagalpur (भागलपुर)":[
        {
          "name": "Vikramshila Ruins (विक्रमशिला अवशेष)",
          "image": "assets/images/vikramshila_ruins.jpg",
          "description": "The remains of Vikramshila University, established by King Dharampala in the 8th century, are a major historical site. विक्रमशिला विश्वविद्यालय के अवशेष, जो राजा धर्मपाल ने 8वीं शताब्दी में स्थापित किया था, एक प्रमुख ऐतिहासिक स्थल है।"
        },
        {
          "name": "Mandar Hill (मंदर पर्वत)",
          "image": "assets/images/mandar_hill.jpg",
          "description": "A sacred hill associated with the Samudra Manthan legend from Hindu mythology. हिन्दू पौराणिक कथाओं के समुद्र मंथन प्रसंग से जुड़ा एक पवित्र पर्वत।"
        },
        {
          "name": "Colganj Rock Cut Temples (कोलगंज रॉक कट मंदिर)",
          "image": "assets/images/colganj_temple.jpg",
          "description": "Ancient rock-cut temples featuring intricate carvings from Gupta period. गुप्तकालीन जटिल नक्काशी वाले प्राचीन गुफा मंदिर।"
        },
        {
          "name": "Kuppaghat Ashram (कुप्पाघाट आश्रम)",
          "image": "assets/images/kuppaghat_ashram.jpg",
          "description": "Ashram of Maharshi Mehi, located on the banks of the Ganga river. गंगा नदी के किनारे स्थित महर्षि मेही का आश्रम।"
        },
        {
          "name": "Ajgaibinath Temple (अजगैविनाथ मंदिर)",
          "image": "assets/images/ajgaibinath_temple.jpg",
          "description": "A famous Shiva temple located in Sultanganj, a key pilgrimage spot. सुल्तानगंज में स्थित प्रसिद्ध शिव मंदिर, प्रमुख तीर्थ स्थल।"
        },
        {
          "name": "Sultanganj Ganga Ghats (सुल्तानगंज गंगा घाट)",
          "image": "assets/images/sultanganj_ghat.jpg",
          "description": "Ghats famous for holy dips and Kanwar Yatra starting point. पवित्र स्नान और कांवड़ यात्रा के प्रारंभ स्थल के लिए प्रसिद्ध घाट।"
        },
        {
          "name": "Khanqah-e-Shahbazia (खानकाह-ए-शाहबाज़िया)",
          "image": "assets/images/khanqah_shahbazia.jpg",
          "description": "An important Sufi shrine in Bhagalpur. भागलपुर में स्थित एक महत्वपूर्ण सूफी दरगाह।"
        },
        {
          "name": "Budhanath Temple (बुधनाथ मंदिर)",
          "image": "assets/images/budhanath_temple.jpg",
          "description": "Ancient Shiva temple located near Ganga river. गंगा नदी के पास स्थित प्राचीन शिव मंदिर।"
        },
        {
          "name": "Ghuran Peer Baba Dargah (घूरन पीर बाबा दरगाह)",
          "image": "assets/images/ghuran_peer_dargah.jpg",
          "description": "Popular dargah attracting devotees of all faiths. सभी धर्मों के श्रद्धालुओं को आकर्षित करने वाली लोकप्रिय दरगाह।"
        },
        {
          "name": "Tilka Manjhi Park (तिलका मांझी पार्क)",
          "image": "assets/images/tilka_manjhi_park.jpg",
          "description": "Park dedicated to freedom fighter Tilka Manjhi. स्वतंत्रता सेनानी तिलका मांझी को समर्पित पार्क।"
        },
        {
          "name": "Ghantaghar (घंटाघर)",
          "image": "assets/images/ghantaghar.jpg",
          "description": "Iconic clock tower and a popular landmark in Bhagalpur. भागलपुर का प्रसिद्ध घंटाघर और प्रतीक चिन्ह।"
        },
        {
          "name": "Sabour Agricultural University Campus (सबौर कृषि विश्वविद्यालय)",
          "image": "assets/images/sabour_university.jpg",
          "description": "Lush green campus of Bihar Agricultural University. बिहार कृषि विश्वविद्यालय का हरा-भरा परिसर।"
        },
        {
          "name": "Champanagar Jain Temple (चंपानगर जैन मंदिर)",
          "image": "assets/images/champanagar_jain_temple.jpg",
          "description": "Historic Jain temple known for its beautiful architecture. अपनी सुंदर वास्तुकला के लिए प्रसिद्ध ऐतिहासिक जैन मंदिर।"
        },
        {
          "name": "Nathnagar (नाथनगर)",
          "image": "assets/images/nathnagar.jpg",
          "description": "A historical area known for weaving and handicrafts. बुनाई और हस्तशिल्प के लिए प्रसिद्ध ऐतिहासिक क्षेत्र।"
        },
        {
          "name": "Barari Park (बरारी पार्क)",
          "image": "assets/images/barari_park.jpg",
          "description": "Recreational park with lush greenery. हरे-भरे वातावरण वाला मनोरंजन पार्क।"
        },
        {
          "name": "Burhanath Mandir (बुर्हानाथ मंदिर)",
          "image": "assets/images/burhanath_temple.jpg",
          "description": "Famous Shiva temple with great religious significance. धार्मिक महत्व वाला प्रसिद्ध शिव मंदिर।"
        },
        {
          "name": "Adampur Ghat (आदमपुर घाट)",
          "image": "assets/images/adampur_ghat.jpg",
          "description": "Popular riverbank spot for bathing and rituals. स्नान और धार्मिक अनुष्ठानों के लिए लोकप्रिय नदी तट।"
        },
        {
          "name": "Kahalgaon (कहलगाँव)",
          "image": "assets/images/kahalgaon.jpg",
          "description": "Town near Vikramshila known for historical importance. विक्रमशिला के पास स्थित ऐतिहासिक महत्व वाला कस्बा।"
        },
        {
          "name": "Shahkund (शाहकुंड)",
          "image": "assets/images/shahkund.jpg",
          "description": "Scenic rural area surrounded by hills and greenery. पहाड़ियों और हरियाली से घिरा सुंदर ग्रामीण इलाका।"
        },
        {
          "name": "Mirjanhat Market (मिर्जनहाट मार्केट)",
          "image": "assets/images/mirjanhat_market.jpg",
          "description": "Famous for silk sarees and local crafts. रेशमी साड़ियों और स्थानीय शिल्प के लिए प्रसिद्ध।"
        },
        {
          "name": "Tatarpur (टाटरपुर)",
          "image": "assets/images/tatarpur.jpg",
          "description": "Historic locality known for trade and old markets. व्यापार और पुराने बाजारों के लिए प्रसिद्ध ऐतिहासिक इलाका।"
        },
        {
          "name": "Shivnarayanpur (शिवनारायणपुर)",
          "image": "assets/images/shivnarayanpur.jpg",
          "description": "Village with historical temples and cultural heritage. ऐतिहासिक मंदिरों और सांस्कृतिक धरोहर वाला गाँव।"
        },
        {
          "name": "Karhariya (करहरिया)",
          "image": "assets/images/karhariya.jpg",
          "description": "Small village with traditional lifestyle and festivals. पारंपरिक जीवनशैली और त्योहारों वाला छोटा गाँव।"
        },
        {
          "name": "Habibpur (हबीबपुर)",
          "image": "assets/images/habibpur.jpg",
          "description": "Village famous for its fairs and religious gatherings. मेलों और धार्मिक आयोजनों के लिए प्रसिद्ध गाँव।"
        }
      ],
    "Muzaffarpur (मुज़फ़्फ़रपुर)": [
      {
        "name": "Baba Garibnath Temple",
        "image": "assets/images/garibnath_temple.jpg",
        "description": "Famous Shiva temple in the heart of Muzaffarpur. बाबा गरीबनाथ मंदिर, मुजफ्फरपुर का प्रमुख शिव मंदिर है।"
      },
      {
        "name": "Litchi Gardens",
        "image": "assets/images/litchi_gardens.jpg",
        "description": "Known for world-famous Shahi Litchis. यह बागीचे शाही लीची के लिए मशहूर हैं।"
      },
      {
        "name": "Ram Chandra Shahi Museum",
        "image": "assets/images/rcs_museum.jpg",
        "description": "Museum showcasing historical artifacts. ऐतिहासिक वस्तुओं का संग्रहालय।"
      },
      {
        "name": "Jubba Sahni Park",
        "image": "assets/images/jubba_sahni_park.jpg",
        "description": "Recreational park dedicated to freedom fighter Jubba Sahni. स्वतंत्रता सेनानी जुब्बा साहनी को समर्पित पार्क।"
      },
      {
        "name": "Simri Mai Temple",
        "image": "assets/images/simri_mai_temple.jpg",
        "description": "Popular religious site. प्रसिद्ध धार्मिक स्थल।"
      },
      {
        "name": "Khudi Ram Bose Memorial",
        "image": "assets/images/khudi_ram_memorial.jpg",
        "description": "Memorial of young freedom fighter Khudi Ram Bose. युवा स्वतंत्रता सेनानी खुदीराम बोस की स्मृति।"
      },
      {
        "name": "Motijheel",
        "image": "assets/images/motijheel.jpg",
        "description": "Beautiful lake area. सुंदर झील का क्षेत्र।"
      },
      {
        "name": "Rajkhand Temple",
        "image": "assets/images/rajkhand_temple.jpg",
        "description": "Ancient temple of Lord Shiva. भगवान शिव का प्राचीन मंदिर।"
      },
      {
        "name": "Amawari Temple",
        "image": "assets/images/amawari_temple.jpg",
        "description": "Sacred temple for locals. स्थानीय लोगों का पवित्र मंदिर।"
      },
      {
        "name": "Chaturbhuj Sthan",
        "image": "assets/images/chaturbhuj_sthan.jpg",
        "description": "Temple of Lord Vishnu. भगवान विष्णु का मंदिर।"
      },
      {
        "name": "Lalganj",
        "image": "assets/images/lalganj.jpg",
        "description": "Famous for religious gatherings. धार्मिक आयोजनों के लिए प्रसिद्ध।"
      },
      {
        "name": "Bariarpur",
        "image": "assets/images/bariarpur.jpg",
        "description": "Village known for natural beauty. प्राकृतिक सुंदरता के लिए प्रसिद्ध गांव।"
      },
      {
        "name": "Shri Ram Temple, Bela",
        "image": "assets/images/bela_temple.jpg",
        "description": "Lord Ram temple in Bela. बेला में भगवान राम का मंदिर।"
      },
      {
        "name": "Company Bagh",
        "image": "assets/images/company_bagh.jpg",
        "description": "Public park for leisure. मनोरंजन के लिए सार्वजनिक पार्क।"
      },
      {
        "name": "Shri Krishna Stadium",
        "image": "assets/images/krishna_stadium.jpg",
        "description": "Sports complex for local events. स्थानीय खेल आयोजनों का मैदान।"
      },
      {
        "name": "Patahi Airport Area",
        "image": "assets/images/patahi_airport.jpg",
        "description": "Old airport location. पुराना हवाई अड्डा स्थल।"
      },
      {
        "name": "Khabra",
        "image": "assets/images/khabra.jpg",
        "description": "Village with historical importance. ऐतिहासिक महत्व वाला गांव।"
      },
      {
        "name": "Bhagwanpur",
        "image": "assets/images/bhagwanpur.jpg",
        "description": "Local marketplace. स्थानीय बाजार।"
      },
      {
        "name": "Deoria",
        "image": "assets/images/deoria.jpg",
        "description": "Natural scenery spot. प्राकृतिक सुंदरता का स्थल।"
      },
      {
        "name": "Damodarpur",
        "image": "assets/images/damodarpur.jpg",
        "description": "Ancient archaeological site. प्राचीन पुरातत्व स्थल।"
      },
      {
        "name": "Harahi Pond",
        "image": "assets/images/harahi_pond.jpg",
        "description": "Peaceful pond area. शांतिपूर्ण तालाब क्षेत्र।"
      },
      {
        "name": "Purani Bazar",
        "image": "assets/images/purani_bazar.jpg",
        "description": "Historic market. ऐतिहासिक बाजार।"
      },
      {
        "name": "Baruraj",
        "image": "assets/images/baruraj.jpg",
        "description": "Religious site in outskirts. बाहरी क्षेत्र का धार्मिक स्थल।"
      },
      {
        "name": "Jhapahan",
        "image": "assets/images/jhapahan.jpg",
        "description": "Village with cultural heritage. सांस्कृतिक विरासत वाला गांव।"
      },
    ],
    "Darbhanga (दरभंगा)": [
      {
        "name": "Darbhanga Fort",
        "image": "assets/images/darbhanga_fort.jpg",
        "description": "Historic fort of Darbhanga Raj. दरभंगा राज का ऐतिहासिक किला।"
      },
      {
        "name": "Shyama Temple",
        "image": "assets/images/shyama_temple.jpg",
        "description": "Famous temple dedicated to Goddess Kali. देवी काली को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Ahilya Asthan",
        "image": "assets/images/ahilya_asthan.jpg",
        "description": "Religious place connected to Ramayana. रामायण से जुड़ा धार्मिक स्थल।"
      },
      {
        "name": "Manokamna Temple",
        "image": "assets/images/manokamna_temple.jpg",
        "description": "Temple believed to fulfill wishes. मनोकामना पूरी करने वाला मंदिर।"
      },
      {
        "name": "Chandradhari Museum",
        "image": "assets/images/chandradhari_museum.jpg",
        "description": "Museum with historical artifacts. ऐतिहासिक वस्तुओं का संग्रहालय।"
      },
      {
        "name": "Kusheshwar Asthan Bird Sanctuary",
        "image": "assets/images/kusheshwar_sanctuary.jpg",
        "description": "Bird sanctuary for migratory birds. प्रवासी पक्षियों का अभयारण्य।"
      },
      {
        "name": "Mithila University Campus",
        "image": "assets/images/mithila_university.jpg",
        "description": "Educational hub of Mithila region. मिथिला क्षेत्र का शैक्षिक केंद्र।"
      },
      {
        "name": "Rambag Palace",
        "image": "assets/images/rambag_palace.jpg",
        "description": "Palace with royal heritage. शाही विरासत वाला महल।"
      },
      {
        "name": "Anandbagh Palace",
        "image": "assets/images/anandbagh_palace.jpg",
        "description": "Historic palace of Darbhanga Raj. दरभंगा राज का ऐतिहासिक महल।"
      },
      {
        "name": "Kameshwar Nath Mahadev Temple",
        "image": "assets/images/kameshwar_temple.jpg",
        "description": "Ancient Shiva temple. प्राचीन शिव मंदिर।"
      },
      {
        "name": "Harahi Pond",
        "image": "assets/images/harahi_darbhanga.jpg",
        "description": "Scenic pond area. सुंदर तालाब क्षेत्र।"
      },
      {
        "name": "Donar",
        "image": "assets/images/donar.jpg",
        "description": "Village with historical sites. ऐतिहासिक स्थलों वाला गांव।"
      },
      {
        "name": "Pindaruch",
        "image": "assets/images/pindaruch.jpg",
        "description": "Cultural village of Mithila. मिथिला का सांस्कृतिक गांव।"
      },
      {
        "name": "Tinkathia",
        "image": "assets/images/tinkathia.jpg",
        "description": "Historic protest site during freedom struggle. स्वतंत्रता संग्राम का ऐतिहासिक स्थल।"
      },
      {
        "name": "Brahmpur",
        "image": "assets/images/brahmpur.jpg",
        "description": "Spiritual village. आध्यात्मिक गांव।"
      },
      {
        "name": "Bahera",
        "image": "assets/images/bahera.jpg",
        "description": "Known for crafts and culture. हस्तशिल्प और संस्कृति के लिए प्रसिद्ध।"
      },
      {
        "name": "Hayaghat",
        "image": "assets/images/hayaghat.jpg",
        "description": "Area with river views. नदी के दृश्यों वाला क्षेत्र।"
      },
      {
        "name": "Sakatpur",
        "image": "assets/images/sakatpur.jpg",
        "description": "Religious and cultural site. धार्मिक और सांस्कृतिक स्थल।"
      },
      {
        "name": "Keoti",
        "image": "assets/images/keoti.jpg",
        "description": "Known for fairs and festivals. मेलों और त्योहारों के लिए प्रसिद्ध।"
      },
      {
        "name": "Simri",
        "image": "assets/images/simri.jpg",
        "description": "Cultural heritage village. सांस्कृतिक विरासत वाला गांव।"
      },
      {
        "name": "Sadar Bazaar",
        "image": "assets/images/sadar_bazaar.jpg",
        "description": "Main market of Darbhanga. दरभंगा का मुख्य बाजार।"
      },
      {
        "name": "Lohna",
        "image": "assets/images/lohna.jpg",
        "description": "Village with historical importance. ऐतिहासिक महत्व वाला गांव।"
      },
      {
        "name": "Singhwara",
        "image": "assets/images/singhwara.jpg",
        "description": "Town known for temples. मंदिरों के लिए प्रसिद्ध कस्बा।"
      },
      {
        "name": "Benipur",
        "image": "assets/images/benipur.jpg",
        "description": "Town with cultural events. सांस्कृतिक आयोजनों वाला कस्बा।"
      },
    ],
    "Samastipur (समस्तीपुर)": [
      {
        "name": "Janaki Mandir, Sitamarhi",
        "image": "assets/images/janaki_mandir_sitamarhi.jpg",
        "description": "This temple is dedicated to Goddess Sita and holds immense religious significance. माता सीता को समर्पित यह मंदिर धार्मिक दृष्टि से अत्यंत महत्वपूर्ण है।"
      },
      {
        "name": "Punaura Dham",
        "image": "assets/images/punaura_dham.jpg",
        "description": "Believed to be the birthplace of Goddess Sita. माना जाता है कि यह माता सीता का जन्मस्थान है।"
      },
      {
        "name": "Haleshwar Sthan",
        "image": "assets/images/haleshwar_sthan.jpg",
        "description": "A Shiva temple associated with the marriage of Lord Shiva and Parvati. भगवान शिव और पार्वती के विवाह से जुड़ा एक शिव मंदिर।"
      },
      {
        "name": "Baghachaura",
        "image": "assets/images/baghachaura.jpg",
        "description": "A scenic picnic spot surrounded by greenery. हरियाली से घिरा एक खूबसूरत पिकनिक स्थल।"
      },
      {
        "name": "Panth Pakar",
        "image": "assets/images/panth_pakar.jpg",
        "description": "Historical spot where Sita is said to have rested. ऐतिहासिक स्थल जहाँ माता सीता ने विश्राम किया था।"
      },
      {
        "name": "Bathnaha Wildlife Sanctuary",
        "image": "assets/images/bathnaha_wildlife.jpg",
        "description": "A sanctuary with a variety of wildlife and birds. विभिन्न वन्यजीव और पक्षियों वाला अभयारण्य।"
      },
      {
        "name": "Rajopatti",
        "image": "assets/images/rajopatti.jpg",
        "description": "Known for its rural beauty and cultural heritage. अपनी ग्रामीण सुंदरता और सांस्कृतिक विरासत के लिए प्रसिद्ध।"
      },
      {
        "name": "Parihar Fort",
        "image": "assets/images/parihar_fort.jpg",
        "description": "A historical fort reflecting ancient architecture. प्राचीन स्थापत्य कला को दर्शाने वाला ऐतिहासिक किला।"
      },
      {
        "name": "Sursand",
        "image": "assets/images/sursand.jpg",
        "description": "A border town with Indo-Nepal cultural blend. भारत-नेपाल सांस्कृतिक मिश्रण वाला सीमा नगर।"
      },
      {
        "name": "Bairgania",
        "image": "assets/images/bairgania.jpg",
        "description": "Popular for trade and cross-border interaction. व्यापार और सीमा पार मेलजोल के लिए प्रसिद्ध।"
      },
      {
        "name": "Majorganj",
        "image": "assets/images/majorganj.jpg",
        "description": "A town with historical and cultural importance. ऐतिहासिक और सांस्कृतिक महत्व वाला नगर।"
      },
      {
        "name": "Pupri",
        "image": "assets/images/pupri.jpg",
        "description": "Known for its temples and fairs. अपने मंदिरों और मेलों के लिए प्रसिद्ध।"
      },
      {
        "name": "Riga Sugar Factory",
        "image": "assets/images/riga_sugar_factory.jpg",
        "description": "One of the oldest sugar factories in Bihar. बिहार की सबसे पुरानी चीनी मिलों में से एक।"
      },
      {
        "name": "Pipra",
        "image": "assets/images/pipra.jpg",
        "description": "A serene rural location with agricultural charm. शांत ग्रामीण क्षेत्र जिसकी कृषि सुंदरता है।"
      },
      {
        "name": "Belsand",
        "image": "assets/images/belsand.jpg",
        "description": "Known for its weekly markets and fairs. अपने साप्ताहिक बाजारों और मेलों के लिए प्रसिद्ध।"
      },
      {
        "name": "Bathnaha",
        "image": "assets/images/bathnaha.jpg",
        "description": "Rich in biodiversity and green cover. जैव विविधता और हरियाली से भरपूर।"
      },
      {
        "name": "Koilakh Village",
        "image": "assets/images/koilakh_village.jpg",
        "description": "A village with traditional Mithila art culture. पारंपरिक मिथिला कला संस्कृति वाला गाँव।"
      },
      {
        "name": "Choraut",
        "image": "assets/images/choraut.jpg",
        "description": "Known for its scenic beauty and cultural traditions. प्राकृतिक सुंदरता और सांस्कृतिक परंपराओं के लिए प्रसिद्ध।"
      },
      {
        "name": "Nanpur",
        "image": "assets/images/nanpur.jpg",
        "description": "A peaceful area with rural charm. ग्रामीण आकर्षण वाला शांत क्षेत्र।"
      },
      {
        "name": "Runisaidpur",
        "image": "assets/images/runisaidpur.jpg",
        "description": "Famous for its temples and local festivals. अपने मंदिरों और स्थानीय त्योहारों के लिए प्रसिद्ध।"
      },
      {
        "name": "Sonbarsa",
        "image": "assets/images/sonbarsa.jpg",
        "description": "Close to the Nepal border, rich in cultural mix. नेपाल सीमा के पास, सांस्कृतिक मिश्रण से भरपूर।"
      },
      {
        "name": "Parsauni",
        "image": "assets/images/parsauni.jpg",
        "description": "Known for its farming and traditional markets. खेती और पारंपरिक बाजारों के लिए प्रसिद्ध।"
      },
      {
        "name": "Bajpatti",
        "image": "assets/images/bajpatti.jpg",
        "description": "A small town with a vibrant local culture. जीवंत स्थानीय संस्कृति वाला छोटा नगर।"
      },
      {
        "name": "Sheohar Border",
        "image": "assets/images/sheohar_border.jpg",
        "description": "Known for Indo-Nepal trade and cultural exchange. भारत-नेपाल व्यापार और सांस्कृतिक आदान-प्रदान के लिए प्रसिद्ध।"
      },
      {
        "name": "Sita Kund",
        "image": "assets/images/sita_kund.jpg",
        "description": "A sacred pond associated with Sita’s life. माता सीता के जीवन से जुड़ा पवित्र तालाब।"
      }
    ],

    "Madhubani (मधुबनी)": [
      {
        "name": "Saurath Sabha",
        "image": "assets/images/saurath_sabha.jpg",
        "description": "Saurath Sabha is famous for annual marriage gatherings of Maithil Brahmins. यह स्थल मिथिला ब्राह्मणों के वार्षिक विवाह सम्मेलनों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kapileshwar Sthan",
        "image": "assets/images/kapileshwar_sthan.jpg",
        "description": "An ancient Shiva temple attracting devotees. एक प्राचीन शिव मंदिर जो भक्तों को आकर्षित करता है।"
      },
      {
        "name": "Uchaitha Temple",
        "image": "assets/images/uchaitha_temple.jpg",
        "description": "Dedicated to Goddess Durga, known for its religious significance. माता दुर्गा को समर्पित धार्मिक महत्व का स्थान।"
      },
      {
        "name": "Bhawanipur",
        "image": "assets/images/bhawanipur.jpg",
        "description": "Known for Vidyapati’s house and memorial. विद्वान कवि विद्यापति के घर और स्मारक के लिए प्रसिद्ध।"
      },
      {
        "name": "Laukaha Market",
        "image": "assets/images/laukaha_market.jpg",
        "description": "A famous Indo-Nepal trade market. भारत-नेपाल का प्रसिद्ध व्यापारिक बाज़ार।"
      },
      {
        "name": "Madhubani Painting Village",
        "image": "assets/images/madhubani_painting.jpg",
        "description": "Home to world-famous Mithila paintings. विश्व प्रसिद्ध मिथिला पेंटिंग का घर।"
      },
      {
        "name": "Supaul Bazar",
        "image": "assets/images/supaul_bazar.jpg",
        "description": "Cultural hub and shopping spot. सांस्कृतिक केंद्र और खरीदारी की जगह।"
      },
      {
        "name": "Rahu Village",
        "image": "assets/images/rahu_village.jpg",
        "description": "Historical village with temples. मंदिरों वाला ऐतिहासिक गाँव।"
      },
      {
        "name": "Khajauli",
        "image": "assets/images/khajauli.jpg",
        "description": "Town with vibrant local culture. जीवंत स्थानीय संस्कृति वाला नगर।"
      },
      {
        "name": "Phulparas",
        "image": "assets/images/phulparas.jpg",
        "description": "Famous for rural fairs and cultural events. ग्रामीण मेलों और सांस्कृतिक आयोजनों के लिए प्रसिद्ध।"
      },
      {
        "name": "Pandawari",
        "image": "assets/images/pandawari.jpg",
        "description": "Known for ancient ruins. प्राचीन खंडहरों के लिए प्रसिद्ध।"
      },
      {
        "name": "Jhanjharpur",
        "image": "assets/images/jhanjharpur.jpg",
        "description": "Railway hub and cultural center. रेलवे केंद्र और सांस्कृतिक स्थल।"
      },
      {
        "name": "Andhratharhi",
        "image": "assets/images/andhratharhi.jpg",
        "description": "Traditional crafts and art center. पारंपरिक शिल्प और कला का केंद्र।"
      },
      {
        "name": "Basuara",
        "image": "assets/images/basuara.jpg",
        "description": "Known for village tourism. ग्रामीण पर्यटन के लिए प्रसिद्ध।"
      },
      {
        "name": "Benipatti",
        "image": "assets/images/benipatti.jpg",
        "description": "Religious temples and cultural heritage. धार्मिक मंदिर और सांस्कृतिक विरासत।"
      },
      {
        "name": "Nirmali",
        "image": "assets/images/nirmali.jpg",
        "description": "Historical town with scenic views. ऐतिहासिक नगर और सुंदर दृश्य।"
      },
      {
        "name": "Jitwarpur",
        "image": "assets/images/jitwarpur.jpg",
        "description": "Famous for Mithila paintings. मिथिला पेंटिंग के लिए प्रसिद्ध।"
      },
      {
        "name": "Sapti",
        "image": "assets/images/sapti.jpg",
        "description": "A rural hamlet with natural beauty. प्राकृतिक सुंदरता वाला ग्रामीण इलाका।"
      },
      {
        "name": "Rajnagar Palace",
        "image": "assets/images/rajnagar_palace.jpg",
        "description": "Historic palace ruins. ऐतिहासिक महल के खंडहर।"
      },
      {
        "name": "Shiv Sagar Lake",
        "image": "assets/images/shiv_sagar.jpg",
        "description": "Beautiful lake near Kapileshwar. कपिलेश्वर के पास सुंदर झील।"
      },
      {
        "name": "Chandrayan Ghat",
        "image": "assets/images/chandrayan_ghat.jpg",
        "description": "Popular religious ghat. प्रसिद्ध धार्मिक घाट।"
      },
      {
        "name": "Pandaul",
        "image": "assets/images/pandaul.jpg",
        "description": "Town known for cultural fairs. सांस्कृतिक मेलों के लिए प्रसिद्ध नगर।"
      },
      {
        "name": "Haripur",
        "image": "assets/images/haripur.jpg",
        "description": "Village with temples and ponds. मंदिरों और तालाबों वाला गाँव।"
      },
      {
        "name": "Ghoghardih",
        "image": "assets/images/ghoghardih.jpg",
        "description": "Historical village with ancient temples. प्राचीन मंदिरों वाला ऐतिहासिक गाँव।"
      },
      {
        "name": "Bela",
        "image": "assets/images/bela.jpg",
        "description": "Scenic rural location. सुंदर ग्रामीण स्थल।"
      },
    ],

    "Kishanganj (किशनगंज)": [
      {
        "name": "Har Gauri Temple (हर गौरी मंदिर)",
        "image": "assets/images/har_gauri_temple.jpg",
        "description": "A historic Shiva temple known for its unique architecture and religious importance. हर गौरी मंदिर अपनी अनोखी स्थापत्य कला और धार्मिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Khagra Mela (खगड़ा मेला)",
        "image": "assets/images/khagra_mela.jpg",
        "description": "An annual fair attracting visitors from nearby regions with cultural performances. खगड़ा मेला सांस्कृतिक कार्यक्रमों और धार्मिक अनुष्ठानों के लिए मशहूर है।"
      },
      {
        "name": "Kishanganj Jama Masjid (किशनगंज जामा मस्जिद)",
        "image": "assets/images/kishanganj_jama_masjid.jpg",
        "description": "A beautiful mosque reflecting Mughal architecture. जामा मस्जिद अपनी मुगल शैली की सुंदरता के लिए जानी जाती है।"
      },
      {
        "name": "Baisi Eidgah (बैसी ईदगाह)",
        "image": "assets/images/baisi_eidgah.jpg",
        "description": "A large open-air prayer ground for Eid celebrations. बैसी ईदगाह ईद के अवसर पर हजारों लोगों के जुटने का स्थल है।"
      },
      {
        "name": "Kochadhaman Fort (कोचाधामन किला)",
        "image": "assets/images/kochadhaman_fort.jpg",
        "description": "An old fort narrating tales of local rulers. कोचाधामन किला क्षेत्र के ऐतिहासिक महत्व का प्रतीक है।"
      },
      {
        "name": "Bahadurganj Market (बहादुरगंज बाजार)",
        "image": "assets/images/bahadurganj_market.jpg",
        "description": "A bustling market famous for local handicrafts. बहादुरगंज बाजार स्थानीय हस्तशिल्प और व्यापार के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kishanganj Clock Tower (किशनगंज घड़ी टावर)",
        "image": "assets/images/kishanganj_clock_tower.jpg",
        "description": "A landmark in the city centre. घड़ी टावर शहर के मध्य का एक प्रमुख चिन्ह है।"
      },
      {
        "name": "Pothia Hills (पोठिया पहाड़ियां)",
        "image": "assets/images/pothia_hills.jpg",
        "description": "A scenic hill area ideal for trekking. पोठिया पहाड़ियां प्राकृतिक सौंदर्य और ट्रैकिंग के लिए मशहूर हैं।"
      },
      {
        "name": "Haldibari Tea Gardens (हल्दीबाड़ी चाय बागान)",
        "image": "assets/images/haldibhari_tea_gardens.jpg",
        "description": "Tea gardens offering a peaceful escape. हल्दीबाड़ी चाय बागान सुकून और प्राकृतिक सौंदर्य का आनंद देते हैं।"
      },
      {
        "name": "Kishanganj Railway Station (किशनगंज रेलवे स्टेशन)",
        "image": "assets/images/kishanganj_railway_station.jpg",
        "description": "A historic railway junction connecting regions. रेलवे स्टेशन का ऐतिहासिक महत्व है।"
      },
      {
        "name": "Bahadurganj Eidgah (बहादुरगंज ईदगाह)",
        "image": "assets/images/bahadurganj_eidgah.jpg",
        "description": "Open ground for large religious gatherings. यह स्थान धार्मिक आयोजनों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Churliya Village (चुर्लिया गांव)",
        "image": "assets/images/churliya_village.jpg",
        "description": "A picturesque village with rich culture. चुर्लिया गांव अपनी संस्कृति और सौंदर्य के लिए मशहूर है।"
      },
      {
        "name": "Thakurganj Bazaar (ठाकुरगंज बाजार)",
        "image": "assets/images/thakurganj_bazaar.jpg",
        "description": "Market famous for fresh produce. ठाकुरगंज बाजार ताजी सब्जियों और फलों के लिए मशहूर है।"
      },
      {
        "name": "Dighalbank Mosque (डिघलबैंक मस्जिद)",
        "image": "assets/images/dighalbank_mosque.jpg",
        "description": "Historic mosque of the region. डिघलबैंक मस्जिद का ऐतिहासिक महत्व है।"
      },
      {
        "name": "Kishanganj Eco Park (किशनगंज इको पार्क)",
        "image": "assets/images/kishanganj_eco_park.jpg",
        "description": "A park with greenery and play areas. इको पार्क प्राकृतिक सौंदर्य और मनोरंजन का केंद्र है।"
      },
      {
        "name": "Pothia Wildlife Area (पोठिया वन्य क्षेत्र)",
        "image": "assets/images/pothia_wildlife_area.jpg",
        "description": "A small wildlife habitat. यह क्षेत्र छोटे वन्यजीवों का घर है।"
      },
      {
        "name": "Kishanganj Library (किशनगंज पुस्तकालय)",
        "image": "assets/images/kishanganj_library.jpg",
        "description": "Public library with local literature. पुस्तकालय में स्थानीय साहित्य का संग्रह है।"
      },
      {
        "name": "Kishanganj Stadium (किशनगंज स्टेडियम)",
        "image": "assets/images/kishanganj_stadium.jpg",
        "description": "Sports ground for cricket and football. यह स्टेडियम खेल गतिविधियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Baisi Bazaar (बैसी बाजार)",
        "image": "assets/images/baisi_bazaar.jpg",
        "description": "Popular for street food and local shopping. बैसी बाजार स्ट्रीट फूड और खरीदारी के लिए मशहूर है।"
      },
      {
        "name": "Pothia Mandir (पोठिया मंदिर)",
        "image": "assets/images/pothia_mandir.jpg",
        "description": "Ancient temple of local belief. पोठिया मंदिर स्थानीय आस्था का केंद्र है।"
      },
      {
        "name": "Kishanganj River Bank (किशनगंज नदी किनारा)",
        "image": "assets/images/kishanganj_river_bank.jpg",
        "description": "Scenic spot for picnics. नदी किनारा पिकनिक और विश्राम के लिए उत्तम है।"
      },
      {
        "name": "Harobari Tea Estate (हरोबाड़ी चाय बागान)",
        "image": "assets/images/harobari_tea_estate.jpg",
        "description": "Lush tea gardens offering scenic walks. हरोबाड़ी चाय बागान सुंदर पैदल यात्रा के लिए मशहूर है।"
      },
      {
        "name": "Kishanganj Handloom Centre (किशनगंज हैंडलूम केंद्र)",
        "image": "assets/images/kishanganj_handloom.jpg",
        "description": "Centre promoting local weaving art. यह केंद्र स्थानीय बुनाई कला को बढ़ावा देता है।"
      },
      {
        "name": "Bahadurganj Bridge (बहादुरगंज पुल)",
        "image": "assets/images/bahadurganj_bridge.jpg",
        "description": "Bridge over local river. यह पुल आसपास के गांवों को जोड़ता है।"
      },
    ],

     "Araria (अररिया)":[
      {
        "name": "Forbesganj Clock Tower (फोर्ब्सगंज घड़ी टावर)",
        "image": "assets/images/forbesganj_clock_tower.jpg",
        "description": "A colonial-era clock tower. यह टावर औपनिवेशिक युग का स्मारक है।"
      },
      {
        "name": "Kosi River Bank (कोसी नदी किनारा)",
        "image": "assets/images/kosi_river_bank.jpg",
        "description": "Popular picnic spot along the Kosi River. कोसी नदी का किनारा पिकनिक और घूमने के लिए मशहूर है।"
      },
      {
        "name": "Raniganj Bazaar (रानीगंज बाजार)",
        "image": "assets/images/raniganj_bazaar.jpg",
        "description": "Famous for local produce and handicrafts. यह बाजार स्थानीय उत्पाद और हस्तशिल्प के लिए प्रसिद्ध है।"
      },
      {
        "name": "Narpatganj Fort (नरपतगंज किला)",
        "image": "assets/images/narpatganj_fort.jpg",
        "description": "Historic fort ruins. यह किला स्थानीय इतिहास की कहानी कहता है।"
      },
      {
        "name": "Araria Jama Masjid (अररिया जामा मस्जिद)",
        "image": "assets/images/araria_jama_masjid.jpg",
        "description": "Beautiful mosque with Indo-Islamic architecture. यह मस्जिद अपनी खूबसूरत वास्तुकला के लिए जानी जाती है।"
      },
      {
        "name": "Kursakanta Hills (कुर्साकांटा पहाड़ियां)",
        "image": "assets/images/kursakanta_hills.jpg",
        "description": "Small hill range ideal for short treks. ये पहाड़ियां ट्रेकिंग के लिए उपयुक्त हैं।"
      },
      {
        "name": "Sarsi Eco Park (सरसी इको पार्क)",
        "image": "assets/images/sarsi_eco_park.jpg",
        "description": "Green park with children's play area. यह पार्क हरियाली और बच्चों के लिए खेल क्षेत्र के लिए मशहूर है।"
      },
      {
        "name": "Forbesganj Railway Station (फोर्ब्सगंज रेलवे स्टेशन)",
        "image": "assets/images/forbesganj_railway_station.jpg",
        "description": "Important railway hub of the district. यह स्टेशन क्षेत्र का प्रमुख रेलवे जंक्शन है।"
      },
      {
        "name": "Bhargama Market (भरगामा बाजार)",
        "image": "assets/images/bhargama_market.jpg",
        "description": "Weekly market known for fresh produce. यह बाजार ताजे फलों और सब्जियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kosi Barrage View Point (कोसी बैराज व्यू प्वाइंट)",
        "image": "assets/images/kosi_barrage_view.jpg",
        "description": "Scenic view of the Kosi Barrage. यहां से बैराज का सुंदर दृश्य दिखता है।"
      },
      {
        "name": "Jankinagar Temple (जानकीनगर मंदिर)",
        "image": "assets/images/jankinagar_temple.jpg",
        "description": "Ancient temple dedicated to Goddess Sita. यह मंदिर माता सीता को समर्पित है।"
      },
      {
        "name": "Belsar Eidgah (बेलसर ईदगाह)",
        "image": "assets/images/belsar_eidgah.jpg",
        "description": "Open ground for Eid prayers. यह ईदगाह धार्मिक आयोजनों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Sikti Wildlife Spot (सिकटी वन्य स्थल)",
        "image": "assets/images/sikti_wildlife.jpg",
        "description": "Home to local birds and small animals. यह स्थल पक्षियों और छोटे वन्यजीवों का घर है।"
      },
      {
        "name": "Palasi War Memorial (पालासी युद्ध स्मारक)",
        "image": "assets/images/palasi_war_memorial.jpg",
        "description": "Memorial dedicated to historical battles. यह स्मारक ऐतिहासिक युद्धों की याद में बना है।"
      },
      {
        "name": "Ratuwa River Side (रतुवा नदी किनारा)",
        "image": "assets/images/ratuwa_river_side.jpg",
        "description": "Quiet riverside picnic location. यह स्थान पिकनिक और विश्राम के लिए उत्तम है।"
      },
      {
        "name": "Forbesganj Gurudwara (फोर्ब्सगंज गुरुद्वारा)",
        "image": "assets/images/forbesganj_gurudwara.jpg",
        "description": "Sikh place of worship with peaceful surroundings. यह गुरुद्वारा शांति का प्रतीक है।"
      },
      {
        "name": "Sarsi Hanuman Mandir (सरसी हनुमान मंदिर)",
        "image": "assets/images/sarsi_hanuman_temple.jpg",
        "description": "Popular temple dedicated to Lord Hanuman. यह मंदिर हनुमान जी को समर्पित है।"
      },
      {
        "name": "Jogbani Border (जोगबनी बॉर्डर)",
        "image": "assets/images/jogbani_border.jpg",
        "description": "Indo-Nepal border town famous for cross-border trade. यह स्थान भारत-नेपाल व्यापार के लिए प्रसिद्ध है।"
      },
      {
        "name": "Araria Stadium (अररिया स्टेडियम)",
        "image": "assets/images/araria_stadium.jpg",
        "description": "Sports hub for cricket and football. यह स्टेडियम खेलों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Bhargama Kali Mandir (भरगामा काली मंदिर)",
        "image": "assets/images/bhargama_kali_temple.jpg",
        "description": "Temple dedicated to Goddess Kali. यह मंदिर काली माता को समर्पित है।"
      },
      {
        "name": "Kursakanta Market (कुर्साकांटा बाजार)",
        "image": "assets/images/kursakanta_market.jpg",
        "description": "Local market for daily needs. यह बाजार रोजमर्रा की वस्तुओं के लिए मशहूर है।"
      },
      {
        "name": "Palasi Bazaar (पालासी बाजार)",
        "image": "assets/images/palasi_bazaar.jpg",
        "description": "Known for traditional sweets and snacks. यह बाजार मिठाइयों और स्नैक्स के लिए प्रसिद्ध है।"
      },
      {
        "name": "Sikti Bridge (सिकटी पुल)",
        "image": "assets/images/sikti_bridge.jpg",
        "description": "Bridge connecting remote villages. यह पुल दूरदराज के गांवों को जोड़ता है।"
      },
      {
        "name": "Araria Public Library (अररिया सार्वजनिक पुस्तकालय)",
        "image": "assets/images/araria_library.jpg",
        "description": "Library with collection of local literature. इस पुस्तकालय में स्थानीय साहित्य का संग्रह है।"
      }
    ],

    "Purnia (पूर्णिया)": [
      {
        "name": "Jalalgarh Fort",
        "image": "assets/images/jalalgarh_fort.jpg",
        "description": "A historic fort built in the 18th century by Saif Khan. जलालगढ़ किला 18वीं सदी में सैफ खान द्वारा बनवाया गया था।"
      },
      {
        "name": "Kosi River View Point",
        "image": "assets/images/kosi_river_view.jpg",
        "description": "Beautiful riverside view with boating facilities. खूबसूरत नदी किनारे का दृश्य और नौकायन सुविधा।"
      },
      {
        "name": "Purnia Kali Mandir",
        "image": "assets/images/kali_mandir.jpg",
        "description": "Famous temple dedicated to Goddess Kali. माता काली को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Line Bazar Market",
        "image": "assets/images/line_bazar.jpg",
        "description": "Main commercial hub of Purnia. पूर्णिया का मुख्य व्यावसायिक केंद्र।"
      },
      {
        "name": "Purnia Science Centre",
        "image": "assets/images/science_centre.jpg",
        "description": "Educational spot with science exhibits. विज्ञान प्रदर्शनों वाला शैक्षिक स्थल।"
      },
      {
        "name": "Ganga–Kosi Sangam",
        "image": "assets/images/ganga_kosi_sangam.jpg",
        "description": "Holy confluence of Ganga and Kosi rivers. गंगा और कोसी नदियों का पवित्र संगम।"
      },
      {
        "name": "Chandni Chowk Purnia",
        "image": "assets/images/chandni_chowk_purnia.jpg",
        "description": "Popular food and shopping destination. लोकप्रिय भोजन और खरीदारी स्थल।"
      },
      {
        "name": "Sarsi Dam",
        "image": "assets/images/sarsi_dam.jpg",
        "description": "Water reservoir ideal for picnics. पिकनिक के लिए आदर्श जलाशय।"
      },
      {
        "name": "Purnia Golf Ground",
        "image": "assets/images/golf_ground.jpg",
        "description": "Leisure and sports facility. मनोरंजन और खेल की सुविधा।"
      },
      {
        "name": "Banmankhi Temple",
        "image": "assets/images/banmankhi_temple.jpg",
        "description": "Ancient temple with historical importance. ऐतिहासिक महत्व वाला प्राचीन मंदिर।"
      },
      {
        "name": "Purnia District Museum",
        "image": "assets/images/purnia_museum.jpg",
        "description": "Museum showcasing local history and culture. स्थानीय इतिहास और संस्कृति का संग्रहालय।"
      },
      {
        "name": "Baisi Hat",
        "image": "assets/images/baisi_hat.jpg",
        "description": "Traditional rural market. पारंपरिक ग्रामीण बाजार।"
      },
      {
        "name": "Kursela Ghat",
        "image": "assets/images/kursela_ghat.jpg",
        "description": "Peaceful riverbank perfect for morning walks. सुबह की सैर के लिए शांत नदी तट।"
      },
      {
        "name": "Kali Bari Road",
        "image": "assets/images/kali_bari_road.jpg",
        "description": "Famous street with temples and shops. मंदिरों और दुकानों वाली प्रसिद्ध सड़क।"
      },
      {
        "name": "Bhatta Bazaar",
        "image": "assets/images/bhatta_bazaar.jpg",
        "description": "Crowded local market with fresh produce. ताजा उत्पादों वाला भीड़भाड़ वाला बाजार।"
      },
      {
        "name": "Chhoti Kosi Barrage",
        "image": "assets/images/chhoti_kosi_barrage.jpg",
        "description": "Small barrage over Kosi river. कोसी नदी पर बना छोटा बैराज।"
      },
      {
        "name": "Rani Sati Mandir",
        "image": "assets/images/rani_sati_mandir.jpg",
        "description": "Beautifully designed temple with daily prayers. सुंदर मंदिर जिसमें दैनिक पूजा होती है।"
      },
      {
        "name": "Purnia Clock Tower",
        "image": "assets/images/clock_tower.jpg",
        "description": "Historical landmark in Purnia city. पूर्णिया शहर का ऐतिहासिक स्थल।"
      },
      {
        "name": "Balrampur Chowk",
        "image": "assets/images/balrampur_chowk.jpg",
        "description": "Famous junction for street food lovers. स्ट्रीट फूड प्रेमियों के लिए प्रसिद्ध स्थान।"
      },
      {
        "name": "Purnia Stadium",
        "image": "assets/images/purnia_stadium.jpg",
        "description": "Sports events and matches are organized here. यहां खेल आयोजन और मैच होते हैं।"
      },
      {
        "name": "Maranga Kali Temple",
        "image": "assets/images/maranga_kali.jpg",
        "description": "Ancient temple dedicated to Goddess Kali. माता काली को समर्पित प्राचीन मंदिर।"
      },
      {
        "name": "Barhara Ghat",
        "image": "assets/images/barhara_ghat.jpg",
        "description": "Scenic spot on the riverbank. नदी किनारे का सुंदर स्थल।"
      },
      {
        "name": "Purnia Art Gallery",
        "image": "assets/images/art_gallery.jpg",
        "description": "Showcases local artwork. स्थानीय कलाकृतियों का प्रदर्शन।"
      },
      {
        "name": "Chunapur Airport Area",
        "image": "assets/images/chunapur_airport.jpg",
        "description": "Historic airfield area. ऐतिहासिक हवाई पट्टी क्षेत्र।"
      },
      {
        "name": "Krishna Mandir",
        "image": "assets/images/krishna_mandir.jpg",
        "description": "Temple dedicated to Lord Krishna. भगवान कृष्ण को समर्पित मंदिर।"
      },
    ],

    "Katihar (कटिहार)": [
      {
        "name": "Goga Lake",
        "image": "assets/images/goga_lake.jpg",
        "description": "A scenic lake surrounded by greenery, perfect for picnics and boating. हरे-भरे वातावरण से घिरा एक सुंदर झील, पिकनिक और नौका विहार के लिए उपयुक्त।"
      },
      {
        "name": "Manihari Ghat",
        "image": "assets/images/manihari_ghat.jpg",
        "description": "A popular riverside spot on the banks of the Ganga, known for scenic sunsets. गंगा के किनारे का एक प्रसिद्ध स्थल, खूबसूरत सूर्यास्त के लिए मशहूर।"
      },
      {
        "name": "Kursela",
        "image": "assets/images/kursela.jpg",
        "description": "A town at the confluence of the Ganga and Koshi rivers with cultural significance. गंगा और कोशी नदियों के संगम पर बसा सांस्कृतिक महत्व का स्थान।"
      },
      {
        "name": "Barari Park",
        "image": "assets/images/barari_park.jpg",
        "description": "A green public park with walking trails and playgrounds for families. हरे-भरे पगडंडियों और बच्चों के खेल के मैदान वाला सार्वजनिक पार्क।"
      },
      {
        "name": "Bhawani Asthan Temple",
        "image": "assets/images/bhawani_asthan.jpg",
        "description": "A famous temple dedicated to Goddess Durga, attracting devotees year-round. देवी दुर्गा को समर्पित प्रसिद्ध मंदिर, जो सालभर भक्तों को आकर्षित करता है।"
      },
      {
        "name": "Lal Kothi",
        "image": "assets/images/lal_kothi.jpg",
        "description": "A colonial-era heritage building showcasing vintage architecture. औपनिवेशिक काल की वास्तुकला का उदाहरण पेश करने वाली विरासत इमारत।"
      },
      {
        "name": "Gamharia Hills",
        "image": "assets/images/gamharia_hills.jpg",
        "description": "Small hills offering panoramic views and peaceful surroundings. सुंदर नज़ारों और शांत वातावरण के लिए प्रसिद्ध छोटी पहाड़ियाँ।"
      },
      {
        "name": "Suryagarha",
        "image": "assets/images/suryagarha.jpg",
        "description": "An ancient site with local legends and historical importance. प्राचीन स्थल, जो स्थानीय कथाओं और ऐतिहासिक महत्व से जुड़ा है।"
      },
      {
        "name": "Railway Heritage Park",
        "image": "assets/images/railway_heritage_park.jpg",
        "description": "A park featuring old locomotives and railway history exhibits. पुराने इंजनों और रेलवे के इतिहास को दर्शाने वाला पार्क।"
      },
      {
        "name": "Jhauganj Market",
        "image": "assets/images/jhauganj_market.jpg",
        "description": "A bustling traditional market famous for local goods and spices. स्थानीय सामान और मसालों के लिए मशहूर पारंपरिक बाजार।"
      },
      {
        "name": "Semapur Bridge",
        "image": "assets/images/semapur_bridge.jpg",
        "description": "A long bridge offering scenic river views and connecting key towns. नदी के सुंदर नज़ारों वाला लंबा पुल, जो प्रमुख कस्बों को जोड़ता है।"
      },
      {
        "name": "Baigna Temple",
        "image": "assets/images/baigna_temple.jpg",
        "description": "A serene temple surrounded by greenery, popular among pilgrims. हरियाली से घिरा शांत मंदिर, जो श्रद्धालुओं में लोकप्रिय है।"
      },
      {
        "name": "Manihari Fort Ruins",
        "image": "assets/images/manihari_fort.jpg",
        "description": "Remains of an ancient fort with historical stories and scenic beauty. ऐतिहासिक कथाओं और सुंदरता से भरे एक पुराने किले के अवशेष।"
      },
      {
        "name": "Falka Village",
        "image": "assets/images/falka_village.jpg",
        "description": "A traditional village known for handicrafts and cultural heritage. हस्तशिल्प और सांस्कृतिक धरोहर के लिए मशहूर पारंपरिक गाँव।"
      },
      {
        "name": "Chhota Bhagalpur",
        "image": "assets/images/chhota_bhagalpur.jpg",
        "description": "A small town with silk weaving traditions and historic charm. रेशम बुनाई की परंपरा और ऐतिहासिक आकर्षण वाला छोटा कस्बा।"
      },
      {
        "name": "Kadwa Park",
        "image": "assets/images/kadwa_park.jpg",
        "description": "A local recreational park with greenery and open spaces. हरियाली और खुले स्थानों वाला स्थानीय मनोरंजन पार्क।"
      },
      {
        "name": "Katihar Clock Tower",
        "image": "assets/images/clock_tower.jpg",
        "description": "A landmark colonial-era clock tower in the city center. शहर के केंद्र में स्थित औपनिवेशिक काल का प्रसिद्ध घड़ी टावर।"
      },
      {
        "name": "Baigna Hills",
        "image": "assets/images/baigna_hills.jpg",
        "description": "Hilly terrain offering adventure and trekking opportunities. रोमांच और ट्रेकिंग के लिए उपयुक्त पहाड़ी इलाका।"
      },
      {
        "name": "Chandika Sthan",
        "image": "assets/images/chandika_sthan.jpg",
        "description": "A temple dedicated to Goddess Chandika with mythological relevance. देवी चंडिका को समर्पित पौराणिक महत्व वाला मंदिर।"
      },
      {
        "name": "Goradih Eco Park",
        "image": "assets/images/goradih_eco_park.jpg",
        "description": "An eco-friendly park with diverse flora and fauna. विभिन्न प्रकार के पेड़-पौधों और जीव-जंतुओं वाला पर्यावरण-अनुकूल पार्क।"
      },
      {
        "name": "Haldibari Border",
        "image": "assets/images/haldibar_border.jpg",
        "description": "A border area offering unique cultural exchanges with neighboring states. पड़ोसी राज्यों के साथ सांस्कृतिक आदान-प्रदान के लिए प्रसिद्ध सीमा क्षेत्र।"
      },
      {
        "name": "Pranpur Village",
        "image": "assets/images/pranpur_village.jpg",
        "description": "A heritage weaving village known for handloom sarees. हथकरघा साड़ियों के लिए मशहूर विरासत बुनाई गाँव।"
      },
      {
        "name": "Manihari Fairground",
        "image": "assets/images/manihari_fairground.jpg",
        "description": "A fairground hosting seasonal fairs and cultural programs. मौसमी मेलों और सांस्कृतिक कार्यक्रमों की मेजबानी करने वाला स्थल।"
      },
      {
        "name": "Katihar Stadium",
        "image": "assets/images/katihar_stadium.jpg",
        "description": "A multi-purpose sports stadium for local and regional events. स्थानीय और क्षेत्रीय कार्यक्रमों के लिए बहुउद्देश्यीय खेल स्टेडियम।"
      }
    ],
    "Madhepura (मधेपुरा)": [
      {
        "name": "Singheshwar Sthan Temple",
        "image": "assets/images/singheshwar.jpg",
        "description": "Famous Shiva temple attracting thousands of devotees during Shivratri. यह प्रसिद्ध शिव मंदिर है जहाँ महाशिवरात्रि पर हज़ारों भक्त आते हैं।"
      },
      {
        "name": "Koshi River Bank",
        "image": "assets/images/koshi_river.jpg",
        "description": "Scenic river bank offering peaceful views of the Koshi river. कोशी नदी का सुंदर किनारा जो शांति और प्राकृतिक सौंदर्य प्रदान करता है।"
      },
      {
        "name": "Udakishunganj Market",
        "image": "assets/images/udakishunganj.jpg",
        "description": "Bustling market known for local produce and handicrafts. यह बाज़ार स्थानीय उत्पादों और हस्तशिल्प के लिए मशहूर है।"
      },
      {
        "name": "Koshi High Dam View",
        "image": "assets/images/koshi_dam.jpg",
        "description": "A large dam on the Koshi river, an important landmark. कोशी नदी पर बना विशाल बांध, एक महत्वपूर्ण स्थल।"
      },
      {
        "name": "Bhelwa Asthan",
        "image": "assets/images/bhelwa_asthan.jpg",
        "description": "Religious site dedicated to Lord Shiva, visited by devotees year-round. भगवान शिव को समर्पित धार्मिक स्थान।"
      },
      {
        "name": "Madhepura District Museum",
        "image": "assets/images/madhepura_museum.jpg",
        "description": "Museum showcasing local art, culture, and history. स्थानीय कला, संस्कृति और इतिहास प्रदर्शित करने वाला संग्रहालय।"
      },
      {
        "name": "Shanti Park",
        "image": "assets/images/shanti_park.jpg",
        "description": "Public park with greenery and playground facilities. हरियाली और खेलने की सुविधाओं वाला सार्वजनिक पार्क।"
      },
      {
        "name": "Kosi College Campus",
        "image": "assets/images/kosi_college.jpg",
        "description": "Historic educational institution in Madhepura. मधेपुरा का ऐतिहासिक शैक्षणिक संस्थान।"
      },
      {
        "name": "Gidhdha Pahar",
        "image": "assets/images/gidhdha_pahar.jpg",
        "description": "Small hillock offering panoramic views. एक छोटी पहाड़ी जो सुंदर नज़ारे प्रस्तुत करती है।"
      },
      {
        "name": "Bhupendra Chowk",
        "image": "assets/images/bhupendra_chowk.jpg",
        "description": "Central market and landmark in the city. शहर का केंद्रीय बाज़ार और प्रमुख स्थल।"
      },
      {
        "name": "Baba Vishwanath Mandir",
        "image": "assets/images/baba_vishwanath.jpg",
        "description": "Sacred temple dedicated to Lord Vishwanath. भगवान विश्वनाथ को समर्पित पवित्र मंदिर।"
      },
      {
        "name": "Koshi Barrage Area",
        "image": "assets/images/koshi_barrage.jpg",
        "description": "Area near the barrage famous for picnics. पिकनिक के लिए प्रसिद्ध बैराज के पास का इलाक़ा।"
      },
      {
        "name": "Tulsiahi Mahadev Mandir",
        "image": "assets/images/tulsiahi_mahadev.jpg",
        "description": "Ancient temple of Lord Shiva located in Tulsiahi. तुलसियाही में स्थित भगवान शिव का प्राचीन मंदिर।"
      },
      {
        "name": "Durga Mandir",
        "image": "assets/images/durga_mandir.jpg",
        "description": "Famous Durga temple visited during Navratri. नवरात्रि के समय मशहूर दुर्गा मंदिर।"
      },
      {
        "name": "Rajni Lake",
        "image": "assets/images/rajni_lake.jpg",
        "description": "Beautiful lake surrounded by greenery. हरियाली से घिरी सुंदर झील।"
      },
      {
        "name": "Chandni Chowk Madhepura",
        "image": "assets/images/chandni_chowk.jpg",
        "description": "Popular shopping street in Madhepura. मधेपुरा की लोकप्रिय ख़रीदारी वाली सड़क।"
      },
      {
        "name": "Parmanandpur Temple",
        "image": "assets/images/parmanandpur_temple.jpg",
        "description": "Historic temple with cultural significance. सांस्कृतिक महत्व वाला ऐतिहासिक मंदिर।"
      },
      {
        "name": "Rajauna Village",
        "image": "assets/images/rajauna_village.jpg",
        "description": "Village famous for its cultural heritage. अपनी सांस्कृतिक धरोहर के लिए प्रसिद्ध गाँव।"
      },
      {
        "name": "Krishna Mandir",
        "image": "assets/images/krishna_mandir.jpg",
        "description": "Temple dedicated to Lord Krishna. भगवान कृष्ण को समर्पित मंदिर।"
      },
      {
        "name": "Eco Park Madhepura",
        "image": "assets/images/eco_park.jpg",
        "description": "Park for relaxation and nature walks. विश्राम और प्राकृतिक सैर के लिए पार्क।"
      },
      {
        "name": "Baba Kali Sthan",
        "image": "assets/images/baba_kali.jpg",
        "description": "Sacred site for Goddess Kali worship. माँ काली की पूजा के लिए पवित्र स्थल।"
      },
      {
        "name": "Kosi Canal Area",
        "image": "assets/images/kosi_canal.jpg",
        "description": "Scenic canal region for photography. फोटोग्राफी के लिए सुंदर नहर का इलाक़ा।"
      },
      {
        "name": "Pipra Bazaar",
        "image": "assets/images/pipra_bazaar.jpg",
        "description": "Local market with vibrant trade. जीवंत व्यापार वाला स्थानीय बाज़ार।"
      },
      {
        "name": "Anantpur Ghat",
        "image": "assets/images/anantpur_ghat.jpg",
        "description": "Peaceful riverside ghat for relaxation. विश्राम के लिए शांत नदी किनारा।"
      },
      {
        "name": "Yogini Mandir",
        "image": "assets/images/yogini_mandir.jpg",
        "description": "Spiritual temple with serene environment. शांत वातावरण वाला आध्यात्मिक मंदिर।"
      }
    ],
    "Supaul (सुपौल)": [
      {
        "name": "Koshi Barrage",
        "image": "assets/images/koshi_barrage.jpg",
        "description": "A massive dam across the Koshi River near Bhimnagar, important for flood control and irrigation. कोशी नदी पर विशाल बांध, जो बाढ़ नियंत्रण और सिंचाई के लिए महत्वपूर्ण है।"
      },
      {
        "name": "Bhimnagar",
        "image": "assets/images/bhimnagar.jpg",
        "description": "A picturesque village near the Indo-Nepal border with scenic views and proximity to Koshi Barrage. भारत-नेपाल सीमा के पास स्थित सुंदर गांव, कोशी बैराज के निकट।"
      },
      {
        "name": "Triveni Sangam",
        "image": "assets/images/triveni_sangam_supaul.jpg",
        "description": "Confluence of Kosi, Ganga, and Mahananda rivers, a sacred site for pilgrims. कोशी, गंगा और महानंदा नदियों का संगम, श्रद्धालुओं के लिए पवित्र स्थान।"
      },
      {
        "name": "Koshi Tappu Wildlife Sanctuary (Nepal Border)",
        "image": "assets/images/koshi_tappu.jpg",
        "description": "A famous bird sanctuary across the border, accessible from Supaul. नेपाल सीमा पर प्रसिद्ध पक्षी अभयारण्य, सुपौल से पहुँचा जा सकता है।"
      },
      {
        "name": "Chhat Puja Ghat",
        "image": "assets/images/chhat_puja_ghat_supaul.jpg",
        "description": "River ghats used for the grand celebration of Chhath Puja festival. छठ पूजा के भव्य आयोजन के लिए प्रसिद्ध नदी घाट।"
      },
      {
        "name": "Koshi River View Point",
        "image": "assets/images/koshi_river_view.jpg",
        "description": "Scenic spot to view the mighty Koshi River flow. कोशी नदी के भव्य प्रवाह को देखने का सुंदर स्थल।"
      },
      {
        "name": "Baba Bhuteshwar Nath Temple",
        "image": "assets/images/bhuteshwar_nath.jpg",
        "description": "Ancient Shiva temple known for religious gatherings. प्राचीन शिव मंदिर, धार्मिक आयोजनों के लिए प्रसिद्ध।"
      },
      {
        "name": "Basantpur Haat",
        "image": "assets/images/basantpur_haat.jpg",
        "description": "Traditional village market offering local handicrafts and food. स्थानीय हस्तशिल्प और भोजन के लिए पारंपरिक हाट बाजार।"
      },
      {
        "name": "Bhimnagar Park",
        "image": "assets/images/bhimnagar_park.jpg",
        "description": "A well-maintained park ideal for families and kids. परिवार और बच्चों के लिए उपयुक्त सुसज्जित पार्क।"
      },
      {
        "name": "Kosi Flood Memorial",
        "image": "assets/images/kosi_flood_memorial.jpg",
        "description": "Memorial built in memory of the 2008 Kosi flood victims. 2008 कोशी बाढ़ पीड़ितों की स्मृति में निर्मित स्मारक।"
      },
      {
        "name": "Hanuman Mandir, Supaul",
        "image": "assets/images/hanuman_mandir_supaul.jpg",
        "description": "Famous Hanuman temple attracting devotees year-round. साल भर भक्तों को आकर्षित करने वाला हनुमान मंदिर।"
      },
      {
        "name": "Koshi Canal",
        "image": "assets/images/koshi_canal.jpg",
        "description": "Major irrigation canal serving agricultural lands. कृषि भूमि की सिंचाई के लिए महत्वपूर्ण नहर।"
      },
      {
        "name": "Murliganj Market (Nearby)",
        "image": "assets/images/murliganj_market.jpg",
        "description": "Bustling market area with local produce and goods. स्थानीय उत्पाद और सामान के लिए व्यस्त बाजार क्षेत्र।"
      },
      {
        "name": "Matsyagandha Mandir",
        "image": "assets/images/matsyagandha_mandir.jpg",
        "description": "Temple dedicated to Goddess Matsyagandha, popular during festivals. देवी मत्स्यगंधा को समर्पित मंदिर, त्योहारों में प्रसिद्ध।"
      },
      {
        "name": "Rajbiraj Town (Nepal Border)",
        "image": "assets/images/rajbiraj_nepal.jpg",
        "description": "Nepali border town with unique culture and markets. अनोखी संस्कृति और बाजारों वाला नेपाली सीमा शहर।"
      },
      {
        "name": "Shiv Mandir, Marauna",
        "image": "assets/images/shiv_mandir_marauna.jpg",
        "description": "Ancient Shiva temple in Marauna village. मरौना गांव में स्थित प्राचीन शिव मंदिर।"
      },
      {
        "name": "Indo-Nepal Border Pillar",
        "image": "assets/images/indo_nepal_border_supaul.jpg",
        "description": "Historical pillar marking the border between India and Nepal. भारत और नेपाल की सीमा दर्शाने वाला ऐतिहासिक स्तंभ।"
      },
      {
        "name": "Laxmi Narayan Mandir",
        "image": "assets/images/laxmi_narayan_mandir_supaul.jpg",
        "description": "Temple dedicated to Lord Vishnu and Goddess Laxmi. भगवान विष्णु और देवी लक्ष्मी को समर्पित मंदिर।"
      },
      {
        "name": "Bhimnagar Lake",
        "image": "assets/images/bhimnagar_lake.jpg",
        "description": "Beautiful lake near Bhimnagar, ideal for relaxation. भीमनगर के पास स्थित सुंदर झील, आराम के लिए उपयुक्त।"
      },
      {
        "name": "Chhat Puja Park",
        "image": "assets/images/chhat_puja_park_supaul.jpg",
        "description": "Park decorated during Chhath Puja celebrations. छठ पूजा के दौरान सजाया जाने वाला पार्क।"
      },
      {
        "name": "Koshi Embankment Road",
        "image": "assets/images/koshi_embankment.jpg",
        "description": "Scenic road along the Koshi embankment. कोशी तटबंध के किनारे बनी सुंदर सड़क।"
      },
      {
        "name": "Fatehpur Temple",
        "image": "assets/images/fatehpur_temple_supaul.jpg",
        "description": "Famous local temple known for cultural fairs. सांस्कृतिक मेलों के लिए प्रसिद्ध स्थानीय मंदिर।"
      },
      {
        "name": "Haripur Forest Area",
        "image": "assets/images/haripur_forest.jpg",
        "description": "Small forest area with rich flora and fauna. विविध वनस्पति और जीव-जंतुओं वाला छोटा जंगल।"
      },
      {
        "name": "Raghopur Market",
        "image": "assets/images/raghopur_market.jpg",
        "description": "Local market with vibrant atmosphere and fresh produce. जीवंत वातावरण और ताज़ा उत्पादों वाला स्थानीय बाजार।"
      }
    ],

    "Siwan (सीवान)": [
      {
        "name": "Maharajganj Fort",
        "image": "assets/images/maharajganj_fort.jpg",
        "description": "Historic fort known for its architectural design. यह किला अपने वास्तुशिल्प डिजाइन के लिए प्रसिद्ध है।"
      },
      {
        "name": "Panchmukhi Mahadev Temple",
        "image": "assets/images/panchmukhi_mahadev.jpg",
        "description": "A sacred Shiva temple with five-faced idol. यह शिव मंदिर अपनी पंचमुखी प्रतिमा के लिए प्रसिद्ध है।"
      },
      {
        "name": "Baba Hariram Temple",
        "image": "assets/images/baba_hariram.jpg",
        "description": "Famous pilgrimage site attracting devotees year-round. प्रसिद्ध तीर्थ स्थल जहाँ सालभर श्रद्धालु आते हैं।"
      },
      {
        "name": "Gopalganj-Siwan Border Picnic Spot",
        "image": "assets/images/border_picnic.jpg",
        "description": "Peaceful picnic spot near the border area. सीमा क्षेत्र के पास शांत पिकनिक स्थल।"
      },
      {
        "name": "Ashiana Park",
        "image": "assets/images/ashiana_park.jpg",
        "description": "Public park ideal for families and children. परिवारों और बच्चों के लिए आदर्श सार्वजनिक पार्क।"
      },
      {
        "name": "Bharathua Hanuman Mandir",
        "image": "assets/images/bharathua_hanuman.jpg",
        "description": "Ancient Hanuman temple with historical significance. ऐतिहासिक महत्व वाला प्राचीन हनुमान मंदिर।"
      },
      {
        "name": "Rajendra Stadium",
        "image": "assets/images/rajendra_stadium.jpg",
        "description": "Sports hub for local events and tournaments. स्थानीय खेल आयोजनों का केंद्र।"
      },
      {
        "name": "Mehandar Nath Temple",
        "image": "assets/images/mehandar_nath.jpg",
        "description": "Dedicated to Lord Shiva, attracts many during Shivratri. भगवान शिव को समर्पित, शिवरात्रि पर भीड़।"
      },
      {
        "name": "Darauli Fort",
        "image": "assets/images/darauli_fort.jpg",
        "description": "Historical fort with stories of bravery. वीरता की कहानियों वाला ऐतिहासिक किला।"
      },
      {
        "name": "Siwan Jama Masjid",
        "image": "assets/images/siwan_jama_masjid.jpg",
        "description": "Beautiful mosque with traditional architecture. पारंपरिक वास्तुकला वाली खूबसूरत मस्जिद।"
      },
      {
        "name": "Raghunathpur Ghat",
        "image": "assets/images/raghunathpur_ghat.jpg",
        "description": "Scenic riverbank perfect for sunset views. सुंदर नदी किनारा, सूर्यास्त के लिए आदर्श।"
      },
      {
        "name": "Basantpur Market",
        "image": "assets/images/basantpur_market.jpg",
        "description": "Bustling market famous for local products. स्थानीय उत्पादों के लिए प्रसिद्ध व्यस्त बाजार।"
      },
      {
        "name": "Amwariya Mandir",
        "image": "assets/images/amwariya_mandir.jpg",
        "description": "A peaceful temple surrounded by nature. प्रकृति से घिरा शांत मंदिर।"
      },
      {
        "name": "Andar Bazaar",
        "image": "assets/images/andar_bazaar.jpg",
        "description": "Traditional market known for handicrafts. हस्तशिल्प के लिए प्रसिद्ध पारंपरिक बाजार।"
      },
      {
        "name": "Barauli Picnic Spot",
        "image": "assets/images/barauli_picnic.jpg",
        "description": "A serene place to relax with family. परिवार के साथ समय बिताने के लिए शांत जगह।"
      },
      {
        "name": "Bhim Chhapra Temple",
        "image": "assets/images/bhim_chhapra_temple.jpg",
        "description": "Local temple with a rich history. समृद्ध इतिहास वाला स्थानीय मंदिर।"
      },
      {
        "name": "Maharajganj Market",
        "image": "assets/images/maharajganj_market.jpg",
        "description": "Local hub for shopping and food. खरीदारी और भोजन का स्थानीय केंद्र।"
      },
      {
        "name": "Siwan Fort Park",
        "image": "assets/images/siwan_fort_park.jpg",
        "description": "Park with historical ruins. ऐतिहासिक खंडहरों वाला पार्क।"
      },
      {
        "name": "Hathua Market",
        "image": "assets/images/hathua_market.jpg",
        "description": "A busy market with local charm. स्थानीय आकर्षण वाला व्यस्त बाजार।"
      },
      {
        "name": "Siwan Railway Museum",
        "image": "assets/images/siwan_railway_museum.jpg",
        "description": "Museum displaying railway heritage. रेलवे धरोहर दिखाने वाला संग्रहालय।"
      },
      {
        "name": "Chhapia Dargah",
        "image": "assets/images/chhapia_dargah.jpg",
        "description": "Famous Sufi shrine attracting devotees. प्रसिद्ध सूफी दरगाह।"
      },
      {
        "name": "Rajpur Hanuman Mandir",
        "image": "assets/images/rajpur_hanuman.jpg",
        "description": "Devoted to Hanuman Ji, visited by many. हनुमान जी को समर्पित, कई श्रद्धालु आते हैं।"
      },
      {
        "name": "Siwan Lake View",
        "image": "assets/images/siwan_lake.jpg",
        "description": "Beautiful lake for boating and relaxing. नौका विहार और विश्राम के लिए सुंदर झील।"
      },
      {
        "name": "Shahpur Kali Mandir",
        "image": "assets/images/shahpur_kali.jpg",
        "description": "Kali temple with vibrant festivals. जीवंत त्योहारों वाला काली मंदिर।"
      }
    ],

    "Gopalganj": [
      {
        "name": "Thawe Temple",
        "image": "assets/images/thawe_temple.jpg",
        "description": "Famous temple dedicated to Goddess Durga. देवी दुर्गा को समर्पित प्रसिद्ध मंदिर।"
      },
      {
        "name": "Thawe Bazaar",
        "image": "assets/images/thawe_bazaar.jpg",
        "description": "Traditional market known for sweets. मिठाइयों के लिए प्रसिद्ध पारंपरिक बाजार।"
      },
      {
        "name": "Sugauli Fort",
        "image": "assets/images/sugauli_fort.jpg",
        "description": "Historical fort with colonial history. औपनिवेशिक इतिहास वाला ऐतिहासिक किला।"
      },
      {
        "name": "Gopalganj Park",
        "image": "assets/images/gopalganj_park.jpg",
        "description": "Recreational park for family outings. परिवार के साथ घूमने के लिए पार्क।"
      },
      {
        "name": "Bharat Mata Mandir",
        "image": "assets/images/bharat_mata_mandir.jpg",
        "description": "Temple dedicated to Mother India. भारत माता को समर्पित मंदिर।"
      },
      {
        "name": "Hathua Rajbari",
        "image": "assets/images/hathua_rajbari.jpg",
        "description": "Royal palace showcasing heritage. धरोहर दिखाने वाला शाही महल।"
      },
      {
        "name": "Mairwa Dham",
        "image": "assets/images/mairwa_dham.jpg",
        "description": "Spiritual site attracting many pilgrims. तीर्थ यात्रियों को आकर्षित करने वाला धार्मिक स्थल।"
      },
      {
        "name": "Manjha Ghat",
        "image": "assets/images/manjha_ghat.jpg",
        "description": "Beautiful riverbank area. सुंदर नदी किनारा।"
      },
      {
        "name": "Barauli Market",
        "image": "assets/images/barauli_market.jpg",
        "description": "Local market for fresh produce. ताज़ी उपज के लिए स्थानीय बाजार।"
      },
      {
        "name": "Kuchaikote Hanuman Mandir",
        "image": "assets/images/kuchaikote_hanuman.jpg",
        "description": "Hanuman temple famous for Tuesday fairs. मंगलवार के मेले के लिए प्रसिद्ध हनुमान मंदिर।"
      },
      {
        "name": "Gopalganj Lake",
        "image": "assets/images/gopalganj_lake.jpg",
        "description": "Serene lake with boating facility. नौका विहार वाली शांत झील।"
      },
      {
        "name": "Pipra Kali Mandir",
        "image": "assets/images/pipra_kali.jpg",
        "description": "Kali temple with vibrant Navratri celebrations. नवरात्रि उत्सव के लिए प्रसिद्ध काली मंदिर।"
      },
      {
        "name": "Barauli Dargah",
        "image": "assets/images/barauli_dargah.jpg",
        "description": "Sufi shrine attracting devotees. सूफी दरगाह जो श्रद्धालुओं को आकर्षित करती है।"
      },
      {
        "name": "Madhopur Picnic Spot",
        "image": "assets/images/madhopur_picnic.jpg",
        "description": "Green park ideal for picnics. पिकनिक के लिए आदर्श हरा-भरा पार्क।"
      },
      {
        "name": "Manjha Park",
        "image": "assets/images/manjha_park.jpg",
        "description": "Public park with children play area. बच्चों के खेल क्षेत्र वाला सार्वजनिक पार्क।"
      },
      {
        "name": "Thawe Fort",
        "image": "assets/images/thawe_fort.jpg",
        "description": "Ruins of an old fort. पुराने किले के अवशेष।"
      },
      {
        "name": "Hathua Lake",
        "image": "assets/images/hathua_lake.jpg",
        "description": "Picturesque lake popular among locals. स्थानीय लोगों में लोकप्रिय सुंदर झील।"
      },
      {
        "name": "Bishunpura Temple",
        "image": "assets/images/bishunpura_temple.jpg",
        "description": "Ancient temple with annual fairs. वार्षिक मेलों वाला प्राचीन मंदिर।"
      },
      {
        "name": "Narkatiaganj Road View",
        "image": "assets/images/narkatiaganj_road.jpg",
        "description": "Scenic road surrounded by greenery. हरियाली से घिरी सुंदर सड़क।"
      },
      {
        "name": "Rajapatti Market",
        "image": "assets/images/rajapatti_market.jpg",
        "description": "Local hub for trade. व्यापार का स्थानीय केंद्र।"
      },
      {
        "name": "Barauli Hanuman Mandir",
        "image": "assets/images/barauli_hanuman.jpg",
        "description": "Hanuman temple with large gatherings. बड़ी भीड़ वाला हनुमान मंदिर।"
      },
      {
        "name": "Kuchaikote Picnic Spot",
        "image": "assets/images/kuchaikote_picnic.jpg",
        "description": "Popular picnic location for families. परिवारों के लिए लोकप्रिय पिकनिक स्थल।"
      },
      {
        "name": "Thawe Kali Mandir",
        "image": "assets/images/thawe_kali.jpg",
        "description": "Kali temple famous for spiritual vibes. आध्यात्मिक वातावरण वाला काली मंदिर।"
      },
      {
        "name": "Gopalganj Clock Tower",
        "image": "assets/images/gopalganj_clock.jpg",
        "description": "Historic clock tower in city center. शहर के केंद्र में ऐतिहासिक घड़ी टॉवर।"
      }
    ],

    "West Champaran (पश्चिम चंपारण)": [
      {
        "name": "Valmiki National Park",
        "image": "assets/images/valmiki_national_park.jpg",
        "description": "Famous tiger reserve and wildlife sanctuary with rich biodiversity. वाल्मीकि राष्ट्रीय उद्यान, बाघ अभयारण्य और जैव विविधता के लिए प्रसिद्ध।"
      },
      {
        "name": "Someshwar Fort",
        "image": "assets/images/someshwar_fort.jpg",
        "description": "Ancient fort offering scenic views of the Himalayan foothills. सोमेश्वर किला हिमालय की तलहटी के सुंदर दृश्यों के लिए प्रसिद्ध।"
      },
      {
        "name": "Lauriya Nandangarh Ashokan Pillar",
        "image": "assets/images/lauriya_pillar.jpg",
        "description": "Ashokan pillar made of polished sandstone with inscriptions. लौरिया नंदनगढ़ का अशोक स्तंभ, पॉलिश किए हुए बलुआ पत्थर से बना।"
      },
      {
        "name": "Bhitiharwa Gandhi Ashram",
        "image": "assets/images/bhitiharwa_gandhi_ashram.jpg",
        "description": "Historical place where Mahatma Gandhi started Champaran Satyagraha. भितिहरवा गांधी आश्रम, जहाँ महात्मा गांधी ने चंपारण सत्याग्रह की शुरुआत की।"
      },
      {
        "name": "Triveni Sangam",
        "image": "assets/images/triveni_sangam.jpg",
        "description": "Confluence of Gandak, Sonha, and Pashani rivers. त्रिवेणी संगम, गंडक, सोनहा और पशानी नदियों का संगम स्थल।"
      },
      {
        "name": "Harinagar Sugar Mill",
        "image": "assets/images/harinagar_sugar_mill.jpg",
        "description": "One of the oldest sugar mills in Bihar. हरिनगर शुगर मिल, बिहार की सबसे पुरानी चीनी मिलों में से एक।"
      },
      {
        "name": "Bagaha",
        "image": "assets/images/bagaha.jpg",
        "description": "A town near Valmiki Nagar with local markets and cultural heritage. बगहा, वाल्मीकिनगर के पास स्थित, स्थानीय बाजार और सांस्कृतिक धरोहर वाला कस्बा।"
      },
      {
        "name": "Manguraha Reserve Forest",
        "image": "assets/images/manguraha_forest.jpg",
        "description": "Dense forest area rich in flora and fauna. मंगुराहा रिजर्व वन, वनस्पति और जीव-जंतु से भरपूर घना जंगल।"
      },
      {
        "name": "Ramnagar Fort",
        "image": "assets/images/ramnagar_fort.jpg",
        "description": "Old fort showcasing Mughal and Rajput architecture. रामनगर किला, मुगल और राजपूत वास्तुकला का उदाहरण।"
      },
      {
        "name": "Shikarpur Forest",
        "image": "assets/images/shikarpur_forest.jpg",
        "description": "Wildlife-rich forest area ideal for trekking and nature walks. शिकरपुर वन, वन्यजीवों से भरपूर ट्रैकिंग और प्रकृति भ्रमण के लिए उपयुक्त।"
      },
      {
        "name": "Piprasi",
        "image": "assets/images/piprasi.jpg",
        "description": "Village known for fishing and river views. पिपरासी गाँव, मछली पकड़ने और नदी दृश्यों के लिए प्रसिद्ध।"
      },
      {
        "name": "Sathi Sugar Factory",
        "image": "assets/images/sathi_sugar_factory.jpg",
        "description": "Industrial heritage site of the region. साठी शुगर फैक्ट्री, क्षेत्र की औद्योगिक धरोहर।"
      },
      {
        "name": "Narkatiaganj",
        "image": "assets/images/narkatiaganj.jpg",
        "description": "Town with historical significance in Champaran Satyagraha. नरकटियागंज, चंपारण सत्याग्रह में ऐतिहासिक महत्व वाला शहर।"
      },
      {
        "name": "Thori",
        "image": "assets/images/thori.jpg",
        "description": "Border village near Nepal with scenic landscapes. थोरी, नेपाल सीमा के पास का सुंदर परिदृश्य वाला गाँव।"
      },
      {
        "name": "Sundarbans of Champaran",
        "image": "assets/images/champaran_sundarbans.jpg",
        "description": "Dense forest area locally called Sundarbans. चंपारण के सुंदरबन, घने जंगलों वाला इलाका।"
      },
      {
        "name": "Banjaraha",
        "image": "assets/images/banjaraha.jpg",
        "description": "Village with local handloom crafts. बंजराहा गाँव, स्थानीय हथकरघा कला के लिए प्रसिद्ध।"
      },
      {
        "name": "Dharampur",
        "image": "assets/images/dharampur.jpg",
        "description": "Famous for ancient temples and fairs. धर्मपुर, प्राचीन मंदिरों और मेलों के लिए प्रसिद्ध।"
      },
      {
        "name": "Singhia Dham",
        "image": "assets/images/singhia_dham.jpg",
        "description": "Sacred temple dedicated to Lord Shiva. सिंघिया धाम, भगवान शिव को समर्पित पवित्र मंदिर।"
      },
      {
        "name": "Raxaul Road",
        "image": "assets/images/raxaul_road.jpg",
        "description": "Connecting route to Nepal with busy markets. रक्सौल रोड, नेपाल को जोड़ने वाला मार्ग और व्यस्त बाजार।"
      },
      {
        "name": "Chanpatia",
        "image": "assets/images/chanpatia.jpg",
        "description": "Known for readymade garment industry. चनपटिया, रेडीमेड गारमेंट उद्योग के लिए प्रसिद्ध।"
      },
      {
        "name": "Bettiah Palace",
        "image": "assets/images/bettiah_palace.jpg",
        "description": "Historical palace of Bettiah Raj. बेतिया पैलेस, बेतिया राज का ऐतिहासिक महल।"
      },
      {
        "name": "Pipra",
        "image": "assets/images/pipra.jpg",
        "description": "Agricultural hub with scenic fields. पिपरा, सुंदर खेतों वाला कृषि क्षेत्र।"
      },
      {
        "name": "Gaunaha",
        "image": "assets/images/gaunaha.jpg",
        "description": "Village with cultural heritage and fairs. गौनाहा, सांस्कृतिक धरोहर और मेलों के लिए प्रसिद्ध।"
      },
      {
        "name": "Jogapatti",
        "image": "assets/images/jogapatti.jpg",
        "description": "Famous for local markets and handicrafts. जोगापट्टी, स्थानीय बाजार और हस्तशिल्प के लिए प्रसिद्ध।"
      },
    ],

    "East Champaran (पूर्वी चंपारण)":[
      {
        "name": "Motihari Lake",
        "image": "assets/images/motihari_lake.jpg",
        "description": "Beautiful lake in Motihari city. मोतिहारी झील, शहर का सुंदर जलाशय।"
      },
      {
        "name": "Gandhi Memorial",
        "image": "assets/images/gandhi_memorial.jpg",
        "description": "Memorial dedicated to Mahatma Gandhi. गांधी स्मारक, महात्मा गांधी को समर्पित।"
      },
      {
        "name": "Kesariya Stupa",
        "image": "assets/images/kesariya_stupa.jpg",
        "description": "World's tallest Buddhist stupa. केसरिया स्तूप, दुनिया का सबसे ऊँचा बौद्ध स्तूप।"
      },
      {
        "name": "Chiraiya",
        "image": "assets/images/chiraiya.jpg",
        "description": "Town famous for cultural activities. चिरैया, सांस्कृतिक गतिविधियों के लिए प्रसिद्ध।"
      },
      {
        "name": "Areraj Temple",
        "image": "assets/images/areraj_temple.jpg",
        "description": "Ancient temple dedicated to Lord Shiva. अरेराज मंदिर, भगवान शिव को समर्पित प्राचीन मंदिर।"
      },
      {
        "name": "Piprakothi",
        "image": "assets/images/piprakothi.jpg",
        "description": "Historical village with old forts. पिपराकोठी, प्राचीन किलों वाला ऐतिहासिक गाँव।"
      },
      {
        "name": "Mehsi",
        "image": "assets/images/mehsi.jpg",
        "description": "Known for tobacco industry. मेहसी, तंबाकू उद्योग के लिए प्रसिद्ध।"
      },
      {
        "name": "Raxaul",
        "image": "assets/images/raxaul.jpg",
        "description": "Major trade center at Nepal border. रक्सौल, नेपाल सीमा पर प्रमुख व्यापार केंद्र।"
      },
      {
        "name": "Ghorasahan",
        "image": "assets/images/ghorasahan.jpg",
        "description": "Village with rich agriculture. घोरसाहन, कृषि उत्पादन के लिए प्रसिद्ध।"
      },
      {
        "name": "Chakia",
        "image": "assets/images/chakia.jpg",
        "description": "Town with sugar mills and cultural heritage. चकिया, चीनी मिलों और सांस्कृतिक धरोहर के लिए प्रसिद्ध।"
      },
      {
        "name": "Turkaulia",
        "image": "assets/images/turkaulia.jpg",
        "description": "Known for local fairs and temples. तुरकौलिया, मेलों और मंदिरों के लिए प्रसिद्ध।"
      },
      {
        "name": "Sugauli",
        "image": "assets/images/sugauli.jpg",
        "description": "Historical place where the Treaty of Sugauli was signed. सुगौली, सुगौली संधि का ऐतिहासिक स्थल।"
      },
      {
        "name": "Harsidhi Temple",
        "image": "assets/images/harsidhi_temple.jpg",
        "description": "Temple dedicated to Goddess Durga. हरसिद्धि मंदिर, देवी दुर्गा को समर्पित।"
      },
      {
        "name": "Raxaul Bazar",
        "image": "assets/images/raxaul_bazar.jpg",
        "description": "Bustling market near Nepal border. रक्सौल बाज़ार, नेपाल सीमा के पास का व्यस्त बाजार।"
      },
      {
        "name": "Banjaria",
        "image": "assets/images/banjaria.jpg",
        "description": "Village with natural beauty. बनजारिया, प्राकृतिक सुंदरता वाला गाँव।"
      },
      {
        "name": "Sangrampur",
        "image": "assets/images/sangrampur.jpg",
        "description": "Village with cultural heritage. संग्रामपुर, सांस्कृतिक धरोहर वाला गाँव।"
      },
      {
        "name": "Phenhara",
        "image": "assets/images/phenhara.jpg",
        "description": "Town with historical temples. फेनहरा, ऐतिहासिक मंदिरों वाला कस्बा।"
      },
      {
        "name": "Motihari Museum",
        "image": "assets/images/motihari_museum.jpg",
        "description": "Museum showcasing Champaran's history. मोतिहारी संग्रहालय, चंपारण के इतिहास को दर्शाता है।"
      },
      {
        "name": "Kesariya Market",
        "image": "assets/images/kesariya_market.jpg",
        "description": "Local market famous for handicrafts. केसरिया बाजार, हस्तशिल्प के लिए प्रसिद्ध।"
      },
      {
        "name": "Shikarpur",
        "image": "assets/images/shikarpur_east.jpg",
        "description": "Village with agricultural importance. शिकरपुर, कृषि महत्व वाला गाँव।"
      },
      {
        "name": "Rajepur",
        "image": "assets/images/rajepur.jpg",
        "description": "Known for sugarcane farming. राजेपुर, गन्ने की खेती के लिए प्रसिद्ध।"
      },
      {
        "name": "Kalyanpur",
        "image": "assets/images/kalyanpur.jpg",
        "description": "Village with scenic beauty. कल्याणपुर, प्राकृतिक सुंदरता वाला गाँव।"
      },
      {
        "name": "Semra",
        "image": "assets/images/semra.jpg",
        "description": "Village with ancient cultural roots. सेमरा, प्राचीन सांस्कृतिक जड़ों वाला गाँव।"
      },
      {
        "name": "Raxaul Railway Station",
        "image": "assets/images/raxaul_station.jpg",
        "description": "Major railway hub connecting Bihar to Nepal. रक्सौल रेलवे स्टेशन, बिहार को नेपाल से जोड़ने वाला प्रमुख रेलवे केंद्र।"
      },
    ],

    "Buxar (बक्सर)":[
      {
        "name": "Buxar Fort (बक्सर किला)",
        "image": "assets/images/buxar_fort.jpg",
        "description": "An ancient fort located on the banks of the Ganga River. गंगा नदी के किनारे स्थित एक प्राचीन किला।"
      },
      {
        "name": "Brahmeshwar Nath Temple (ब्रह्मेश्वर नाथ मंदिर)",
        "image": "assets/images/brahmeshwar_nath.jpg",
        "description": "A famous Shiva temple attracting devotees year-round. एक प्रसिद्ध शिव मंदिर जो सालभर भक्तों को आकर्षित करता है।"
      },
      {
        "name": "Katkauli Ka Maidan (कटकौली का मैदान)",
        "image": "assets/images/katkauli_maidan.jpg",
        "description": "Historical battlefield of Buxar. बक्सर का ऐतिहासिक युद्ध स्थल।"
      },
      {
        "name": "Ahirauli Dham (अहिरौली धाम)",
        "image": "assets/images/ahirauli_dham.jpg",
        "description": "A spiritual site dedicated to Lord Shiva. भगवान शिव को समर्पित एक पवित्र स्थल।"
      },
      {
        "name": "Chausa (चौसा)",
        "image": "assets/images/chausa.jpg",
        "description": "Famous for the Battle of Chausa in 1539. 1539 के चौसा युद्ध के लिए प्रसिद्ध।"
      },
      {
        "name": "Dumraon Palace (दुमरांव पैलेस)",
        "image": "assets/images/dumraon_palace.jpg",
        "description": "Heritage palace of Dumraon estate. दुमरांव एस्टेट का विरासत महल।"
      },
      {
        "name": "Sita Ram Upadhyay Museum (सीताराम उपाध्याय संग्रहालय)",
        "image": "assets/images/sita_ram_upadhyay_museum.jpg",
        "description": "Museum showcasing Buxar's history. बक्सर के इतिहास को प्रदर्शित करने वाला संग्रहालय।"
      },
      {
        "name": "Kameshwar Nath Temple (कामेश्वर नाथ मंदिर)",
        "image": "assets/images/kameshwar_nath.jpg",
        "description": "Ancient temple with unique architecture. अनोखी वास्तुकला वाला प्राचीन मंदिर।"
      },
      {
        "name": "Ram Rekha Ghat (राम रेखा घाट)",
        "image": "assets/images/ram_rekha_ghat.jpg",
        "description": "Sacred ghat with mythological significance. पौराणिक महत्व वाला पवित्र घाट।"
      },
      {
        "name": "Chakkiya Hills (चकिया पहाड़ियां)",
        "image": "assets/images/chakkiya_hills.jpg",
        "description": "Beautiful hills ideal for nature lovers. प्रकृति प्रेमियों के लिए आदर्श सुंदर पहाड़ियां।"
      },
      {
        "name": "Bihariji Temple (बिहारिजी मंदिर)",
        "image": "assets/images/bihariji_temple.jpg",
        "description": "Temple dedicated to Lord Krishna. भगवान कृष्ण को समर्पित मंदिर।"
      },
      {
        "name": "Pawani Temple (पवनी मंदिर)",
        "image": "assets/images/pawani_temple.jpg",
        "description": "Known for grand Shivratri celebrations. भव्य महाशिवरात्रि समारोह के लिए प्रसिद्ध।"
      },
      {
        "name": "Mandar Hill View Point (मंदर हिल व्यू प्वाइंट)",
        "image": "assets/images/mandar_hill_view.jpg",
        "description": "Offers scenic views of the surroundings. आसपास के सुंदर नज़ारों का आनंद लेने का स्थान।"
      },
      {
        "name": "Barbarua Ghat (बरबरुआ घाट)",
        "image": "assets/images/barbarua_ghat.jpg",
        "description": "Popular riverbank picnic spot. लोकप्रिय नदी किनारे पिकनिक स्थल।"
      },
      {
        "name": "Shahpur Garh (शाहपुरगढ़)",
        "image": "assets/images/shahpur_garh.jpg",
        "description": "Historical remains of Shahpur fort. शाहपुर किले के ऐतिहासिक अवशेष।"
      },
      {
        "name": "Devanandpur Temple (देवानंदपुर मंदिर)",
        "image": "assets/images/devanandpur_temple.jpg",
        "description": "Peaceful temple area in rural Buxar. ग्रामीण बक्सर में शांत मंदिर क्षेत्र।"
      },
      {
        "name": "Vishweshwar Nath Temple (विश्वेश्वर नाथ मंदिर)",
        "image": "assets/images/vishweshwar_nath.jpg",
        "description": "A major pilgrimage for Shiva devotees. शिव भक्तों के लिए एक प्रमुख तीर्थ।"
      },
      {
        "name": "Kailash Path (कैलाश पथ)",
        "image": "assets/images/kailash_path.jpg",
        "description": "Religious route with scenic surroundings. सुंदर वातावरण वाला धार्मिक मार्ग।"
      },
      {
        "name": "Sati Mai Sthan (सती माई स्थान)",
        "image": "assets/images/sati_mai_sthan.jpg",
        "description": "Sacred site of local devotion. स्थानीय भक्ति का पवित्र स्थल।"
      },
      {
        "name": "Tara Ma Mandir (तारा मां मंदिर)",
        "image": "assets/images/tara_ma_mandir.jpg",
        "description": "Famous for Navratri celebrations. नवरात्रि समारोह के लिए प्रसिद्ध।"
      },
      {
        "name": "Rajpur Ghat (राजपुर घाट)",
        "image": "assets/images/rajpur_ghat.jpg",
        "description": "Peaceful riverbank for evening walks. शाम की सैर के लिए शांत नदी किनारा।"
      },
      {
        "name": "Bhainsasur Mandir (भैंसासुर मंदिर)",
        "image": "assets/images/bhainsasur_mandir.jpg",
        "description": "Unique temple dedicated to Bhainsasur. भैंसासुर को समर्पित अनोखा मंदिर।"
      },
      {
        "name": "Maa Kali Temple (मां काली मंदिर)",
        "image": "assets/images/maa_kali_temple.jpg",
        "description": "One of the oldest temples of the district. जिले के सबसे पुराने मंदिरों में से एक।"
      },
      {
        "name": "Nawada Masjid (नवादा मस्जिद)",
        "image": "assets/images/nawada_masjid.jpg",
        "description": "Historical mosque of Buxar. बक्सर की ऐतिहासिक मस्जिद।"
      },
    ],

    "Bhojpur (भोजपुर)": [

    {
      "name": "Ara City (आरा शहर)",
      "image": "assets/images/ara_city.jpg",
      "description": "Ara is the district headquarters, known for its historical buildings and temples. आरा जिला मुख्यालय है, जो अपने ऐतिहासिक भवनों और मंदिरों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Veer Kunwar Singh Fort (वीर कुंवर सिंह किला)",
      "image": "assets/images/veer_kunwar_singh_fort.jpg",
      "description": "Historical fort of freedom fighter Veer Kunwar Singh. स्वतंत्रता सेनानी वीर कुंवर सिंह का ऐतिहासिक किला।"
    },
    {
      "name": "Aranya Devi Temple (आरण्य देवी मंदिर)",
      "image": "assets/images/aranya_devi_temple.jpg",
      "description": "A sacred temple dedicated to Goddess Aranya Devi. देवी आरण्य देवी को समर्पित एक पवित्र मंदिर।"
    },
    {
      "name": "Jagdishpur Fort (जगदीशपुर किला)",
      "image": "assets/images/jagdishpur_fort.jpg",
      "description": "Historic site linked to the 1857 rebellion. 1857 के विद्रोह से जुड़ा ऐतिहासिक स्थल।"
    },
    {
      "name": "Chaturbhuj Sthan (चतुर्भुज स्थान)",
      "image": "assets/images/chaturbhuj_sthan.jpg",
      "description": "Ancient temple dedicated to Lord Vishnu. भगवान विष्णु को समर्पित प्राचीन मंदिर।"
    },
    {
      "name": "Sun Temple at Dev (देव का सूर्य मंदिर)",
      "image": "assets/images/sun_temple_dev.jpg",
      "description": "A beautiful temple dedicated to the Sun God. सूर्य देव को समर्पित एक सुंदर मंदिर।"
    },
    {
      "name": "Bihiya Town (बिहिया)",
      "image": "assets/images/bihiya.jpg",
      "description": "A small town known for its rural charm. अपने ग्रामीण आकर्षण के लिए प्रसिद्ध एक छोटा कस्बा।"
    },
    {
      "name": "Koilwar Bridge (कोइलवर ब्रिज)",
      "image": "assets/images/koilwar_bridge.jpg",
      "description": "Historic rail-cum-road bridge over Sone River. सोन नदी पर बना ऐतिहासिक रेल व सड़क पुल।"
    },
    {
      "name": "Sone River View (सोन नदी दृश्य)",
      "image": "assets/images/sone_river.jpg",
      "description": "Beautiful view of the Sone River. सोन नदी का सुंदर नजारा।"
    },
    {
      "name": "Pir Baba Dargah (पीर बाबा दरगाह)",
      "image": "assets/images/pir_baba_dargah.jpg",
      "description": "Famous dargah visited by people of all faiths. सभी धर्मों के लोगों द्वारा दर्शन किया जाने वाला प्रसिद्ध दरगाह।"
    },
    {
      "name": "Shahpur Market (शाहपुर बाजार)",
      "image": "assets/images/shahpur_market.jpg",
      "description": "A bustling local market. एक व्यस्त स्थानीय बाजार।"
    },
    {
      "name": "Pawana Temple (पवाना मंदिर)",
      "image": "assets/images/pawana_temple.jpg",
      "description": "Popular temple for devotees. भक्तों के लिए प्रसिद्ध मंदिर।"
    },
    {
      "name": "Karishma Park (करिश्मा पार्क)",
      "image": "assets/images/karishma_park.jpg",
      "description": "Recreational park for families. परिवारों के लिए मनोरंजन पार्क।"
    },
    {
      "name": "Sahpur Ghat (साहपुर घाट)",
      "image": "assets/images/sahpur_ghat.jpg",
      "description": "Serene riverbank spot. शांत नदी किनारे का स्थान।"
    },
    {
      "name": "Dumraon Raj Palace (दुमरांव राज महल)",
      "image": "assets/images/dumraon_palace.jpg",
      "description": "Historic palace of Dumraon rulers. दुमरांव शासकों का ऐतिहासिक महल।"
    },
    {
      "name": "Hanuman Mandir, Ara (हनुमान मंदिर, आरा)",
      "image": "assets/images/hanuman_temple_ara.jpg",
      "description": "Famous Hanuman temple in Ara city. आरा शहर का प्रसिद्ध हनुमान मंदिर।"
    },
    {
      "name": "Kochas Market (कोचस बाजार)",
      "image": "assets/images/kochas_market.jpg",
      "description": "Local market known for handicrafts. हस्तशिल्प के लिए प्रसिद्ध स्थानीय बाजार।"
    },
    {
      "name": "Nawada Pond (नवादा तालाब)",
      "image": "assets/images/nawada_pond.jpg",
      "description": "Peaceful pond area. शांत तालाब क्षेत्र।"
    },
    {
      "name": "Barhampur Fort (बरहमपुर किला)",
      "image": "assets/images/barhampur_fort.jpg",
      "description": "Ancient fort ruins. प्राचीन किले के अवशेष।"
    },
    {
      "name": "Shitala Mata Mandir (शीतला माता मंदिर)",
      "image": "assets/images/shitala_mata_mandir.jpg",
      "description": "Temple dedicated to Goddess Shitala Mata. देवी शीतला माता को समर्पित मंदिर।"
    },
    {
      "name": "Piro Town (पिरो)",
      "image": "assets/images/piro_town.jpg",
      "description": "Small town with historic relevance. ऐतिहासिक महत्व वाला छोटा कस्बा।"
    },
    {
      "name": "Gadhani Hills (गढ़नी पहाड़ियां)",
      "image": "assets/images/gadhani_hills.jpg",
      "description": "Scenic hill area. सुंदर पहाड़ी क्षेत्र।"
    },
    {
      "name": "Ekma Ghat (एकमा घाट)",
      "image": "assets/images/ekma_ghat.jpg",
      "description": "Popular riverbank site. लोकप्रिय नदी किनारा स्थल।"
    },
    {
      "name": "Bihiya Shiv Mandir (बिहिया शिव मंदिर)",
      "image": "assets/images/bihiya_shiv_mandir.jpg",
      "description": "Ancient Shiva temple in Bihiya. बिहिया का प्राचीन शिव मंदिर।"
    },
  ],
    "Aurangabad (औरंगाबाद)": [
    {
      "name": "Deo Sun Temple (देव सूर्य मंदिर)",
      "image": "assets/images/deo_sun_temple.jpg",
      "description": "Famous Hindu temple dedicated to the Sun God, known for its architectural beauty. सूर्य देव को समर्पित प्रसिद्ध हिंदू मंदिर, अपनी शानदार वास्तुकला के लिए मशहूर।"
    },
    {
      "name": "Umga Hills (उमगा पहाड़ियां)",
      "image": "assets/images/umga_hills.jpg",
      "description": "Scenic hills with ancient temples and spiritual vibes. प्राचीन मंदिरों और आध्यात्मिक माहौल वाली सुंदर पहाड़ियां।"
    },
    {
      "name": "Amjhar Sharif (अमझर शरीफ)",
      "image": "assets/images/amjhar_sharif.jpg",
      "description": "Popular Sufi shrine attracting thousands of devotees. हजारों श्रद्धालुओं को आकर्षित करने वाली प्रसिद्ध सूफी दरगाह।"
    },
    {
      "name": "Deo Kund (देव कुंड)",
      "image": "assets/images/deo_kund.jpg",
      "description": "Natural water reservoir surrounded by hills. पहाड़ियों से घिरा प्राकृतिक जलाशय।"
    },
    {
      "name": "Umga Sun Temple (उमगा सूर्य मंदिर)",
      "image": "assets/images/umga_sun_temple.jpg",
      "description": "Historic Sun Temple located in Umga. उमगा में स्थित ऐतिहासिक सूर्य मंदिर।"
    },
    {
      "name": "Pawai Waterfall (पवाई जलप्रपात)",
      "image": "assets/images/pawai_waterfall.jpg",
      "description": "Serene waterfall surrounded by lush greenery. हरी-भरी हरियाली से घिरा शांत जलप्रपात।"
    },
    {
      "name": "Aurangabad Caves (औरंगाबाद गुफाएं)",
      "image": "assets/images/aurangabad_caves.jpg",
      "description": "Ancient caves with historical importance. ऐतिहासिक महत्व वाली प्राचीन गुफाएं।"
    },
    {
      "name": "Deo Fort (देव किला)",
      "image": "assets/images/deo_fort.jpg",
      "description": "Historic fort near Deo town. देव नगर के पास स्थित ऐतिहासिक किला।"
    },
    {
      "name": "Kunda Hill (कुंडा पहाड़ी)",
      "image": "assets/images/kunda_hill.jpg",
      "description": "Famous for trekking and natural views. ट्रेकिंग और प्राकृतिक दृश्यों के लिए प्रसिद्ध।"
    },
    {
      "name": "Goh (गो)",
      "image": "assets/images/goh.jpg",
      "description": "Town with historical temples and rural charm. ऐतिहासिक मंदिरों और ग्रामीण आकर्षण वाला कस्बा।"
    },
    {
      "name": "Haspura (हसपुरा)",
      "image": "assets/images/haspura.jpg",
      "description": "Known for local markets and cultural heritage. स्थानीय बाजारों और सांस्कृतिक विरासत के लिए प्रसिद्ध।"
    },
    {
      "name": "Barun (बरुण)",
      "image": "assets/images/barun.jpg",
      "description": "Peaceful rural town. शांत और ग्रामीण कस्बा।"
    },
    {
      "name": "Rafiganj (रफीगंज)",
      "image": "assets/images/rafiganj.jpg",
      "description": "Historic town with cultural significance. ऐतिहासिक और सांस्कृतिक महत्व वाला नगर।"
    },
    {
      "name": "Devkund Waterfall (देवकुंड जलप्रपात)",
      "image": "assets/images/devkund_waterfall.jpg",
      "description": "Popular waterfall for tourists. पर्यटकों के बीच लोकप्रिय जलप्रपात।"
    },
    {
      "name": "Aurangabad Museum (औरंगाबाद संग्रहालय)",
      "image": "assets/images/aurangabad_museum.jpg",
      "description": "Showcases local history and culture. स्थानीय इतिहास और संस्कृति को दर्शाता है।"
    },
    {
      "name": "Tetri Dam (तेत्री बांध)",
      "image": "assets/images/tetri_dam.jpg",
      "description": "Dam surrounded by greenery. हरियाली से घिरा बांध।"
    },
    {
      "name": "Obra (ओबरा)",
      "image": "assets/images/obra.jpg",
      "description": "Village with peaceful atmosphere. शांत वातावरण वाला गांव।"
    },
    {
      "name": "Kishunpur (किशुनपुर)",
      "image": "assets/images/kishunpur.jpg",
      "description": "Old temples and beautiful fields. पुराने मंदिर और सुंदर खेत।"
    },
    {
      "name": "Bhadua (भदुआ)",
      "image": "assets/images/bhadua.jpg",
      "description": "Village with cultural charm. सांस्कृतिक आकर्षण वाला गांव।"
    },
    {
      "name": "Jamhore (जम्होर)",
      "image": "assets/images/jamhore.jpg",
      "description": "Famous for Jamhore temple and festivals. अपने मंदिर और त्योहारों के लिए प्रसिद्ध।"
    },
    {
      "name": "Madanshahi Hill (मदनशाही पहाड़ी)",
      "image": "assets/images/madanshahi_hill.jpg",
      "description": "Trekking spot with mesmerizing views. अद्भुत नज़ारों वाला ट्रेकिंग स्थल।"
    },
    {
      "name": "Paharpur (पहाड़पुर)",
      "image": "assets/images/paharpur.jpg",
      "description": "Village with natural beauty. प्राकृतिक सुंदरता वाला गांव।"
    },
    {
      "name": "Aurangabad City Park (औरंगाबाद सिटी पार्क)",
      "image": "assets/images/aurangabad_city_park.jpg",
      "description": "Family-friendly park. परिवार के लिए उपयुक्त पार्क।"
    },
    {
      "name": "Sujawan (सुजावन)",
      "image": "assets/images/sujawan.jpg",
      "description": "Rural location with scenic landscapes. सुंदर ग्रामीण दृश्य वाला स्थान।"
    },
    {
      "name": "Bela Village (बेला गांव)",
      "image": "assets/images/bela_village.jpg",
      "description": "Traditional village showing rural Bihar life. ग्रामीण बिहार जीवन को दर्शाता पारंपरिक गांव।"
    },
  ],
    "Banka (बांका)": [
      {
        "name": "Mandar Hill (मंदर पहाड़)",
        "image": "assets/images/mandar_hill.jpg",
        "description": "Mandar Hill is a sacred hill linked to Hindu mythology. मंदर पहाड़ हिंदू पौराणिक कथाओं से जुड़ी एक पवित्र पहाड़ी है।"
      },
      {
        "name": "Karnachaura (कर्णचौरा)",
        "image": "assets/images/karnachaura.jpg",
        "description": "Karnachaura is known for its scenic beauty and historical importance. कर्णचौरा अपनी प्राकृतिक सुंदरता और ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Chandan Dam (चंदन बांध)",
        "image": "assets/images/chandan_dam.jpg",
        "description": "Chandan Dam is a popular picnic spot surrounded by hills. चंदन बांध पहाड़ियों से घिरा एक लोकप्रिय पिकनिक स्थल है।"
      },
      {
        "name": "Shiv Mandir Bounsi (शिव मंदिर, बौंसी)",
        "image": "assets/images/shiv_mandir_bounsi.jpg",
        "description": "Ancient Shiva temple with beautiful carvings. प्राचीन शिव मंदिर जिसमें सुंदर नक्काशी है।"
      },
      {
        "name": "Patthargatha (पत्थरगाठा)",
        "image": "assets/images/patthargatha.jpg",
        "description": "Famous for unique rock formations. अनोखी चट्टानों के लिए प्रसिद्ध।"
      },
      {
        "name": "Barua Dam (बरुआ बांध)",
        "image": "assets/images/barua_dam.jpg",
        "description": "A scenic dam perfect for nature lovers. प्रकृति प्रेमियों के लिए उपयुक्त सुंदर बांध।"
      },
      {
        "name": "Shri Shyam Mandir (श्री श्याम मंदिर)",
        "image": "assets/images/shyam_mandir.jpg",
        "description": "Temple dedicated to Lord Krishna. भगवान कृष्ण को समर्पित मंदिर।"
      },
      {
        "name": "Bounsi Mela Ground (बौंसी मेला मैदान)",
        "image": "assets/images/bounsi_mela.jpg",
        "description": "Hosts the famous Bounsi Mela. प्रसिद्ध बौंसी मेले का आयोजन स्थल।"
      },
      {
        "name": "Lakshmi Narayan Mandir (लक्ष्मी नारायण मंदिर)",
        "image": "assets/images/lakshmi_narayan_mandir.jpg",
        "description": "Temple known for its peaceful environment. अपने शांत वातावरण के लिए प्रसिद्ध मंदिर।"
      },
      {
        "name": "Satsang Ashram (सत्संग आश्रम)",
        "image": "assets/images/satsang_ashram.jpg",
        "description": "Spiritual center for devotees. श्रद्धालुओं के लिए आध्यात्मिक केंद्र।"
      },
      {
        "name": "Goradih Hills (गोराडीह पहाड़ियाँ)",
        "image": "assets/images/goradih_hills.jpg",
        "description": "Hills offering trekking opportunities. ट्रेकिंग के लिए उपयुक्त पहाड़ियाँ।"
      },
      {
        "name": "Dhoraiya Temple (धोरैया मंदिर)",
        "image": "assets/images/dhoraiya_temple.jpg",
        "description": "Religious place with historical value. ऐतिहासिक महत्व वाला धार्मिक स्थल।"
      },
      {
        "name": "Sitanabad (सीतानाबाद)",
        "image": "assets/images/sitanabad.jpg",
        "description": "Associated with Goddess Sita. देवी सीता से जुड़ा स्थान।"
      },
      {
        "name": "Kundeshwari Temple (कुंडेश्वरी मंदिर)",
        "image": "assets/images/kundeshwari_temple.jpg",
        "description": "Temple famous for Mahashivratri celebrations. महाशिवरात्रि के लिए प्रसिद्ध मंदिर।"
      },
      {
        "name": "Chanan Dam (चनन बांध)",
        "image": "assets/images/chanan_dam.jpg",
        "description": "Beautiful dam with boating facilities. नौकायन सुविधा वाला सुंदर बांध।"
      },
      {
        "name": "Bishunpur Mandir (बिषुनपुर मंदिर)",
        "image": "assets/images/bishunpur_mandir.jpg",
        "description": "Ancient temple dedicated to Lord Vishnu. भगवान विष्णु को समर्पित प्राचीन मंदिर।"
      },
      {
        "name": "Rani Talab (रानी तालाब)",
        "image": "assets/images/rani_talab.jpg",
        "description": "Historic pond surrounded by greenery. हरियाली से घिरा ऐतिहासिक तालाब।"
      },
      {
        "name": "Champa Lake (चंपा झील)",
        "image": "assets/images/champa_lake.jpg",
        "description": "Lake with migratory birds in winter. सर्दियों में प्रवासी पक्षियों वाली झील।"
      },
      {
        "name": "Harihar Nath Temple (हरिहर नाथ मंदिर)",
        "image": "assets/images/harihar_nath_temple.jpg",
        "description": "Popular Shiva temple in the district. जिले का लोकप्रिय शिव मंदिर।"
      },
      {
        "name": "Banka Museum (बांका संग्रहालय)",
        "image": "assets/images/banka_museum.jpg",
        "description": "Museum showcasing local history. स्थानीय इतिहास प्रदर्शित करने वाला संग्रहालय।"
      },
      {
        "name": "Deoghar Road View Point (देवघर रोड व्यू प्वाइंट)",
        "image": "assets/images/deoghar_road.jpg",
        "description": "Scenic point offering panoramic views. विस्तृत दृश्यों वाला सुंदर स्थान।"
      },
      {
        "name": "Hanuman Mandir Banka (हनुमान मंदिर, बांका)",
        "image": "assets/images/hanuman_mandir_banka.jpg",
        "description": "Temple of Lord Hanuman. भगवान हनुमान का मंदिर।"
      },
      {
        "name": "Raja Pahar (राजा पहाड़)",
        "image": "assets/images/raja_pahar.jpg",
        "description": "Hilltop offering a majestic view. शानदार दृश्य देने वाली पहाड़ी।"
      },
      {
        "name": "Bounsi Hills (बौंसी पहाड़ियाँ)",
        "image": "assets/images/bounsi_hills.jpg",
        "description": "Ideal for hiking and nature walks. ट्रेकिंग और नेचर वॉक के लिए आदर्श।"
      }
    ],
    "Begusarai (बेगूसराय)": [
    {
      "name": "Kanwar Lake Bird Sanctuary (कांवर झील पक्षी अभयारण्य)",
      "image": "assets/images/kanwar_lake.jpg",
      "description": "Kanwar Lake is Asia's largest freshwater oxbow lake and a paradise for migratory birds. कांवर झील एशिया की सबसे बड़ी मीठे पानी की ऑक्सबो झील है और प्रवासी पक्षियों का स्वर्ग है।"
    },
    {
      "name": "Ajatshatru Fort (अजातशत्रु किला)",
      "image": "assets/images/ajatshatru_fort.jpg",
      "description": "An ancient fort built during the Magadh empire period, showcasing historic architecture. यह किला मगध साम्राज्य के समय का है और ऐतिहासिक स्थापत्य का उदाहरण है।"
    },
    {
      "name": "Kali Mandir, Barauni (काली मंदिर, बरौनी)",
      "image": "assets/images/kali_mandir_barauni.jpg",
      "description": "A famous temple dedicated to Goddess Kali, attracting devotees year-round. माता काली को समर्पित यह मंदिर पूरे साल श्रद्धालुओं को आकर्षित करता है।"
    },
    {
      "name": "Simaria Ghat (सिमरिया घाट)",
      "image": "assets/images/simaria_ghat.jpg",
      "description": "A sacred ghat on the banks of Ganga, popular for Chhath Puja celebrations. गंगा तट पर स्थित यह पवित्र घाट छठ पूजा के लिए प्रसिद्ध है।"
    },
    {
      "name": "Kali Asthan Temple, Begusarai (काली स्थान मंदिर, बेगूसराय)",
      "image": "assets/images/kali_asthan_temple.jpg",
      "description": "A centuries-old temple dedicated to Goddess Kali, with rich cultural importance. यह सैकड़ों वर्ष पुराना मंदिर माता काली को समर्पित है।"
    },
    {
      "name": "ITC Park (आईटीसी पार्क)",
      "image": "assets/images/itc_park.jpg",
      "description": "A well-maintained green park for leisure and family outings. यह एक सुंदर पार्क है जहाँ परिवार और बच्चों के लिए घूमने का अच्छा स्थान है।"
    },
    {
      "name": "Chandrawati Temple (चंद्रावती मंदिर)",
      "image": "assets/images/chandrawati_temple.jpg",
      "description": "A beautiful temple with serene surroundings, perfect for peaceful visits. यह शांत वातावरण वाला सुंदर मंदिर है।"
    },
    {
      "name": "Lohia Nagar Park (लोहिया नगर पार्क)",
      "image": "assets/images/lohia_nagar_park.jpg",
      "description": "A recreational park in Begusarai, ideal for morning walks and relaxation. यह पार्क सुबह की सैर और आराम के लिए उत्तम है।"
    },
    {
      "name": "Kabar Lake (कबर झील)",
      "image": "assets/images/kabar_lake.jpg",
      "description": "Another part of Kanwar Lake ecosystem, rich in biodiversity. कांवर झील का एक हिस्सा जो जैव विविधता से भरपूर है।"
    },
    {
      "name": "Shiv Mandir, Teghra (शिव मंदिर, तेघड़ा)",
      "image": "assets/images/shiv_mandir_teghra.jpg",
      "description": "A popular temple dedicated to Lord Shiva in Teghra town. तेघड़ा का प्रसिद्ध शिव मंदिर।"
    },
    {
      "name": "Railway Museum, Barauni (रेलवे म्यूजियम, बरौनी)",
      "image": "assets/images/railway_museum_barauni.jpg",
      "description": "A small museum displaying railway heritage of the region. यहाँ रेलवे के इतिहास की झलक देखने को मिलती है।"
    },
    {
      "name": "Barauni Refinery Township (बरौनी रिफाइनरी टाउनशिप)",
      "image": "assets/images/barauni_refinery.jpg",
      "description": "A modern industrial township developed around the refinery. रिफाइनरी के आसपास विकसित आधुनिक औद्योगिक नगर।"
    },
    {
      "name": "Panch Mandir (पंच मंदिर)",
      "image": "assets/images/panch_mandir.jpg",
      "description": "A set of five ancient temples located together, each with unique design. पाँच प्राचीन मंदिरों का समूह, प्रत्येक की अपनी खास बनावट।"
    },
    {
      "name": "Shokhara Ghat (शोखरा घाट)",
      "image": "assets/images/shokhara_ghat.jpg",
      "description": "A scenic spot on Ganga’s banks, famous for cultural events. गंगा किनारे का सुंदर स्थान जो सांस्कृतिक आयोजनों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Durga Mandir, Begusarai (दुर्गा मंदिर, बेगूसराय)",
      "image": "assets/images/durga_mandir_begusarai.jpg",
      "description": "A divine place for worship during Navratri celebrations. नवरात्रि में पूजा का प्रमुख स्थल।"
    },
    {
      "name": "Hanuman Mandir, Begusarai (हनुमान मंदिर, बेगूसराय)",
      "image": "assets/images/hanuman_mandir_begusarai.jpg",
      "description": "A sacred temple for Lord Hanuman devotees. हनुमान जी के भक्तों के लिए पवित्र स्थान।"
    },
    {
      "name": "Barauni Thermal Power Station (बरौनी थर्मल पावर स्टेशन)",
      "image": "assets/images/barauni_power_station.jpg",
      "description": "An important industrial landmark of Begusarai district. बेगूसराय का प्रमुख औद्योगिक स्थल।"
    },
    {
      "name": "Lakhminia Railway Station (लखमिनिया रेलवे स्टेशन)",
      "image": "assets/images/lakhminia_station.jpg",
      "description": "A historically significant railway station in the district. ऐतिहासिक महत्व वाला रेलवे स्टेशन।"
    },
    {
      "name": "Kundalpur Temple (कुंडलपुर मंदिर)",
      "image": "assets/images/kundalpur_temple.jpg",
      "description": "A peaceful Jain pilgrimage site. शांतिपूर्ण जैन तीर्थ स्थल।"
    },
    {
      "name": "Simaria Mela Ground (सिमरिया मेला मैदान)",
      "image": "assets/images/simaria_mela.jpg",
      "description": "Venue of famous Simaria fair during Kartik month. कार्तिक महीने में प्रसिद्ध सिमरिया मेला यहीं लगता है।"
    },
    {
      "name": "Gandhi Setu View Point (गांधी सेतु व्यू पॉइंट)",
      "image": "assets/images/gandhi_setu_view.jpg",
      "description": "A beautiful view point of the Ganga river and Gandhi Setu bridge. गंगा और गांधी सेतु का सुंदर दृश्य।"
    },
    {
      "name": "Kali Badi, Begusarai (कालीबाड़ी, बेगूसराय)",
      "image": "assets/images/kali_badi.jpg",
      "description": "A Bengali-style Kali temple in Begusarai. बंगाली शैली का काली मंदिर।"
    },
    {
      "name": "Ajgaivinath Temple (अजगैविनाथ मंदिर)",
      "image": "assets/images/ajgaivinath_temple.jpg",
      "description": "A temple dedicated to Lord Shiva, with mythological importance. भगवान शिव को समर्पित पौराणिक मंदिर।"
    },
    {
      "name": "Ganga Eco Park (गंगा इको पार्क)",
      "image": "assets/images/ganga_eco_park.jpg",
      "description": "An eco-friendly park promoting environmental awareness. पर्यावरण जागरूकता को बढ़ावा देने वाला इको-फ्रेंडली पार्क।"
    }
  ],
    "Sheikhpura (शेखपुरा)": [
      {
        "name": "Araghia Hills (अरघिया हिल्स)",
        "image": "assets/images/araghia_hills.jpg",
        "description": "A scenic hill area ideal for trekking and nature walks. यह एक खूबसूरत पहाड़ी इलाका है, जो ट्रेकिंग और नेचर वॉक के लिए आदर्श है।"
      },
      {
        "name": "Girihinda Hills (गिरिहिंदा हिल्स)",
        "image": "assets/images/girihinda_hills.jpg",
        "description": "Famous for its natural beauty and mythological significance. अपनी प्राकृतिक सुंदरता और पौराणिक महत्व के लिए प्रसिद्ध।"
      },
      {
        "name": "Sheikhpura Fort (शेखपुरा किला)",
        "image": "assets/images/sheikhpura_fort.jpg",
        "description": "A historical fort showcasing ancient architecture. एक ऐतिहासिक किला जो प्राचीन स्थापत्य कला का नमूना है।"
      },
      {
        "name": "Pawapuri Jal Mandir (पावापुरी जल मंदिर)",
        "image": "assets/images/pawapuri_jal_mandir.jpg",
        "description": "A sacred Jain temple surrounded by a lake. एक पवित्र जैन मंदिर जो झील से घिरा है।"
      },
      {
        "name": "Sikandra Mahadev Temple (सिकंदरा महादेव मंदिर)",
        "image": "assets/images/sikandra_mahadev.jpg",
        "description": "Dedicated to Lord Shiva and visited by thousands of devotees. भगवान शिव को समर्पित मंदिर, जहां हजारों भक्त आते हैं।"
      },
      {
        "name": "Barbigha Market (बरबिघा बाजार)",
        "image": "assets/images/barbigha_market.jpg",
        "description": "Famous for local handicrafts and traditional goods. स्थानीय हस्तशिल्प और पारंपरिक वस्तुओं के लिए प्रसिद्ध।"
      },
      {
        "name": "Chewara Hills (चेवाड़ा हिल्स)",
        "image": "assets/images/chewara_hills.jpg",
        "description": "A serene hilly location for relaxation. एक शांत पहाड़ी इलाका, विश्राम के लिए उत्तम।"
      },
      {
        "name": "Sheikhpura Mosque (शेखपुरा मस्जिद)",
        "image": "assets/images/sheikhpura_mosque.jpg",
        "description": "An ancient mosque representing Mughal architecture. एक प्राचीन मस्जिद जो मुगल वास्तुकला का प्रतीक है।"
      },
      {
        "name": "Asthawan Hot Spring (अस्थावन गर्म झरना)",
        "image": "assets/images/asthawan_hot_spring.jpg",
        "description": "Natural hot water spring with medicinal value. प्राकृतिक गर्म पानी का झरना, औषधीय गुणों से भरपूर।"
      },
      {
        "name": "Karhariya Dham (करहरिया धाम)",
        "image": "assets/images/karhariya_dham.jpg",
        "description": "A sacred temple complex surrounded by greenery. हरे-भरे वातावरण से घिरा एक पवित्र मंदिर परिसर।"
      },
      {
        "name": "Bhadariya Hills (भदरिया हिल्स)",
        "image": "assets/images/bhadariya_hills.jpg",
        "description": "Popular among trekkers for scenic views. सुंदर नज़ारों के लिए ट्रेकर्स के बीच लोकप्रिय।"
      },
      {
        "name": "Bhim Bandh Waterfall (भीम बंध झरना)",
        "image": "assets/images/bhim_bandh_waterfall.jpg",
        "description": "A natural waterfall perfect for picnic trips. पिकनिक यात्राओं के लिए उपयुक्त प्राकृतिक झरना।"
      },
      {
        "name": "Lohanda Dham (लोखंडा धाम)",
        "image": "assets/images/lohanda_dham.jpg",
        "description": "A revered temple attracting devotees year-round. साल भर श्रद्धालुओं को आकर्षित करने वाला पूजनीय मंदिर।"
      },
      {
        "name": "Sarva Mangla Devi Temple (सर्वमंगला देवी मंदिर)",
        "image": "assets/images/sarva_mangla_temple.jpg",
        "description": "Dedicated to Goddess Durga, a major pilgrimage spot. देवी दुर्गा को समर्पित एक प्रमुख तीर्थ स्थल।"
      },
      {
        "name": "Kundal Kund (कुंडल कुंड)",
        "image": "assets/images/kundal_kund.jpg",
        "description": "A holy water body with religious importance. धार्मिक महत्व वाला पवित्र जलाशय।"
      },
      {
        "name": "Tetarhat Dam (टेटरहाट डैम)",
        "image": "assets/images/tetarhat_dam.jpg",
        "description": "A peaceful dam site perfect for evening walks. शाम की सैर के लिए उपयुक्त शांत डैम स्थल।"
      },
      {
        "name": "Sheikhpura Lake (शेखपुरा झील)",
        "image": "assets/images/sheikhpura_lake.jpg",
        "description": "Beautiful lake ideal for boating and relaxation. नौकायन और विश्राम के लिए आदर्श सुंदर झील।"
      },
      {
        "name": "Sheikhpura Jain Mandir (शेखपुरा जैन मंदिर)",
        "image": "assets/images/sheikhpura_jain_mandir.jpg",
        "description": "A beautiful Jain temple with peaceful surroundings. शांत वातावरण में स्थित सुंदर जैन मंदिर।"
      },
      {
        "name": "Sheikhpura Stadium (शेखपुरा स्टेडियम)",
        "image": "assets/images/sheikhpura_stadium.jpg",
        "description": "Sports ground hosting various local events. विभिन्न स्थानीय आयोजनों का खेल मैदान।"
      },
      {
        "name": "Sheikhpura Park (शेखपुरा पार्क)",
        "image": "assets/images/sheikhpura_park.jpg",
        "description": "Green park perfect for morning walks. सुबह की सैर के लिए उपयुक्त हरा-भरा पार्क।"
      },
      {
        "name": "Rajendra Chowk (राजेंद्र चौक)",
        "image": "assets/images/rajendra_chowk.jpg",
        "description": "Main city square with vibrant local life. जीवंत स्थानीय जीवन से भरपूर मुख्य चौक।"
      },
      {
        "name": "Mahadev Sthan (महादेव स्थान)",
        "image": "assets/images/mahadev_sthan.jpg",
        "description": "Popular Shiva temple in the district. जिले का प्रसिद्ध शिव मंदिर।"
      }
    ],
    "Lakhisarai (लखीसराय)": [
      {
        "name": "Ashok Dham Temple (अशोक धाम मंदिर)",
        "image": "assets/images/ashok_dham.jpg",
        "description": "Ashok Dham Temple is a famous Shiva temple attracting thousands of devotees. अशोक धाम मंदिर एक प्रसिद्ध शिव मंदिर है, जहां हजारों भक्त आते हैं।"
      },
      {
        "name": "Surajgarha (सूरजगढ़ा)",
        "image": "assets/images/surajgarha.jpg",
        "description": "Surajgarha is known for its ancient temples and cultural heritage. सूरजगढ़ा अपने प्राचीन मंदिरों और सांस्कृतिक विरासत के लिए जाना जाता है।"
      },
      {
        "name": "Kashi Nath Temple (काशी नाथ मंदिर)",
        "image": "assets/images/kashi_nath.jpg",
        "description": "Kashi Nath Temple is a holy place dedicated to Lord Shiva. काशी नाथ मंदिर भगवान शिव को समर्पित एक पवित्र स्थान है।"
      },
      {
        "name": "Indrapuri Barrage (इंद्रपुरी बैराज)",
        "image": "assets/images/indrapuri_barrage.jpg",
        "description": "Indrapuri Barrage offers scenic views and is a great picnic spot. इंद्रपुरी बैराज सुंदर दृश्य और पिकनिक के लिए बेहतरीन स्थान है।"
      },
      {
        "name": "Shankh River Bank (शंख नदी तट)",
        "image": "assets/images/shankh_river.jpg",
        "description": "The Shankh River bank is peaceful and ideal for nature walks. शंख नदी का तट शांत है और प्रकृति भ्रमण के लिए उपयुक्त है।"
      },
      {
        "name": "Rajgir Hills View Point (राजगीर हिल्स व्यू प्वाइंट)",
        "image": "assets/images/rajgir_hills_view.jpg",
        "description": "Rajgir Hills View Point offers breathtaking panoramic views. राजगीर हिल्स व्यू प्वाइंट अद्भुत प्राकृतिक नज़ारे प्रस्तुत करता है।"
      },
      {
        "name": "Mandar Hill Nearby (मंदर पर्वत के पास)",
        "image": "assets/images/mandar_hill_nearby.jpg",
        "description": "Mandar Hill nearby areas are rich in history and mythology. मंदर पर्वत के आसपास के क्षेत्र इतिहास और पौराणिक कथाओं से भरे हैं।"
      },
      {
        "name": "Lakhisarai Fort Ruins (लखीसराय किला अवशेष)",
        "image": "assets/images/lakhisarai_fort.jpg",
        "description": "The ruins of Lakhisarai Fort tell stories of ancient rulers. लखीसराय किले के अवशेष प्राचीन शासकों की कहानियां बताते हैं।"
      },
      {
        "name": "Mauni Baba Ashram (मौनी बाबा आश्रम)",
        "image": "assets/images/mauni_baba.jpg",
        "description": "Mauni Baba Ashram is a serene spiritual retreat. मौनी बाबा आश्रम एक शांत आध्यात्मिक स्थान है।"
      },
      {
        "name": "Durga Mandir (दुर्गा मंदिर)",
        "image": "assets/images/durga_mandir.jpg",
        "description": "Durga Mandir is a sacred temple for devotees of Goddess Durga. दुर्गा मंदिर मां दुर्गा के भक्तों के लिए एक पवित्र स्थान है।"
      },
      {
        "name": "Pahari Baba Temple (पहाड़ी बाबा मंदिर)",
        "image": "assets/images/pahari_baba.jpg",
        "description": "Pahari Baba Temple is situated atop a hill offering scenic beauty. पहाड़ी बाबा मंदिर पहाड़ी पर स्थित है और सुंदर दृश्य प्रदान करता है।"
      },
      {
        "name": "Kali Mandir (काली मंदिर)",
        "image": "assets/images/kali_mandir.jpg",
        "description": "Kali Mandir is dedicated to Goddess Kali and attracts many visitors. काली मंदिर देवी काली को समर्पित है और कई लोगों को आकर्षित करता है।"
      },
      {
        "name": "Baba Garibnath Temple (बाबा गरीबनाथ मंदिर)",
        "image": "assets/images/baba_garibnath.jpg",
        "description": "Baba Garibnath Temple is known for its divine atmosphere. बाबा गरीबनाथ मंदिर अपने दिव्य वातावरण के लिए जाना जाता है।"
      },
      {
        "name": "Ganga Ghat Lakhisarai (गंगा घाट लखीसराय)",
        "image": "assets/images/ganga_ghat.jpg",
        "description": "Ganga Ghat is a peaceful riverside location. गंगा घाट एक शांत नदी किनारे का स्थान है।"
      },
      {
        "name": "Bajrang Bali Mandir (बजरंग बली मंदिर)",
        "image": "assets/images/bajrang_bali.jpg",
        "description": "This temple is devoted to Lord Hanuman. यह मंदिर भगवान हनुमान को समर्पित है।"
      },
      {
        "name": "Panchmukhi Hanuman Mandir (पंचमुखी हनुमान मंदिर)",
        "image": "assets/images/panchmukhi_hanuman.jpg",
        "description": "The temple has a unique idol of Panchmukhi Hanuman. मंदिर में पंचमुखी हनुमान की अनोखी प्रतिमा है।"
      },
      {
        "name": "Shiv Sagar Pond (शिव सागर तालाब)",
        "image": "assets/images/shiv_sagar.jpg",
        "description": "A historical pond known for its serene environment. एक ऐतिहासिक तालाब जो अपनी शांति के लिए प्रसिद्ध है।"
      },
      {
        "name": "Lal Kothi (लाल कोठी)",
        "image": "assets/images/lal_kothi.jpg",
        "description": "Lal Kothi is a colonial-era building of historical importance. लाल कोठी एक औपनिवेशिक युग की ऐतिहासिक इमारत है।"
      },
      {
        "name": "Rajendra Park (राजेंद्र पार्क)",
        "image": "assets/images/rajendra_park.jpg",
        "description": "Rajendra Park is a public garden with greenery and open space. राजेंद्र पार्क एक हरा-भरा सार्वजनिक उद्यान है।"
      },
      {
        "name": "Sita Kund (सीता कुंड)",
        "image": "assets/images/sita_kund.jpg",
        "description": "Sita Kund is a mythologically important pond. सीता कुंड एक पौराणिक महत्व का तालाब है।"
      },
      {
        "name": "Barahi Temple (बराही मंदिर)",
        "image": "assets/images/barahi_temple.jpg",
        "description": "Barahi Temple is an ancient shrine with rich heritage. बराही मंदिर एक प्राचीन तीर्थस्थल है।"
      },
      {
        "name": "Nawada Hills View (नवादा हिल्स व्यू)",
        "image": "assets/images/nawada_hills_view.jpg",
        "description": "This spot offers panoramic hill views. यह स्थान पहाड़ों का विहंगम दृश्य प्रस्तुत करता है।"
      },
      {
        "name": "Chandipur Ghat (चांदिपुर घाट)",
        "image": "assets/images/chandipur_ghat.jpg",
        "description": "Chandipur Ghat is a peaceful riverside picnic place. चांदिपुर घाट एक शांत नदी किनारे का पिकनिक स्थल है।"
      },
      {
        "name": "Sun Temple Surajpur (सूर्य मंदिर सूरजपुर)",
        "image": "assets/images/sun_temple_surajpur.jpg",
        "description": "A famous temple dedicated to the Sun God. सूर्य देव को समर्पित एक प्रसिद्ध मंदिर।"
      }
    ],
    "Rohtas (रोहतास)": [
    {
      "name": "Rohtasgarh Fort (रोहतासगढ़ किला)",
      "image": "assets/images/rohtasgarh_fort.jpg",
      "description": "Rohtasgarh Fort is a historical hill fort built in the 7th century. It is surrounded by natural defenses and contains temples, palaces, and reservoirs. The fort reflects ancient Indian architecture and stories of valor. रोहतासगढ़ किला एक ऐतिहासिक दुर्ग है जो 7वीं शताब्दी में बनवाया गया था। यह किला पहाड़ी पर स्थित है और चारों ओर प्राकृतिक सुरक्षा से घिरा है। यहाँ के मंदिर, महल और जलाशय देखने लायक हैं।"
    },
    {
      "name": "Tutiya Waterfall (टूटिया जलप्रपात)",
      "image": "assets/images/tutiya_waterfall.jpg",
      "description": "Tutiya Waterfall is one of the beautiful natural spots in Rohtas. The waterfall flows year-round and looks even more magnificent during the monsoon. The serene surroundings and greenery enhance its charm. टूटिया जलप्रपात रोहतास जिले के सुंदर प्राकृतिक स्थलों में से एक है। यहाँ का पानी वर्षभर बहता है और बारिश के मौसम में इसकी खूबसूरती बढ़ जाती है।"
    },
    {
      "name": "Shergarh Fort (शेरगढ़ किला)",
      "image": "assets/images/shergarh_fort.jpg",
      "description": "Shergarh Fort is an important fort from the Mughal period, known for its architecture and historical significance. The panoramic views from the fort are breathtaking. शेरगढ़ किला मुगल काल का एक महत्वपूर्ण दुर्ग है। यह किला अपनी वास्तुकला और ऐतिहासिक महत्व के लिए जाना जाता है।"
    },
    {
      "name": "Dharkhor Waterfall (धारखोर जलप्रपात)",
      "image": "assets/images/dharkhor_waterfall.jpg",
      "description": "Dharkhor Waterfall is a peaceful spot hidden in the dense forests of Rohtas. The cool water and natural beauty make it a perfect place for picnics and trekking. धारखोर जलप्रपात रोहतास के घने जंगलों में स्थित एक शांत स्थल है। यहाँ का ठंडा पानी और प्राकृतिक सौंदर्य मन को प्रसन्न करता है।"
    },
    {
      "name": "Kaimur Hills (कैमूर पहाड़ियाँ)",
      "image": "assets/images/kaimur_hills.jpg",
      "description": "Kaimur Hills are famous for their natural beauty and wildlife. The forests here are home to rare flora and fauna, offering both adventure and tranquility. कैमूर पहाड़ियाँ प्राकृतिक सौंदर्य और वन्य जीवन के लिए प्रसिद्ध हैं।"
    },
    {
      "name": "Manjhar Kund (मंझर कुंड)",
      "image": "assets/images/manjhar_kund.jpg",
      "description": "Manjhar Kund is a historic water reservoir built to meet the fort's water needs in ancient times. The water remains cool and clean throughout the year. मंझर कुंड एक ऐतिहासिक जलस्रोत है, जिसे प्राचीन समय में किले की पानी की जरूरतों के लिए बनाया गया था।"
    },
    {
      "name": "Deo Markandeya Temple (देव मार्कंडेय मंदिर)",
      "image": "assets/images/dev_markandeya_temple.jpg",
      "description": "Deo Markandeya Temple is a famous religious site known for its ancient architecture and mythological significance. Thousands of devotees visit here annually. देव मार्कंडेय मंदिर एक प्रसिद्ध धार्मिक स्थल है, जो प्राचीन शिल्पकला और पौराणिक महत्व के लिए जाना जाता है।"
    },
    {
      "name": "Indrapuri Barrage (इंद्रपुरी बैराज)",
      "image": "assets/images/indrapuri_barrage.jpg",
      "description": "Indrapuri Barrage is a massive dam built on the Son River, crucial for hydroelectric power generation and irrigation. The view of the river from here is spectacular. इंद्रपुरी बैराज सोन नदी पर बना एक विशाल बांध है। यह जलविद्युत उत्पादन और सिंचाई के लिए महत्वपूर्ण है।"
    },
    {
      "name": "Telhar Kund (टेल्हार कुंड)",
      "image": "assets/images/telhar_kund.jpg",
      "description": "Telhar Kund is a natural waterfall that becomes most beautiful during the monsoon. The water collects in a lake, creating a stunning view. टेल्हार कुंड एक प्राकृतिक झरना है जो बारिश के मौसम में अपनी पूरी खूबसूरती पर होता है।"
    },
    {
      "name": "Rohtas Wildlife Sanctuary (रोहतास वन्यजीव अभयारण्य)",
      "image": "assets/images/rohtas_wildlife_sanctuary.jpg",
      "description": "Rohtas Wildlife Sanctuary is home to various species of animals and birds. The natural surroundings and safari experiences attract many tourists. रोहतास वन्यजीव अभयारण्य विभिन्न प्रकार के जानवरों और पक्षियों का घर है।"
    },
    {
      "name": "Suryanath Temple (सूर्यनाथ मंदिर)",
      "image": "assets/images/suryanath_temple.jpg",
      "description": "A historic temple dedicated to Sun God with beautiful carvings. सूर्यनाथ मंदिर सूर्य देव को समर्पित एक प्राचीन मंदिर है।"
    },
    {
      "name": "Kailash Kund (कैलाश कुंड)",
      "image": "assets/images/kailash_kund.jpg",
      "description": "A sacred pond surrounded by hills, ideal for meditation. कैलाश कुंड पहाड़ियों से घिरे एक पवित्र तालाब है।"
    },
    {
      "name": "Barakar River View (बराकर नदी दृश्य)",
      "image": "assets/images/barakar_river.jpg",
      "description": "A scenic riverbank perfect for picnics. बराकर नदी का सुंदर किनारा पिकनिक के लिए उत्तम है।"
    },
    {
      "name": "Chandani Hills (चांदनी पहाड़ियाँ)",
      "image": "assets/images/chandani_hills.jpg",
      "description": "Hills offering panoramic sunset views. चांदनी पहाड़ियाँ सूर्यास्त का शानदार दृश्य प्रस्तुत करती हैं।"
    },
    {
      "name": "Madanpur Fort (मदनपुर किला)",
      "image": "assets/images/madanpur_fort.jpg",
      "description": "Ruins of an ancient fort showcasing local history. मदनपुर किला स्थानीय इतिहास का प्रदर्शन करता है।"
    },
    {
      "name": "Sita Kund (सीता कुंड)",
      "image": "assets/images/sita_kund_rohtas.jpg",
      "description": "A mythological pond associated with Sita. सीता कुंड एक पौराणिक तालाब है।"
    },
    {
      "name": "Hanuman Garhi (हनुमान गढ़ी)",
      "image": "assets/images/hanuman_garhi.jpg",
      "description": "Famous Hanuman temple on a hilltop. हनुमान गढ़ी पहाड़ी पर स्थित प्रसिद्ध हनुमान मंदिर है।"
    },
    {
      "name": "Kothi Bazar (कोठी बाजार)",
      "image": "assets/images/kothi_bazar.jpg",
      "description": "A bustling local market known for handicrafts. कोठी बाजार हस्तशिल्प के लिए प्रसिद्ध है।"
    },
    {
      "name": "Mandar Hills View (मंदर पहाड़ी दृश्य)",
      "image": "assets/images/mandar_hills_view.jpg",
      "description": "Scenic view from Mandar Hills. मंदर पहाड़ियों से सुंदर दृश्य दिखाई देता है।"
    },
    {
      "name": "Dumri Lake (डुमरी झील)",
      "image": "assets/images/dumri_lake.jpg",
      "description": "A serene lake perfect for boating. डुमरी झील शांत और नौकायन के लिए उत्तम है।"
    },
    {
      "name": "Baba Garib Nath Temple (बाबा गरीब नाथ मंदिर)",
      "image": "assets/images/baba_garib_nath_rohtas.jpg",
      "description": "Popular temple with divine ambiance. बाबा गरीब नाथ मंदिर दिव्य वातावरण के लिए प्रसिद्ध है।"
    },
    {
      "name": "Chhoti Basti View Point (छोटी बस्ती व्यू प्वाइंट)",
      "image": "assets/images/chhoti_basti_view.jpg",
      "description": "A viewpoint overlooking a small settlement. छोटी बस्ती व्यू प्वाइंट छोटे गाँव का दृश्य प्रस्तुत करता है।"
    },
    {
      "name": "Patna Pahad (पटना पहाड़)",
      "image": "assets/images/patna_pahad.jpg",
      "description": "Hill area ideal for trekking and photography. पटना पहाड़ ट्रैकिंग और फोटोग्राफी के लिए आदर्श है।"
    },
    {
      "name": "Sankat Mochan Mandir (संकट मोचन मंदिर)",
      "image": "assets/images/sankat_mochan_rohtas.jpg",
      "description": "Famous Hanuman temple visited by devotees. संकट मोचन मंदिर हनुमान भक्तों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Rajdari Waterfall (राजदारी जलप्रपात)",
      "image": "assets/images/rajdari_waterfall.jpg",
      "description": "Picturesque waterfall amidst hills. राजदारी जलप्रपात पहाड़ियों के बीच सुंदर झरना है।"
    },
  ],
    "Kaimur (कैमूर)": [
    {
      "name": "Kaimur Wildlife Sanctuary (कैमूर वन्यजीव अभयारण्य)",
      "image": "assets/images/kaimur_wildlife.jpg",
      "description": "A sanctuary home to tigers, leopards, and various birds. Ideal for wildlife enthusiasts. कैमूर वन्यजीव अभयारण्य बाघ, तेंदुए और विभिन्न पक्षियों का घर है। प्रकृति प्रेमियों के लिए आदर्श।"
    },
    {
      "name": "Karkat Waterfall (कर्कट जलप्रपात)",
      "image": "assets/images/karkat_waterfall.jpg",
      "description": "A beautiful waterfall in dense forests, perfect for nature walks. कर्कट जलप्रपात घने जंगलों में स्थित सुंदर झरना है।"
    },
    {
      "name": "Telhar Waterfall (टेल्हार जलप्रपात)",
      "image": "assets/images/telhar_waterfall_kaimur.jpg",
      "description": "Famous waterfall in Kaimur hills, picturesque during monsoon. कैमूर पहाड़ियों में प्रसिद्ध झरना, मानसून में और सुंदर दिखता है।"
    },
    {
      "name": "Rohtasgarh Fort View (रोहतासगढ़ किला दृश्य)",
      "image": "assets/images/rohtasgarh_view.jpg",
      "description": "Scenic view of historic Rohtasgarh Fort from Kaimur hills. कैमूर पहाड़ियों से ऐतिहासिक रोहतासगढ़ किला का दृश्य।"
    },
    {
      "name": "Manda Hills (मांडा पहाड़ियाँ)",
      "image": "assets/images/manda_hills.jpg",
      "description": "Hilly region with panoramic views and trekking opportunities. पहाड़ी क्षेत्र जिसमें अद्भुत दृश्य और ट्रेकिंग के अवसर हैं।"
    },
    {
      "name": "Dhua Kund (धुआ कुंड)",
      "image": "assets/images/dhua_kund.jpg",
      "description": "A small but scenic waterfall, surrounded by rocks and greenery. छोटा लेकिन सुंदर झरना, चट्टानों और हरियाली से घिरा हुआ।"
    },
    {
      "name": "Kaimur Caves (कैमूर गुफाएँ)",
      "image": "assets/images/kaimur_caves.jpg",
      "description": "Ancient caves with historical and religious significance. प्राचीन गुफाएँ जिनका ऐतिहासिक और धार्मिक महत्व है।"
    },
    {
      "name": "Chandraprabha Wildlife Area (चंद्रप्रभा वन क्षेत्र)",
      "image": "assets/images/chandraprabha_wildlife.jpg",
      "description": "A protected forest area with waterfalls and wildlife. संरक्षित वन क्षेत्र जिसमें झरने और वन्यजीव पाए जाते हैं।"
    },
    {
      "name": "Bihar School of Yoga, Kaimur (बिहार योग स्कूल, कैमूर)",
      "image": "assets/images/kaimur_yoga.jpg",
      "description": "Famous yoga center attracting visitors for wellness programs. प्रसिद्ध योग केंद्र जो स्वास्थ्य कार्यक्रमों के लिए आकर्षित करता है।"
    },
    {
      "name": "Swarna Rekha River View (स्वर्णा रेखा नदी दृश्य)",
      "image": "assets/images/swarna_rekha.jpg",
      "description": "Scenic riverside ideal for picnics and photography. सुंदर नदी किनारा, पिकनिक और फोटोग्राफी के लिए आदर्श।"
    },
    {
      "name": "Telhar Kund Viewpoint (टेल्हार कुंड व्यू प्वाइंट)",
      "image": "assets/images/telhar_viewpoint.jpg",
      "description": "A viewpoint overlooking Telhar Waterfall and forests. टेल्हार जलप्रपात और जंगलों का दृश्य देखने का स्थल।"
    },
    {
      "name": "Kaimur Fort Ruins (कैमूर किला अवशेष)",
      "image": "assets/images/kaimur_fort.jpg",
      "description": "Ancient fort ruins with historical significance. प्राचीन किले के अवशेष जिनका ऐतिहासिक महत्व है।"
    },
    {
      "name": "Markandeya Temple (मार्कंडेय मंदिर)",
      "image": "assets/images/markandeya_temple.jpg",
      "description": "Historic temple visited by devotees for blessings. ऐतिहासिक मंदिर जहाँ भक्त आशीर्वाद लेने आते हैं।"
    },
    {
      "name": "Gaurav Hill Trek (गौरव हिल ट्रेक)",
      "image": "assets/images/gaurav_hill.jpg",
      "description": "Popular trekking destination with scenic views. प्रसिद्ध ट्रेकिंग स्थल जिसमें सुंदर दृश्य दिखाई देते हैं।"
    },
    {
      "name": "Bhandaria Waterfall (भंडरिया जलप्रपात)",
      "image": "assets/images/bhandaria_waterfall.jpg",
      "description": "A tranquil waterfall surrounded by lush greenery. हरियाली से घिरा शांत झरना।"
    },
    {
      "name": "Rohtas Dam View (रोहतास डैम दृश्य)",
      "image": "assets/images/rohtas_dam.jpg",
      "description": "Scenic view of the dam and surrounding hills. बांध और आसपास की पहाड़ियों का दृश्य।"
    },
    {
      "name": "Kaimur Trekking Routes (कैमूर ट्रेकिंग मार्ग)",
      "image": "assets/images/kaimur_trek.jpg",
      "description": "Various trekking trails for adventure enthusiasts. साहसिक गतिविधियों के लिए विभिन्न ट्रेकिंग मार्ग।"
    },
    {
      "name": "Manjhar Kund View (मंझर कुंड दृश्य)",
      "image": "assets/images/manjhar_kund.jpg",
      "description": "A peaceful pond surrounded by hills and trees. पहाड़ियों और पेड़ों से घिरा शांत तालाब।"
    },
    {
      "name": "Chandraprabha Falls (चंद्रप्रभा जलप्रपात)",
      "image": "assets/images/chandraprabha_falls.jpg",
      "description": "Beautiful waterfall in Chandraprabha Wildlife Sanctuary. चंद्रप्रभा वन्यजीव अभयारण्य में सुंदर झरना।"
    },
    {
      "name": "Baba Garib Nath Temple (बाबा गरीब नाथ मंदिर)",
      "image": "assets/images/baba_garib_nath_kaimur.jpg",
      "description": "Popular hilltop temple attracting devotees. प्रसिद्ध पहाड़ी मंदिर जो भक्तों को आकर्षित करता है।"
    },
    {
      "name": "Patna Pahad View (पटना पहाड़ दृश्य)",
      "image": "assets/images/patna_pahad_kaimur.jpg",
      "description": "Scenic hill view perfect for photography. फोटोग्राफी के लिए सुंदर पहाड़ी दृश्य।"
    },
    {
      "name": "Sunset Point Kaimur (सूर्यास्त स्थल कैमूर)",
      "image": "assets/images/kaimur_sunset.jpg",
      "description": "Ideal place to enjoy sunset over hills and forests. पहाड़ियों और जंगलों पर सूर्यास्त का आनंद लेने का आदर्श स्थान।"
    },
    {
      "name": "Mandar Hills Ancient Sites (मंदर पहाड़ी प्राचीन स्थल)",
      "image": "assets/images/mandar_ancient.jpg",
      "description": "Historical sites with temples and ancient ruins. मंदिरों और प्राचीन अवशेषों के साथ ऐतिहासिक स्थल।"
    },
    {
      "name": "Chhoti Basti Village (छोटी बस्ती गाँव)",
      "image": "assets/images/chhoti_basti_kaimur.jpg",
      "description": "A small village known for traditional culture and scenic surroundings. पारंपरिक संस्कृति और सुंदर वातावरण के लिए प्रसिद्ध छोटा गाँव।"
    }
  ],
    "Jamui (जमुई)": [
    {
      "name": "Simultala Hill (सिमुलतला हिल)",
      "image": "assets/images/simultala_hill.jpg",
      "description": "A scenic hill area perfect for trekking and nature lovers. सिमुलतला हिल ट्रैकिंग और प्रकृति प्रेमियों के लिए आदर्श है।"
    },
    {
      "name": "Giddheswar Temple (गिद्धेश्वर मंदिर)",
      "image": "assets/images/giddheswar_temple.jpg",
      "description": "Ancient Shiva temple attracting devotees. प्राचीन शिव मंदिर जो भक्तों को आकर्षित करता है।"
    },
    {
      "name": "Naulakha Palace (नौलखा पैलेस)",
      "image": "assets/images/naulakha_palace.jpg",
      "description": "Historic palace showcasing Jamui’s royal heritage. जमीउई की शाही विरासत को प्रदर्शित करने वाला ऐतिहासिक महल।"
    },
    {
      "name": "Khaira Dam (खैरा डैम)",
      "image": "assets/images/khaira_dam.jpg",
      "description": "A beautiful dam ideal for picnics and sightseeing. खैरा डैम पिकनिक और दर्शनीय स्थलों के लिए सुंदर जगह है।"
    },
    {
      "name": "Simultala Waterfalls (सिमुलतला जलप्रपात)",
      "image": "assets/images/simultala_waterfalls.jpg",
      "description": "A picturesque waterfall amidst greenery. हरी-भरी जगह के बीच सुंदर जलप्रपात।"
    },
    {
      "name": "Bhimbandh Wildlife Sanctuary (भीमबन्ध वन्यजीव अभयारण्य)",
      "image": "assets/images/bhimbandh_wildlife.jpg",
      "description": "Wildlife sanctuary with rich flora and fauna. विविध वनस्पति और जीव-जंतुओं से भरपूर वन्यजीव अभयारण्य।"
    },
    {
      "name": "Shiv Mandir Jamui (शिव मंदिर जमीउई)",
      "image": "assets/images/shiv_mandir_jamui.jpg",
      "description": "Popular local Shiva temple. स्थानीय प्रसिद्ध शिव मंदिर।"
    },
    {
      "name": "Laxminarayan Mandir (लक्ष्मीनारायण मंदिर)",
      "image": "assets/images/laxminarayan_mandir.jpg",
      "description": "Temple dedicated to Lord Vishnu and Goddess Lakshmi. भगवान विष्णु और देवी लक्ष्मी को समर्पित मंदिर।"
    },
    {
      "name": "Sasaram Hills View (सासाराम हिल्स व्यू)",
      "image": "assets/images/sasaram_hills_view.jpg",
      "description": "Scenic hill view near Jamui. जमीउई के पास सुंदर पहाड़ी दृश्य।"
    },
    {
      "name": "Chandrapura Village (चंद्रपुरा गांव)",
      "image": "assets/images/chandrapura_village.jpg",
      "description": "A village known for its cultural heritage. सांस्कृतिक विरासत के लिए प्रसिद्ध गांव।"
    },
    {
      "name": "Jamui Fort (जमीउई किला)",
      "image": "assets/images/jamui_fort.jpg",
      "description": "Historic fort with old architectural style. प्राचीन वास्तुकला वाले ऐतिहासिक किले।"
    },
    {
      "name": "Nagi Dam (नगी डैम)",
      "image": "assets/images/nagi_dam.jpg",
      "description": "Peaceful dam surrounded by greenery. हरी-भरी जगह के बीच शांत डैम।"
    },
    {
      "name": "Banas River View (बनास नदी दृश्य)",
      "image": "assets/images/banas_river.jpg",
      "description": "Beautiful riverside view ideal for relaxation. आराम करने के लिए सुंदर नदी का दृश्य।"
    },
    {
      "name": "Kali Mandir Jamui (काली मंदिर जमीउई)",
      "image": "assets/images/kali_mandir_jamui.jpg",
      "description": "Ancient temple dedicated to Goddess Kali. देवी काली को समर्पित प्राचीन मंदिर।"
    },
    {
      "name": "Shahpur Ghat (शाहपुर घाट)",
      "image": "assets/images/shahpur_ghat.jpg",
      "description": "Popular riverbank spot for evening visits. शाम के समय जाने के लिए लोकप्रिय नदी किनारा।"
    },
    {
      "name": "Sundarpahari Hills (सुंदरपहरी हिल्स)",
      "image": "assets/images/sundarpahari_hills.jpg",
      "description": "Scenic hills ideal for trekking and photography. ट्रैकिंग और फोटोग्राफी के लिए आदर्श सुंदर पहाड़ियां।"
    },
    {
      "name": "Jamui Market (जमीउई बाजार)",
      "image": "assets/images/jamui_market.jpg",
      "description": "Local market known for handicrafts and food. हस्तशिल्प और खाने के लिए प्रसिद्ध स्थानीय बाजार।"
    },
    {
      "name": "Ramgarh Temple (रामगढ़ मंदिर)",
      "image": "assets/images/ramgarh_temple.jpg",
      "description": "Temple with historical and religious significance. ऐतिहासिक और धार्मिक महत्व वाला मंदिर।"
    },
    {
      "name": "Makarhat Hill (मकरहट हिल)",
      "image": "assets/images/makarhat_hill.jpg",
      "description": "Small hill with panoramic views. विहंगम दृश्य वाले छोटे पहाड़।"
    },
    {
      "name": "Sundarpahari Waterfall (सुंदरपहरी जलप्रपात)",
      "image": "assets/images/sundarpahari_waterfall.jpg",
      "description": "Waterfall amidst lush greenery. हरी-भरी जगह में जलप्रपात।"
    },
    {
      "name": "Bhagwanpur Village (भगवानपुर गांव)",
      "image": "assets/images/bhagwanpur_village.jpg",
      "description": "Village famous for traditional festivals. पारंपरिक त्योहारों के लिए प्रसिद्ध गांव।"
    },
    {
      "name": "Naugachia Temple (नौगछिया मंदिर)",
      "image": "assets/images/naugachia_temple.jpg",
      "description": "Ancient temple visited by locals and tourists. स्थानीय लोग और पर्यटक यहां दर्शन करते हैं।"
    },
    {
      "name": "Haridwar Ghat (हरिद्वार घाट)",
      "image": "assets/images/haridwar_ghat.jpg",
      "description": "Peaceful ghat along the river. नदी किनारे शांत घाट।"
    },
    {
      "name": "Jamui Eco Park (जमीउई इको पार्क)",
      "image": "assets/images/jamui_eco_park.jpg",
      "description": "Park with natural beauty and recreation facilities. प्राकृतिक सौंदर्य और मनोरंजन सुविधाओं वाला पार्क।"
    },
    {
      "name": "Chandeshwar Mandir (चंदेश्वर मंदिर)",
      "image": "assets/images/chandeshwar_mandir.jpg",
      "description": "Temple with ancient architecture and religious importance. प्राचीन वास्तुकला और धार्मिक महत्व वाला मंदिर।"
    },
  ],

    "Saran (सारण)":[
    {
      "name": "Chirand (चिरांद)",
      "image": "assets/images/chirand.jpg",
      "description": "Chirand is an archaeological site showing traces of ancient civilization. "
          "चिरांद एक पुरातात्विक स्थल है जो प्राचीन सभ्यता के अवशेष दिखाता है।"
    },
    {
      "name": "Aami Temple (आमी मंदिर)",
      "image": "assets/images/aami_temple.jpg",
      "description": "Aami Temple is dedicated to Goddess Durga. "
          "आमी मंदिर माँ दुर्गा को समर्पित है।"
    },
    {
      "name": "Sonepur Fair (सोनेपुर मेला)",
      "image": "assets/images/sonepur_fair.jpg",
      "description": "Asia’s largest cattle fair held every year at Sonepur. "
          "एशिया का सबसे बड़ा पशु मेला हर साल सोनपुर में लगता है।"
    },
    {
      "name": "Ganga River Bank (गंगा नदी किनारा)",
      "image": "assets/images/ganga_saran.jpg",
      "description": "A peaceful river bank with spiritual significance. "
          "आध्यात्मिक महत्व वाला शांत नदी किनारा।"
    },
    {
      "name": "Aami Village (आमी गाँव)",
      "image": "assets/images/aami_village.jpg",
      "description": "Aami Village is known for its spiritual aura and temples. "
          "आमी गाँव अपने धार्मिक वातावरण और मंदिरों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Panapara Temple (पनापारा मंदिर)",
      "image": "assets/images/panapara_temple.jpg",
      "description": "Ancient temple dedicated to Lord Shiva. "
          "भगवान शिव को समर्पित प्राचीन मंदिर।"
    },
    {
      "name": "Sonepur Shiva Temple (सोनेपुर शिव मंदिर)",
      "image": "assets/images/sonepur_shiva.jpg",
      "description": "A famous Shiva temple near Sonepur fair ground. "
          "सोनेपुर मेले के पास स्थित प्रसिद्ध शिव मंदिर।"
    },
    {
      "name": "Gadaniya Math (गड़निया मठ)",
      "image": "assets/images/gadaniya_math.jpg",
      "description": "Important matha for saints and devotees. "
          "संतों और भक्तों का प्रमुख मठ।"
    },
    {
      "name": "Dhorh Ashram (धोढ़ आश्रम)",
      "image": "assets/images/dhorh_ashram.jpg",
      "description": "Spiritual ashram visited by saints and devotees. "
          "संतों और भक्तों द्वारा देखा जाने वाला आध्यात्मिक आश्रम।"
    },
    {
      "name": "Saran Fort Ruins (सारण किला खंडहर)",
      "image": "assets/images/saran_fort.jpg",
      "description": "Remains of historical fort in Saran. "
          "सारण का ऐतिहासिक किला खंडहर।"
    },
    {
      "name": "Hajipur Bridge View (हाजीपुर पुल दृश्य)",
      "image": "assets/images/hajipur_bridge.jpg",
      "description": "Beautiful view of river and bridge near Saran. "
          "सारण के पास नदी और पुल का सुंदर दृश्य।"
    },
    {
      "name": "Mehandar Dham (मेहंदर धाम)",
      "image": "assets/images/mehandar_dham.jpg",
      "description": "Religious site dedicated to Lord Shiva. "
          "भगवान शिव को समर्पित धार्मिक स्थल।"
    },
    {
      "name": "Panapur Hills (पनापुर पहाड़ियाँ)",
      "image": "assets/images/panapur_hills.jpg",
      "description": "Beautiful natural hills in Saran. "
          "सारण की सुंदर प्राकृतिक पहाड़ियाँ।"
    },
    {
      "name": "Bhatwaliya Mandir (भटवलिया मंदिर)",
      "image": "assets/images/bhatwaliya_temple.jpg",
      "description": "Famous temple visited during festivals. "
          "त्योहारों के दौरान प्रसिद्ध मंदिर।"
    },
    {
      "name": "Chapra City Park (छपरा सिटी पार्क)",
      "image": "assets/images/chapra_park.jpg",
      "description": "Main park for relaxation and recreation. "
          "आराम और मनोरंजन के लिए मुख्य पार्क।"
    },
    {
      "name": "Sonepur Kali Mandir (सोनेपुर काली मंदिर)",
      "image": "assets/images/sonepur_kali.jpg",
      "description": "Temple of Goddess Kali in Sonepur. "
          "सोनेपुर का काली माँ मंदिर।"
    },
    {
      "name": "Garkha Shiva Temple (गरखा शिव मंदिर)",
      "image": "assets/images/garkha_shiva.jpg",
      "description": "Famous Shiva temple in Garkha area. "
          "गरखा का प्रसिद्ध शिव मंदिर।"
    },
    {
      "name": "Sitalpur Ghat (सीतलपुर घाट)",
      "image": "assets/images/sitalpur_ghat.jpg",
      "description": "Peaceful ghat on river Ganga. "
          "गंगा नदी पर शांत घाट।"
    },
    {
      "name": "Chhapra Clock Tower (छपरा घड़ी टावर)",
      "image": "assets/images/chapra_tower.jpg",
      "description": "Heritage clock tower in Chhapra city. "
          "छपरा शहर का धरोहर घड़ी टावर।"
    },
    {
      "name": "Sonepur Hanuman Mandir (सोनेपुर हनुमान मंदिर)",
      "image": "assets/images/sonepur_hanuman.jpg",
      "description": "Dedicated to Lord Hanuman, attracts many devotees. "
          "भगवान हनुमान को समर्पित मंदिर।"
    },
    {
      "name": "Garkha Kali Temple (गरखा काली मंदिर)",
      "image": "assets/images/garkha_kali.jpg",
      "description": "Famous Kali temple in Saran. "
          "सारण का प्रसिद्ध काली मंदिर।"
    },
    {
      "name": "Rajendra Stadium (राजेंद्र स्टेडियम)",
      "image": "assets/images/rajendra_stadium.jpg",
      "description": "Sports ground and stadium of Chhapra. "
          "छपरा का खेल मैदान और स्टेडियम।"
    },
    {
      "name": "Panapur Temple Complex (पनापुर मंदिर परिसर)",
      "image": "assets/images/panapur_complex.jpg",
      "description": "A temple complex with multiple shrines. "
          "कई मंदिरों वाला परिसर।"
    },
    {
      "name": "Sonepur Ghat (सोनेपुर घाट)",
      "image": "assets/images/sonepur_ghat.jpg",
      "description": "Famous ghat on Ganga in Sonepur. "
          "सोनेपुर का गंगा घाट।"
    },
  ],


    "Vaishali (वैशाली)": [
    {
      "name": "Vaishali Stupa (वैशाली स्तूप)",
      "image": "assets/images/vaishali_stupa.jpg",
      "description": "Ancient Buddhist stupa marking Lord Buddha’s teachings. "
          "भगवान बुद्ध की शिक्षाओं का प्रतीक प्राचीन स्तूप।"
    },
    {
      "name": "Ashokan Pillar (अशोक स्तंभ)",
      "image": "assets/images/ashokan_pillar.jpg",
      "description": "Erected by Emperor Ashoka as a mark of peace. "
          "सम्राट अशोक द्वारा शांति के प्रतीक के रूप में स्थापित।"
    },
    {
      "name": "Vishwa Shanti Stupa (विश्व शांति स्तूप)",
      "image": "assets/images/vishwa_shanti.jpg",
      "description": "Symbol of world peace in Vaishali. "
          "वैशाली में विश्व शांति का प्रतीक।"
    },
    {
      "name": "Abhishek Pushkarini (अभिषेक पुष्करणी)",
      "image": "assets/images/abhishek_pond.jpg",
      "description": "Coronation tank for ancient kings. "
          "प्राचीन राजाओं का अभिषेक कुंड।"
    },
    {
      "name": "Relic Stupa (अवशेष स्तूप)",
      "image": "assets/images/relic_stupa.jpg",
      "description": "Holds relics of Buddha. "
          "बुद्ध के अवशेषों वाला स्तूप।"
    },
    {
      "name": "Kutagarasala Vihara (कुटागारशाला विहार)",
      "image": "assets/images/kutagarasala.jpg",
      "description": "Monastery where Buddha often stayed. "
          "विहार जहाँ बुद्ध अक्सर ठहरते थे।"
    },
    {
      "name": "Raja Vishal ka Garh (राजा विशाल का गढ़)",
      "image": "assets/images/raja_vishal.jpg",
      "description": "Ruins of fort of King Vishal. "
          "राजा विशाल का प्राचीन किला।"
    },
    {
      "name": "Mahadeva Temple (महादेव मंदिर)",
      "image": "assets/images/mahadeva_temple.jpg",
      "description": "Dedicated to Lord Shiva. "
          "भगवान शिव को समर्पित।"
    },
    {
      "name": "Ramchaura Mandir (रामचौरा मंदिर)",
      "image": "assets/images/ramchaura_mandir.jpg",
      "description": "Dedicated to Lord Rama. "
          "भगवान राम को समर्पित।"
    },
    {
      "name": "Bawan Pokhar Temple (बावन पोखर मंदिर)",
      "image": "assets/images/bawan_pokhar.jpg",
      "description": "Ancient temple surrounded by water tank. "
          "तालाब से घिरा प्राचीन मंदिर।"
    },
    {
      "name": "Vaishali Museum (वैशाली संग्रहालय)",
      "image": "assets/images/vaishali_museum.jpg",
      "description": "Museum displaying artifacts of ancient Vaishali. "
          "प्राचीन वैशाली की वस्तुओं का संग्रहालय।"
    },
    {
      "name": "Shanti Stupa Gardens (शांति स्तूप उद्यान)",
      "image": "assets/images/stupa_gardens.jpg",
      "description": "Peaceful garden near stupa. "
          "स्तूप के पास शांत उद्यान।"
    },
    {
      "name": "Gandhak Ki Kuan (गंधक की कुआँ)",
      "image": "assets/images/gandhak_kuan.jpg",
      "description": "Sacred well with healing properties. "
          "औषधीय महत्व वाला पवित्र कुआँ।"
    },
    {
      "name": "Jain Mandir (जैन मंदिर)",
      "image": "assets/images/jain_mandir.jpg",
      "description": "Important Jain pilgrimage center. "
          "प्रमुख जैन तीर्थ स्थल।"
    },
    {
      "name": "Ananda Stupa (आनंद स्तूप)",
      "image": "assets/images/ananda_stupa.jpg",
      "description": "Associated with Buddha’s disciple Ananda. "
          "बुद्ध के शिष्य आनंद से जुड़ा स्तूप।"
    },
    {
      "name": "Relic Casket Site (अवशेष कलश स्थल)",
      "image": "assets/images/relic_casket.jpg",
      "description": "Archaeological site with relic caskets. "
          "अवशेष कलशों का स्थल।"
    },
    {
      "name": "Buddha Relic Temple (बुद्ध अवशेष मंदिर)",
      "image": "assets/images/buddha_relic.jpg",
      "description": "Temple preserving Buddha relics. "
          "बुद्ध अवशेषों को सुरक्षित रखने वाला मंदिर।"
    },
    {
      "name": "Vaishali Lake (वैशाली झील)",
      "image": "assets/images/vaishali_lake.jpg",
      "description": "Beautiful natural lake in Vaishali. "
          "वैशाली की सुंदर झील।"
    },
    {
      "name": "Amrapali Udyan (आम्रपाली उद्यान)",
      "image": "assets/images/amrapali.jpg",
      "description": "Garden related to Amrapali, the famous courtesan. "
          "प्रसिद्ध आम्रपाली से जुड़ा उद्यान।"
    },
    {
      "name": "Lichchhavi Stupa (लिच्छवि स्तूप)",
      "image": "assets/images/lichchhavi_stupa.jpg",
      "description": "Symbol of ancient Lichchhavi republic. "
          "प्राचीन लिच्छवि गणराज्य का प्रतीक।"
    },
    {
      "name": "Ghosrawan Ruins (घोस्रावन खंडहर)",
      "image": "assets/images/ghosrawan.jpg",
      "description": "Archaeological ruins of Buddhist structures. "
          "बौद्ध संरचनाओं के अवशेष।"
    },
    {
      "name": "Kundalpur (कुंडलपुर)",
      "image": "assets/images/kundalpur.jpg",
      "description": "Associated with Mahavira’s birthplace. "
          "महावीर के जन्मस्थान से जुड़ा।"
    },
    {
      "name": "Nandangarh Stupa (नंदनगढ़ स्तूप)",
      "image": "assets/images/nandangarh.jpg",
      "description": "Important Buddhist site in Vaishali. "
          "वैशाली का महत्वपूर्ण बौद्ध स्थल।"
    },
    {
      "name": "Relics Mound (अवशेष टीला)",
      "image": "assets/images/relics_mound.jpg",
      "description": "Mound believed to contain Buddha relics. "
          "बुद्ध अवशेषों वाला टीला।"
    },
    {
      "name": "Ashokan Edicts Site (अशोक शिलालेख स्थल)",
      "image": "assets/images/ashoka_edict.jpg",
      "description": "Site containing edicts of Ashoka. "
          "अशोक के शिलालेख वाला स्थल।"
    },
  ],

    "Jehanabad (जहानाबाद)": [
    {
      "name": "Barabar Caves (बराबर गुफाएँ)",
      "image": "assets/images/barabar_caves.jpg",
      "description":
      "Barabar Caves are ancient rock-cut caves associated with the Mauryan Empire. "
          "बराबर गुफाएँ मौर्य साम्राज्य से जुड़ी प्राचीन शिलाखंड गुफाएँ हैं।"
    },
    {
      "name": "Kauva Dol Hill (कौवा डोल पहाड़ी)",
      "image": "assets/images/kauva_dol.jpg",
      "description":
      "Kauva Dol is a historical hill known for ancient ruins and scenic beauty. "
          "कौवा डोल पहाड़ी अपने प्राचीन खंडहरों और प्राकृतिक सौंदर्य के लिए प्रसिद्ध है।"
    },
    {
      "name": "Barabar Hills (बराबर पहाड़ियाँ)",
      "image": "assets/images/barabar_hills.jpg",
      "description":
      "Barabar Hills offer trekking opportunities and ancient Buddhist significance. "
          "बराबर पहाड़ियाँ ट्रैकिंग और बौद्ध महत्व के लिए प्रसिद्ध हैं।"
    },
    {
      "name": "Siddheshwar Nath Temple (सिद्धेश्वर नाथ मंदिर)",
      "image": "assets/images/siddheshwar_temple.jpg",
      "description":
      "A famous Shiva temple attracting pilgrims, especially in Shravan month. "
          "सिद्धेश्वर नाथ मंदिर सावन महीने में श्रद्धालुओं के आकर्षण का केंद्र है।"
    },
    {
      "name": "Giddha Hill (गिद्धा पहाड़ी)",
      "image": "assets/images/giddha_hill.jpg",
      "description":
      "Giddha Hill is a scenic hill spot with local legends. "
          "गिद्धा पहाड़ी अपने स्थानीय किंवदंतियों और सौंदर्य के लिए जानी जाती है।"
    },
    {
      "name": "Anant Palace (अनंत पैलेस)",
      "image": "assets/images/anant_palace.jpg",
      "description":
      "Historical palace showcasing local heritage and culture. "
          "अनंत पैलेस स्थानीय धरोहर और संस्कृति को प्रदर्शित करता है।"
    },
    {
      "name": "Barabar Jain Caves (बराबर जैन गुफाएँ)",
      "image": "assets/images/jain_caves.jpg",
      "description":
      "These caves reflect ancient Jain history and meditation practices. "
          "बराबर जैन गुफाएँ प्राचीन जैन इतिहास और साधना का केंद्र रही हैं।"
    },
    {
      "name": "Dauli Ghat (दौली घाट)",
      "image": "assets/images/dauli_ghat.jpg",
      "description":
      "Beautiful riverside ghat used for local fairs and festivals. "
          "दौली घाट स्थानीय मेलों और त्योहारों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Buddha Stupa Jehanabad (बुद्ध स्तूप, जहानाबाद)",
      "image": "assets/images/buddha_stupa.jpg",
      "description":
      "Stupa built to honor Lord Buddha's teachings. "
          "यह स्तूप भगवान बुद्ध की शिक्षाओं की स्मृति में बना है।"
    },
    {
      "name": "Kako Fort (काको किला)",
      "image": "assets/images/kako_fort.jpg",
      "description":
      "Ancient fort in Kako region known for medieval heritage. "
          "काको किला अपने मध्यकालीन इतिहास के लिए प्रसिद्ध है।"
    },
    {
      "name": "Lomas Rishi Cave (लोमस ऋषि गुफा)",
      "image": "assets/images/lomas_rishi.jpg",
      "description":
      "One of the oldest rock-cut caves in India. "
          "लोमस ऋषि गुफा भारत की सबसे प्राचीन शिलाखंड गुफाओं में से एक है।"
    },
    {
      "name": "Sita Kund (सीता कुंड)",
      "image": "assets/images/sita_kund.jpg",
      "description":
      "Sacred site linked to the Ramayana where Sita is believed to have bathed. "
          "सीता कुंड रामायण से जुड़ा पवित्र स्थल है जहाँ सीता जी ने स्नान किया था।"
    },
    {
      "name": "Barabar Ashokan Inscriptions (अशोक शिलालेख, बराबर)",
      "image": "assets/images/ashoka_inscription.jpg",
      "description":
      "Ashokan inscriptions carved on rock reflecting Mauryan history. "
          "अशोक शिलालेख मौर्य इतिहास की गवाही देते हैं।"
    },
    {
      "name": "Phulwari Mandir (फुलवारी मंदिर)",
      "image": "assets/images/phulwari_mandir.jpg",
      "description":
      "A famous temple with vibrant festivals and rituals. "
          "फुलवारी मंदिर अपने जीवंत त्योहारों और अनुष्ठानों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Madhushrava Waterfall (मधुश्रवा जलप्रपात)",
      "image": "assets/images/madhushrava.jpg",
      "description":
      "A natural waterfall surrounded by lush greenery. "
          "मधुश्रवा जलप्रपात प्राकृतिक हरियाली से घिरा एक सुंदर झरना है।"
    },
    {
      "name": "Hanuman Mandir Jehanabad (हनुमान मंदिर, जहानाबाद)",
      "image": "assets/images/hanuman_mandir.jpg",
      "description":
      "Famous Hanuman temple visited by thousands of devotees. "
          "हनुमान मंदिर जहानाबाद के प्रमुख धार्मिक स्थलों में से एक है।"
    },
    {
      "name": "Tikari Fort (टिकारी किला)",
      "image": "assets/images/tikari_fort.jpg",
      "description":
      "Historic fort built during medieval times. "
          "टिकारी किला मध्यकालीन काल का ऐतिहासिक किला है।"
    },
    {
      "name": "Kachhua Talab (कछुआ तालाब)",
      "image": "assets/images/kachhua_talab.jpg",
      "description":
      "A serene pond shaped like a turtle. "
          "कछुआ तालाब कछुए के आकार का शांत सरोवर है।"
    },
    {
      "name": "Durga Mandir Kako (दुर्गा मंदिर, काको)",
      "image": "assets/images/durga_kako.jpg",
      "description":
      "Important temple for Goddess Durga worship. "
          "काको का दुर्गा मंदिर देवी उपासना के लिए महत्वपूर्ण स्थल है।"
    },
    {
      "name": "Ghoshi Hills (घोषी पहाड़ियाँ)",
      "image": "assets/images/ghoshi_hills.jpg",
      "description":
      "Scenic hills popular for trekking and picnics. "
          "घोषी पहाड़ियाँ पिकनिक और ट्रैकिंग के लिए प्रसिद्ध हैं।"
    },
    {
      "name": "Parvati Sthan (पार्वती स्थान)",
      "image": "assets/images/parvati_sthan.jpg",
      "description":
      "A temple dedicated to Goddess Parvati. "
          "पार्वती स्थान माँ पार्वती को समर्पित एक प्राचीन मंदिर है।"
    },
    {
      "name": "Chandralok Mandir (चंद्रलोक मंदिर)",
      "image": "assets/images/chandralok_mandir.jpg",
      "description":
      "Beautiful temple with intricate architecture. "
          "चंद्रलोक मंदिर अपनी सुंदर वास्तुकला के लिए जाना जाता है।"
    },
    {
      "name": "Baba Dham Mandir (बाबा धाम मंदिर)",
      "image": "assets/images/baba_dham.jpg",
      "description":
      "Local temple attracting devotees in large numbers. "
          "बाबा धाम मंदिर बड़ी संख्या में श्रद्धालुओं को आकर्षित करता है।"
    },
    {
      "name": "Surya Mandir (सूर्य मंदिर)",
      "image": "assets/images/surya_mandir.jpg",
      "description":
      "Dedicated to the Sun God, visited during Chhath Puja. "
          "सूर्य मंदिर छठ पूजा के दौरान प्रमुख आकर्षण का केंद्र होता है।"
    },
  ],


    "Nawada (नवादा)":  [
    {
      "name": "Kakolat Waterfall (काकोलेट जलप्रपात)",
      "image": "assets/images/kakolat.jpg",
      "description":
      "Kakolat Waterfall is one of the most beautiful waterfalls of Bihar, popular for picnics and natural beauty. "
          "काकोलेट जलप्रपात बिहार का सबसे खूबसूरत जलप्रपातों में से एक है, जो पिकनिक और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
    },
    {
      "name": "Indrasal Cave (इंद्रसाल गुफा)",
      "image": "assets/images/indrasal_cave.jpg",
      "description":
      "Indrasal Cave is associated with Lord Buddha, where he is believed to have stayed during meditation. "
          "इंद्रसाल गुफा भगवान बुद्ध से जुड़ी है, जहाँ वे ध्यान के दौरान रहे थे।"
    },
    {
      "name": "Surya Narayan Mandir (सूर्य नारायण मंदिर)",
      "image": "assets/images/surya_mandir.jpg",
      "description":
      "This ancient Sun Temple attracts devotees, especially during Chhath Puja. "
          "यह प्राचीन सूर्य मंदिर विशेषकर छठ पूजा के समय श्रद्धालुओं को आकर्षित करता है।"
    },
    {
      "name": "Hanuman Mandir Nawada (हनुमान मंदिर, नवादा)",
      "image": "assets/images/hanuman_nawada.jpg",
      "description":
      "A famous Hanuman temple of Nawada city visited by thousands of devotees. "
          "नवादा शहर का प्रसिद्ध हनुमान मंदिर जहाँ हजारों श्रद्धालु दर्शन करने आते हैं।"
    },
    {
      "name": "Kakolat Hill (काकोलेट पहाड़ी)",
      "image": "assets/images/kakolat_hill.jpg",
      "description":
      "Kakolat Hill is a popular trekking spot offering scenic views of nature. "
          "काकोलेट पहाड़ी एक प्रसिद्ध ट्रेकिंग स्थल है जहाँ से सुंदर प्राकृतिक दृश्य दिखते हैं।"
    },
    {
      "name": "Sarvodaya Ashram (सर्वोदय आश्रम)",
      "image": "assets/images/sarvodaya_ashram.jpg",
      "description":
      "Sarvodaya Ashram is associated with the Gandhian movement and social reforms. "
          "सर्वोदय आश्रम गांधीवादी आंदोलन और सामाजिक सुधारों से जुड़ा हुआ है।"
    },
    {
      "name": "Sheikhodeora Ashram (शेखोडोरा आश्रम)",
      "image": "assets/images/sheikhodeora.jpg",
      "description":
      "This ashram is known for spiritual activities and peaceful surroundings. "
          "यह आश्रम आध्यात्मिक गतिविधियों और शांत वातावरण के लिए प्रसिद्ध है।"
    },
    {
      "name": "Sitamarhi Cave (सीतामढ़ी गुफा)",
      "image": "assets/images/sitamarhi_cave.jpg",
      "description":
      "Sitamarhi Cave is a historical site believed to be linked with Goddess Sita. "
          "सीतामढ़ी गुफा एक ऐतिहासिक स्थल है, जिसे माता सीता से जुड़ा माना जाता है।"
    },
    {
      "name": "Kakolat Picnic Spot (काकोलेट पिकनिक स्पॉट)",
      "image": "assets/images/kakolat_picnic.jpg",
      "description":
      "A famous picnic spot for families and tourists near Kakolat Falls. "
          "काकोलेट जलप्रपात के पास एक प्रसिद्ध पिकनिक स्थल।"
    },
    {
      "name": "Nawada Museum (नवादा संग्रहालय)",
      "image": "assets/images/nawada_museum.jpg",
      "description":
      "Nawada Museum showcases artifacts, coins, and history of the region. "
          "नवादा संग्रहालय क्षेत्र के सिक्कों, कलाकृतियों और इतिहास को प्रदर्शित करता है।"
    },
    {
      "name": "Kakolat Forest (काकोलेट वन)",
      "image": "assets/images/kakolat_forest.jpg",
      "description":
      "The forest around Kakolat is rich in biodiversity and natural beauty. "
          "काकोलेट का जंगल जैव विविधता और प्राकृतिक सुंदरता से भरपूर है।"
    },
    {
      "name": "Durga Mandir (दुर्गा मंदिर)",
      "image": "assets/images/durga_temple.jpg",
      "description":
      "A sacred temple of Goddess Durga in Nawada, visited by devotees during Navratri. "
          "नवादा का प्रसिद्ध दुर्गा मंदिर, जहाँ नवरात्रि में भक्तों की भीड़ लगती है।"
    },
    {
      "name": "Rajgir Hills Nearby (राजगीर की पहाड़ियाँ - समीप)",
      "image": "assets/images/rajgir_hills.jpg",
      "description":
      "Rajgir Hills near Nawada offer scenic beauty and Buddhist heritage sites. "
          "नवादा के समीप राजगीर की पहाड़ियाँ प्राकृतिक सौंदर्य और बौद्ध धरोहरों के लिए प्रसिद्ध हैं।"
    },
    {
      "name": "Jain Mandir (जैन मंदिर)",
      "image": "assets/images/jain_temple.jpg",
      "description":
      "An old Jain temple visited by the Jain community and tourists. "
          "एक प्राचीन जैन मंदिर जहाँ जैन समुदाय और पर्यटक आते हैं।"
    },
    {
      "name": "Mahadeva Sthan (महादेवा स्थान)",
      "image": "assets/images/mahadeva_sthan.jpg",
      "description":
      "A famous Shiva temple of Nawada district with great religious importance. "
          "नवादा जिले का प्रसिद्ध शिव मंदिर जिसका धार्मिक महत्व है।"
    },
    {
      "name": "Pawapuri Jal Mandir Nearby (पावापुरी जल मंदिर - समीप)",
      "image": "assets/images/pawapuri.jpg",
      "description":
      "Though in Nalanda, Pawapuri Jal Mandir is also a nearby pilgrimage site for Nawada visitors. "
          "पावापुरी जल मंदिर, हालाँकि नालंदा में है, लेकिन नवादा आने वालों के लिए समीपस्थ तीर्थ है।"
    },
    {
      "name": "Siddheshwar Nath Temple (सिद्धेश्वर नाथ मंदिर)",
      "image": "assets/images/siddheshwar.jpg",
      "description":
      "This temple of Lord Shiva is known for its religious aura and local fairs. "
          "भगवान शिव का यह मंदिर धार्मिक महत्व और मेलों के लिए जाना जाता है।"
    },
    {
      "name": "Chhandwe Dam (छंदवे डैम)",
      "image": "assets/images/chhandwe_dam.jpg",
      "description":
      "Chhandwe Dam is a peaceful spot for outings and enjoying natural beauty. "
          "छंदवे डैम प्राकृतिक सौंदर्य और घूमने-फिरने के लिए एक शांत जगह है।"
    },
    {
      "name": "Baidyanath Dham Route Nearby (बैद्यनाथ धाम मार्ग - समीप)",
      "image": "assets/images/baidyanath_route.jpg",
      "description":
      "Nawada is also a route for pilgrims traveling to Baidyanath Dham, Jharkhand. "
          "नवादा बैद्यनाथ धाम (झारखंड) जाने वाले यात्रियों का एक मार्ग भी है।"
    },
    {
      "name": "Historical Ruins (ऐतिहासिक खंडहर)",
      "image": "assets/images/ruins.jpg",
      "description":
      "Nawada district also has small ruins from ancient and medieval periods. "
          "नवादा जिले में प्राचीन और मध्यकालीन काल के अवशेष भी पाए जाते हैं।"
    },
    {
      "name": "Ganesh Mandir (गणेश मंदिर)",
      "image": "assets/images/ganesh_temple.jpg",
      "description":
      "A famous Ganesh Temple of Nawada attracting local devotees. "
          "नवादा का प्रसिद्ध गणेश मंदिर जहाँ स्थानीय श्रद्धालु आते हैं।"
    },
    {
      "name": "Eco Park Nawada (इको पार्क नवादा)",
      "image": "assets/images/eco_park.jpg",
      "description":
      "Eco Park in Nawada is a family-friendly place with greenery and relaxation spots. "
          "नवादा का इको पार्क परिवारों के लिए घूमने और विश्राम का अच्छा स्थान है।"
    },
    {
      "name": "Local Markets (स्थानीय बाजार)",
      "image": "assets/images/nawada_market.jpg",
      "description":
      "Nawada's local markets are known for traditional items and handicrafts. "
          "नवादा के स्थानीय बाजार पारंपरिक वस्तुओं और हस्तशिल्प के लिए प्रसिद्ध हैं।"
    },
    {
      "name": "Cultural Festivals (सांस्कृतिक उत्सव)",
      "image": "assets/images/festival.jpg",
      "description":
      "Nawada is also known for its cultural fairs and festivals. "
          "नवादा अपने सांस्कृतिक मेलों और उत्सवों के लिए भी जाना जाता है।"
    }
  ],


    "Munger (मुंगेर)": [
    {
      "name": "Munger Fort (मुंगेर किला)",
      "image": "assets/images/munger_fort.jpg",
      "description":
      "Munger Fort is a historic fort built during the Mughal era, surrounded by the Ganga River. "
          "मुंगेर किला मुगल काल का ऐतिहासिक किला है जो गंगा नदी से घिरा हुआ है।"
    },
    {
      "name": "Bihar School of Yoga (बिहार स्कूल ऑफ योगा)",
      "image": "assets/images/bihar_school_yoga.jpg",
      "description":
      "Founded by Swami Satyananda Saraswati, it is world-famous for yoga training and spiritual learning. "
          "स्वामी सत्यानंद सरस्वती द्वारा स्थापित, यह योग और आध्यात्मिक शिक्षा के लिए विश्व प्रसिद्ध है।"
    },
    {
      "name": "Kastaharni Ghat (कस्तहरनी घाट)",
      "image": "assets/images/kastaharni_ghat.jpg",
      "description":
      "A sacred bathing ghat on the Ganga, believed to relieve sins and sorrows. "
          "गंगा नदी का पवित्र घाट, जहाँ स्नान करने से दुख और पाप दूर होने की मान्यता है।"
    },
    {
      "name": "Pir Shah Nafah Shrine (पीर शाह नफ़ाह दरगाह)",
      "image": "assets/images/pir_shah_nafah.jpg",
      "description":
      "A famous Sufi shrine visited by devotees of all religions for blessings. "
          "यह प्रसिद्ध सूफी दरगाह है जहाँ सभी धर्मों के लोग आशीर्वाद लेने आते हैं।"
    },
    {
      "name": "Sita Kund (सीता कुंड)",
      "image": "assets/images/sita_kund.jpg",
      "description":
      "A sacred hot spring associated with Goddess Sita, located near Munger. "
          "देवी सीता से जुड़ा एक पवित्र गर्म जलकुंड, जो मुंगेर के पास स्थित है।"
    },
    {
      "name": "Manpatthar (मनपत्थर)",
      "image": "assets/images/manpatthar.jpg",
      "description":
      "A sacred stone believed to bear footprints of Goddess Sita. "
          "एक पवित्र पत्थर जिस पर माता सीता के चरणचिह्न माने जाते हैं।"
    },
    {
      "name": "Goenka Shivalaya (गोयनका शिवालय)",
      "image": "assets/images/goenka_shivalaya.jpg",
      "description":
      "A historic Shiva temple built by the Goenka family, known for its architecture. "
          "गोयनका परिवार द्वारा निर्मित ऐतिहासिक शिव मंदिर, जो अपनी सुंदरता के लिए प्रसिद्ध है।"
    },
    {
      "name": "Chandisthaan (चंडीस्थान)",
      "image": "assets/images/chandisthaan.jpg",
      "description":
      "A famous Shakti Peeth temple of Goddess Chandi, located in Munger district. "
          "माँ चंडी का प्रसिद्ध शक्तिपीठ मंदिर, जो मुंगेर जिले में स्थित है।"
    },
    {
      "name": "Rameshwar Kund (रामेश्वर कुंड)",
      "image": "assets/images/rameshwar_kund.jpg",
      "description":
      "A natural hot spring with religious importance dedicated to Lord Shiva. "
          "प्राकृतिक गर्म जलकुंड, जो भगवान शिव से जुड़ा धार्मिक स्थल है।"
    },
    {
      "name": "Ucheswarnath Temple (उचेश्वरनाथ मंदिर)",
      "image": "assets/images/ucheshwarnath.jpg",
      "description":
      "An ancient temple of Lord Shiva, very popular among devotees. "
          "भगवान शिव का प्राचीन मंदिर, जो भक्तों के बीच बहुत प्रसिद्ध है।"
    },
    {
      "name": "Munger Museum (मुंगेर संग्रहालय)",
      "image": "assets/images/munger_museum.jpg",
      "description":
      "A museum showcasing artifacts from ancient history and Mughal times. "
          "एक संग्रहालय जिसमें प्राचीन और मुगल काल की वस्तुएँ प्रदर्शित हैं।"
    },
    {
      "name": "Durga Mandir (दुर्गा मंदिर)",
      "image": "assets/images/durga_mandir.jpg",
      "description":
      "A temple dedicated to Goddess Durga, visited by devotees especially during Navratri. "
          "माँ दुर्गा का प्रसिद्ध मंदिर जहाँ नवरात्रि में विशेष भीड़ होती है।"
    },
    {
      "name": "Munger Park (मुंगेर पार्क)",
      "image": "assets/images/munger_park.jpg",
      "description":
      "A recreational park with greenery and walking spaces for families. "
          "परिवारों के घूमने-फिरने के लिए हरियाली से भरा सुंदर पार्क।"
    },
    {
      "name": "Sita Charan Temple (सीता चरण मंदिर)",
      "image": "assets/images/sita_charan.jpg",
      "description":
      "This temple preserves imprints believed to be of Goddess Sita’s feet. "
          "इस मंदिर में माता सीता के चरणचिह्न माने जाने वाले निशान संरक्षित हैं।"
    },
    {
      "name": "Rishi Kund (ऋषि कुंड)",
      "image": "assets/images/rishi_kund.jpg",
      "description":
      "A natural hot water spring associated with saints and sages. "
          "संतों और ऋषियों से जुड़ा प्राकृतिक गर्म जलकुंड।"
    },
    {
      "name": "Chandi Hills (चंडी पहाड़)",
      "image": "assets/images/chandi_hills.jpg",
      "description":
      "A hilly spot with religious significance and scenic views. "
          "धार्मिक महत्व और प्राकृतिक सुंदरता से भरपूर पहाड़ी स्थल।"
    },
    {
      "name": "Munger Clock Tower (मुंगेर घड़ी टावर)",
      "image": "assets/images/munger_clocktower.jpg",
      "description":
      "A British-era clock tower located in the heart of Munger town. "
          "ब्रिटिश काल का घड़ी टावर, जो मुंगेर नगर के बीच स्थित है।"
    },
    {
      "name": "Ramnagar Fort (रामनगर किला)",
      "image": "assets/images/ramnagar_fort.jpg",
      "description":
      "Another small fortification site near Munger town with historical importance. "
          "मुंगेर नगर के पास स्थित एक और ऐतिहासिक किला।"
    },
    {
      "name": "Hazrat Shah Mustafa Dargah (हजरत शाह मुस्तफा दरगाह)",
      "image": "assets/images/shah_mustafa_dargah.jpg",
      "description":
      "A holy dargah that attracts devotees from all faiths. "
          "एक पवित्र दरगाह जो सभी धर्मों के लोगों को आकर्षित करती है।"
    },
    {
      "name": "Munger Lake (मुंगेर झील)",
      "image": "assets/images/munger_lake.jpg",
      "description":
      "A scenic lake offering boating and picnicking opportunities. "
          "सुंदर झील जहाँ नौकायन और पिकनिक का आनंद लिया जा सकता है।"
    },
    {
      "name": "Ugra Tara Sthan (उग्र तारा स्थान)",
      "image": "assets/images/ugra_tara.jpg",
      "description":
      "A famous temple dedicated to Goddess Tara, a form of Shakti. "
          "माँ तारा को समर्पित एक प्रसिद्ध शक्तिपीठ मंदिर।"
    },
    {
      "name": "British Cemetery (ब्रिटिश कब्रिस्तान)",
      "image": "assets/images/british_cemetery.jpg",
      "description":
      "A colonial-era cemetery reflecting the British presence in Munger. "
          "ब्रिटिश शासनकाल का कब्रिस्तान जो ऐतिहासिक महत्व रखता है।"
    },
    {
      "name": "Munger Gun Factory (मुंगेर गन फैक्ट्री)",
      "image": "assets/images/munger_gun_factory.jpg",
      "description":
      "Established by the British, this is one of the oldest gun factories in India. "
          "ब्रिटिश काल में स्थापित, यह भारत की सबसे पुरानी गन फैक्ट्रियों में से एक है।"
    },
    {
      "name": "Rajiv Gandhi Park (राजीव गांधी पार्क)",
      "image": "assets/images/rajiv_gandhi_park.jpg",
      "description":
      "A modern park with facilities for children and families. "
          "एक आधुनिक पार्क जिसमें बच्चों और परिवारों के लिए सुविधाएँ उपलब्ध हैं।"
    },
    {
      "name": "Bhikhanpur Kali Temple (भिखनपुर काली मंदिर)",
      "image": "assets/images/bhikhanpur_kali.jpg",
      "description":
      "A historic temple dedicated to Goddess Kali, located in Bhikhanpur area. "
          "भिखनपुर क्षेत्र का माँ काली को समर्पित प्राचीन मंदिर।"
    },
  ],


    "Arwal (अरवल)": [
      {
        "name": "Deo Sun Temple (देव सूर्य मंदिर)",
        "description": "Ancient temple dedicated to the Sun God. प्राचीन सूर्य देव का मंदिर।"
      },
      {
        "name": "Kauleshwari Hill (कौलश्वरी पहाड़ी)",
        "description": "Spiritual site with temples and caves. मंदिरों और गुफाओं वाला धार्मिक स्थल।"
      },
      {
        "name": "Bhaluni Dham (भलुनी धाम)",
        "description": "Popular Shakti Peeth dedicated to Goddess Durga. माँ दुर्गा को समर्पित प्रसिद्ध शक्तिपीठ।"
      },
      {
        "name": "Arwal Fort Ruins (अरवल किला अवशेष)",
        "description": "Remains of an old fort in Arwal region. अरवल क्षेत्र का प्राचीन किला।"
      },
      {
        "name": "Jamhor (जमहोड़)",
        "description": "Famous for Devi temple and fairs. देवी मंदिर और मेलों के लिए प्रसिद्ध।"
      },
      {
        "name": "Son River Ghats (सोन नदी घाट)",
        "description": "Scenic ghats on the bank of Son river. सोन नदी के सुंदर घाट।"
      },
      {
        "name": "Parvati Hill (पार्वती पहाड़ी)",
        "description": "Hill with a temple dedicated to Goddess Parvati. माँ पार्वती को समर्पित मंदिर वाला पहाड़।"
      },
      {
        "name": "Arwal Park (अरवल पार्क)",
        "description": "Popular spot for local gatherings. स्थानीय पिकनिक और बैठकों का स्थान।"
      },
      {
        "name": "Surya Kund (सूर्य कुंड)",
        "description": "Sacred pond near Arwal with religious significance. अरवल के पास धार्मिक महत्व का कुंड।"
      },
      {
        "name": "Hanuman Mandir (हनुमान मंदिर)",
        "description": "Temple of Lord Hanuman visited by devotees. भगवान हनुमान का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Kali Mandir (काली मंदिर)",
        "description": "Temple dedicated to Goddess Kali. माँ काली को समर्पित मंदिर।"
      },
      {
        "name": "Arwal Market (अरवल बाजार)",
        "description": "Busy traditional market with local crafts. स्थानीय कारीगरी और परंपरागत बाजार।"
      },
      {
        "name": "Mahadev Sthan (महादेव स्थान)",
        "description": "Sacred place of Lord Shiva worship. भगवान शिव की पूजा का पवित्र स्थान।"
      },
      {
        "name": "Pahari Baba Sthan (पहाड़ी बाबा स्थान)",
        "description": "Religious place visited by saints. संतों द्वारा पूजित धार्मिक स्थान।"
      },
      {
        "name": "Bageshwari Sthan (बगेश्वरी स्थान)",
        "description": "Temple of Goddess Bageshwari. माँ बगेश्वरी का मंदिर।"
      },
      {
        "name": "Kundalpur (कुंडलपुर)",
        "description": "Known for old temples and fairs. प्राचीन मंदिरों और मेलों के लिए प्रसिद्ध।"
      },
      {
        "name": "Chandi Sthan (चंडी स्थान)",
        "description": "Famous shrine dedicated to Goddess Chandi. माँ चंडी का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Son Canal (सोन नहर)",
        "description": "Beautiful irrigation canal of Son river. सोन नदी की सिंचाई नहर।"
      },
      {
        "name": "Bhojpur Nearby Temples (भोजपुर समीप मंदिर)",
        "description": "Cluster of temples near Bhojpur-Arwal border. भोजपुर-अरवल सीमा पर मंदिरों का समूह।"
      },
      {
        "name": "Cultural Haat (सांस्कृतिक हाट)",
        "description": "Local fair showcasing folk art and crafts. लोक कला और हस्तशिल्प का मेला।"
      },
      {
        "name": "Ganesh Mandir (गणेश मंदिर)",
        "description": "Lord Ganesha temple in rural Arwal. ग्रामीण अरवल का गणेश मंदिर।"
      },
      {
        "name": "Village Ponds (ग्राम तालाब)",
        "description": "Traditional ponds used for festivals. त्योहारों में उपयोग किए जाने वाले तालाब।"
      },
      {
        "name": "Shiv Ganga Sthan (शिव गंगा स्थान)",
        "description": "Spiritual place of Lord Shiva. भगवान शिव का पवित्र स्थल।"
      },
      {
        "name": "Folk Dance Grounds (लोक नृत्य स्थल)",
        "description": "Grounds where Chhath and folk dances are performed. जहाँ छठ और लोक नृत्य होते हैं।"
      },
      {
        "name": "Historic Villages (ऐतिहासिक गाँव)",
        "description": "Villages preserving ancient traditions. प्राचीन परंपराओं को सँभालते हुए गाँव।"
      },
    ],


    "Khagaria (खगड़िया)":[
    {
      "name": "Katyayani Asthan (कात्यायनी स्थान)",
      "image": "assets/images/katyayani_asthan.jpg",
      "description":
      "Katyayani Asthan is a famous Shakti Peeth where devotees worship Goddess Katyayani. "
          "कात्यायनी स्थान एक प्रसिद्ध शक्ति पीठ है जहाँ भक्त माता कात्यायनी की पूजा करते हैं।"
    },
    {
      "name": "Budhkaran Tola (बुधकरण टोला)",
      "image": "assets/images/budhkaran_tola.jpg",
      "description":
      "Budhkaran Tola is known for its historical and cultural significance in Khagaria. "
          "बुधकरण टोला खगड़िया का ऐतिहासिक और सांस्कृतिक महत्व रखने वाला स्थान है।"
    },
    {
      "name": "Shiv Mandir, Khagaria (शिव मंदिर, खगड़िया)",
      "image": "assets/images/shiv_mandir_khagaria.jpg",
      "description":
      "This temple is dedicated to Lord Shiva and attracts many devotees during Mahashivratri. "
          "यह मंदिर भगवान शिव को समर्पित है और महाशिवरात्रि पर यहाँ विशेष भीड़ होती है।"
    },
    {
      "name": "Gautam Asthan (गौतम स्थान)",
      "image": "assets/images/gautam_asthan.jpg",
      "description":
      "Gautam Asthan is associated with Gautam Rishi, making it a spiritual attraction. "
          "गौतम स्थान गौतम ऋषि से जुड़ा हुआ है, जो इसे एक धार्मिक स्थल बनाता है।"
    },
    {
      "name": "Koshi River Bank (कोशी नदी तट)",
      "image": "assets/images/koshi_river.jpg",
      "description":
      "The bank of the Koshi River offers scenic views and is a peaceful picnic spot. "
          "कोशी नदी का तट सुंदर दृश्य और शांति प्रदान करता है, जो पिकनिक के लिए उपयुक्त है।"
    },
    {
      "name": "Kamla River View (कमला नदी दृश्य)",
      "image": "assets/images/kamla_river.jpg",
      "description":
      "Kamla River adds to the natural beauty of Khagaria and is a relaxing spot. "
          "कमला नदी खगड़िया की प्राकृतिक सुंदरता को और बढ़ाती है और शांति का स्थल है।"
    },
    {
      "name": "Maa Kali Mandir (माँ काली मंदिर)",
      "image": "assets/images/kali_mandir_khagaria.jpg",
      "description":
      "This temple is dedicated to Goddess Kali and is a major pilgrimage center. "
          "यह मंदिर माँ काली को समर्पित है और प्रमुख धार्मिक स्थल है।"
    },
    {
      "name": "Mansi Dham (मानसी धाम)",
      "image": "assets/images/mansi_dham.jpg",
      "description":
      "Mansi Dham is a spiritual place famous for fairs and festivals. "
          "मानसी धाम एक धार्मिक स्थान है जो मेलों और त्योहारों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Sonihar Asthan (सोनीहार स्थान)",
      "image": "assets/images/sonihar_asthan.jpg",
      "description":
      "Sonihar Asthan is known for its cultural heritage and local fairs. "
          "सोनीहार स्थान अपनी सांस्कृतिक धरोहर और स्थानीय मेलों के लिए जाना जाता है।"
    },
    {
      "name": "Durga Mandir, Khagaria (दुर्गा मंदिर, खगड़िया)",
      "image": "assets/images/durga_mandir_khagaria.jpg",
      "description":
      "This temple is dedicated to Goddess Durga and sees large gatherings during Navratri. "
          "यह मंदिर माता दुर्गा को समर्पित है और नवरात्रि में बड़ी संख्या में भक्त आते हैं।"
    },
    {
      "name": "Bhagwanpur Asthan (भगवानपुर स्थान)",
      "image": "assets/images/bhagwanpur_asthan.jpg",
      "description":
      "Bhagwanpur Asthan is an ancient site of religious and historical significance. "
          "भगवानपुर स्थान धार्मिक और ऐतिहासिक महत्व वाला प्राचीन स्थल है।"
    },
    {
      "name": "Bhimbandh Hills (भीमबांध पहाड़ियाँ)",
      "image": "assets/images/bhimbandh_hills.jpg",
      "description":
      "The Bhimbandh Hills provide a natural retreat with greenery and scenic views. "
          "भीमबांध पहाड़ियाँ हरियाली और प्राकृतिक सुंदरता के लिए प्रसिद्ध हैं।"
    },
    {
      "name": "Kosnhi Ghat (कोसनी घाट)",
      "image": "assets/images/kosnhi_ghat.jpg",
      "description":
      "Kosnhi Ghat is a sacred bathing place on the river. "
          "कोसनी घाट नदी पर एक पवित्र स्नान स्थल है।"
    },
    {
      "name": "Manihari Ghat (मनीहारी घाट)",
      "image": "assets/images/manihari_ghat.jpg",
      "description":
      "Manihari Ghat is a popular place for river-side rituals and scenic beauty. "
          "मनीहारी घाट नदी के किनारे धार्मिक अनुष्ठानों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
    },
    {
      "name": "Rameshwar Mandir (रामेश्वर मंदिर)",
      "image": "assets/images/rameshwar_mandir.jpg",
      "description":
      "Rameshwar Mandir is dedicated to Lord Shiva and is a spiritual hub. "
          "रामेश्वर मंदिर भगवान शिव को समर्पित है और धार्मिक महत्व रखता है।"
    },
    {
      "name": "Belauri Dham (बेलौरी धाम)",
      "image": "assets/images/belauri_dham.jpg",
      "description":
      "Belauri Dham is visited by thousands of devotees during religious occasions. "
          "बेलौरी धाम धार्मिक अवसरों पर हजारों भक्तों द्वारा दर्शन के लिए प्रसिद्ध है।"
    },
    {
      "name": "Ashok Dham (अशोक धाम)",
      "image": "assets/images/ashok_dham.jpg",
      "description":
      "Ashok Dham is a famous temple with historical and spiritual value. "
          "अशोक धाम एक प्रसिद्ध मंदिर है जिसमें ऐतिहासिक और धार्मिक महत्व है।"
    },
    {
      "name": "Rajendra Setu View (राजेंद्र सेतु दृश्य)",
      "image": "assets/images/rajendra_setu.jpg",
      "description":
      "Rajendra Setu over the Ganga river provides a picturesque view. "
          "गंगा नदी पर बना राजेंद्र सेतु बेहद सुंदर दृश्य प्रदान करता है।"
    },
    {
      "name": "Hanuman Mandir (हनुमान मंदिर)",
      "image": "assets/images/hanuman_mandir_khagaria.jpg",
      "description":
      "Hanuman Mandir is a revered temple where devotees gather every Tuesday and Saturday. "
          "हनुमान मंदिर एक प्रसिद्ध धार्मिक स्थल है जहाँ मंगलवार और शनिवार को भीड़ होती है।"
    },
    {
      "name": "Chandralok Park (चंद्रलोक पार्क)",
      "image": "assets/images/chandralok_park.jpg",
      "description":
      "Chandralok Park is a recreational area for families and children. "
          "चंद्रलोक पार्क परिवार और बच्चों के लिए मनोरंजन का स्थान है।"
    },
    {
      "name": "Satsang Bhavan (सत्संग भवन)",
      "image": "assets/images/satsang_bhavan.jpg",
      "description":
      "Satsang Bhavan is a center for spiritual gatherings and discourses. "
          "सत्संग भवन आध्यात्मिक सभाओं और प्रवचनों का केंद्र है।"
    },
    {
      "name": "Ganga Ghat (गंगा घाट)",
      "image": "assets/images/ganga_ghat_khagaria.jpg",
      "description":
      "Ganga Ghat is used for religious rituals and scenic walks. "
          "गंगा घाट धार्मिक अनुष्ठानों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
    },
    {
      "name": "Vishnu Mandir (विष्णु मंदिर)",
      "image": "assets/images/vishnu_mandir_khagaria.jpg",
      "description":
      "This temple is dedicated to Lord Vishnu and holds cultural importance. "
          "यह मंदिर भगवान विष्णु को समर्पित है और सांस्कृतिक महत्व रखता है।"
    },
    {
      "name": "Rajdhani Market (राजधानी बाजार)",
      "image": "assets/images/rajdhani_market.jpg",
      "description":
      "Rajdhani Market is a busy commercial hub for shopping and local culture. "
          "राजधानी बाजार खरीदारी और स्थानीय संस्कृति का प्रमुख केंद्र है।"
    },
  ],


    "Saharsa (सहरसा)": [
    {
      "name": "Ugra Tara Sthan (उग्रतारा स्थान)",
      "image": "assets/images/ugra_tara.jpg",
      "description":
      "Ugra Tara Sthan is a famous Shakti Peeth in Saharsa dedicated to Goddess Tara. "
          "उग्रतारा स्थान सहर्षा का प्रसिद्ध शक्तिपीठ है, जो माँ तारा को समर्पित है।"
    },
    {
      "name": "Matsyagandha Mandir (मत्स्यगंधा मंदिर)",
      "image": "assets/images/matsyagandha.jpg",
      "description":
      "Matsyagandha Mandir is a popular temple situated near a pond, attracting many devotees. "
          "मत्स्यगंधा मंदिर एक तालाब के किनारे स्थित प्रसिद्ध मंदिर है जहाँ बड़ी संख्या में श्रद्धालु आते हैं।"
    },
    {
      "name": "Shiv Mandir Bangaon (शिव मंदिर, बनगाँव)",
      "image": "assets/images/shiv_bangaon.jpg",
      "description":
      "This temple is dedicated to Lord Shiva and is a major pilgrimage site in Bangaon. "
          "यह मंदिर भगवान शिव को समर्पित है और बनगाँव का प्रमुख धार्मिक स्थल है।"
    },
    {
      "name": "Mahishi Village (महिषी गाँव)",
      "image": "assets/images/mahishi.jpg",
      "description":
      "Mahishi Village is known for its cultural and historical importance in Saharsa. "
          "महिषी गाँव अपनी सांस्कृतिक और ऐतिहासिक महत्व के लिए सहर्षा में प्रसिद्ध है।"
    },
    {
      "name": "Kosi River Bank (कोसी नदी तट)",
      "image": "assets/images/kosi_bank.jpg",
      "description":
      "The Kosi river bank offers a scenic view and is known as the 'Sorrow of Bihar'. "
          "कोसी नदी का तट सुंदर दृश्य प्रदान करता है और इसे 'बिहार का शोक' कहा जाता है।"
    },
    {
      "name": "Hanuman Mandir, Saharsa (हनुमान मंदिर, सहर्षा)",
      "image": "assets/images/hanuman_saharsa.jpg",
      "description":
      "This is a prominent Hanuman temple in the city attracting a large number of devotees. "
          "यह सहर्षा शहर का प्रमुख हनुमान मंदिर है जहाँ बड़ी संख्या में श्रद्धालु आते हैं।"
    },
    {
      "name": "Darbar Mandir (दरबार मंदिर)",
      "image": "assets/images/darbar_temple.jpg",
      "description":
      "Darbar Mandir is a famous religious place in Saharsa with historical significance. "
          "दरबार मंदिर सहर्षा का प्रसिद्ध धार्मिक स्थल है जिसका ऐतिहासिक महत्व है।"
    },
    {
      "name": "Champa Village (चम्पा गाँव)",
      "image": "assets/images/champa.jpg",
      "description":
      "Champa village is known for traditional culture and local fairs. "
          "चम्पा गाँव अपनी पारंपरिक संस्कृति और मेलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Bangaon Shakti Sthal (बनगाँव शक्ति स्थल)",
      "image": "assets/images/bangaon_shakti.jpg",
      "description":
      "It is a revered place dedicated to Goddess Durga where devotees gather during Navratri. "
          "यह माँ दुर्गा को समर्पित शक्तिपीठ है जहाँ नवरात्रि में विशेष श्रद्धालु आते हैं।"
    },
    {
      "name": "Saharsa College Campus Park (सहरसा कॉलेज कैम्पस पार्क)",
      "image": "assets/images/saharsa_park.jpg",
      "description":
      "The college campus park is a peaceful place for students and visitors. "
          "कॉलेज कैम्पस पार्क विद्यार्थियों और आगंतुकों के लिए शांति का स्थान है।"
    },
    {
      "name": "Bangaon Durga Sthan (बनगाँव दुर्गा स्थान)",
      "image": "assets/images/bangaon_durga.jpg",
      "description":
      "This temple is dedicated to Goddess Durga and holds cultural significance. "
          "यह मंदिर माँ दुर्गा को समर्पित है और सांस्कृतिक दृष्टि से महत्वपूर्ण है।"
    },
    {
      "name": "Kosi Barrage Area (कोसी बैराज क्षेत्र)",
      "image": "assets/images/kosi_barrage.jpg",
      "description":
      "The Kosi barrage area provides beautiful scenery and is important for irrigation. "
          "कोसी बैराज क्षेत्र सुंदर दृश्य प्रदान करता है और सिंचाई के लिए महत्वपूर्ण है।"
    },
    {
      "name": "Madhusudan Mandir (मधुसूदन मंदिर)",
      "image": "assets/images/madhusudan.jpg",
      "description":
      "Dedicated to Lord Vishnu, this temple attracts devotees throughout the year. "
          "भगवान विष्णु को समर्पित यह मंदिर पूरे साल श्रद्धालुओं को आकर्षित करता है।"
    },
    {
      "name": "Mahavir Sthan (महावीर स्थान)",
      "image": "assets/images/mahavir.jpg",
      "description":
      "This temple is dedicated to Lord Hanuman and is considered a place of faith. "
          "यह मंदिर भगवान हनुमान को समर्पित है और आस्था का केंद्र है।"
    },
    {
      "name": "Simri Bakhtiyarpur (सिमरी बख्तियारपुर)",
      "image": "assets/images/simri.jpg",
      "description":
      "Simri Bakhtiyarpur is a small town known for cultural heritage and fairs. "
          "सिमरी बख्तियारपुर अपनी सांस्कृतिक धरोहर और मेलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Bairgania Market (बैर्गनिया बाज़ार)",
      "image": "assets/images/bairgania.jpg",
      "description":
      "This is a popular market area in Saharsa offering local goods and crafts. "
          "यह सहर्षा का लोकप्रिय बाज़ार है जहाँ स्थानीय वस्तुएँ और हस्तशिल्प उपलब्ध हैं।"
    },
    {
      "name": "Kosi Prapat (कोसी प्रपात)",
      "image": "assets/images/kosi_prapat.jpg",
      "description":
      "A scenic waterfall area in the Kosi region near Saharsa. "
          "सहरसा के पास कोसी क्षेत्र का एक सुंदर जलप्रपात स्थल।"
    },
    {
      "name": "Panchanand Mandir (पंचानंद मंदिर)",
      "image": "assets/images/panchanand.jpg",
      "description":
      "This temple is dedicated to Lord Shiva and is a major pilgrimage site. "
          "यह मंदिर भगवान शिव को समर्पित प्रमुख धार्मिक स्थल है।"
    },
    {
      "name": "Teliya Pati Village (टेलिया पटी गाँव)",
      "image": "assets/images/teliya_pati.jpg",
      "description":
      "A famous village in Saharsa known for agriculture and fairs. "
          "सहरसा का यह गाँव कृषि और मेलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Saharsa Town Hall (सहरसा टाउन हॉल)",
      "image": "assets/images/townhall.jpg",
      "description":
      "The Town Hall is a landmark for cultural and political events. "
          "टाउन हॉल सहर्षा का सांस्कृतिक और राजनीतिक आयोजनों का केंद्र है।"
    },
    {
      "name": "Parmanandpur (परमानंदपुर)",
      "image": "assets/images/parmanandpur.jpg",
      "description":
      "Parmanandpur is a historical village in Saharsa district. "
          "परमानंदपुर सहर्षा जिले का एक ऐतिहासिक गाँव है।"
    },
    {
      "name": "Gadhiya Pokhar (गढ़िया पोखर)",
      "image": "assets/images/gadhiya_pokhar.jpg",
      "description":
      "This pond area is known for local fairs and cultural gatherings. "
          "गढ़िया पोखर अपने मेलों और सांस्कृतिक आयोजनों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Saharsa Stadium (सहरसा स्टेडियम)",
      "image": "assets/images/stadium.jpg",
      "description":
      "The stadium hosts sports and cultural programs for the district. "
          "सहरसा स्टेडियम जिले के खेल और सांस्कृतिक कार्यक्रमों का केंद्र है।"
    },
    {
      "name": "Balua Bazar (बलुआ बाज़ार)",
      "image": "assets/images/balua.jpg",
      "description":
      "Balua Bazar is a local shopping hub in Saharsa with cultural significance. "
          "बलुआ बाज़ार सहर्षा का प्रमुख व्यापारिक और सांस्कृतिक स्थान है।"
    },
  ],

    "Sitamarhi (सीतामढ़ी)": [
    {
      "name": "Janaki Temple (जानकी मंदिर)",
      "image": "assets/images/janaki_temple.jpg",
      "description":
      "Janaki Temple is a famous temple dedicated to Goddess Sita, believed to be her birthplace. "
          "जानकी मंदिर माता सीता को समर्पित प्रसिद्ध मंदिर है, जिसे उनका जन्मस्थान माना जाता है।"
    },
    {
      "name": "Panth Pakar (पंथ पाकर)",
      "image": "assets/images/panth_pakar.jpg",
      "description":
      "Panth Pakar is the place where Sita Devi is believed to have rested under a banyan tree before marriage. "
          "पंथ पाकर वह स्थान है जहाँ विवाह से पहले सीता माता ने पीपल के पेड़ के नीचे विश्राम किया था।"
    },
    {
      "name": "Haleshwar Sthan (हलेश्वर स्थान)",
      "image": "assets/images/haleshwar_sthan.jpg",
      "description":
      "A holy Shiva temple associated with King Janak's yagna rituals. "
          "हलेश्वर स्थान भगवान शिव का पवित्र मंदिर है, जो जनक जी के यज्ञ से जुड़ा हुआ है।"
    },
    {
      "name": "Pupri (पूंप्रि)",
      "image": "assets/images/pupri.jpg",
      "description":
      "Pupri is known for Baba Nageshwarnath Temple, a popular Shiva temple. "
          "पूंप्रि बाबा नागेश्वरनाथ मंदिर के लिए प्रसिद्ध है, जो एक लोकप्रिय शिव मंदिर है।"
    },
    {
      "name": "Baghahi Math (बगही मठ)",
      "image": "assets/images/baghahi_math.jpg",
      "description":
      "Baghahi Math is an ancient monastery with historical and religious significance. "
          "बगही मठ एक प्राचीन मठ है, जिसका ऐतिहासिक और धार्मिक महत्व है।"
    },
    {
      "name": "Chanki Garh (चंकी गढ़)",
      "image": "assets/images/chanki_garh.jpg",
      "description":
      "Chanki Garh is an archaeological site believed to be connected with the Ramayana era. "
          "चंकी गढ़ एक पुरातात्विक स्थल है, जिसका संबंध रामायण काल से माना जाता है।"
    },
    {
      "name": "Hanuman Mandir (हनुमान मंदिर)",
      "image": "assets/images/hanuman_mandir.jpg",
      "description":
      "This temple is dedicated to Lord Hanuman and attracts many devotees. "
          "हनुमान मंदिर भगवान हनुमान को समर्पित है और यहाँ भक्त बड़ी संख्या में आते हैं।"
    },
    {
      "name": "Panth Pakar Pond (पंथ पाकर पोखर)",
      "image": "assets/images/panth_pakar_pond.jpg",
      "description":
      "A sacred pond near Panth Pakar associated with Sita’s life. "
          "पंथ पाकर के पास स्थित यह पोखर माता सीता के जीवन से जुड़ा है।"
    },
    {
      "name": "Janki Asthan, Punaura (जानकी स्थान, पुनौरा)",
      "image": "assets/images/punaura_janki.jpg",
      "description":
      "Considered as the exact birthplace of Goddess Sita at Punaura Dham. "
          "पुनौरा धाम माता सीता का वास्तविक जन्मस्थान माना जाता है।"
    },
    {
      "name": "Dumra (डुमरा)",
      "image": "assets/images/dumra.jpg",
      "description":
      "Administrative headquarters of Sitamarhi with several parks and temples. "
          "डुमरा सीतामढ़ी का प्रशासनिक मुख्यालय है, जहाँ कई पार्क और मंदिर स्थित हैं।"
    },
    {
      "name": "Bairagnia (बैरा गनिया)",
      "image": "assets/images/bairagnia.jpg",
      "description":
      "A town near the Nepal border, known for cross-border culture and trade. "
          "बैरा गनिया नेपाल सीमा के पास स्थित है और सांस्कृतिक व व्यापारिक महत्व रखता है।"
    },
    {
      "name": "Suranga Temple (सुरंगा मंदिर)",
      "image": "assets/images/suranga_temple.jpg",
      "description":
      "An ancient temple with underground passage, linked to legends of Ramayana. "
          "सुरंगा मंदिर एक प्राचीन मंदिर है जिसमें भूमिगत सुरंग है, जिसका संबंध रामायण की कथाओं से है।"
    },
    {
      "name": "Shiv Mandir, Bathnaha (शिव मंदिर, बथनाहा)",
      "image": "assets/images/shiv_bathnaha.jpg",
      "description":
      "A famous Shiva temple in Bathnaha village. "
          "बथनाहा गाँव का यह प्रसिद्ध शिव मंदिर है।"
    },
    {
      "name": "Bajpatti (बजपट्टी)",
      "image": "assets/images/bajpatti.jpg",
      "description":
      "A historical block of Sitamarhi with cultural heritage. "
          "बजपट्टी सीतामढ़ी का ऐतिहासिक प्रखंड है, जो सांस्कृतिक धरोहरों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Koili Tirth (कोइली तीर्थ)",
      "image": "assets/images/koili_tirth.jpg",
      "description":
      "Koili Tirth is a spiritual site connected with Sita’s life. "
          "कोइली तीर्थ एक धार्मिक स्थल है, जिसका संबंध सीता माता से है।"
    },
    {
      "name": "Madheswar Nath Temple (मधेश्वरनाथ मंदिर)",
      "image": "assets/images/madheswar_nath.jpg",
      "description":
      "This temple is dedicated to Lord Shiva, worshipped widely in the region. "
          "मधेश्वरनाथ मंदिर भगवान शिव को समर्पित है और यहाँ श्रद्धालु बड़ी संख्या में आते हैं।"
    },
    {
      "name": "Gaushala Mandir (गौशाला मंदिर)",
      "image": "assets/images/gaushala_mandir.jpg",
      "description":
      "A temple and gaushala where cows are worshipped. "
          "गौशाला मंदिर एक ऐसा स्थान है जहाँ गायों की पूजा होती है।"
    },
    {
      "name": "Shri Radha Krishna Mandir (श्री राधा कृष्ण मंदिर)",
      "image": "assets/images/radha_krishna.jpg",
      "description":
      "Beautiful temple of Radha Krishna, a center for religious gatherings. "
          "श्री राधा कृष्ण मंदिर एक सुंदर मंदिर है, जो धार्मिक आयोजनों का केंद्र है।"
    },
    {
      "name": "Mata Sita Kund (माता सीता कुंड)",
      "image": "assets/images/sita_kund.jpg",
      "description":
      "A sacred kund (pond) associated with Goddess Sita’s legend. "
          "माता सीता कुंड एक पवित्र स्थान है, जो सीता माता की कथाओं से जुड़ा हुआ है।"
    },
    {
      "name": "Riga Sugar Mill (रीगा शुगर मिल)",
      "image": "assets/images/riga_sugar.jpg",
      "description":
      "One of the oldest sugar mills in Bihar, located in Sitamarhi. "
          "रीगा शुगर मिल बिहार की सबसे पुरानी चीनी मिलों में से एक है।"
    },
    {
      "name": "Belsand (बेलसंड)",
      "image": "assets/images/belsand.jpg",
      "description":
      "A small town with temples and religious significance. "
          "बेलसंड एक छोटा नगर है, जिसका धार्मिक महत्व है।"
    },
    {
      "name": "Bathnaha Pokhar (बथनाहा पोखर)",
      "image": "assets/images/bathnaha_pokhar.jpg",
      "description":
      "A large pond in Bathnaha with local cultural importance. "
          "बथनाहा पोखर एक बड़ा तालाब है, जिसका स्थानीय सांस्कृतिक महत्व है।"
    },
    {
      "name": "Nanpur (नानपुर)",
      "image": "assets/images/nanpur.jpg",
      "description":
      "A block of Sitamarhi known for temples and fairs. "
          "नानपुर सीतामढ़ी का एक प्रखंड है, जो मंदिरों और मेलों के लिए प्रसिद्ध है।"
    },
    {
      "name": "Parsauni (पर्सौनी)",
      "image": "assets/images/parsauni.jpg",
      "description":
      "A rural area of Sitamarhi with cultural charm. "
          "पर्सौनी सीतामढ़ी का ग्रामीण इलाका है, जो अपनी सांस्कृतिक पहचान रखता है।"
    },
  ],
















};



  @override
  Widget build(BuildContext context) {
    final places = districtPlaces[districtName] ?? [];

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
                      placeName: place["name"]!,


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
