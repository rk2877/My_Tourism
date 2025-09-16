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
    "Baksa (बक्सा)": [
      {
        "name": "Manas National Park (मानस राष्ट्रीय उद्यान)",
        "image": "https://i0.wp.com/currylines.com/wp-content/uploads/2018/12/IMG_20181211_104401.jpg?fit=1920%2C1080&ssl=1",
        "description": "A UNESCO World Heritage Site, home to tigers, rhinos, elephants, and scenic beauty along the Manas River. मानस राष्ट्रीय उद्यान यूनेस्को विश्व धरोहर स्थल है और वन्यजीवों तथा प्राकृतिक सौंदर्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Manas Soushi Khongkhor (मानस सौशी खोंगखोर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQlYZrZYnguhLCq7JQcuIZlDFZKkC4cMMDfA&s",
        "description": "A community-based eco-tourism initiative offering homestays and cultural experiences near Manas. मानस सौशी खोंगखोर सामुदायिक ईको-पर्यटन केंद्र है।"
      },
      {
        "name": "Moina Pukhuri (मोइना पोखुरी)",
        "image": "https://i.ytimg.com/vi/Cphq_XEsrLE/maxresdefault.jpg",
        "description": "A scenic pond surrounded by greenery, ideal for relaxation. मोइना पोखुरी हरियाली से घिरा प्राकृतिक स्थल है।"
      },
      {
        "name": "Bogamati (बोगामाटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMhs6gkk9pHPXWd6OWl9Dx7ZfDD2FXZmduaA&s",
        "description": "A picturesque picnic spot at the Indo-Bhutan border with the Bornadi River flowing through. बोगामाटी अपनी प्राकृतिक सुंदरता और नदी किनारे पिकनिक स्थल के रूप में प्रसिद्ध है।"
      },
      {
        "name": "Daragaon (दारागाँव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMI4E1IlQODVgLTkZkN--T6TnGzpuIRn6GrA&s",
        "description": "A small hill village known for its scenic views and eco-tourism activities. दारागाँव अपनी प्राकृतिक सुंदरता और ईको-पर्यटन के लिए जाना जाता है।"
      },
      {
        "name": "Tea Tourism (चाय पर्यटन)",
        "image": "https://www.savaari.com/blog/wp-content/uploads/2023/10/tea-plantations-garden-nature-chiang-mai-thailand-autumn-leaves-by-nature-1.jpg",
        "description": "Baksa’s tea estates offer visitors a chance to explore Assam’s world-famous tea culture. बक्सा के चाय बागान असम की प्रसिद्ध चाय संस्कृति का अनुभव कराते हैं।"
      }
    ],
    "Barpeta (बरपेटा)": [
      {
        "name": "Barpeta Satra (बरपेटा सतरा)",
        "description":
        "A major Vaishnavite monastery famous for Assamese culture and religious festivals.\n"
            "असम की संस्कृति और धार्मिक उत्सवों के लिए प्रसिद्ध एक प्रमुख वैष्णव मठ।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgnJhmEuPDuYNeGixgjSv0ay7ME6u0XeEWxg&s",
      },
      {
        "name": "Manas National Park (मानस राष्ट्रीय उद्यान)",
        "description":
        "A UNESCO World Heritage site known for rich biodiversity, elephants and rhinos.\n"
            "समृद्ध जैव विविधता, हाथियों और गैंडों के लिए प्रसिद्ध यूनेस्को विश्व धरोहर स्थल।",
        "image": "https://i0.wp.com/currylines.com/wp-content/uploads/2018/12/IMG_20181211_104401.jpg?fit=1920%2C1080&ssl=1",
      },
      {
        "name": "Gorokhia Gosair Than (गोरोकिया गोसाईर थान)",
        "description":
        "A traditional pilgrimage site with spiritual significance to local devotees.\n"
            "स्थानीय भक्तों के लिए आध्यात्मिक महत्व वाला पारंपरिक तीर्थ स्थल।",
        "image": "https://i.ytimg.com/vi/UALkyuglnmA/maxresdefault.jpg",
      },
      {
        "name": "Ganakkuchi Satra (गणकुची सतरा)",
        "description":
        "An important satra preserving classical Assamese dance, music and culture.\n"
            "असमिया नृत्य, संगीत और संस्कृति को संरक्षित करने वाली एक महत्वपूर्ण सतरा।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgWU7JdzATcSduUDMgg5gECESwfgQBXQ9StQ&s",
      },
      {
        "name": "Patbaushi Satra (पतबौशी सतरा)",
        "description":
        "A historic satra known for its traditional rituals and community events.\n"
            "पारंपरिक अनुष्ठान और सामुदायिक कार्यक्रमों के लिए प्रसिद्ध एक ऐतिहासिक सतरा।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjnQJO22HpAtDbNf1pftSLaOOZooMYjUxoWg&s",
      },
      {
        "name": "Sundardia Satra (सुंदर्डिया सतरा)",
        "description":
        "A cultural centre where local arts and religious practices are performed.\n"
            "जहां स्थानीय कलाओं और धार्मिक प्रथाओं का प्रदर्शन किया जाता है।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPcwbljvAWAjN0ZTzRVw6hP4qO1junjL95Lg&s",
      },
      {
        "name": "Satra Baradi (सतरा बरडी)",
        "description":
        "A heritage satra with colourful festivals and cultural gatherings.\n"
            "रंगीन त्योहारों और सांस्कृतिक सभाओं वाली एक विरासत सतरा।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnQSHvAXY5L7eCfDlmyE984THGPGqFecft0Y-7nAbLviwOJ_7UL1WD63oWCs0IAYpzVs&usqp=CAU",
      },
      {
        "name": "Brass Metal Industry of Sarthebari (सार्ठेबारी पीतल उद्योग)",
        "description":
        "Famous for traditional brass and bell metal handicrafts — a local artisan hub.\n"
            "पारंपरिक पीतल और बेल मेटल हस्तशिल्प के लिए प्रसिद्ध — एक स्थानीय कारीगर केंद्र।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIxfcOkqXxMa8ewj6IFtwgCnL0QWkWvyus7w&s",
      },
    ],

    "Golaghat (गोलाघाट)": [
      {
        "name": "Kaziranga National Park (काज़ीरंगा राष्ट्रीय उद्यान)",
        "description": "Kaziranga is home to the world's largest population of one-horned rhinoceros.\nकाज़ीरंगा एक सींग वाले गैंडे की दुनिया की सबसे बड़ी आबादी का घर है।",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGMOqg5C66FHRXh38BOs9_zifY5dDoixmD-A&s",
      },
    ],
    "Majuli (माजुली)": [
      {
        "name": "Majuli Island (माजुली द्वीप)",
        "description": "Majuli is the world's largest river island and a hub of Assamese culture.\nमाजुली दुनिया का सबसे बड़ा नदी द्वीप है और असमिया संस्कृति का केंद्र है।",
        "image": "https://upload.wikimedia.org/wikipedia/commons/3/3c/Majuli_Island.jpg",
      },
    ],
    "Sivasagar (शिवसागर)": [
      {
        "name": "Ahom Monuments (अहोम स्मारक)",
        "description": "Famous for Talatal Ghar, Rang Ghar and historical significance.\nतालताल घर, रंग घर और ऐतिहासिक महत्व के लिए प्रसिद्ध।",
        "image": "https://upload.wikimedia.org/wikipedia/commons/6/6a/Talatal_Ghar.jpg",
      },
    ],

    "Biswanath (विश्वनाथ)": [
      {
        "name": "Monabarie Tea Estate (मोनाबारी टी एस्टेट)",
        "description":
        "One of the oldest tea estates in Assam, the Monabarie Tea Estate is known for its lush greenery and scenic views. Situated on the banks of the Brahmaputra River, this estate is famous for producing high-quality Assam tea, which is globally recognized.\n"
            "मोनाबारी टी एस्टेट असम के सबसे पुराने चाय बागानों में से एक है, जो अपनी हरी-भरी वादियों और सुंदर दृश्यों के लिए प्रसिद्ध है। यह ब्रह्मपुत्र नदी के किनारे स्थित है और उच्च गुणवत्ता वाली असम चाय के लिए जाना जाता है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTShZZKDcGcqiwAdfA0b8y0ojuMlqgMgiAalw&s",
      },
      {
        "name": "Nomara Picnic Spot (नोमारा पिकनिक स्पॉट)",
        "description":
        "Nomara Picnic Spot is a beautiful and serene location, ideal for picnics and family outings. It offers a peaceful environment with lush greenery and scenic beauty of hills and rivers.\n"
            "नोमारा पिकनिक स्पॉट एक खूबसूरत और शांत जगह है, जो पिकनिक और पारिवारिक घूमने के लिए उपयुक्त है। यहाँ की हरियाली, पहाड़ और नदियाँ इसे आकर्षक बनाती हैं।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTISNhdiBarRgbY6ejViCXgINm3vaVCXVfmHQ&s",
      },
      {
        "name": "Biswanath Temple (बिस्वनाथ मंदिर)",
        "description":
        "Biswanath Temple is a historic and religious site situated on the banks of the Brahmaputra River. It holds great significance among devotees and is often referred to as 'Gupta Kashi' of Assam.\n"
            "बिस्वनाथ मंदिर ब्रह्मपुत्र नदी के किनारे स्थित एक प्राचीन और धार्मिक स्थल है। इसे 'गुप्त काशी' के नाम से भी जाना जाता है और यह श्रद्धालुओं के लिए विशेष महत्व रखता है।",
        "image":
        "https://www.shutterstock.com/image-photo/biswanath-temple-chariali-ghat-600nw-1539388559.jpg",
      },
    ],
    "Bongaigaon (बोंगाईगांव)": [
      {
        "name": "Naakkati Hills (नाक्काटी हिल्स)",
        "description":
        "Naakkati Hills, also known as Cutting Nose Hill, is famous for its unique shape resembling a human nose. Surrounded by greenery, it is a perfect destination for trekking and nature lovers.\n"
            "नाक्काटी हिल्स, जिसे कटिंग नोज़ हिल भी कहा जाता है, अपनी अनोखी नाक जैसी आकृति के लिए प्रसिद्ध है। यह हरियाली से घिरा हुआ है और ट्रेकिंग व प्रकृति प्रेमियों के लिए आदर्श स्थान है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoexacVLbX4dLQhpg9L0fX8OBXlMUbjJ9ryw&s",
      },
      {
        "name": "Koyakujia Beel cum Park (कोयाकुजिया बील पार्क)",
        "description":
        "Koyakujia Beel is a beautiful lake and park, home to migratory birds and diverse flora and fauna. It is a popular picnic spot among locals.\n"
            "कोयाकुजिया बील एक सुंदर झील और पार्क है, जो प्रवासी पक्षियों और जैव विविधता के लिए प्रसिद्ध है। यह स्थानीय लोगों के बीच एक लोकप्रिय पिकनिक स्थल है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdJ0aa9QeczA9SOrxSnbEm5ejc4Yzx7U32RA&s",
      },
      {
        "name": "Rock Cut Cave (Jogighopa) (रॉक कट गुफा, जोगीघोपा)",
        "description":
        "The Jogighopa Rock Cut Caves are ancient Buddhist caves carved into the hills along the Brahmaputra River, reflecting historical and cultural heritage.\n"
            "जोगीघोपा रॉक कट गुफाएँ प्राचीन बौद्ध गुफाएँ हैं जो ब्रह्मपुत्र नदी के किनारे पहाड़ियों में काटकर बनाई गई थीं। ये ऐतिहासिक और सांस्कृतिक धरोहर को दर्शाती हैं।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZzC72wGAA8VX04G4wDMYY0_xgF0pcr0IcoQ&s",
      },
      {
        "name": "Tamrangra Beel (Lake) (तम्रंगा बील)",
        "description":
        "Tamrangra Beel is a scenic lake known for bird watching and boating. It is a biodiversity hotspot attracting migratory birds.\n"
            "तम्रंगा बील एक सुंदर झील है, जो बर्ड वॉचिंग और नौकायन के लिए प्रसिद्ध है। यह प्रवासी पक्षियों के कारण जैव विविधता का हॉटस्पॉट है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRv9kxxMz0FKoW20JlVkoa16vFdPCnBcFHcQ&s",
      },
      {
        "name": "Kakoijana Reserve Forest (काकोइजाना रिज़र्व फ़ॉरेस्ट)",
        "description":
        "Kakoijana Reserve Forest is famous for the endangered Golden Langur and is a protected area rich in wildlife and greenery.\n"
            "काकोइजाना रिज़र्व फ़ॉरेस्ट लुप्तप्राय गोल्डन लंगूर के लिए प्रसिद्ध है और यह वन्यजीव व हरियाली से भरपूर संरक्षित क्षेत्र है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3inaUgvPH3cEhEi-_BjobvlTfTJfMImpFvw&s",
      },
      {
        "name": "Lalmati Duramari Ganesh Mandir (लालमती दु्रामारी गणेश मंदिर)",
        "description":
        "Lalmati Duramari Ganesh Mandir is an ancient temple carved out of stone, dedicated to Lord Ganesha. It is a site of historical and religious significance.\n"
            "लालमती दु्रामारी गणेश मंदिर एक प्राचीन पत्थर से बना मंदिर है, जो भगवान गणेश को समर्पित है। यह ऐतिहासिक और धार्मिक दृष्टि से महत्वपूर्ण है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTphFBtp-aSPKZqHHhGe3YrBOu7bUxYVe5mJQ&s",
      },
      {
        "name": "Bagheswari Temple (बघेश्वरी मंदिर)",
        "description":
        "Bagheswari Temple is one of the oldest temples in Assam, dedicated to Goddess Bagheswari. It is a popular pilgrimage site.\n"
            "बघेश्वरी मंदिर असम के सबसे प्राचीन मंदिरों में से एक है, जो देवी बघेश्वरी को समर्पित है। यह एक लोकप्रिय तीर्थ स्थल है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW-Xq2YUDWYDunspijLZJLwoKjgbOpLt_6vg&s",
      },
      {
        "name": "Bagheswari Hill (बघेश्वरी हिल)",
        "description":
        "Bagheswari Hill is a sacred hill that houses the famous Bagheswari Temple and offers a peaceful environment for visitors.\n"
            "बघेश्वरी हिल एक पवित्र पहाड़ी है, जहाँ प्रसिद्ध बघेश्वरी मंदिर स्थित है। यह आगंतुकों के लिए शांति और आस्था का स्थान है।",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj096YNm9IxucHg_d2xw-yp9Pau8rCuAg46g&s",
      },
      {
        "name": "Sri Maa Maharani Temple (श्री माँ महारानी मंदिर)",
        "description":
        "Sri Sri Maa Maharani Devi Temple is a spiritual and cultural center of Khagarpur, attracting devotees from nearby areas.\n"
            "श्री श्री माँ महारानी देवी मंदिर खगरपुर का एक आध्यात्मिक और सांस्कृतिक केंद्र है, जो आसपास के भक्तों को आकर्षित करता है।",
        "image":
        "https://i.ytimg.com/vi/xfSJYS8j2ww/sddefault.jpg",
      },
    ],
    "Cachar (कछार)": [
  {
    "name": "Maniharan Tunnel (मणिहरन सुरंग)",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR04-PhC_2seIMl8l-5bUk2zP6OHmEMV7jLGw&s",
    "description": "Located near Bhuban Hill, the holy waters of Tribeni flow here and devotees take a sacred bath. मणिहरन सुरंग त्रिवेणी के पवित्र जल से जुड़ा स्थल है जहाँ श्रद्धालु स्नान करते हैं।"
  },
  {
  "name": "Silchar (सिलचर)",
  "image": "https://images.assettype.com/english-sentinelassam/import/h-upload/2021/10/20/261920-silchar.webp",
  "description": "The headquarters of Cachar district, known as the ‘Island of Peace’ with cultural and commercial importance. सिलचर कछार जिला मुख्यालय है और सांस्कृतिक एवं वाणिज्यिक केंद्र माना जाता है।"
},
{
"name": "Khaspur (खसपुर)",
"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2ALwtwQN1K5hb5E25mTKQ38Mmcia4666I_g&s",
"description": "Historic capital of the Dimasa kingdom, now famous for its Rajbari ruins. खसपुर दीमासा साम्राज्य की प्राचीन राजधानी है।"
},
{
"name": "Bhubaneswar Temple (भुवनेश्वर मंदिर)",
"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwpGkzX4TIFX7BMhXa9qegPuslLaMmtdsC1w&s",
"description": "A temple dedicated to Lord Shiva, especially crowded during Maha Shivaratri. भुवनेश्वर मंदिर शिवभक्तों का प्रमुख तीर्थ स्थल है।"
},
{
"name": "Kancha Kanti Kali Temple (कांचा कांती काली मंदिर)",
"image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/1d/ab/05/sri-kancha-kanti-devi.jpg?w=1200&h=1200&s=1",
"description": "A unique temple dedicated to Goddess Kali, worshipped in both Hindu and tribal traditions. कांचा कांती काली मंदिर हिन्दू और जनजातीय श्रद्धा का संगम है।"
},
{
"name": "Kachari Fort (कछारी किला)",
"image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/a0/a5/7f/khaspur-kachari-king.jpg?w=600&h=400&s=1",
"description": "The ruins of the Kachari Fort reflect the history of the Dimasa kingdom. कछारी किला दीमासा साम्राज्य के इतिहास और स्थापत्य कला का प्रतीक है।"
}
],
    "Charaideo (चराइदेव)": [

      {

        "name": "Charaideo Maidam (चराइदेव मैदाम)",

        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUD5Ow4Bq_x1T8Vteb1IscNpkFIlnHt2WyVg&s",

        "description": "The burial grounds of the Ahom kings and queens, known as the 'Pyramids of Assam'. चराइदेव मैदाम अहोम राजाओं-रानियों के समाधि स्थल हैं।"

      },

      {

        "name": "Dilighat (दिलिघाट)",

        "image": "https://mediaim.expedia.com/destination/2/da6952177c7bacf7bd8c3d29d5d67c87.jpg?impolicy=fcrop&w=450&h=280&q=medium",

        "description": "A scenic riverbank and historic trade route point. दिलिघाट एक सुंदर नदी तट और ऐतिहासिक व्यापार मार्ग स्थल है।"

      },

      {

        "name": "Buddhist Monastery (बौद्ध मठ)",

        "image": "https://www.mappls.com/place/QJATOU_1641979400566_1.jpeg",

        "description": "A peaceful monastery reflecting Buddhist culture and traditions. यह बौद्ध मठ संस्कृति और शांति का केंद्र है।"

      },

      {

        "name": "Borpatra Pukhuri (बोरपत्रा पोखरी)",

        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-bc-HxYFKw9Z1eDuDleO_h_w-DUfp07HpoA&s",

        "description": "A historic pond surrounded by scenic beauty. बोरपत्रा पोखरी एक ऐतिहासिक जलाशय है जो प्राकृतिक सुंदरता से घिरा हुआ है।"

      },

      {

        "name": "Tea Gardens (चाय बागान)",

        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdy-ZMiM2AUqluAUgvB1HGI0yY4eWZBHk7Ng&s",

        "description": "Lush tea estates that showcase Assam’s tea heritage. चाय बागान असम की प्रसिद्ध चाय संस्कृति और हरियाली का प्रतीक हैं।"
      }
  ],
    "Chirang (चिरांग)": [
      {
        "name": "Gelephu, India-Bhutan International Border (गेलेफु भारत-भूटान अंतर्राष्ट्रीय सीमा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcqaK7hqv_jcdOhTT3pZdPj6bLzB2rQZ83WQ&s",
        "description": "An important border point connecting Assam with Bhutan at Gelephu. गेलेफु भारत-भूटान सीमा असम और भूटान को जोड़ने वाला प्रमुख स्थल है।"
      },
      {
        "name": "Kalamati (कालामाटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVxaqCAzxOgbMqqPzppRIj2xGhQkB_YvZorg&s",
        "description": "A picturesque destination famous for black stone landscapes and trekking. कालामाटी अपने काले पत्थरों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Mwnabili Picnic Spot & Eco Tourism (म्वनाबिली पिकनिक स्थल व ईको-पर्यटन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzeyFdHG8heCAnKFEMhC1f9aISy0vtbDamJw&s",
        "description": "A popular eco-tourism site and picnic spot amidst greenery. म्वनाबिली हरियाली के बीच लोकप्रिय पर्यटन और पिकनिक स्थल है।"
      },
      {
        "name": "Kali Mandir (काली मंदिर)",
        "image": "https://i.ytimg.com/vi/Soct1KY-Hc0/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAcnIf_9UPT7H2-USDLMAKIqRoUaw",
        "description": "A revered temple dedicated to Goddess Kali, attracting many devotees. काली मंदिर मां काली को समर्पित पूजनीय स्थल है।"
      }
    ],

    "Darrang (दर्रांग)": [
      {
        "name": "Orang National Park (ओरांग राष्ट्रीय उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/da/76/1d/beutiful-road-in-the.jpg?w=1200&h=1200&s=1",
        "description": "A small yet beautiful national park, home to rhinos, tigers, and diverse bird species. ओरांग राष्ट्रीय उद्यान गैंडा, बाघ और अनेक पक्षियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Gandhi Smriti Park (गांधी स्मृति पार्क)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/61/d7/ad/gandhi-smriti-park.jpg?w=1200&h=700&s=1",
        "description": "A peaceful park built in memory of Mahatma Gandhi, ideal for relaxation. गांधी स्मृति पार्क महात्मा गांधी की स्मृति में बना शांत स्थल है।"
      },
      {
        "name": "Patharughat Swaheed Minar (पाथरुघाट शहीद मीनार)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/24/93/8a/caption.jpg?w=500&h=300&s=1",
        "description": "A historic monument honoring the martyrs of the Patharughat uprising. पाथरुघाट शहीद मीनार असम के शहीदों की याद में बना ऐतिहासिक स्मारक है।"
      },
      {
        "name": "Pukhuria Beel (पुखुरिया बिल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/5e/cd/f0/caption.jpg?w=800&h=400&s=1",
        "description": "A natural wetland, popular for birdwatching and scenic beauty. पुखुरिया बिल प्राकृतिक जलाशय है जो पक्षी प्रेमियों और पर्यटकों के बीच लोकप्रिय है।"
      },
      {
        "name": "Khatara Satra (खटारा सत्र)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLmL8U2Cao9wj7A78DjodTbYh5A2xu1uUrbA&s",
        "description": "An ancient Vaishnavite monastery reflecting Assamese culture and traditions. खटारा सत्र असम की वैष्णव संस्कृति और परंपराओं का प्रतीक है।"
      }
    ],
    "Dhemaji (धीमाजी)": [
      {
        "name": "Gerukamukh (गेरुकामुख)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTMZ7WzC4azKpHatDD2vO-TePwIil6mlNRpQ&s",
        "description": "A scenic spot where the Subansiri River meets the Brahmaputra. Surrounded by hills and forests, it is famous for the Subansiri Dam, picnics, and angling. गेरुकामुख असम का सुंदर स्थल है जहाँ सुबनसिरी और ब्रह्मपुत्र नदियाँ मिलती हैं।"
      },
      {
        "name": "Malinithan (मालिनीथान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1PnHnGZV4H9xcxMqpcDqgNWXAgvFUYRb2wg&s",
        "description": "An archaeological site with ancient temple ruins located near the Assam–Arunachal border. मालिनीथान प्राचीन मंदिर खंडहरों और ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Maa Manipuri Than (माँ मणिपुरी थान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr3eeLJgc4wE7bz5Q4IazHF0gdFHI_rjX6IQ&s",
        "description": "A historic temple established by Ahom King Gourinath Singha in honor of the Manipuri people. माँ मणिपुरी थान धार्मिक और सांस्कृतिक दृष्टि से महत्वपूर्ण मंदिर है।"
      },
      {
        "name": "Ghuguha Dol (घुघुवा डोल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3i7LTGncmDW6JaKmMdexzEznsbb8IooTPdw&s",
        "description": "A temple built in memory of Queen Ghuguhi, wife of Ahom King Tyao Khamti. घुघुवा डोल ऐतिहासिक और धार्मिक स्थल है।"
      },
      {
        "name": "Bordoibam Bilmukh Bird Sanctuary (बोरदोइबाम बिलमुख पक्षी अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbqLZ5FKQFeoCyOZVRM_d3lkfju0ZnBIYYeg&s",
        "description": "A wildlife sanctuary spread over 11.25 sq.km, known for Whistling Teal and migratory birds. बोरदोइबाम बिलमुख पक्षी अभयारण्य पक्षी प्रेमियों के लिए स्वर्ग समान है।"
      },
      {
        "name": "Angling and Fishing at Gerukamukh (गेरुकामुख में मछली पकड़ना)",
        "image": "https://i.ytimg.com/vi/ZA0Pb5MjPBY/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLA07kkcUq3djUrirAL3hikkQXTd4g",
        "description": "A popular winter activity at the Subansiri River where tourists and locals enjoy fishing and angling. गेरुकामुख सुबनसिरी नदी में मछली पकड़ने और एंग्लिंग के लिए प्रसिद्ध है।"
      }
    ],
    "Dhubri (धुबरी)": [
      {
        "name": "Mahamaya Dham (महामाया धाम)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/f/f7/MTGate.jpg",
        "description": "A famous Hindu temple in Dhubri dedicated to Goddess Mahamaya. | धुबरी में स्थित प्रसिद्ध महामाया मंदिर।"
      },
      {
        "name": "Gurudwara Sri Guru Tegbahadur Sahibji (गुरुद्वारा श्री गुरु तेगबहादुर साहिबजी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/58/07/a0/gurudwara-sri-guru-tegh.jpg?w=900&h=500&s=1",
        "description": "A prominent Sikh Gurudwara in Dhubri. | धुबरी में स्थित प्रमुख सिख गुरुद्वारा।"
      },
      {
        "name": "ASHARIKANDI – A Terracotta Village (अशरिकंडी – टेराकोटा गांव)",
        "image": "https://static.wixstatic.com/media/ed8145_6f56ddb19e3445e585a9efd217cb0560~mv2.jpg/v1/fill/w_613,h_358,al_c,q_80,enc_avif,quality_auto/ed8145_6f56ddb19e3445e585a9efd217cb0560~mv2.jpg",
        "description": "Famous for its terracotta craft and pottery. | टेराकोटा कला और मिट्टी के बर्तन के लिए प्रसिद्ध।"
      },
      {
        "name": "Chakrasila Wildlife Sanctuary (चक्रसिला वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9mSqzH263oN08bj8yChhh80MVeyr8mvrrJg&s",
        "description": "A wildlife sanctuary known for golden langurs and rich biodiversity. | गोल्डन लंगूर और जैव विविधता के लिए प्रसिद्ध वन्यजीव अभयारण्य।"
      },
      {
        "name": "Rangamati Mosque (रंगामाटी मस्जिद)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIfaS8L6_QXNvEK7EJhY2wFjDNUbSM6Q5rOQ&s",
        "description": "Historic mosque located in Dhubri town. | धुबरी शहर में स्थित ऐतिहासिक मस्जिद।"
      },
      {
        "name": "Panchpeer Dargaha (पंचपीर दरगाह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYuKitxGn4Oj6ZCYLlU4Chi2c5pcCNCc8w-w&s",
        "description": "A revered Sufi shrine in Dhubri. | धुबरी में स्थित एक प्रसिद्ध सूफी दरगाह।"
      }
    ],
    "Dibrugarh (डिब्रूगढ़)": [
      {
        "name": "Jagannath Temple (जगन्नाथ मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/07/82/4f/mai-temple.jpg?w=1000&h=-1&s=1",
        "description": "A beautiful temple dedicated to Lord Jagannath with six smaller shrines. | भगवान जगन्नाथ को समर्पित सुंदर मंदिर, जिसमें छह छोटे मंदिर भी हैं।"
      },
      {
        "name": "Bogibeel Bridge (बोगीबील पुल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/a3/de/8e/bogibeel-ghat-boat-sunset.jpg?w=700&h=500&s=1",
        "description": "One of the longest bridges in Assam over the Brahmaputra River. | ब्रह्मपुत्र नदी पर असम का सबसे लंबा पुलों में से एक।"
      },
      {
        "name": "Lekai Chetia Maidam (लेकाई चेतिया मैदाम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/82/ab/df/garden.jpg?w=500&h=400&s=1",
        "description": "A tranquil historic site in Dibrugarh, offering peace and calm. | धिब्रूगढ़ का शांत ऐतिहासिक स्थल।"
      },
      {
        "name": "Radha Krishna Mandir (राधा कृष्ण मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/82/aa/72/temple.jpg?w=800&h=600&s=1",
        "description": "Spacious temple dedicated to Radha and Krishna, known for serene environment. | राधा-कृष्ण को समर्पित मंदिर, शांत वातावरण के लिए प्रसिद्ध।"
      },
      {
        "name": "Jeypore Rainforest (जेयपोर वर्षावन)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/48/20/fe/jeypore-rainforest-and.jpg?w=1000&h=-1&s=1",
        "description": "A beautiful rainforest located in Naharkatia area, rich in flora and fauna. | नाहरकटिया क्षेत्र में स्थित सुंदर वर्षावन।"
      },
      {
        "name": "Dehing Satra (देहिंग सत्र)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/82/a3/ad/dibrugarh.jpg?w=700&h=500&s=1",
        "description": "A well-known religious site in Dibrugarh for spiritual visits. | धिब्रूगढ़ में प्रसिद्ध धार्मिक स्थल।"
      },
      {
        "name": "Raidongia Dol (रैडोंगिया डोल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw41Nxi8gUxSw33PCGAaLQUFSPnYFgddVP0Q&s",
        "description": "Historic dol with adjacent large pond, height around 45 feet. | ऐतिहासिक डोल, इसके पास एक बड़ा तालाब, लगभग 45 फीट ऊंचा।"
      },
      {
        "name": "Bahikhowa Maidam (बहिकोवा मैदाम)",
        "image": "https://dynamic.tourtravelworld.com/hotspot-images/bhikhowal-maidam-dibrugarh250-5627.jpg",
        "description": "A large ground used for leisure walks, historic burial site. | ऐतिहासिक स्थल, बड़ी जगह, आराम के लिए उपयुक्त।"
      },
      {
        "name": "Barbarua Maidam (बरबरुआ मैदाम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQilDYq66t-dYlFv0zF4C-2WVP8A2a-IDue_g&s",
        "description": "Royal burial place, similar to pyramids, used for kings or royal families. | राजा या राज परिवार के लिए शाही कब्र स्थल, पिरामिड जैसी संरचना।"
      }
    ],
    "Dima Hasao (डीमा हसाओ)": [
      {
        "name": "Haflong (हाफ़लोंग)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/6/61/Synod_view_point%2C_Haflong.jpg",
        "description": "The only hill station in the district, known for scenic beauty and pleasant climate. | जिले में एकमात्र हिल स्टेशन, खूबसूरत नज़ारों और सुखद मौसम के लिए प्रसिद्ध।"
      },
      {
        "name": "Jatinga (जाटिंगा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTok8ffuCkuLE1Msy_Aa_SCk3Do4chuQGDkOw&s",
        "description": "Famous for mysterious bird suicides during monsoon. | मॉनसून के दौरान रहस्यमयी पक्षियों के मरने की घटना के लिए प्रसिद्ध।"
      },
      {
        "name": "Panimur Waterfall (पानीमूर झरना)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxwOpf9CK35x46R8U23gq1WjlUmyPiCb-6jA&s",
        "description": "A beautiful waterfall located in the district. | जिले में स्थित एक सुंदर झरना।"
      },
      {
        "name": "Umrongso (उम्रोंगसो)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBayKhAgXFrkGNIhB1cRJZzthWleG5OwKrmg&s",
        "description": "A scenic village known for natural landscapes and cultural diversity. | प्राकृतिक सुंदरता और सांस्कृतिक विविधता के लिए प्रसिद्ध।"
      },
      {
        "name": "Bendao Baglai Waterfalls (बेंडाओ बगलाई झरना)",
        "image": "https://static.mygov.in/media/blog/2019/05/Thumbnail_bendau-1.png",
        "description": "Picturesque waterfall amidst lush greenery. | हरियाली के बीच स्थित सुरम्य झरना।"
      },
      {
        "name": "Hajong Lake (हाजोंग झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPfQ7uZ1GZB-8PDQ7-Jxnwz9N38P9xEGMdPQ&s",
        "description": "A serene lake surrounded by hills, perfect for relaxation. | पहाड़ियों से घिरी शांत झील, विश्राम के लिए उत्तम।"
      },
      {
        "name": "Thuruk (थुरुक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCqKlYb15tDGsMO5ardt8TR_tE2krXxZy7KQ&s",
        "description": "A scenic location with hills and greenery. | पहाड़ियों और हरियाली से भरा एक सुंदर स्थल।"
      }
    ],
    "Goalpara (गोलपाड़ा)": [
      {
        "name": "Sri Surya Pahar (श्री सूर्य पहार)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuBbF-UHXXTMSdcawPl_bdV18Vcpb_OSfOpA&s",
        "description": "A site famous for archaeological remains with 7 peaks over 1400 acres, terracotta sculptures, and post-Gupta era relics. Panoramic view of Brahmaputra and rivers Dudhnoi & Krishnai. | सात चोटियों वाला ऐतिहासिक स्थल, जिसमें टेराकोटा मूर्तियाँ और पोस्ट-गुप्तकालीन अवशेष हैं। ब्रह्मपुत्र और दूधनोई व कृष्णई नदियों का दृश्य।"
      },
      {
        "name": "Dadan Hillock (ददन हिलॉक)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkR4V3ADr-krRSHVYEHHa_iCqfCS6jf0yvcw&s",
        "description": "Hill with Shiva Temple established by General Dadan, surrounded by scenic forest and rivers. | शिव मंदिर वाला पहाड़ी स्थल, ददन द्वारा स्थापित, सुंदर जंगल और नदियों से घिरा।"
      },
      {
        "name": "Pir Majhar (पिर मझर)",
        "image": "https://images.news18.com/ibnkhabar/uploads/2023/06/3012217_HYP_0_FEATURE1685593075959.jpg?im=FitAndFill,width=1200,height=900",
        "description": "Tomb of Hazarat Sayed Abul Kasem Kharasani in Goalpara town, revered by people of all faiths. | शहर में हज़रत सय्यद अबुल क़ासेम खरसानी की समाधि, सभी धर्मों के लोगों द्वारा पूजी जाती है।"
      },
      {
        "name": "Sri Sri Shyamrai Satra (श्री श्री श्यामराय सतरा)",
        "image": "https://avathioutdoors.gumlet.io/travelGuide/dev/goalpara_P9079.jpg",
        "description": "Centre of Vaishnavite culture in town, established 366 years ago. | 366 वर्ष पुराना वैष्णव सांस्कृतिक केंद्र।"
      },
      {
        "name": "Sri Sri Chaitanya Gaudiya Math (श्री श्री चैतन्य गौड़ीय मठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd0cMd7y2mMuGGTLYv16BtPI7r3l7dmQi3qw&s",
        "description": "Established in 1969 to preserve Chaitanya culture, regular puja & kirtan held. | 1969 में स्थापित, चैतन्य संस्कृति का संरक्षण, नियमित पूजा और कीर्तन।"
      },
      {
        "name": "Buraburi Than, Mothertola (बुराबुरी ठान, मोथरटोला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmvqWYOlW3bl5mg4-A6USUszgdLAeSJKpHqw&s",
        "description": "Prominent religious spot on Brahmaputra bank, symbolizes national integration. | ब्रह्मपुत्र के किनारे प्रमुख धार्मिक स्थल, राष्ट्रीय एकता का प्रतीक।"
      },
      {
        "name": "Sri Sri Joybhum Kamakhya (श्री श्री जॉयभूम कामाख्या)",
        "image": "https://avathioutdoors.gumlet.io/travelGuide/dev/goalpara_P6325.jpg",
        "description": "One of 51 Shakti Sthals, located on Brahmaputra bank, includes Shiva temple; festival in October. | 51 शक्तिस्थलों में से एक, ब्रह्मपुत्र के किनारे स्थित, शिव मंदिर सहित; अक्टूबर में उत्सव।"
      },
      {
        "name": "Nandeswar Devalaya (नंदेश्वर देवालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLM1glyBaq9EfhRvSJve8AaM7Ucearz4ffww&s",
        "description": "Ancient Shiva temple on Nandeswar hill, festivals include Shivaratri & Durga Puja. | नंदेश्वर पहाड़ी पर प्राचीन शिव मंदिर, शिवरात्रि और दुर्गा पूजा में प्रसिद्ध।"
      },
      {
        "name": "Tukreswari (टुकरेस्वरी)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/1/19/Tukreswari_Temple.jpg",
        "description": "Temple where a portion of Goddess Sati fell; includes Shiva Temple and Joya-Vijoya Temple. | मंदिर जहाँ देवी सती का हिस्सा गिरी, शिव मंदिर और जॉय-विजॉय मंदिर शामिल।"
      }
    ],
    "Hailakandi (हैलाकांडी)": [
      {
        "name": "Sri Kancha Kanti Devi Mandir (श्री कांचा कांति देवी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/1d/ab/05/sri-kancha-kanti-devi.jpg?w=800&h=600&s=1",
        "description": "A famous temple dedicated to Goddess Kancha Kanti Devi, visited by devotees for blessings. | देवी कांचा कांति को समर्पित प्रसिद्ध मंदिर, जहां भक्त आशीर्वाद लेने आते हैं।"
      },
      {
        "name": "Madhabkunda Waterfall (माधवकुंडा जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/41/50/04/it-is-situated-in-barlekha.jpg?w=800&h=-1&s=1",
        "description": "A beautiful waterfall surrounded by scenic hills and greenery, popular picnic spot. | सुंदर झरना, जो पहाड़ियों और हरियाली से घिरा है, पिकनिक के लिए प्रसिद्ध।"
      },
      {
        "name": "Serlui B Dam (सेरलुई बी बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/b8/a0/af/entrance.jpg?w=800&h=600&s=1",
        "description": "A dam site with serene surroundings, ideal for nature lovers and relaxation. | शांत वातावरण वाला बांध स्थल, प्रकृति प्रेमियों और विश्राम के लिए उत्तम।"
      },
      {
        "name": "Sonbeel Boating Point (सनबील बोटिंग पॉइंट)",
        "image": "https://cf-img-a-in.tosshub.com/lingo/itne/images/story/202206/son-beel.webp?size=948:533",
        "description": "A popular spot for boating experiences on the vast Sonbeel Lake. | विशाल सनबील झील पर नौका विहार के लिए प्रसिद्ध स्थान।"
      }
    ],
    "Hojai (होज़ाई)": [
      {
        "name": "Rajbari Archaeological Site (राजबाड़ी पुरातात्त्विक स्थल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUsk26d3d8yCXdzLp3YKbXtfxfHclLWJYw0w&s",
        "description": "An archaeological site reflecting the ancient history of the region. | क्षेत्र के प्राचीन इतिहास को दर्शाने वाला एक पुरातात्त्विक स्थल।"
      },
      {
        "name": "Akashiganga Archaeological Site (आकाशगंगा पुरातात्त्विक स्थल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0cgupiDrJrPeY2nqnQI9I0FvolsmW8L7f-g&s",
        "description": "A historical site with mythological significance, often visited by pilgrims. | पौराणिक महत्व वाला ऐतिहासिक स्थल, जिसे श्रद्धालु अक्सर देखने आते हैं।"
      },
      {
        "name": "Sri Sri Chamunda Kali Mandir, Nabhanga (श्री श्री चामुंडा काली मंदिर, नभांगा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrWFo3zFSGHhXD66Ig0hR5qZT1GmBFWv-GNw&s",
        "description": "A famous temple dedicated to Goddess Chamunda Kali, attracting devotees. | माँ चामुंडा काली को समर्पित प्रसिद्ध मंदिर, जो भक्तों को आकर्षित करता है।"
      },
      {
        "name": "Sankhadevi Archaeological Site (शंखादेवी पुरातात्त्विक स्थल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6P4aXWHxzbL9TBF9QCBSY2cYltGszQq8S9Q&s",
        "description": "An ancient archaeological site showcasing cultural and historical heritage. | सांस्कृतिक और ऐतिहासिक धरोहर को दर्शाने वाला प्राचीन पुरातात्त्विक स्थल।"
      },
      {
        "name": "Na-Nath Archaeological Site (ना-नाथ पुरातात्त्विक स्थल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzMaDAZ9ram6Hhjs4SiogJyFFyoQoihX9vYw&s",
        "description": "A heritage site known for its ancient remains and religious significance. | प्राचीन अवशेषों और धार्मिक महत्व के लिए प्रसिद्ध धरोहर स्थल।"
      }
    ],
    "Jorhat (जोरहाट)": [
      {
        "name": "Planetarium & Science Centre (प्लानेटेरियम और साइंस सेंटर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk53T4Lr14vg6tq7CLUZTyzzH1-bsPPB6gTg&s",
        "description": "A popular center for science education and astronomy enthusiasts. | विज्ञान शिक्षा और खगोल विज्ञान प्रेमियों के लिए एक लोकप्रिय केंद्र।"
      },
      {
        "name": "Central Jail (सेंट्रल जेल)",
        "image": "https://i0.wp.com/nenow.in/wp-content/uploads/2020/07/Jorhat-Central-Jail.jpg?resize=125%2C125&ssl=1",
        "description": "A historic site with importance in Assam’s freedom struggle. | असम के स्वतंत्रता संग्राम में महत्व रखने वाला ऐतिहासिक स्थल।"
      },
      {
        "name": "Ferry Service Nimatighat (फेरी सेवा निमातिघाट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpJAsbJh7IuYXD4ftq4F7N-Ega0H2pdlMzgA&s",
        "description": "Gateway to Majuli Island, offering ferry rides across the Brahmaputra. | माजुली द्वीप का प्रवेश द्वार, जहाँ से ब्रह्मपुत्र पर फेरी सेवा उपलब्ध है।"
      },
      {
        "name": "Lachit Maidam (लाचित मैदाम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuVASido9D7IyK-bc-5IlyAsHhFjxIIS64Pg&s",
        "description": "A memorial of Ahom General Lachit Borphukan, symbol of bravery. | आहोम सेनापति लाचित बरफुकन की स्मृति में बना वीरता का प्रतीक स्थल।"
      },
      {
        "name": "Rajmao Pukhuri (राजमाओ पोखुरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0gm__arA0FfLD5IAHxzPnXQIM5xz5nXGyWA&s",
        "description": "An ancient pond with cultural and historical significance. | सांस्कृतिक और ऐतिहासिक महत्व वाला प्राचीन तालाब।"
      },
      {
        "name": "Rainforest Research Institute (रेनफॉरेस्ट रिसर्च इंस्टीट्यूट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyrOhoM4UKwXXBitYCw3ixbOnIde8Ki778Ig&s",
        "description": "Institute focusing on forestry and environmental research. | वानिकी और पर्यावरण संबंधी अनुसंधान पर केंद्रित संस्थान।"
      },
      {
        "name": "Planetarium and Science Centre (प्लानेटेरियम और साइंस सेंटर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0yIs5QSaGdEwQtbJuNLL7ZPGLt-tCQtXH4A&s",
        "description": "A science centre featuring astronomical shows and educational exhibits. | खगोल विज्ञान शो और शैक्षणिक प्रदर्शनी वाला विज्ञान केंद्र।"
      },
      {
        "name": "Santi Ashram (शांति आश्रम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN32GMN6rarLOdjbk_-SFtzLevWNaosLheXw&s",
        "description": "A peaceful ashram known for meditation and spiritual practices. | ध्यान और आध्यात्मिक साधना के लिए प्रसिद्ध शांतिपूर्ण आश्रम।"
      },
      {
        "name": "Tocklai Tea Research Institute (टोकलाई टी रिसर्च इंस्टीट्यूट)",
        "image": "https://i.ytimg.com/vi/UkAa0eFbbVc/maxresdefault.jpg",
        "description": "World’s oldest tea research center, established in 1911. | 1911 में स्थापित विश्व का सबसे पुराना चाय अनुसंधान केंद्र।"
      },
      {
        "name": "Gibbon Wildlife Sanctuary (गिब्बन वाइल्डलाइफ़ सेंक्चुअरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_PbVqCjgghtF0LHFy8v3VYB2KS6uOLadhXg&s",
        "description": "Famous for Hoolock Gibbons and rich biodiversity. | हूलॉक गिब्बन और जैव विविधता के लिए प्रसिद्ध वन्यजीव अभयारण्य।"
      }
      ],
      "Kamrup (कामरूप)": [
        {
          "name": "Basistha Ashram (बासिष्ठ आश्रम)",
          "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkOJ76cWAybS63dQJSRpAUJAWvN0gEEMRd60wT2vM_1ucITKPIDyiS2Z4X3BUvGCGJyeA&usqp=CAU",
          "description": "An ancient hermitage known for its spiritual and historical significance. | प्राचीन आश्रम जो आध्यात्मिक और ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
        },
        {
          "name": "Kamakhya Temple (कामाख्या मंदिर)",
          "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/3f/41/75/kamakhya-temple.jpg?w=1200&h=1200&s=1",
          "description": "One of the most famous Shakti Peethas, dedicated to Goddess Kamakhya. | सबसे प्रसिद्ध शक्तिपीठों में से एक, देवी कामाख्या को समर्पित।"
        },
        {
          "name": "Umananda Temple (उमानंदा मंदिर)",
          "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/57/39/0b/umananda-temple.jpg?w=700&h=400&s=1",
          "description": "Located on Peacock Island in the Brahmaputra, dedicated to Lord Shiva. | ब्रह्मपुत्र नदी के मोर द्वीप पर स्थित, भगवान शिव को समर्पित मंदिर।"
        },
        {
          "name": "Sukreswar Temple (सुक्रेश्वर मंदिर)",
          "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/bb/b0/1b/img-20190528-145531-largejpg.jpg?w=900&h=500&s=1",
          "description": "Ancient Shiva temple located on the banks of the Brahmaputra. | ब्रह्मपुत्र के किनारे स्थित प्राचीन शिव मंदिर।"
        },
        {
          "name": "Bhubaneshwari Temple (भुवनेश्वरी मंदिर)",
          "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGlTl5Byug4lQGvmT8N8RulNvHfAZo6tJx7A&s",
          "description": "A temple dedicated to Goddess Bhubaneshwari, known for its spiritual ambiance. | देवी भुवनेश्वरी को समर्पित मंदिर, अपने आध्यात्मिक वातावरण के लिए प्रसिद्ध।"
        },
        {
          "name": "Navagraha Temple (नवग्रह मंदिर)",
          "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/81/aa/3f/navagraha-temple.jpg?w=1200&h=-1&s=1",
          "description": "Temple dedicated to the nine planets of Hindu astrology. | हिंदू ज्योतिष के नौ ग्रहों को समर्पित मंदिर।"
        },
        {
          "name": "Janardan Temple (जनार्दन मंदिर)",
          "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0BFZi727Wj5QljdwKw1UmV5sHbbN4A5KL7g&s",
          "description": "A historic temple dedicated to Lord Vishnu. | भगवान विष्णु को समर्पित ऐतिहासिक मंदिर।"
        },
        {
          "name": "Ugratara Temple (उग्रतारा मंदिर)",
          "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-gyZNbjIigqRut6oO70RBA9REaeCmuZdu1g&s",
          "description": "A temple dedicated to Goddess Ugratara, significant in local religious practices. | देवी उग्रतारा को समर्पित मंदिर, स्थानीय धार्मिक प्रथाओं में महत्वपूर्ण।"
        },
        {
          "name": "Assam State Museum (असम राज्य संग्रहालय)",
          "image": "https://s7ap1.scene7.com/is/image/incredibleindia/assam-state-meseum-dispur-assam-hero-2?qlt=82&ts=1742172821697",
          "description": "Museum showcasing Assam’s rich cultural and historical heritage. | असम की समृद्ध सांस्कृतिक और ऐतिहासिक धरोहर को दर्शाने वाला संग्रहालय।"
        },
        {
          "name": "Shrimanta Sankardev Kalakhetra (श्रीमंत शंकरदेव कलाक्षेत्र)",
          "image": "https://s7ap1.scene7.com/is/image/incredibleindia/srimanta-sankardeva-kalakshetra-guwahati-dispur-assam-1-attr-hero?qlt=82&ts=1746758506997",
          "description": "Cultural institution dedicated to Assamese art, culture, and heritage. | असमिया कला, संस्कृति और धरोहर को समर्पित सांस्कृतिक संस्थान।"
        },
        {
          "name": "Iskon Guwahati (इस्कॉन गुवाहाटी)",
          "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/76/15/d6/images-largejpg.jpg?w=1200&h=-1&s=1",
          "description": "A temple and cultural center dedicated to Lord Krishna. | भगवान कृष्ण को समर्पित मंदिर और सांस्कृतिक केंद्र।"
        },
        {
          "name": "Purva Tirupati Shri Balaji Temple (पूर्व तिरुपति श्री बालाजी मंदिर)",
          "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/f7/c6/1a/beautiful-manicured-gardens.jpg?w=1200&h=-1&s=1",
          "description": "Temple dedicated to Lord Venkateswara, a replica of Tirupati Balaji. | भगवान वेंकटेश्वर को समर्पित मंदिर, तिरुपति बालाजी का प्रतिरूप।"
        },
        {
          "name": "Shri Shirdi Sai Baba Temple (श्री शिरडी साई बाबा मंदिर)",
          "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/63/b3/7e/shirdi-sai-baba-rengha.jpg?w=900&h=500&s=1",
          "description": "Famous temple dedicated to Sai Baba, attracting devotees from all over. | साई बाबा को समर्पित प्रसिद्ध मंदिर, जो दूर-दूर से भक्तों को आकर्षित करता है।"
        }
      ],
    "Kamrup Metropolitan (कामरूप मेट्रोपॉलिटन)" : [
      {
        "name": "Basistha Ashram (बासिष्ठ आश्रम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkOJ76cWAybS63dQJSRpAUJAWvN0gEEMRd60wT2vM_1ucITKPIDyiS2Z4X3BUvGCGJyeA&usqp=CAU",
        "description": "An ancient hermitage known for its spiritual and historical significance. | प्राचीन आश्रम जो आध्यात्मिक और ऐतिहासिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kamakhya Temple (कामाख्या मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/3f/41/75/kamakhya-temple.jpg?w=1200&h=1200&s=1",
        "description": "One of the most famous Shakti Peethas, dedicated to Goddess Kamakhya. | सबसे प्रसिद्ध शक्तिपीठों में से एक, देवी कामाख्या को समर्पित।"
      },
      {
        "name": "Umananda Temple (उमानंदा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/57/39/0b/umananda-temple.jpg?w=700&h=400&s=1",
        "description": "Located on Peacock Island in the Brahmaputra, dedicated to Lord Shiva. | ब्रह्मपुत्र नदी के मोर द्वीप पर स्थित, भगवान शिव को समर्पित मंदिर।"
      },
      {
        "name": "Sukreswar Temple (सुक्रेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/bb/b0/1b/img-20190528-145531-largejpg.jpg?w=900&h=500&s=1",
        "description": "Ancient Shiva temple located on the banks of the Brahmaputra. | ब्रह्मपुत्र के किनारे स्थित प्राचीन शिव मंदिर।"
      },
      {
        "name": "Bhubaneshwari Temple (भुवनेश्वरी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGlTl5Byug4lQGvmT8N8RulNvHfAZo6tJx7A&s",
        "description": "A temple dedicated to Goddess Bhubaneshwari, known for its spiritual ambiance. | देवी भुवनेश्वरी को समर्पित मंदिर, अपने आध्यात्मिक वातावरण के लिए प्रसिद्ध।"
      },
      {
        "name": "Navagraha Temple (नवग्रह मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/81/aa/3f/navagraha-temple.jpg?w=1200&h=-1&s=1",
        "description": "Temple dedicated to the nine planets of Hindu astrology. | हिंदू ज्योतिष के नौ ग्रहों को समर्पित मंदिर।"
      },
      {
        "name": "Janardan Temple (जनार्दन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0BFZi727Wj5QljdwKw1UmV5sHbbN4A5KL7g&s",
        "description": "A historic temple dedicated to Lord Vishnu. | भगवान विष्णु को समर्पित ऐतिहासिक मंदिर।"
      },
      {
        "name": "Ugratara Temple (उग्रतारा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-gyZNbjIigqRut6oO70RBA9REaeCmuZdu1g&s",
        "description": "A temple dedicated to Goddess Ugratara, significant in local religious practices. | देवी उग्रतारा को समर्पित मंदिर, स्थानीय धार्मिक प्रथाओं में महत्वपूर्ण।"
      },
      {
        "name": "Assam State Museum (असम राज्य संग्रहालय)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/assam-state-meseum-dispur-assam-hero-2?qlt=82&ts=1742172821697",
        "description": "Museum showcasing Assam’s rich cultural and historical heritage. | असम की समृद्ध सांस्कृतिक और ऐतिहासिक धरोहर को दर्शाने वाला संग्रहालय।"
      },
      {
        "name": "Shrimanta Sankardev Kalakhetra (श्रीमंत शंकरदेव कलाक्षेत्र)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/srimanta-sankardeva-kalakshetra-guwahati-dispur-assam-1-attr-hero?qlt=82&ts=1746758506997",
        "description": "Cultural institution dedicated to Assamese art, culture, and heritage. | असमिया कला, संस्कृति और धरोहर को समर्पित सांस्कृतिक संस्थान।"
      },
      {
        "name": "Iskon Guwahati (इस्कॉन गुवाहाटी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/76/15/d6/images-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "A temple and cultural center dedicated to Lord Krishna. | भगवान कृष्ण को समर्पित मंदिर और सांस्कृतिक केंद्र।"
      },
      {
        "name": "Purva Tirupati Shri Balaji Temple (पूर्व तिरुपति श्री बालाजी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/f7/c6/1a/beautiful-manicured-gardens.jpg?w=1200&h=-1&s=1",
        "description": "Temple dedicated to Lord Venkateswara, a replica of Tirupati Balaji. | भगवान वेंकटेश्वर को समर्पित मंदिर, तिरुपति बालाजी का प्रतिरूप।"
      },
      {
        "name": "Shri Shirdi Sai Baba Temple (श्री शिरडी साई बाबा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/63/b3/7e/shirdi-sai-baba-rengha.jpg?w=900&h=500&s=1",
        "description": "Famous temple dedicated to Sai Baba, attracting devotees from all over. | साई बाबा को समर्पित प्रसिद्ध मंदिर, जो दूर-दूर से भक्तों को आकर्षित करता है।"
      }
    ],


    "Karbi Anglong (कार्बी आंगलोंग)": [
  {
    "name": "Dibru-Saikhowa National Park (डिब्रू-सैखोवा नेशनल पार्क)",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB3VVZ5s9Z1svTg_6oxaW8CWLecFMn61Au_Q&s",
    "description": "Known for its biodiversity, especially wild horses and birds. | जैव विविधता के लिए प्रसिद्ध, खासकर जंगली घोड़े और पक्षियों के लिए।"
  },
  {
  "name": "Kaziranga National Park Extension (काजीरंगा नेशनल पार्क विस्तार)",
  "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Rhiono_and_elephant.jpg/500px-Rhiono_and_elephant.jpg",
  "description": "Part of the world-famous Kaziranga National Park, home to one-horned rhinoceros. | विश्व प्रसिद्ध काजीरंगा नेशनल पार्क का हिस्सा, एक सींग वाले गैंडे का घर।"
},
{
"name": "Doljong Waterfalls (डोलजोंग झरना)",
"image": "https://thegypsychiring.com/wp-content/uploads/2021/07/Waterfalls-in-Assam-769x1024.jpg",
"description": "A scenic waterfall surrounded by lush greenery. | हरियाली से घिरा सुरम्य झरना।"
},
{
"name": "Maibong Hill (मैबॉन्ग हिल)",
"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxQAauXDPRDEzpH481AIDAgBTuEhvDs3sgvw&s",
"description": "Historical and archaeological site with scenic views. | ऐतिहासिक और पुरातात्विक स्थल, सुंदर दृश्यावलियों के साथ।"
},
{
"name": "Bokajan Tea Gardens (बोकजान चाय बगान)",
"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd9x-1Ft4Knf-tBNNZA7NQs3aYzsDpQBcAQA&s",
"description": "Famous tea gardens known for aromatic Assam tea. | सुगंधित असम चाय के लिए प्रसिद्ध चाय बगान।"
},
      {
        "name": "Longterok Waterfalls (लोंगतेरोक झरना)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi19_VTgIoTBUW27w8cKC97o3UqSAhcXIytA&s",
        "description": "Popular picnic and trekking spot amidst natural beauty. | प्राकृतिक सुंदरता के बीच लोकप्रिय पिकनिक और ट्रेकिंग स्थल।"
      }
      ],
    "Karimganj (करीमगंज)": [
      {
        "name": "Chhatachura Range (छताचुरा पर्वतमाला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPB5e5S4rVI94Cxeb-BcwhRmpWRZI3d_Me2Q&s",
        "description": "The Chhatachura Range originates from the southeastern part of Karimganj district. Its highest peak, Chhatachura Peak, is 2087 feet high. Saraspur (1000 feet) and Badarpur (500 feet) are also important spots here. | छताचुरा पर्वतमाला करीमगंज जिले के दक्षिण-पूर्व से निकलती है। इसकी सबसे ऊँची चोटी छताचुरा पीक 2087 फीट ऊँची है। सरसपुर (1000 फीट) और बादरपुर (500 फीट) भी यहाँ देखने योग्य स्थल हैं।"
      },
      {
        "name": "Son Beel (सोन बील)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/4/43/Son_beel_img_2.jpg",
        "description": "Son Beel is the largest wetland in southern Assam. The Shingla River passes through it, and the scenic beauty of hills around makes it unique. | सोन बील दक्षिणी असम की सबसे बड़ी वेटलैंड है। इसके बीच से शिंगला नदी बहती है और चारों ओर पहाड़ों से घिरा सुरम्य दृश्य इसे खास बनाता है।"
      },
      {
        "name": "Badarpurghat (बदरपुरघाट किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRcum9-YPuQBnVRWdZM9r3WoOWDd--GZjCqCd5hmONP1gXskeirYIFM5HFtijFyrv2KDU&usqp=CAU",
        "description": "Badarpurghat Fort lies on the banks of the Barak River, about 25 km from Karimganj. It was built by the British. | बदरपुरघाट किला बराक नदी के किनारे स्थित है, जो करीमगंज से लगभग 25 किमी दूर है। यह किला ब्रिटिशों द्वारा बनाया गया था।"
      },
      {
        "name": "Malegarh Crematorium (मलेगढ़ श्मशान घाट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5g7LTyfY74VeJOd5YasyMUC4iY37ZEdx7rg&s",
        "description": "This cremation ground is the resting place of more than 50 soldiers who died in the Sepoy Mutiny of 1857. | यह श्मशान घाट 1857 के विद्रोह में शहीद हुए 50 से अधिक सैनिकों का अंतिम संस्कार स्थल है। यह स्थान वीरता और बलिदान की याद दिलाता है।"
      },
      {
        "name": "Eolabari Tea Estate (इओलाबाड़ी चाय बगान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkF9dVPBD1u23ZPq1HRZn2ze1Ro1DLxAWr-Q&s",
        "description": "Located 15 km from Karimganj, Eolabari Tea Estate is a perfect spot to relax and enjoy the calmness of nature. | करीमगंज से 15 किमी दूर स्थित इओलाबाड़ी चाय बगान प्रकृति की शांति और सुकून का अनुभव करने का उत्तम स्थान है।"
      }
    ],
    "Kokrajhar (कोकराझार)": [
      {
        "name": "Mahamaya Temple (महमाया मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHFpPaKJS7R4290fgP_X6QwLQgbqYsFSXo-g&s",
        "description": "Mahamaya Temple is one of the most famous Shakti Peethas in Assam, dedicated to Goddess Mahamaya. It attracts thousands of devotees every year, especially during Durga Puja. | महमाया मंदिर असम के प्रसिद्ध शक्तिपीठों में से एक है, जो देवी महमाया को समर्पित है। यहाँ हर साल हज़ारों भक्त आते हैं, खासकर दुर्गा पूजा के समय।"
      },
      {
        "name": "Chakrashila Wildlife Sanctuary (चक्रशिला वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVlnxdgbO-hDk1uM3u1MSrXHPZ7O17frqAiw&s",
        "description": "Chakrashila Wildlife Sanctuary is well-known as the second home of the endangered Golden Langur. It is also rich in birds and scenic landscapes. | चक्रशिला वन्यजीव अभयारण्य विलुप्तप्राय गोल्डन लंगूर के दूसरे घर के रूप में प्रसिद्ध है। यहाँ पक्षियों और प्राकृतिक सुंदरता की भी भरमार है।"
      },
      {
        "name": "Bwraikund Forest Range (बराइकुंड वन क्षेत्र)",
        "image": "https://images.ixigo.com/node_image/f_auto,w_500/imageURL?url=https%3A%2F%2Fta.ixigo.es%2Fgoogle-photo%2FATplDJbB-BI5jE04VfynoFeeJa_2cqSYDj0Bg0tgKPfG06s6skdeVTl1-uR1k8f6nv8iwq6q_h3hzAye-CM_Pi9OjZixRIe2a9GcRZFCC_IFl13yNPeLwPzZMabtYmZMiYhAljMlCXJpGZdbcS-M4A31DC05yxCoNXCY-e0ElGs1DKKrqqbL",
        "description": "Bwraikund Forest Range is a lush green forest area known for its biodiversity and serene environment. | बराइकुंड वन क्षेत्र अपनी हरियाली, जैव विविधता और शांत वातावरण के लिए जाना जाता है।"
      },
      {
        "name": "Raimona National Park (रायमोना राष्ट्रीय उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwVHIqaieHoWPgtrWiG6ZY82T2ThRPRc3SA&s",
        "description": "Raimona National Park, declared in 2021, is part of the Bodoland Territorial Region. It is home to elephants, golden langurs, tigers, and diverse flora and fauna. | रायमोना राष्ट्रीय उद्यान, जिसे 2021 में घोषित किया गया, बोडोलैंड क्षेत्र का हिस्सा है। यहाँ हाथी, गोल्डन लंगूर, बाघ और अनेक वन्य प्रजातियाँ पाई जाती हैं।"
      },
      {
        "name": "Dheer Beel (धीयर बील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/5f/7a/c2/these-photographs-were.jpg?w=1200&h=-1&s=1",
        "description": "Dheer Beel is a scenic wetland that supports rich birdlife and aquatic biodiversity. It is a popular spot for nature lovers. | धीयर बील एक खूबसूरत वेटलैंड है, जहाँ पक्षियों और जलीय जीवों की बहुतायत है। यह प्रकृति प्रेमियों के लिए लोकप्रिय स्थल है।"
      }
      ],
    "Lakhimpur (लखीमपुर)": [
      {
        "name": "Bishwanath Temple (बिस्वनाथ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQBpAXImy24VImjXqE8c6IG0LFJS_e9yrb6g&s",
        "description": "Bishwanath Temple Grounds combine spiritual atmosphere with picnic gardens, making it a favorite spot for both devotees and visitors. | बिस्वनाथ मंदिर परिसर धार्मिक वातावरण और पिकनिक गार्डन का संगम है, जो श्रद्धालुओं और पर्यटकों दोनों के लिए प्रिय स्थल है।"
      },
      {
        "name": "Rang Ghar (रंग घर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPTKJ8WZg92xvocy8AFA1SuAuDz3YUU8qNcg&s",
        "description": "Rang Ghar is a historical amphitheater built during the Ahom dynasty, known as one of the oldest surviving sports pavilions in Asia. | रंग घर अहोम साम्राज्य के समय निर्मित एक ऐतिहासिक रंगमंच है, जिसे एशिया के सबसे पुराने खेल भवनों में गिना जाता है।"
      },
      {
        "name": "Kamalabari Satra (कमलाबाड़ी सत्र)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJPkvkFSoD0672v9y4uNQbjNHgRip3BFmnDA&s",
        "description": "Kamalabari Satra is a famous Vaishnavite monastery renowned for Sattriya dance, classical manuscripts, and spiritual teachings. | कमलाबाड़ी सत्र एक प्रसिद्ध वैष्णव मठ है, जो सत्रिया नृत्य, प्राचीन पांडुलिपियों और आध्यात्मिक शिक्षाओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Lakhimpur Kheri Hills (लखीमपुर खेरी पहाड़ियाँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQISIQbZfNNS-J7VfOyOXmJYbum2boPPmTA-W0cRR3zMq-VWFswkjdXfRI_ssnF31cZgs&usqp=CAU",
        "description": "The Lakhimpur Kheri Hills lie at the foothills of the Himalayas, offering trekking trails, rich biodiversity, and scenic views. | लखीमपुर खेरी पहाड़ियाँ हिमालय की तराई में स्थित हैं, जो ट्रेकिंग मार्ग, समृद्ध जैव विविधता और मनोहर दृश्यों के लिए जानी जाती हैं।"
      }
    ],
    "Majuli (माजुली)": [
      {
        "name": "Kamalabari Satra (कमलाबाड़ी सत्र)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/e4/84/38/kamalabari-satra.jpg?w=1200&h=-1&s=1",
        "description": "Kamalabari Satra is a famous Vaishnavite monastery known for Sattriya dance, classical manuscripts, and spiritual teachings. | कमलाबाड़ी सत्र एक प्रसिद्ध वैष्णव मठ है, जो सत्रिया नृत्य, प्राचीन पांडुलिपियों और आध्यात्मिक शिक्षाओं के लिए जाना जाता है।"
      },
      {
        "name": "Auniati Satra (औनियाती सत्र)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Aauniati_satra_gate.jpg/250px-Aauniati_satra_gate.jpg",
        "description": "Auniati Satra is one of the largest and most popular monasteries in Majuli, famous for ancient artifacts, crafts, and cultural heritage. | औनियाती सत्र माजुली का सबसे बड़ा और लोकप्रिय मठ है, जो प्राचीन कलाकृतियों, हस्तशिल्प और सांस्कृतिक धरोहर के लिए प्रसिद्ध है।"
      },
      {
        "name": "Dakhinpat Satra (दक्षिणपाट सत्र)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOLEWfydpLuAZuvyGwmq_j2bAZluVcF8C4WQ&s",
        "description": "Dakhinpat Satra is an important spiritual center, known for its festivals like Raslila and Rangali Bihu. | दक्षिणपाट सत्र एक प्रमुख धार्मिक स्थल है, जो रासलीला और रंगाली बिहू जैसे त्योहारों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Garamur Satra (गरमुर सत्र)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxzN1fVc0IWEJo5gZV6SY6pz2ktXvSDK-TEw&s",
        "description": "Garamur Satra is historically significant, showcasing traditional culture, art, and spiritual practices. | गरमुर सत्र ऐतिहासिक दृष्टि से महत्वपूर्ण है, जहाँ पारंपरिक संस्कृति, कला और धार्मिक गतिविधियाँ देखने को मिलती हैं।"
      },
      {
        "name": "Tengapania (टेंगापानिया)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgUhsLy8T3ku87VTz0sOdH0J1B2oiu6bcgLA&s",
        "description": "Tengapania is a scenic spot on the banks of the Brahmaputra River, offering beautiful views and peaceful surroundings. | टेंगापानिया ब्रह्मपुत्र नदी के किनारे स्थित एक सुंदर स्थल है, जहाँ से खूबसूरत दृश्य और शांत वातावरण का आनंद लिया जा सकता है।"
      },
      {
        "name": "Samaguri Satra (समगुरी सत्र)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrIdPrvUnPisW4j31USvO7wosrOzAt8RKotA&s",
        "description": "Samaguri Satra is renowned for its unique mask-making tradition used in cultural performances. | समगुरी सत्र अपनी अनोखी मुखौटा बनाने की परंपरा के लिए प्रसिद्ध है, जिसका उपयोग सांस्कृतिक प्रस्तुतियों में होता है।"
      },
      {
        "name": "Molai Forest (मोलाई वन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWYhzKIm22GmdS5SOkA4hVuAer57DNOIKlHQ&s",
        "description": "Molai Forest is a man-made forest created by Jadav Payeng, known as the 'Forest Man of India'. | मोलाई वन जादव पायेंग द्वारा बनाया गया मानव निर्मित जंगल है, जिन्हें 'फॉरेस्ट मैन ऑफ इंडिया' कहा जाता है।"
      }
    ],
    "Morigaon (मोरीगांव)": [
      {
        "name": "Pobitora Wildlife Sanctuary (पोबितोरा वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9dxtf4wRcu-jvyrhca5WdqjC8dgpHTiuSPw&s",
        "description": "Pobitora Wildlife Sanctuary is famous for the highest density of one-horned rhinoceroses and a rich variety of migratory birds. | पोबितोरा वन्यजीव अभयारण्य एक सींग वाले गैंडों की सबसे अधिक संख्या और प्रवासी पक्षियों की विविधता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Deosal Temple (देओसाल मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJFyfg-i0nUshtNrEdyvFFeyQBK9UNFB_AUA&s",
        "description": "Deosal Temple is an ancient temple dedicated to Lord Shiva, located near Mayong. | देओसाल मंदिर भगवान शिव को समर्पित एक प्राचीन मंदिर है, जो मायोंग के पास स्थित है।"
      },
      {
        "name": "Mayong (मायोंग)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzNf_caswdtPpy7oDe-JDuc2NHHztKyj1hag&s",
        "description": "Mayong is known as the 'Land of Black Magic' and holds cultural, historical, and mystical importance. | मायोंग 'काला जादू की भूमि' के नाम से प्रसिद्ध है और सांस्कृतिक, ऐतिहासिक व रहस्यमय महत्व रखता है।"
      },
      {
        "name": "Kachasila Hill (काचसिला पहाड़ी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBaqWt0I5rU0AgzF3kxqTjPvLvByix2Y0GeQ&s",
        "description": "Kachasila Hill is a scenic spot with ruins of ancient temples, offering panoramic views of the surroundings. | काचसिला पहाड़ी प्राचीन मंदिरों के अवशेष और मनोहर दृश्यों के लिए प्रसिद्ध एक पर्यटन स्थल है।"
      },
      {
        "name": "Patekibori Sattra (पटेकीबोरी सत्र)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYuJfDgwfWnlYWaJ7-1ZLizBiXn9O0lFmqLA&s",
        "description": "Patekibori Sattra is an ancient Vaishnavite monastery reflecting Assamese culture and traditions. | पटेकीबोरी सत्र एक प्राचीन वैष्णव मठ है, जो असमिया संस्कृति और परंपराओं को दर्शाता है।"
      }
    ],
    "Nagaon (नगांव)": [
      {
        "name": "Batadrawa Than (बटद्रवा थान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/89/aa/f3/batadrava-than.jpg?w=1200&h=1200&s=1",
        "description": "The birthplace of Srimanta Sankardeva, Batadrawa Than is an important Vaishnavite pilgrimage site founded in 1494 AD. | महापुरुष श्रीमंत शंकरदेव की जन्मभूमि बटद्रवा थान, 1494 ईस्वी में स्थापित एक महत्वपूर्ण वैष्णव तीर्थ स्थल है।"
      },
      {
        "name": "Samaguri Beel (समागुरी बिल)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/9/91/Ropeway_at_Samaguri_Lake%2C_Nagaon%2C_Assam%2C_India.jpg",
        "description": "Samaguri Beel is a scenic wetland, home to migratory birds and local fisheries, attracting nature lovers. | समागुरी बिल एक सुंदर झील है, जो प्रवासी पक्षियों और मत्स्य पालन के लिए प्रसिद्ध है।"
      },
      {
        "name": "Maha Mrityunjay Temple (महामृत्युंजय मंदिर)",
        "image": "https://cf-img-a-in.tosshub.com/lingo/itne/images/story/202206/whatsapp-image-2021-05-27-at-10.00.07-am.jpeg?size=1200:675",
        "description": "Recently built in 2021, the temple has the world’s largest 126-feet Shiva Linga. | 2021 में निर्मित इस मंदिर में विश्व का सबसे बड़ा 126 फीट ऊँचा शिवलिंग है।"
      },
      {
        "name": "Hatimura Temple (हतीमुरा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpGaxRzO1bhM4IgjSmKBb75f8gMi1hi7_6aw&s",
        "description": "Hatimura is famous for the Shaktipeeth temple of Goddess Mahishamardini built during the Ahom dynasty in 1745. | हतीमुरा देवी महिषामर्दिनी के शक्तिपीठ मंदिर के लिए प्रसिद्ध है, जो 1745 में अहोम साम्राज्य के समय बना था।"
      },
      {
        "name": "Silghat Trishuldhari Temple (सिलघाट त्रिशूलधारी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuAVRyjulzKRIKP9mZU60W6x2GBGQGJhLzKQ&s",
        "description": "A 2000-year-old temple dedicated to Lord Shiva, located on the southern bank of Brahmaputra River. | 2000 वर्ष पुराना यह मंदिर भगवान शिव को समर्पित है और ब्रह्मपुत्र नदी के दक्षिणी तट पर स्थित है।"
      },
      {
        "name": "Bura Chapori Wildlife Sanctuary (बुरा चापोरी वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCSsOoTlqvu2UiTQzcR1b0mvmXtQ2Juniq0g&s",
        "description": "Part of Laokhowa-Burachapori ecosystem, it is home to rhinos, tigers, elephants, and migratory birds. | लाओखोवा-बुरा चापोरी पारिस्थितिकी तंत्र का हिस्सा, यह गैंडों, बाघों, हाथियों और प्रवासी पक्षियों का घर है।"
      },
      {
        "name": "Jungal Balahu Garh (जुंगल बलाहु गढ़)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6RR2fMtCBd0OdsnYFhhIliewlqlEJ5Gx4Iw&s",
        "description": "Historical site of Tiwa King Jungal Balahu, with fishery ponds and a warrior statue. | तिवा राजा जुंगल बलाहु का ऐतिहासिक स्थल, यहाँ मछली पालन तालाब और एक योद्धा की प्रतिमा है।"
      }
    ],
    "Nalbari (नलबाड़ी)": [
      {
        "name": "Hari Mandir Nalbari (हरी मंदिर, नलबाड़ी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs2wcaGydXPjOSJhkxJzHnv5fv4NhQ6ihSeA&s",
        "description": "Hari Mandir is a famous temple dedicated to Lord Krishna in Nalbari town, attracting devotees especially during Raas festival. | हरी मंदिर नलबाड़ी शहर में भगवान कृष्ण को समर्पित एक प्रसिद्ध मंदिर है, जहाँ खासकर रास महोत्सव के समय श्रद्धालु बड़ी संख्या में आते हैं।"
      },
      {
        "name": "Billeswar Temple (बिलेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAzwdILP3DBngiMN5Xv9QV_vlyYbVEsfCeRA&s",
        "description": "Billeswar Temple, dedicated to Lord Shiva, is a major pilgrimage site in Nalbari district. | भगवान शिव को समर्पित बिलेश्वर मंदिर नलबाड़ी ज़िले का एक प्रमुख तीर्थ स्थल है।"
      },
      {
        "name": "Ballilecha Shree Shree Kali Devalaya (बल्लीलेचा श्री श्री काली देवलय)",
        "image": "https://i.ytimg.com/vi/xBdhnKdeaCc/maxresdefault.jpg",
        "description": "This temple is dedicated to Goddess Kali and is known for traditional rituals and cultural significance. | यह मंदिर देवी काली को समर्पित है और पारंपरिक अनुष्ठानों व सांस्कृतिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Gangadhar Pond and Migratory Birds (गंगाधर पोखर और प्रवासी पक्षी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVyMKhd-MRiiUqZSX7-SnBDrrQnohKz_AzZg&s",
        "description": "Gangadhar Pond is a scenic water body in Nalbari where migratory birds flock during winter, making it a popular spot for nature lovers. | गंगाधर पोखर नलबाड़ी का एक सुंदर जलाशय है, जहाँ सर्दियों में प्रवासी पक्षी आते हैं और यह प्रकृति प्रेमियों के लिए आकर्षण का केंद्र है।"
      }
    ],
    "Sivasagar (शिवसागर)": [
  {
    "name": "Rang Ghar (रंग घर)",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Ranghar_-_Assam.jpg/500px-Ranghar_-_Assam.jpg",
    "description": "Rang Ghar, built by the Ahom kings, is one of Asia’s oldest surviving amphitheaters and a symbol of Assam’s cultural heritage. | अहोम राजाओं द्वारा निर्मित रंग घर एशिया के सबसे पुराने जीवित रंगमंचों में से एक है और असम की सांस्कृतिक धरोहर का प्रतीक है।"
  },
  {
  "name": "Talatal Ghar (तलातल घर)",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT5wY2ciIvkGhWPJY1727_XnZeBJio4SpV8g&s",
  "description": "Talatal Ghar is a historic seven-storied palace with underground tunnels, showcasing Ahom architectural brilliance. | तलातल घर एक ऐतिहासिक सात मंज़िला महल है जिसमें भूमिगत सुरंगें भी हैं, जो अहोम वास्तुकला की अद्भुतता को दर्शाता है।"
},
{
"name": "Kareng Ghar (करेंग घर)",
"image": "https://upload.wikimedia.org/wikipedia/commons/5/53/Kareng-Ghar-Sivasagar%2CAssam.jpg",
"description": "Kareng Ghar, also known as the Garhgaon Palace, was the royal palace of the Ahom kings. | करेंग घर जिसे गढ़गांव महल भी कहा जाता है, अहोम राजाओं का शाही निवास स्थान था।"
},
{
"name": "Sivasagar Tank (शिवसागर तालाब)",
"image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/08/aa/34/drone-shot-of-sivasagar.jpg?w=900&h=-1&s=1",
"description": "The Sivasagar Tank, built by Queen Ambika, is a large historic water reservoir surrounded by temples and scenic beauty. | रानी अंबिका द्वारा निर्मित शिवसागर तालाब एक विशाल ऐतिहासिक जलाशय है जो मंदिरों और प्राकृतिक सौंदर्य से घिरा हुआ है।"
},
{
"name": "Shivadol (शिवडोल मंदिर)",
"image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/e0/e2/07/a-morning-view.jpg?w=900&h=500&s=1",
"description": "Shivadol is a majestic Shiva temple on the banks of the Sivasagar Tank, famous for its annual Shivratri festival. | शिवसागर तालाब के किनारे स्थित शिवडोल एक भव्य शिव मंदिर है, जो वार्षिक शिवरात्रि महोत्सव के लिए प्रसिद्ध है।"
},
{
"name": "Joysagar Tank and Temples (जॉयसागर तालाब और मंदिर)",
"image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/1a/04/1b/jaysagar-tank-and-temples.jpg?w=1200&h=-1&s=1",
"description": "Joysagar Tank, built by King Rudra Singha, is Asia’s largest man-made tank with temples around it. | राजा रुद्र सिंह द्वारा निर्मित जॉयसागर तालाब एशिया का सबसे बड़ा कृत्रिम तालाब है, जिसके चारों ओर मंदिर स्थित हैं।"
}
    ],
    "Sonitpur (सोनीतपुर)": [
      {
        "name": "Agnigarh Hill (अग्निगढ़ पहाड़ी)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/8/80/Agnigarh_Hill%2C_Tezpur.JPG",
        "description": "Agnigarh Hill is a legendary site linked to Princess Usha and Aniruddha, offering scenic views of Tezpur town and the Brahmaputra River. | अग्निगढ़ पहाड़ी राजकुमारी उषा और अनिरुद्ध की कथा से जुड़ा एक प्रसिद्ध स्थल है, जहाँ से तेजपुर नगर और ब्रह्मपुत्र नदी के सुंदर दृश्य दिखाई देते हैं।"
      },
      {
        "name": "Bamuni Hills (बामुनी पहाड़ियाँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE8ybXbDROoNa-l872SZ_ANDSRmh0gHi7wfw&s",
        "description": "Bamuni Hills are known for ancient stone carvings and temple ruins dating back to the 9th–10th century. | बामुनी पहाड़ियाँ प्राचीन शिलालेखों और 9वीं–10वीं शताब्दी के मंदिर खंडहरों के लिए प्रसिद्ध हैं।"
      },
      {
        "name": "Mahabhairab Temple (महाभैरव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2UkwfccX4noXZdkMG9OkzL-D8PGlwrzjlQA&s",
        "description": "Mahabhairab Temple in Tezpur is dedicated to Lord Shiva and attracts thousands of devotees during Shivratri. | तेजपुर का महाभैरव मंदिर भगवान शिव को समर्पित है और शिवरात्रि के समय हजारों श्रद्धालुओं को आकर्षित करता है।"
      },
      {
        "name": "Nameri National Park (नामेरी राष्ट्रीय उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVvlccvo3hbFEbFuUnEsTnaXjX7BWt49tboA&s",
        "description": "Nameri National Park is a biodiversity hotspot famous for elephants, tigers, rare birds, and adventure activities like river rafting. | नामेरी राष्ट्रीय उद्यान जैव विविधता का केंद्र है, जो हाथियों, बाघों, दुर्लभ पक्षियों और रिवर राफ्टिंग जैसी रोमांचक गतिविधियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Chitralekha Udyan (चित्रलेखा उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/a3/00/f1/img-20171225-133616201.jpg?w=1200&h=-1&s=1",
        "description": "Chitralekha Udyan is a historic park in Tezpur with scenic landscapes, boating, and ancient relics. | चित्रलेखा उद्यान तेजपुर का एक ऐतिहासिक पार्क है, जहाँ सुंदर प्राकृतिक दृश्य, नौकायन और प्राचीन अवशेष देखने को मिलते हैं।"
      },
      {
        "name": "Nag-Sankar Temple (नाग-शंकर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_5_T3e_4HNa1ywhoA7QcZJSeQCox97vRvMQ&s",
        "description": "Nag-Sankar Temple is an ancient temple believed to date back to the 4th century, dedicated to Lord Shiva. | नाग-शंकर मंदिर चौथी शताब्दी का प्राचीन शिव मंदिर माना जाता है।"
      }
      ],

    "Udalguri (उदलगुरी)": [
      {
        "name": "Bhutan Border (भूटान सीमा - भूटान बॉर्डर)",
        "image": "https://cf-img-a-in.tosshub.com/sites/visualstory/wp/2023/11/Location-2.jpg?size=*:900",
        "description":
        "उदलगुरी जिला भूटान की सीमा से जुड़ा हुआ है। यहाँ की हरियाली, पहाड़ और शांत वातावरण पर्यटकों को आकर्षित करते हैं। यह पिकनिक और प्राकृतिक सुंदरता का आनंद लेने का बढ़िया स्थान है।\n\nUdalguri shares its border with Bhutan. The lush greenery, hills, and peaceful environment attract tourists. It is a great spot for picnics and nature exploration."
      },
      {
        "name": "Bhairabkunda (भैरवकुंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2BdTcxGGovc1IZY5DcsONuJ3fVLO75-1C5A&s",
        "description":
        "भैरवकुंड असम और अरुणाचल प्रदेश की सीमा पर स्थित एक सुंदर स्थल है। यहाँ तीन नदियाँ मिलती हैं और यह स्थान धार्मिक व पर्यटन दोनों दृष्टि से प्रसिद्ध है।\n\nBhairabkunda is a beautiful place at the border of Assam and Arunachal Pradesh. It is known for the confluence of three rivers and holds both religious and tourist significance."
      },
      {
        "name": "Orang National Park (ओरांग राष्ट्रीय उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRohQim9GQUWWzs3bifLLFiWytjJcPMOchmDw&s",
        "description": "ओरांग राष्ट्रीय उद्यान, उदलगुरी और दर्रांग जिलों की सीमा पर स्थित है और इसे 'मिनी काज़ीरंगा' कहा जाता है। यहाँ एक सींग वाले गैंडे, हाथी, बाघ, जंगली सूअर, हिरण और विभिन्न प्रकार के पक्षी पाए जाते हैं। यह प्रकृति प्रेमियों और वन्यजीव पर्यटकों के लिए एक प्रमुख आकर्षण है।\n\nOrang National Park, located on the border of Udalguri and Darrang districts, is also known as 'Mini Kaziranga'. It is home to the one-horned rhinoceros, elephants, tigers, wild boars, deer, and a variety of birds. It is a prime attraction for nature lovers and wildlife enthusiasts."
      }
],
"South Salmara-Mankachar (दक्षिण सलमारा-मनकाचर)": [
  {
    "name": "Kali Mandir, South Salmara (काली मंदिर, दक्षिण सलमारा)",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpBf2Jj1C0PmIH9WkdKjzaxrzv48JwmI2-7Q&s",
    "description": "Kali Mandir of South Salmara is an important place of worship and cultural gathering for the local people. | दक्षिण सलमारा का काली मंदिर स्थानीय लोगों के लिए पूजा और सांस्कृतिक आयोजनों का प्रमुख केंद्र है।"
  }
],
    "Tinsukia (तिनसुकिया)": [
      {
        "name": "Bell Temple (घंटी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlBCNDqqXCJFELre9DnHZqZ1VatEUrHu9pBw&s",
        "description": "Bell Temple near Tinsukia is dedicated to Lord Shiva, where devotees tie bells as offerings to fulfill their wishes. | तिनसुकिया का घंटी मंदिर भगवान शिव को समर्पित है, जहाँ श्रद्धालु अपनी मनोकामना पूर्ण करने के लिए घंटियाँ बाँधते हैं।"
      },
      {
        "name": "Digboi Centenary Museum (डिगबोई सेंचुरी संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJEC9fCC4fmrahVFwwGQb8NkcQB44iwDGaoA&s",
        "description": "This museum in Digboi showcases 100 years of oil industry history in Asia’s first refinery town. | डिगबोई का यह संग्रहालय एशिया के पहले रिफाइनरी नगर में तेल उद्योग के 100 वर्षों का इतिहास दर्शाता है।"
      },
      {
        "name": "Na-Pukhuri Park (ना-पुखुरी पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1v-UGB8z1T44YhkCGWKhVqvk0hLyUa0moxQ&s",
        "description": "Na-Pukhuri Park is a serene picnic and leisure spot, surrounded by small ponds and lush greenery. | ना-पुखुरी पार्क छोटे तालाबों और हरियाली से घिरा शांत पिकनिक और घूमने का स्थान है।"
      },
      {
        "name": "Stilwell Road (स्टिलवेल रोड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZl4nMZ7dn95wKfM8T1IZ98S9jxlv9xLhG4g&s",
        "description": "Stilwell Road, built during World War II, connects Assam to Myanmar and China, holding great historical significance. | स्टिलवेल रोड द्वितीय विश्व युद्ध के समय बनाई गई थी, जो असम को म्यांमार और चीन से जोड़ती है और ऐतिहासिक महत्व रखती है।"
      },
      {
        "name": "War Cemetery (युद्ध कब्रिस्तान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSLeX1mthXRRjdgYlqPKRh84dfCRC25R6r7Q&s",
        "description": "The Tinsukia War Cemetery is a memorial site honoring soldiers who lost their lives during World War II. | तिनसुकिया युद्ध कब्रिस्तान द्वितीय विश्व युद्ध में शहीद हुए सैनिकों की स्मृति में बना है।"
      },
      {
        "name": "Dibru-Saikhowa National Park (डिब्रू-सैखोवा राष्ट्रीय उद्यान)",
        "image": "https://lh3.googleusercontent.com/gps-cs-s/AC9h4npAN_i7MH_IgADUVap3vv9H7Lr3a0vQsuypTK_63QwleJ9xCPQeiaGTL-E3AGiNbuJuGIcSII8GPMB2KIwDXct4sZT25MB_47DMxJA5yfyCBeNACGGl1CT94ez7dOpQF1ONKH6v=w270-h312-n-k-no",
        "description": "A UNESCO Biosphere Reserve, famous for feral horses, migratory birds, and unique biodiversity. | डिब्रू-सैखोवा राष्ट्रीय उद्यान यूनेस्को बायोस्फीयर रिज़र्व है, जो जंगली घोड़ों, प्रवासी पक्षियों और अद्वितीय जैव विविधता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Dhola-Sadiya Bridge (ढोला-सदिया पुल)",
        "image": "https://images.indianexpress.com/2017/05/bridge-3.jpg",
        "description": "Dhola-Sadiya Bridge, also known as Bhupen Hazarika Setu, is India’s longest river bridge over the Lohit River. | ढोला-सदिया पुल, जिसे भूपेन हजारिका सेतु भी कहा जाता है, भारत का सबसे लंबा नदी पुल है।"
      },
      {
        "name": "Dehing Patkai National Park (दिहिंग पटकाई राष्ट्रीय उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7gzkyBQ2818YtSOtaGJECj4RDU8wTS0UKxg&s",
        "description": "Dehing Patkai, known as the 'Amazon of the East', is rich in rainforests, elephants, and rare wildlife. | दिहिंग पटकाई, जिसे 'पूर्व का अमेज़न' कहा जाता है, वर्षावनों, हाथियों और दुर्लभ वन्यजीवों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Railway Heritage Park (रेलवे विरासत पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt2vG6JhJOfpLrr5nlxMExXDbZV3gkunYswg&s",
        "description": "Located in Tinsukia, this park preserves vintage locomotives, railway equipment, and showcases Assam’s railway heritage. | तिनसुकिया में स्थित यह पार्क पुराने इंजन, रेलवे उपकरण और असम की रेलवे धरोहर को प्रदर्शित करता है।"
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
