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
    // 1. Aizawl
    "Aizawl (आइजोल)": [
      {
        "name": "Durtlang Hills (दुर्तलंग हिल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/51/28/2c/durtlang-hills.jpg?w=1200&h=-1&s=1",
        "description": "Scenic hilltop offering panoramic views of Aizawl city. आइजोल शहर का सुंदर नज़ारा देखने की जगह।"
      },
      {
        "name": "Mizoram State Museum (मिजोरम राज्य संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRibbVHrKThXXeSOpQYAzG1Qw3Ssk8VMT9Xxw&s",
        "description": "Museum showcasing Mizoram’s cultural heritage. मिजोरम की संस्कृति और विरासत को दर्शाने वाला संग्रहालय।"
      },
      {
        "name": "Reiek (रियेक)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/reiek-mountain-reiek-mizoram-rural-hero?qlt=82&ts=1727162177885",
        "description": "Famous mountain peak for trekking. ट्रैकिंग और एडवेंचर के लिए मशहूर पहाड़ी चोटी।"
      },
      {
        "name": "Solomon’s Temple (सोलोमन का मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/d/da/Temple_thlalak.JPG",
        "description": "Majestic Christian temple and a major landmark. भव्य ईसाई मंदिर और महत्वपूर्ण लैंडमार्क।"
      },
      {
        "name": "KV Paradise (केवी पैराडाइस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx3B686iFdwYa4mcFyAA6e3aqcl2cy19mzYw&s",
        "description": "Beautiful white monument known as the Taj Mahal of Mizoram. मिजोरम का ताजमहल कहा जाने वाला सफेद स्मारक।"
      },
      {
        "name": "Lalsavunga Park (लालसावुंगा पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYDaP45CQWnlMdFwJUH2aoVKBv3qDdei5j9g&s",
        "description": "Popular picnic and recreational spot. पिकनिक और मनोरंजन के लिए प्रसिद्ध स्थान।"
      },
      {
        "name": "Aizawl Zoological Park (आइजोल जूलॉजिकल पार्क)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/aizawl-zoological-park-aizawl-mizoram-2-attr-hero?qlt=82&ts=1726665799538",
        "description": "Home to various wildlife species of Mizoram. मिजोरम के वन्यजीवों को दिखाने वाला जूलॉजिकल पार्क।"
      },
      {
        "name": "Muthi Park (मुथी पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCwIVokZlfBXANj1PZ_k0BIHi2-NsgFrTYVg&s",
        "description": "Nature park with greenery and peaceful surroundings. हरियाली और शांति से भरपूर प्राकृतिक पार्क।"
      },
      {
        "name": "Khawhpawp Falls (खावपॉवप फॉल्स)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk2Zoa6toG5ebKruO6Jdc-avL6RslU9u0aDg&s",
        "description": "Beautiful waterfall located near Aizawl. आइजोल के पास स्थित सुंदर झरना।"
      },
      {
        "name": "Lungleng Lal In (लुंगलेंग लाल इन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReU3yod9SL5-hrPztxoT5_GHznsVLWCC3SQA&s",
        "description": "Historical memorial site. ऐतिहासिक स्मारक स्थल।"
      },
      {
        "name": "Falkawn Typical Mizo Village (फलकॉन पारंपरिक मिजो गाँव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_ETB8WGl9tHo-aoAE4ZGkhynVx9uv_7xrhA&s",
        "description": "Model village showcasing traditional Mizo lifestyle. पारंपरिक मिजो जीवनशैली को दर्शाने वाला मॉडल गाँव।"
      },
      {
        "name": "Vantawng Waterfall (वनतावंग जलप्रपात)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/vantawng-khawthla-aizawl-mizoram-2-attr-hero?qlt=82&ts=1726665729651",
        "description": "Highest waterfall in Mizoram. मिजोरम का सबसे ऊँचा जलप्रपात।"
      },
      {
        "name": "Tam Dil Lake (तमदिल झील)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/tamdil-aizawl-mizoram-3-attr-hero?qlt=82&ts=1726665792689",
        "description": "Serene lake surrounded by hills. पहाड़ियों से घिरी शांत झील।"
      },
      {
        "name": "Hmuifang Tlang (ह्मुइफांग पहाड़ी)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/hmuifang-mountain-peak-aizawl-mizoram-1-attr-hero?qlt=82&ts=1726665832153",
        "description": "Famous hill station for adventure lovers. एडवेंचर और नेचर लवर्स के लिए प्रसिद्ध हिल स्टेशन।"
      },

      // 🆕 नए tourist places
      {
        "name": "Paikhai Picnic Spot (पैखाई पिकनिक स्पॉट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSShJaExeOxJfwLecb1SEFB4F8qZlPVJeodWA&s",
        "description": "Famous picnic destination with natural beauty. प्राकृतिक सुंदरता वाला लोकप्रिय पिकनिक स्पॉट।"
      },
      {
        "name": "Berawtlang Tourist Complex (बेरावटलांग टूरिस्ट कॉम्प्लेक्स)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi-SafzQVwjAuqZnFO1RkzJd2n6kNS3DLVqQ&s",
        "description": "Cultural and entertainment hub of Aizawl. आइजोल का सांस्कृतिक और मनोरंजन केंद्र।"
      },
      {
        "name": "Durtlang Leitan (दुर्तलंग लेइतान)",
        "image": "https://pbs.twimg.com/media/E_Kq_XVUYAkhgLz.jpg",
        "description": "Hill viewpoint offering breathtaking view of Aizawl. आइजोल शहर का शानदार दृश्य दिखाने वाला व्यू प्वाइंट।"
      },
      {
        "name": "Phulpui Grave (फुलपुई ग्रेव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY8y9vdx3ccaYsSAL-najSpISwM3_egudq4Q&s",
        "description": "Historical site with cultural importance. सांस्कृतिक महत्व वाला ऐतिहासिक स्थल।"
      },
      {
        "name": "Khawnglung Wildlife Sanctuary (खावंगलुंग वाइल्डलाइफ सैंक्चुअरी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/6d/b8/b4/chawngchilhi-puk.jpg?w=1200&h=-1&s=1",
        "description": "Wildlife sanctuary for nature and adventure lovers. प्रकृति और एडवेंचर लवर्स के लिए वाइल्डलाइफ सैंक्चुअरी।"
      },
    ],


    "Lunglei (लुंगलई)": [
      {
        "name": "Tuirum Li – Nghasih Lui (तुइरुम ली – नघासिह लुई)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3865a5JiSC_ccduuamHDRNJXI_FDU6KmbOQ&s",
        "description": "नघासिह लुई पर तुइरुम ली आपका अंतिम आगमन है। A beautiful natural spot with cultural significance."
      },
      {
        "name": "Missionary Kai Tlabang (मिशनरी काई तलबंग)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlE-FGlfhcp-k-htWuNbpOFyJJqHuqhYLCJA&s",
        "description": "यह वह स्थान है जहाँ पहले मिशनरी Reverend J.H. Lorrain थे। Historical site of early missionaries."
      },


      {
        "name": "Lung Milem Mualcheng South (लुंग मिलेम मुआलचेंग दक्षिण)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJKMrdujVHF1Ja6o5lAD0tEnZC_WxMe3LkJQ&s",
        "description": "तवीखा के दक्षिणी किनारे पर एक चट्टानी हिस्सा। Known for unique rock formations."
      },
      {
        "name": "Khwalung Wildlife Sanctuary (खवलुंग वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGn_SXPsXEEgUxuW1_s6-N9mEQIB92Qwwefg&s",
        "description": "आइजोल से लगभग 160 किमी दूर स्थित। Rich biodiversity and protected wildlife area."
      },
      {
        "name": "Darkhuang Tlang Pukpui (डार्कहुआंग त्लांग पुकपुई)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCuE--XEmZBRwJZPN0cDK4y5lxi1GQ_YLmVA&s",
        "description": "डार्कहुआंग त्लांग, शाब्दिक अर्थ 'गोंग पर्वत'। Famous hill with panoramic views."
      },

      {
        "name": "Phunhnawma Lung Lungpuitlang (फुन्ननवमा लुंग लुंगपूइतलांग)",
        "image": "https://i.ytimg.com/vi/gB3ubcenCeQ/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLA5eDrLptOdNNurDcgkjyvjKCOEGA",
        "description": "इसका शाब्दिक अर्थ है 'फुन्ननवमा की चट्टान'। Famous cliff with historical value."
      },
      {
        "name": "Sairep Tlang (सैरेप त्लांग)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQloAK6uUKlQhtOFd3y8uyef_b5dBY-Hd3DiA&s",
        "description": "लुंगलेई के पास एक विशाल पर्वत। Ideal for hiking and adventure tourism."
      },
    ],


    // 3. Champhai
    "Champhai (चम्फाई)": [
      {
        "name": "Rih Dil (रिह दिल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaIXnGahYm2SyDov_BOYrVdRXkGsJAPHQ5Aw&s",
        "description": "A legendary heart-shaped lake in Myanmar, believed to be the passage of souls. म्यांमार में स्थित पौराणिक दिल के आकार की झील, जिसे आत्माओं का मार्ग माना जाता है।"
      },
      {
        "name": "Kungawrhi Puk (कुंगौरही पुक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREHsfu4sQxMOjANFZ7G6w__-EPtTzRRMcHwgReN9PTBWAjKQed1u6kT8SLqpF3o9q0JF0&usqp=CAU",
        "description": "A deep cave associated with Mizo legends. मिज़ो कथाओं से जुड़ी गहरी गुफा।"
      },
      {
        "name": "Lianchhiari Lunglen Tlang (लिआंच्हियारी लुंगलें त्लांग)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/lianchhiari-lunglen-tlang-champhai-mizoram-2-new-attr-hero",
        "description": "A legendary cliff of love and longing. प्रेम और विरह से जुड़ी पौराणिक चट्टान।"
      },

      {
        "name": "Murlen National Park (मुरलेन राष्ट्रीय उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSvtKyScyjpJ5F9EjcoDfNjAlREFWZXdr-hw&s",
        "description": "Rich in biodiversity and forests. जैव विविधता और घने जंगलों से भरपूर।"
      },

      {
        "name": "Hnahlan Vineyard (ह्नाहलान वाइनयार्ड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHR_iCly_r2OBOXKdad0VVfXcF2IQvZU6_6g&s",
        "description": "Famous for grape cultivation and wine. अंगूर की खेती और वाइन के लिए प्रसिद्ध।"
      },
      {
        "name": "Zokhawthar (जोकहावथर)",
        "image": "https://images.hindustantimes.com/img/2022/06/21/1600x900/88ab4ee0-f18a-11ec-be7e-df6703e802fb_1655835225024_1655854023498.jpg",
        "description": "Border trade town with Myanmar. म्यांमार के साथ सीमा व्यापार का कस्बा।"
      },
      {
        "name": "Hmuifang Tlang (ह्मुइफंग त्लांग)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZdKWmE8RxewBoq5FE-cDTfFDckCBD5zod2g&s",
        "description": "Scenic hilltop with greenery. हरी-भरी पहाड़ी चोटी।"
      },
      {
        "name": "Tiau River (तिआउ नदी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn2fhIEedtWymfP3c44AzFSj1ucDFdYlMxWQ&s",
        "description": "River forming natural boundary with Myanmar. म्यांमार के साथ प्राकृतिक सीमा बनाने वाली नदी।"
      },

    ],


    // 4. Serchhip

    "Serchhip (सर्चीप)": [
      {
        "name": "Vantawng Falls (वंतावंग जलप्रपात)",
        "description": "Highest waterfall in Mizoram. मिजोरम का सबसे ऊँचा झरना।",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/vantawng-khawthla-aizawl-mizoram-2-attr-hero?qlt=82&ts=1726665729651"
      },
      {
        "name": "Tuirihiau Falls (तुइरिहियाऊ जलप्रपात)",
        "description": "Unique waterfall with caves behind the stream. गुफा के साथ अनोखा झरना।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/6e/84/c2/tuirihiau-falls.jpg?w=1200&h=-1&s=1"
      },
      {
        "name": "Chhingpuii Thlan (छिंगपुई थलान)",
        "description": "Romantic legendary memorial site. प्रेम कथा से जुड़ा ऐतिहासिक स्थल।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg_6BZgN394b8GapZMgGlIVukJzvfTLqWTMg&s"
      },
      {
        "name": "Thenzawl Deer Park (थेन्ज़ॉल डियर पार्क)",
        "description": "Famous for deer and orchids. हिरण और आर्किड के लिए प्रसिद्ध।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/6d/b4/d1/deer-feeding.jpg?w=900&h=500&s=1"
      },
      {
        "name": "Paragliding at Chuanhnuai (चुआन्हनुआई पैराग्लाइडिंग)",
        "description": "Adventure paragliding experience. रोमांचक पैराग्लाइडिंग अनुभव।",
        "image": "https://cf-img-a-in.tosshub.com/lingo/itne/images/story/202206/paragliding.gif"
      },
      {
        "name": "Thenzawl Golf Course (थेन्ज़ॉल गोल्फ कोर्स)",
        "description": "Beautiful green golf course surrounded by hills. पहाड़ियों से घिरा आकर्षक गोल्फ कोर्स।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA6Vp6FOb6BVSlqPc_Rn1uXdhvk_4m82b3lQ&s"
      },
      {
        "name": "Dilpui (दिलपुई)",
        "description": "Scenic village with traditional Mizo lifestyle. पारंपरिक मिजो जीवन शैली और प्राकृतिक सौंदर्य से भरपूर गाँव।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8jMByy-bIoy9U9Z1El2Il--ldqYeyOkzQhg&s"
      },

      {
        "name": "Chawngchilhi Puk (चावंगचिल्ही पुक गुफा)",
        "description": "Famous cave linked with local legends. स्थानीय किंवदंतियों से जुड़ी प्रसिद्ध गुफा।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/6d/b8/b4/chawngchilhi-puk.jpg?w=1200&h=-1&s=1"
      },

      {
        "name": "Hmuifang (ह्मुइफांग)",
        "description": "Hill station with dense forests and scenic beauty. घने जंगलों और प्राकृतिक सौंदर्य वाला हिल स्टेशन।",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/hmuifang-mountain-peak-aizawl-mizoram-1-attr-hero?qlt=82&ts=1726665832153"
      }
    ],


    // 5. Kolasib
    "Kolasib (कोलासिब)": [
      {
        "name": "Tamdil Lake (तामदिल झील)",
        "description": "Natural lake surrounded by forests. जंगलों से घिरी झील।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/94/6f/1b/tamdil-lake-the-mirror.jpg?w=1200&h=-1&s=1",
      },
      {
        "name": "Serlui B Dam (सेरलुई बी डैम)",
        "description": "Hydroelectric project site. हाइड्रो प्रोजेक्ट स्थल।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4BPECIqgj7wksq6OJq-iUYrCvtHUFbxx3qQ&s",
      },

      {
        "name": "Tuirial River View (तुइरियल नदी)",
        "description": "Peaceful riverside location. शांत नदी किनारा।",
        "image": "https://www.mappls.com/place/CAU3AO_1696337897534_1.png",
      },

    ],

    // 6. Mamit
    "Mamit (मामित)": [
      {
        "name": "Dampa Tiger Reserve (डम्पा टाइगर रिजर्व)",
        "description": "Famous tiger reserve of Mizoram. मिजोरम का प्रसिद्ध टाइगर रिजर्व।",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/dampa-tiger-reserve-aizawl-mizoram-1-attr-hero?qlt=82&ts=1726674869819",
      },
      {
        "name": "Phuldungsei Peak (फुलदुंगसेई पीक)",
        "description": "High peak with border view. सीमा का नजारा दिखाने वाली चोटी।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgddE2E6HSl7xiV6-oI5WM4k0Tq012-VcdKA&s",
      },

      {
        "name": "West Phaileng (वेस्ट फाइलेंग)",
        "description": "Gateway to forests. जंगलों का प्रवेश द्वार।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqyG8dgI4RAkFGHDJICslNdMKFNeR7iEfZsA&s",
      },
      {
        "name": "Tuipuibari River (तुइपुइबरी नदी)",
        "description": "Scenic riverside. सुंदर नदी किनारा।",
        "image": "https://upload.wikimedia.org/wikipedia/commons/5/55/Toipui%2C_Tuipui_river_Mizoram_India.jpg",
      },
    ],

    // 7. Lawngtlai
    "Lawngtlai (लॉंगतलाई)": [
      {
        "name": "Phawngpui Blue Mountain (फावंगपुई)",
        "description": "Highest peak of Mizoram, famous for trekking, orchids, and rare species. मिजोरम की सबसे ऊँची चोटी, ट्रेकिंग, ऑर्किड्स और दुर्लभ प्रजातियों के लिए प्रसिद्ध।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWh92u6p4QJ-EL8mHfkT28xZCLYpvQhccEVQ&s"
      },
      {
        "name": "Tuichawng River (तुइचावंग नदी)",
        "description": "Beautiful riverside spot with natural charm. प्राकृतिक सौंदर्य से भरा सुंदर नदी तट।",
        "image": "https://upload.wikimedia.org/wikipedia/commons/5/55/Toipui%2C_Tuipui_river_Mizoram_India.jpg"
      },
      {
        "name": "Vathuampui Hills (वथुआम्पुई हिल्स)",
        "description": "Peaceful hill station with panoramic views. शांत हिल स्टेशन, चारों ओर के सुंदर नज़ारों के साथ।",
        "image": "https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2021/07/Phawngpui-Hills-Mizoram.jpg?resize=1024%2C768&ssl=1"
      },
      {
        "name": "Ngengpui Wildlife Sanctuary (नेगेंपुई वन्यजीव अभयारण्य)",
        "description": "Wildlife sanctuary home to elephants, tigers, and rich biodiversity. हाथियों, बाघों और जैव विविधता से भरपूर वन्यजीव अभयारण्य।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM45IRKyel9VWFRKI8kKG_JXe8tQ6uonekxg&s"
      },

    ],


    // 8. Saiha
    "Saiha (सायहा)": [
      {
        "name": "Palak Dil Lake (पालक झील)",
        "description": "Biggest lake in Mizoram, surrounded by rich flora and fauna. मिजोरम की सबसे बड़ी झील, चारों ओर हरियाली और वन्यजीव से घिरी।",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/palak-lake-aizawl-mizoram-2-attr-hero?qlt=82&ts=1726665779413"
      },
      {
        "name": "Mount Mawma (माउंट माव्मा)",
        "description": "Famous trekking peak with panoramic views. प्रसिद्ध ट्रेकिंग स्थल, जहाँ से शानदार दृश्य दिखते हैं।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWh92u6p4QJ-EL8mHfkT28xZCLYpvQhccEVQ&s"
      },
      {
        "name": "Saiha View Point (सायहा व्यू प्वाइंट)",
        "description": "Scenic viewpoint offering a beautiful sight of Saiha town. सायहा नगर का सुंदर दृश्य दिखाने वाला व्यू प्वाइंट।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvG1v5ZWZO4XBP-HC3mNOKCca_4bxZbJvr6g&s"
      },
      {
        "name": "Maraland Culture (मारालैंड संस्कृति)",
        "description": "Known for unique Mara tribal culture and traditions. मारा जनजाति की अनोखी संस्कृति और परंपराओं के लिए प्रसिद्ध।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlx6B0Io2NSF2lOQVLaDS-bleY6L_ugf1ahA&s"
      },
      {
        "name": "Tokalo Wildlife Sanctuary (टोकालो अभयारण्य)",
        "description": "Sanctuary rich in wildlife including elephants, deer, and exotic birds. हाथियों, हिरण और दुर्लभ पक्षियों से भरा वन्यजीव अभयारण्य।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfjJOEXaT8qTmVkHaMX_Bm7hPsN6LCCr7BnA&s"
      }
    ],




    "Saitual (सैतुअल)": [
      {
        "name": "Ṭamdil Lake (तामदिल झील)",
        "description": "Most visited natural lake of Mizoram, surrounded by dense forest, rich in flora and fauna. मिजोरम की सबसे प्रसिद्ध झील, जंगलों से घिरी और जैव विविधता से भरपूर।",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/94/6f/11/the-lake-has-an-adjoining.jpg?w=2000&h=-1&s=1"
      },
      {
        "name": "Ṭawi Wildlife Sanctuary (टावी वन्यजीव अभयारण्य)",
        "description": "Spread over 35.75 sq km with rich flora like bamboos, champaca, and fauna including tiger, leopard, hoolock gibbon, and hornbills. समृद्ध वन्यजीव और दुर्लभ पक्षियों वाला अभयारण्य।",
        "image": "data:image/jpeg;base64,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"
      },
      {
        "name": "Lengteng Wildlife Sanctuary (लेंगटेंग वन्यजीव अभयारण्य)",
        "description": "Second-highest peak region, known for rare birds like Blyth’s tragopan, hornbills, and animals like goral, macaque, and sambar deer. दुर्लभ पक्षियों और जीव-जंतुओं से भरा अभयारण्य।",
        "image": "https://lh3.googleusercontent.com/gps-cs-s/AC9h4nrZ2V5ts1LbkZ564bsBMK2jgnja-lLxHNtvOE2ZdclCUJiUwoqpxwSH0McQnx9ixLxGWTq3JYhHJcut10rUY0k3hH59vl4P1fGjih7ixAN1qSdiRrzuMj6z-Yo-IiFfNxCoDUpR3g=w243-h203-n-k-no-nu"
      },
      {
        "name": "Rungdil Lake (रुंगदिल झील)",
        "description": "A picturesque twin-lake surrounded by serene beauty, famous among bird watchers. सुंदर जुड़वां झील, पक्षी प्रेमियों के लिए खास।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZInI2-aMSdM37rm2EgeHw6OCQkFXy2JiX8A&s"
      },
      {
        "name": "Ṭawi Puk Cave (टावी पुक गुफा)",
        "description": "Hidden natural cave near Hmunṭha, offering an offbeat experience and adventure. ह्मुंठा के पास स्थित रहस्यमयी गुफा।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD--DHJ56mI2s1_Sn2vwlkg2LxsxICM3p_-Q&s"
      },
      {
        "name": "Teikhang Kurung (तेइखांग कुरुंग)",
        "description": "Spectacular rocky formations with dramatic cliffs near Teikhang village. शानदार चट्टानी संरचना और प्राकृतिक नज़ारे।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfeABCqZxKK1ChXFY1yesV4NbKKNaCfxAQqQ&s"
      },
      {
        "name": "Lung Milem Suangpuilawn (लुंग मीलम सुवांगपुइलॉवन)",
        "description": "Mysterious stone slab with undeciphered inscriptions near a stream. रहस्यमयी शिला जिस पर आज तक लिखे चिन्हों का अर्थ अज्ञात है।",
        "image": "https://cdn.s3waas.gov.in/s3303ed4c69846ab36c2904d3ba8573050/uploads/bfi_thumb/2020050672-op42yjl371462geiy19q19228galdjmuu8txzelua2.jpg"
      },
],
      "Khawzawl (खावज़ॉल)": [
        {
          "name": "Vangchhia Archaeological Site (वंगछ्हिया पुरातात्विक स्थल)",
          "description": "UNESCO heritage site with ancient stone carvings and monoliths. प्राचीन शिलालेख और मोनोलिथ वाला यूनेस्को धरोहर स्थल।",
          "image": "https://static.abplive.com/ani-images/imagenov30.jpg",
        },
    ],



    // 11. Hnahthial
    "Hnahthial (ह्नाहथियाल)": [
      {
        "name": "Thiltlang Hills (थिल्टलंग हिल्स)",
        "description": "Famous hilly region. प्रसिद्ध पहाड़ी क्षेत्र।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO1oTtYZKtyxxlWiIopySOP7uY1ojVRrsN_FiVyockTO4HEJqc&s",
      },
      {
        "name": "Hmuifang Tlang (ह्मुइफंग पहाड़ी)",
        "description": "Hilltop with greenery. हरियाली से भरी पहाड़ी।",
        "image": "https://cdn.s3waas.gov.in/s371a3cb155f8dc89bf3d0365288219936/uploads/2018/08/2018080752-300x191.jpg",
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