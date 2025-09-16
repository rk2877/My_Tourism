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

    "Ranchi (रांची)": [
      {
        "name": "Jonha Fall (जोनहा फॉल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/43/4f/16/img-20171104-101501-largejpg.jpg?w=900&h=500&s=1",
        "description": "About 45 kms away from Ranchi on the Ranchi-Purulia Highway, Jonha Falls is named after the local village and is a popular waterfall destination. | रांची-पुरुलिया हाईवे पर रांची से लगभग 45 किमी दूर स्थित जोन्हा फॉल स्थानीय गाँव के नाम पर रखा गया है और यह एक लोकप्रिय जलप्रपात स्थल है।"
      },
      {
        "name": "Dassam Fall (दसम फॉल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/48/68/f4/dassam-falls.jpg?w=1200&h=-1&s=1",
        "description": "Situated 34 km from Ranchi on the Ranchi-Tata road near Taimara village, Dassam Falls is known for its scenic beauty and gushing water streams. | तैमारा गाँव के पास रांची-टाटा रोड पर रांची से 34 किमी दूर स्थित दसम फॉल अपनी प्राकृतिक सुंदरता और तेज़ बहाव वाली धाराओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Tagore Hill (टैगोर हिल)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/d/d9/Tagore_hill_Ranchi.jpg",
        "description": "A prominent geographical feature of Ranchi, Tagore Hill offers panoramic views of the city. It was once home to the ashram of Rabindranath Tagore’s elder brother Jyotindra Nath. Popular for sunrise, sunset and picnics. | रांची की प्रमुख पहाड़ी, टैगोर हिल शहर का मनोरम दृश्य प्रदान करती है। यहाँ पहले रवीन्द्रनाथ टैगोर के बड़े भाई ज्योतिन्द्रनाथ का आश्रम था। सूर्योदय-सूर्यास्त और पिकनिक के लिए मशहूर।"
      },
      {
        "name": "Rock Garden (रॉक गार्डन)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/3d/c0/e5/rock-garden.jpg?w=900&h=500&s=1",
        "description": "Located near Ranchi Lake at Gonda Hill, Rock Garden is made from the residual rocks of the hill. It features artistic stone structures, gardens, and scenic views, making it a popular picnic spot. | गोंडा हिल पर रांची झील के पास स्थित रॉक गार्डन अवशेष चट्टानों से बना है। यहाँ पत्थरों की कलात्मक संरचनाएँ और सुंदर दृश्य देखने को मिलते हैं। पिकनिक के लिए मशहूर स्थल।"
      },
      {
        "name": "Hundru Waterfall (हुंड्रू जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCd7dvJ-QUiB3CZCFfa2Q-iPhWyES9KyWwMw&s",
        "description": "Hundru Falls, formed by the Subarnarekha River, is one of the highest waterfalls of Jharkhand and a popular tourist attraction. | सुवर्णरेखा नदी से बना हुंड्रू फॉल झारखंड के सबसे ऊँचे जलप्रपातों में से एक है और एक प्रमुख पर्यटक स्थल है।"
      },
      {
        "name": "Birsa Zoological Park (बिरसा प्राणी उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwrNsT4bKoirNcnyhN5fL7TYL7ZTo5UWk8bw&s",
        "description": "Located on Ranchi-Patna highway near Ormanjhi, Birsa Zoological Park covers 105 hectares and houses diverse animal species in natural habitats. Also called Birsa Jaivik Udyan. | रांची-पटना हाईवे पर ओरमांझी के पास स्थित बिरसा प्राणी उद्यान 105 हेक्टेयर में फैला है और विभिन्न प्रजातियों के जीवों का प्राकृतिक आवास है।"
      },
      {
        "name": "Ranchi Lake (रांची झील)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/lodh-waterfalls-ranchi-jharkhand-1-attr-nearby?qlt=82&ts=1727010860679",
        "description": "Dug by Colonel Onsely in 1842, Ranchi Lake (Bada Talab) is spread over 50 acres at the base of a hill. It offers scenic views and boating opportunities. | 1842 में कर्नल ओन्सली द्वारा बनाई गई रांची झील (बड़ा तालाब) 50 एकड़ से अधिक क्षेत्र में फैली है और नौकायन व प्राकृतिक दृश्यों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Jagannath Temple (जगन्नाथ मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/4b/da/fb/jagannath-temple.jpg?w=1200&h=-1&s=1",
        "description": "About 10 km from Ranchi, the 17th century Jagannath Temple was built by Aninath Shahdeo. It resembles the Puri Jagannath Temple in Odisha and sits atop a hillock. | रांची से 10 किमी दूर स्थित यह 17वीं शताब्दी का मंदिर अनिनाथ शाहदेव द्वारा बनवाया गया था। इसका ढाँचा पुरी के जगन्नाथ मंदिर जैसा है और यह एक पहाड़ी पर स्थित है।"
      },
      {
        "name": "Nakshatra Van (नक्षत्र वन)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/4a/15/6c/nakshatra-van.jpg?w=1200&h=-1&s=1",
        "description": "A unique park on Rajbhawan Road, Nakshatra Van is based on Indian astrology. Different sections are themed on zodiac signs and nakshatras. | राजभवन रोड पर स्थित नक्षत्र वन भारतीय ज्योतिष पर आधारित एक अनोखा पार्क है, जिसमें अलग-अलग भाग राशियों और नक्षत्रों पर आधारित हैं।"
      }
    ],

    "Bokaro (बोकारो)": [
      {
        "name": "Satanpur Hills (सतनपुर हिल्स)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011556-r017j3xafe9t90za22gjs5bghug1il6oc83dhbm876.jpg",
        "description": "Satanpur Hills is a scenic natural spot located in Kumhari, Chas about 20 km from the district headquarters. | सतनपुर हिल्स एक प्राकृतिक सुंदर स्थान है जो चास प्रखंड के कुम्हारी गाँव में स्थित है, जिला मुख्यालय से लगभग 20 किमी दूर।"
      },
      {
        "name": "Banaso Temple (बानासो मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011574-r017ibq4qd77kq48mq9qpcfmoab13o2q8cit30s1du.jpg",
        "description": "Banaso Temple is a major religious site and a center of faith for devotees in Bokaro. | बानासो मंदिर बोकारो का एक प्रमुख धार्मिक स्थल है और श्रद्धालुओं के विश्वास का केंद्र है।"
      },
      {
        "name": "Garga Dam (गार्गा डैम)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011578-r017h88wrbp613pl197esme9q3pm4dq02x4exeekn6.jpeg",
        "description": "Garga Dam is a popular picnic and tourist spot located in Garaga, Chas. | गार्गा डैम, चास प्रखंड के गरगा गाँव में स्थित एक लोकप्रिय पिकनिक और पर्यटन स्थल है।"
      },
      {
        "name": "Durga Hills (दुर्गा हिल्स)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011552-r017fpq9qxmjbpwrvln1s05j9r6bpxpkjfa93cneo2.jpeg",
        "description": "Durga Hills is a religious site located in Durgapur, Kasmar. | दुर्गा हिल्स, कसमर प्रखंड के दुर्गापुर में स्थित एक धार्मिक स्थल है।"
      },
      {
        "name": "Sewati Valley (सेवती घाटी)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011598-r0178wee76ap5ht4o5lf782886riwxnmlp0iu4r5s2.jpeg",
        "description": "Sewati Valley is a hidden gem of natural beauty in Bokaro. | सेवती घाटी, बोकारो का एक प्राकृतिक सुंदरता से भरा हुआ छुपा खज़ाना है।"
      },
      {
        "name": "Chechaka Dham (चिचका धाम)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011531-r01734o28sebvo6vd5sve6hcy17entqy54u7rzb5z6.jpg",
        "description": "Chechaka Dham is a religious place located in Kumhari, Ghas. | चिचका धाम, घस प्रखंड के कुम्हारी गाँव में स्थित एक धार्मिक स्थल है।"
      },
      {
        "name": "Konar Dam (कोनार डैम)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011549-r0171l7l1kaeuoffcztvt2h5wasr1oms9ickgnle6a.jpeg",
        "description": "Konar Dam is a beautiful water reservoir located in Jarkunda, Gomia about 79 km from Bokaro. | कोनार डैम गोमिया प्रखंड के जरकुंडा गाँव में स्थित एक सुंदर जलाशय है, बोकारो से लगभग 79 किमी दूर।"
      },
      {
        "name": "Mrugi Khoh (मृगी खोह)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011522-r016ycnli3uuv14q9lg57vw08ir8j7s2hhgcyce7lu.jpeg",
        "description": "Mrugi Khoh is a religious place located in Dumurkudar, Kasmar. | मृगी खोह, कसमर प्रखंड के डुमरकुदर गाँव में स्थित एक धार्मिक स्थल है।"
      },
      {
        "name": "Gawai Barrage (गवाई बैराज)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011554-r016waeci717du4lb7cm8wmlb2x8n4l9v9x01hgb9e.jpeg",
        "description": "Gawai Barrage is a local tourist destination situated in Pindrajora, Chas. | गवाई बैराज, चास प्रखंड के पिंड्राजोरा में स्थित एक स्थानीय पर्यटन स्थल है।"
      },
      {
        "name": "Ram Lakhan Tungri (राम लखन तुंगरी)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011529-r017mx5q57hoc3fxsps2w6or83nmqebhj3c9jpyqyq.jpeg",
        "description": "Ram Lakhan Tungri is a historic and religious place located in Kumhari, Chas. | राम लखन तुंगरी, चास प्रखंड के कुम्हारी गाँव में स्थित एक ऐतिहासिक और धार्मिक स्थल है।"
      },
      {
        "name": "Tenughat Dam (तेनुघाट डैम)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011518-scaled-r015z2rn0xkh5udb8uj65ac9oymco4qpaw3dlip342.jpeg",
        "description": "Tenughat Dam is a beautiful spot on the tourist map of Jharkhand. | तेनुघाट डैम झारखंड के पर्यटन मानचित्र पर एक आकर्षक स्थल है।"
      },
      {
        "name": "Bhairav Sthal (भैरव स्थल)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011580-r015xoy6ypoa2idobqzxz4wu7jfwc68xg1in5uqy9u.jpeg",
        "description": "Bhairav Sthal is a religious place located in Bhojudih, Chandankiyari. | भैरव स्थल, चंदनकियारी प्रखंड के भोझुदीह में स्थित एक धार्मिक स्थल है।"
      },
      {
        "name": "Dalahi Kund (दलाही कुंड)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011547-r015w0sitbdxfgt230ztjk3c6voenjm3vrrkg585c2.jpg",
        "description": "Dalahi Kund is a natural tourist spot located in Araldih, Jaridih. | दलाही कुंड, जरीडीह प्रखंड के अरलडीह गाँव में स्थित एक प्राकृतिक पर्यटन स्थल है।"
      },
      {
        "name": "Sita Fall (सीता फॉल)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2025011095-qzsqwjyk5jvwdwig17qcl0pdfx73mjq28thsppu51e.jpg",
        "description": "Sita Fall is a scenic waterfall located in Vijulia, Chas. | सीता फॉल, चास प्रखंड के विजुलिया गाँव में स्थित एक प्राकृतिक जलप्रपात है।"
      },
      {
        "name": "Luguburu Ghantabari Dhorom Gadh (लुगुबुरु घंटाबाड़ी धोरम गढ़)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2021020483-p2d4fszzb75hp1ix708b7s01gz72b4nxxer5qzoj5u.jpg",
        "description": "Luguburu Ghantabari Dhorom Gadh is an important religious place located in Kodwatand, Gomia. | लुगुबुरु घंटाबाड़ी धोरम गढ़, गोमिया प्रखंड के कोडवाटांड़ में स्थित एक प्रमुख धार्मिक स्थल है।"
      },
      {
        "name": "City Park (सिटी पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2018042139-olwbnjtz23tvo0137bra83g6bpmud1y56lohj4oi6a.jpg",
        "description": "City Park is a green and peaceful park located 2 km from the city centre. | सिटी पार्क, शहर के केंद्र से 2 किमी दूर स्थित एक हरियाली और शांतिपूर्ण पार्क है।"
      },
      {
        "name": "Jawaharlal Nehru Biological Park (जवाहरलाल नेहरू जैविक उद्यान)",
        "image": "https://cdn.s3waas.gov.in/s3a760880003e7ddedfef56acb3b09697f/uploads/bfi_thumb/2018042135-1-olwbniw4v9slce2gctcnnlopqbrh5cueuh101upwci.jpg",
        "description": "Jawaharlal Nehru Biological Park is a zoological park established in the 1980s, located about 12 km from the city centre. | जवाहरलाल नेहरू जैविक उद्यान, 1980 के दशक में स्थापित एक चिड़ियाघर है, जो शहर के केंद्र से लगभग 12 किमी दूर है।"
      }
    ],

    "Chatra (चतरा)": [
      {
        "name": "Bario Waterfall (बारियो वाटरफॉल)",
        "image": "https://cdn.s3waas.gov.in/s3ff4d5fbbafdf976cfdc032e3bde78de5/uploads/bfi_thumb/2020021979-scaled-olwe3us53spmd7rhkhvjgt93cue7heicno0mkxr1mq.jpg",
        "description": "Bario Waterfall is an important natural scenic spot located 12 km north of Chatra. | बारियो जलप्रपात चतरा के उत्तर में 12 किमी की दूरी पर स्थित एक महत्वपूर्ण प्राकृतिक स्थल है।"
      },
      {
        "name": "Maludah Falls (मालुदाह फॉल्स)",
        "image": "https://cdn.s3waas.gov.in/s3ff4d5fbbafdf976cfdc032e3bde78de5/uploads/bfi_thumb/2018112990-olwe4701kn6ck59ql55ov8632upz9guv1chxtj8xdu.jpg",
        "description": "Maludah Falls is a beautiful waterfall located 8 km west of Chatra, accessible by vehicle for 5 km. | मालुदाह जलप्रपात, चतरा से 8 किमी पश्चिम में स्थित है, जहाँ 5 किमी तक वाहन द्वारा पहुँचा जा सकता है।"
      },
      {
        "name": "Tamasin Falls (तमसिन फॉल्स)",
        "image": "https://cdn.s3waas.gov.in/s3ff4d5fbbafdf976cfdc032e3bde78de5/uploads/bfi_thumb/2018112418-e1543042213726-olwe454d6z3rwxcgw4cfq8n5w2z8u2ned36yuzbpqa.jpg",
        "description": "Tamasin Falls is located 32 km north of Kanhachatti block in Chatra district. | तमसिन जलप्रपात, चतरा जिले के कान्हाचट्टी प्रखंड के उत्तर में 32 किमी की दूरी पर स्थित है।"
      },
      {
        "name": "Kolhua Hill / Kauleswari Hill and Temple (कौलुआ हिल / कौलेश्वरी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ff4d5fbbafdf976cfdc032e3bde78de5/uploads/bfi_thumb/2018030782-olwe3mbleae1gq3rxw7wcddy0djwk4krmi599g3l6q.jpg",
        "description": "Kauleswari temple is situated on Kolhua Hill at an altitude of 1750 feet, 6 km from Hunterganj block. | कौलेश्वरी मंदिर, 1750 फीट ऊँचे कौलुआ पहाड़ी पर, हंटरगंज प्रखंड से 6 किमी की दूरी पर स्थित है।"
      },
      {
        "name": "Dumer Sumer Waterfalls (डूमर सुमर वाटरफॉल्स)",
        "image": "https://cdn.s3waas.gov.in/s3ff4d5fbbafdf976cfdc032e3bde78de5/uploads/bfi_thumb/2018030780-olwe3mbleae1gq3rxw7wcddy0djwk4krmi599g3l6q.png",
        "description": "Dumer Sumer Waterfalls is another scenic waterfall located 12 km north of Chatra. | डूमर सुमर जलप्रपात, चतरा से उत्तर में 12 किमी की दूरी पर स्थित एक सुंदर स्थल है।"
      },
      {
        "name": "Bhadrakali Temple (भद्रकाली मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3ff4d5fbbafdf976cfdc032e3bde78de5/uploads/bfi_thumb/2018030825-olwe3n9fl4fbsc2esemiwv5elrf9rtohymsqqq270i.jpg",
        "description": "Bhadrakali Temple is located 35 km east of Chatra and 16 km west of Chauparan, connected by GT road. | भद्रकाली मंदिर, चतरा से 35 किमी पूर्व और चौपारण से 16 किमी पश्चिम जीटी रोड पर स्थित है।"
      }
    ],

    "Deoghar (देवघर)": [
      {
        "name": "Baba Baidyanath Dham (बाबा बैद्यनाथ धाम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/35/8b/de/main-temple-of-baba-baijnath.jpg?w=500&h=500&s=1",
        "description": "Baidyanath Jyotirlinga Temple, also known as Baba Baidyanath Dham, is one of the twelve Jyotirlingas in India and a major religious site. | बैद्यनाथ ज्योतिर्लिंग मंदिर, जिसे बाबा बैद्यनाथ धाम भी कहते हैं, भारत के बारह ज्योतिर्लिंगों में से एक है और एक प्रमुख धार्मिक स्थल है।"
      },
      {
        "name": "Trikut Mountain (त्रिकुट पर्वत)",
        "image": "https://cdn.s3waas.gov.in/s3559cb990c9dffd8675f6bc2186971dc2/uploads/bfi_thumb/2018022713-olw8xfghmpibpek25wvaxutxxp9guiev0y1s1a5zpe.jpg",
        "description": "Trikut Mountain is a popular tourist destination where visitors can enjoy trekking, ropeway rides, and wildlife adventures. | त्रिकुट पर्वत एक लोकप्रिय पर्यटन स्थल है जहाँ पर्यटक ट्रेकिंग, रोपवे और वन्य जीवन के रोमांच का आनंद ले सकते हैं।"
      },
      {
        "name": "Satsang Ashram (सत्संग आश्रम)",
        "image": "https://cdn.s3waas.gov.in/s3559cb990c9dffd8675f6bc2186971dc2/uploads/bfi_thumb/2018031339-olw8xfghmpibpek25wvaxutxxp9guiev0y1s1a5zpe.jpg",
        "description": "Satsang Ashram, established by Thakur Anukulchandra, is a holy religious site located in the southwest of Deoghar. | सत्संग आश्रम, ठाकुर अनुकूलचंद्र द्वारा स्थापित एक धार्मिक स्थल है, जो देवघर के दक्षिण-पश्चिम में स्थित है।"
      },
      {
        "name": "Nandan Pahar (नंदन पहाड़)",
        "image": "https://cdn.s3waas.gov.in/s3559cb990c9dffd8675f6bc2186971dc2/uploads/bfi_thumb/2018031337-olw8xfghmpibpek25wvaxutxxp9guiev0y1s1a5zpe.jpg",
        "description": "Nandan Pahar is a small hill on the outskirts of Deoghar, famous for its Nandi temple and scenic surroundings. | नंदन पहाड़ देवघर शहर के बाहर स्थित एक छोटी पहाड़ी है, जो नंदी मंदिर और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Naulakha Temple (नौलखा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3559cb990c9dffd8675f6bc2186971dc2/uploads/bfi_thumb/2018031362-olw8xfghmpibpek25wvaxutxxp9guiev0y1s1a5zpe.jpg",
        "description": "Naulakha Temple, located 1.5 km away from Baba Baidyanath Temple, is an important religious site in Deoghar. | नौलखा मंदिर, बाबा बैद्यनाथ मंदिर से लगभग 1.5 किमी दूर स्थित एक प्रमुख धार्मिक स्थल है।"
      }
    ],

    "Dhanbad (धनबाद)": [
      {
        "name": "Bhatinda Fall (भटिंडा फॉल)",
        "image": "https://cdn.s3waas.gov.in/s337f0e884fbad9667e38940169d0a3c95/uploads/bfi_thumb/2018101589-olw8usisgfwd4sdyk9tzg0sdxs9e92xyzw5qkc2r5u.png",
        "description": "Bhatinda Fall is located just 14 km away from Dhanbad railway station and is a perfect picnic spot surrounded by natural beauty. | भटिंडा फॉल धनबाद रेलवे स्टेशन से मात्र 14 किमी दूर स्थित है और प्राकृतिक सुंदरता से घिरा एक उत्तम पिकनिक स्थल है।"
      },
      {
        "name": "Maithon Dam (मैथन डैम)",
        "image": "https://cdn.s3waas.gov.in/s337f0e884fbad9667e38940169d0a3c95/uploads/bfi_thumb/2018101511-olw8urky9lv2t6fbprfcvj0xcee11du8nri93245c2.jpg",
        "description": "Maithon Dam, named after 'Mai Ka Sthan', dedicated to Goddess Maa Kalyaneshwari, is one of the most famous attractions in Dhanbad. | मैथन डैम, जिसका नाम 'माई का स्थान' से लिया गया है और मां कल्याणेश्वरी को समर्पित है, धनबाद का एक प्रसिद्ध आकर्षण है।"
      },
      {
        "name": "Topchanchi Lake (टोपचांची झील)",
        "image": "https://cdn.s3waas.gov.in/s337f0e884fbad9667e38940169d0a3c95/uploads/bfi_thumb/2018101240-olw8urky9lv2t6fbprfcvj0xcee11du8nri93245c2.jpg",
        "description": "Topchanchi Lake, situated on National Highway 2, is a popular tourist spot known for its scenic surroundings and peaceful environment. | टोपचांची झील, जो राष्ट्रीय राजमार्ग 2 पर स्थित है, अपनी प्राकृतिक सुंदरता और शांत वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Panchet Dam (पंचेत डैम)",
        "image": "https://assets.simplotel.com/simplotel/image/upload/x_0,y_983,w_3370,h_2527,r_0,c_crop,q_80,fl_progressive/w_500,f_auto,c_fit/wedlock-greens-hotel-resorts/pexels-srijit-mudi-31301853-19638602_8521bc16",
        "description": "Panchet Dam, built across the Damodar River in 1959, is an important site for tourism and irrigation in Dhanbad. | पंचेत डैम, जो 1959 में दामोदर नदी पर बनाया गया था, धनबाद में पर्यटन और सिंचाई के लिए महत्वपूर्ण स्थल है।"
      },
      {
        "name": "Birsa Munda Park (बिरसा मुंडा पार्क)",
        "image": "https://cdn.s3waas.gov.in/s337f0e884fbad9667e38940169d0a3c95/uploads/bfi_thumb/2018033178-olw8ui6kd9i7l2sz8nd36lebejocwesxagzeaai32a.jpg",
        "description": "Birsa Munda Park is the only major park in Dhanbad, attracting visitors with its greenery and recreational facilities. | बिरसा मुंडा पार्क धनबाद का एकमात्र बड़ा पार्क है, जो अपनी हरियाली और मनोरंजन की सुविधाओं से पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Lillori Sthan Mandir (लिलोरी स्थान मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZbjjsUjeSjucjwRPvisX2tHFja7pj3IprDqVt-DMCtm35TJWQN460YYvDHUuCU6N0sN4&usqp=CAU",
        "description": "Lillori Sthan Mandir, situated on the banks of the Katri River, is one of the holiest places in Dhanbad. Dedicated to Goddess Kali, it is believed to be around 800 years old. | लिलोरी स्थान मंदिर, कत्री नदी के किनारे स्थित, धनबाद के सबसे पवित्र स्थानों में से एक है। यह माँ काली को समर्पित है और लगभग 800 वर्ष पुराना माना जाता है।"
      },
      {
        "name": "Shakti Mandir (शक्ति मंदिर)",
        "image": "https://www.nativeplanet.com/photos/325x244x90/2013/06/_13715407700.jpg",
        "description": "Shakti Mandir, dedicated to Maa Durga, is famous for its eternal flame 'Akhand Jyoti' brought from Jwalaji, Himachal Pradesh. | शक्ति मंदिर, माँ दुर्गा को समर्पित है और इसकी 'अखंड ज्योति' हिमाचल प्रदेश के ज्वालाजी से लाई गई मानी जाती है।"
      }
    ],

    "Dumka (दुमका)": [
      {
        "name": "Baba Basukinath Dham (बाबा बासुकिनाथ धाम)",
        "image": "https://cdn.s3waas.gov.in/s363538fe6ef330c13a05a3ed7e599d5f7/uploads/2018/03/2018031534-768x511.jpg",
        "description": "Basukinath Dham, located 25 km from Dumka, is one of the most famous pilgrimage sites of Lord Shiva. During Shravan month, lakhs of devotees visit here. | बासुकिनाथ धाम, दुमका से 25 किमी दूर, भगवान शिव का प्रमुख तीर्थ स्थल है। सावन माह में यहाँ लाखों श्रद्धालु पूजा करने आते हैं।"
      },
      {
        "name": "Baba Sumeshwarnath Temple (बाबा सुमेश्वरनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s363538fe6ef330c13a05a3ed7e599d5f7/uploads/2018/03/2018031511.jpg",
        "description": "Located in Saraiyahat, 60 km from Dumka, this Shiva temple is an important religious place. It is especially crowded during Mahashivratri. | सरैयाहाट (60 किमी, दुमका) में स्थित यह शिव मंदिर धार्मिक दृष्टि से महत्वपूर्ण है। महाशिवरात्रि पर यहाँ विशेष भीड़ होती है।"
      },
      {
        "name": "Naag Mandir, Shiv Pahar (नाग मंदिर, शिव पहाड़)",
        "image": "https://cdn.s3waas.gov.in/s363538fe6ef330c13a05a3ed7e599d5f7/uploads/2018/03/2018031556.jpg",
        "description": "Naag Mandir is located at the top of Shiv Pahar hill in Dumka. The temple complex has several shrines, the main one dedicated to Lord Shiva. | नाग मंदिर, शिव पहाड़ की चोटी पर स्थित है। यहाँ कई छोटे-छोटे मंदिर हैं, मुख्य मंदिर भगवान शिव को समर्पित है।"
      },
      {
        "name": "Mayurakshi River (मयूराक्षी नदी)",
        "image": "https://cdn.s3waas.gov.in/s363538fe6ef330c13a05a3ed7e599d5f7/uploads/2018/03/2018031583.jpg",
        "description": "The 250 km long Mayurakshi River originates from Trikut Hill and flows through Dumka, later joining the Hooghly River. | लगभग 250 किमी लंबी मयूराक्षी नदी त्रिकुट पहाड़ से निकलती है और दुमका होकर बहती हुई अंत में हुगली नदी में मिलती है।"
      },
      {
        "name": "Masanjore Dam (मसानजोर डैम)",
        "image": "https://cdn.s3waas.gov.in/s363538fe6ef330c13a05a3ed7e599d5f7/uploads/2018/03/2018031581-300x187.jpg",
        "description": "Built on Mayurakshi River, Masanjore Dam is a popular picnic spot surrounded by hills and forests, 31 km south of Dumka. | मयूराक्षी नदी पर बना मसानजोर डैम दुमका से 31 किमी दक्षिण में पहाड़ियों और जंगलों से घिरा एक लोकप्रिय पिकनिक स्थल है।"
      },
      {
        "name": "Tatloi Hot Spring (टाटलोई गर्म पानी का झरना)",
        "image": "https://cdn.s3waas.gov.in/s363538fe6ef330c13a05a3ed7e599d5f7/uploads/2018/03/2018031596-300x225.jpg",
        "description": "Tatloi, located 15 km from Dumka, is a natural hot water spring surrounded by greenery and small hills. | टाटलोई, दुमका से 15 किमी दूर, प्राकृतिक गर्म पानी का झरना है जो पहाड़ियों और हरियाली से घिरा हुआ है।"
      },
      {
        "name": "Malooti (मलूटी)",
        "image": "https://cdn.s3waas.gov.in/s363538fe6ef330c13a05a3ed7e599d5f7/uploads/2018/03/2018031572-768x512.jpg",
        "description": "Malooti is a historic village with terracotta temples, located 55 km from Dumka. It was once made a tax-free capital by King Basant Rai. | मलूटी दुमका से 55 किमी दूर एक ऐतिहासिक गाँव है जहाँ टेराकोटा मंदिर प्रसिद्ध हैं। इसे कभी राजा बसंत राय ने कर-मुक्त राजधानी बनाया था।"
      }
    ],

    "East Singhbhum (पूर्वी सिंहभूम)": [
      {
        "name": "Shri Sai Temple (श्री साई मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33dc4876f3f08201c7c76cb71fa1da439/uploads/bfi_thumb/2023102894-qeivwanzf9713rutgb7p24tp6gnmtu6hrgpszmw7wi.jpeg",
        "description": "Shri Sai Mandir, located in Jamshedpur, is built on 0.75 acres of land at a cost of approximately Rs 3 crores and houses all the shrines of Shirdi Sai Baba. | श्री साई मंदिर, जमशेदपुर में स्थित है। यह 0.75 एकड़ में लगभग 3 करोड़ की लागत से बना है और इसमें शिरडी साई बाबा के सभी मंदिरों की प्रतिकृति है।"
      },
      {
        "name": "Bhuteshwar Temple (भूतनाथ मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33dc4876f3f08201c7c76cb71fa1da439/uploads/bfi_thumb/2023101290-qdqwze6crd6hxveql0v20x24kwvsb7jt01z8x3i58i.jpg",
        "description": "Baba Bhuteshwar Temple in Gada village of Baharagora block is a very important temple for devotees. It is especially crowded during the Gajan festival. | बाबा भूतनाथ मंदिर, गड़ा गाँव (बहरागोड़ा प्रखंड) में स्थित है। गाजन पर्व के दौरान यहाँ विशेष भीड़ होती है।"
      },
      {
        "name": "Burudi Lake (बुरुदी झील)",
        "image": "https://cdn.s3waas.gov.in/s33dc4876f3f08201c7c76cb71fa1da439/uploads/bfi_thumb/2023101245-qdqs3p6db6o1tsm5ikuhgr5fb4uwjx1zug4ym60a9u.jpg",
        "description": "Burudi Lake, built on Burudi Dam in Ghatshila subdivision, is a major natural attraction known for its scenic beauty. | बुरुदी डैम पर बनी बुरुदी झील, घाटशिला अनुमंडल में स्थित एक प्रमुख प्राकृतिक आकर्षण है।"
      },
      {
        "name": "Rankini Temple (रंकीनी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s33dc4876f3f08201c7c76cb71fa1da439/uploads/bfi_thumb/2023100427-qdd5j3tbmgnanbm1z6us5ud2d5obbeq22mk9w5jncy.jpeg",
        "description": "Rankini Temple in Rohinibeda village of Potka block is a famous religious spot amidst dense forests. | रंकीनी मंदिर, पोटका प्रखंड के रोहिनीबेड़ा गाँव में घने जंगलों के बीच स्थित एक प्रसिद्ध धार्मिक स्थल है।"
      },
      {
        "name": "Dimna Lake (डिमना झील)",
        "image": "https://cdn.s3waas.gov.in/s33dc4876f3f08201c7c76cb71fa1da439/uploads/bfi_thumb/2023022213-q2j4j9tk1qc6c3gnthaudwqcrzpu3wpcxjgz4zlog2.jpg",
        "description": "Dimna Lake, constructed by Tata Steel in Bodam Block, is a popular picnic and boating destination near Dalma Wildlife Sanctuary. | डिमना झील, टाटा स्टील द्वारा बोडम प्रखंड में निर्मित, पिकनिक और नौका विहार के लिए प्रसिद्ध है।"
      },
      {
        "name": "Jubilee Park (जुबली पार्क)",
        "image": "https://cdn.s3waas.gov.in/s33dc4876f3f08201c7c76cb71fa1da439/uploads/bfi_thumb/2021081139-pbg3mh940kb0zwljt94k38r4u4wz4u3svwnt1wjh8i.jpg",
        "description": "Jubilee Park is a large park located in the heart of Jamshedpur, popular among families and tourists. | जुबली पार्क, जमशेदपुर के बीचोंबीच स्थित एक बड़ा पार्क है, जो परिवारों और पर्यटकों में लोकप्रिय है।"
      },
      {
        "name": "Dalma Wildlife Sanctuary (दलमा वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s33dc4876f3f08201c7c76cb71fa1da439/uploads/bfi_thumb/2021081138-pbg4fihn4c1vmafa9sxp3wzpelt4w9dbjm3qplhp1e.jpg",
        "description": "Dalma Wildlife Sanctuary, established in 1975, is famous for elephants and other wildlife. It also houses the Dalma Pahari Guesthouse of Forest Department and TISCO. | 1975 में स्थापित दलमा वन्यजीव अभयारण्य हाथियों और अन्य वन्यजीवों के लिए प्रसिद्ध है। यहाँ वन विभाग और टिस्को का दलमा पहाड़ी गेस्टहाउस भी है।"
      }
    ],

    "Giridih (गिरिडीह)": [
      {
        "name": "Parasnath Hill (पारसनाथ पहाड़)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/6c/f6/c8/parasnath-hills.jpg?w=1200&h=-1&s=1",
        "description": "Parasnath Hill, located in Giridih, is the highest mountain in Jharkhand and a major Jain pilgrimage site. Known as 'Shikharji', it is believed that 20 out of 24 Jain Tirthankaras attained salvation here. | पारसनाथ पहाड़, गिरिडीह की सबसे ऊँची चोटी और जैन धर्म का प्रमुख तीर्थ स्थल है। इसे 'शिखरजी' कहा जाता है, जहाँ 24 में से 20 जैन तीर्थंकरों ने मोक्ष प्राप्त किया।"
      },
      {
        "name": "Usri Falls (उसरी जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRkJPqIzgeTyOXawqyQPHCx7TsQYqZHXGZ5w&s",
        "description": "Usri Falls, situated about 13 km from Giridih town, is a scenic waterfall surrounded by forests and hills. It is a popular picnic spot. | उसरी जलप्रपात, गिरिडीह नगर से 13 किमी दूर स्थित है। यह हरियाली और पहाड़ियों से घिरा हुआ एक सुंदर जलप्रपात है और लोकप्रिय पिकनिक स्थल है।"
      },
      {
        "name": "Harihar Dham (हरिहर धाम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/c0/0e/32/caption.jpg?w=1200&h=1200&s=1",
        "description": "Harihar Dham in Bagodar, Giridih, has one of the largest Shiva lingams in India, attracting lakhs of devotees during Shravan month. | हरिहर धाम, बगोदर (गिरिडीह) में स्थित है, जहाँ एशिया का सबसे बड़ा शिवलिंग है। सावन माह में लाखों श्रद्धालु यहाँ आते हैं।"
      },
      {
        "name": "Khandoli Park & Dam (खांडोली पार्क और डैम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/a9/b4/86/khandoli-park.jpg?w=1200&h=-1&s=1",
        "description": "Khandoli Park & Dam is a famous tourist attraction offering boating, trekking, and water sports. It is surrounded by small hills and lush greenery. | खांडोली पार्क और डैम, गिरिडीह का प्रसिद्ध पर्यटन स्थल है। यहाँ नौका विहार, ट्रेकिंग और एडवेंचर गतिविधियाँ होती हैं।"
      },
      {
        "name": "Surya Mandir (सूर्य मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuHrQma2srDiYvmHaes8YrVVQ2GuaDIRjPkw&s",
        "description": "Surya Mandir, dedicated to the Sun God, is a beautiful temple in Giridih. It is an important religious and cultural site. | सूर्य मंदिर, भगवान सूर्य को समर्पित एक सुंदर मंदिर है और गिरिडीह का प्रमुख धार्मिक स्थल है।"
      },
      {
        "name": "Madhuvan (मधुवन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvMzRGTNfAdsND7vX83MRt-rJeTOHc6EScdg&s",
        "description": "Madhuvan, at the foothills of Parasnath, is an ancient and sacred Jain site. It is known for its temples, natural beauty, and spiritual atmosphere. | मधुवन, पारसनाथ पहाड़ी के तलहटी में स्थित प्राचीन जैन स्थल है। यह धार्मिक महत्व और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Jharkhandi Dham (झारखंडी धाम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGqvSJ6SU7AYky442uErnom9sc06sKmTkgXg&s",
        "description": "Jharkhandi Dham is an important Shiva temple in Giridih. Devotees visit in large numbers during Shivratri and Shravan month. | झारखंडी धाम, गिरिडीह का प्रसिद्ध शिव मंदिर है। शिवरात्रि और सावन में यहाँ श्रद्धालुओं की भीड़ होती है।"
      },
      {
        "name": "Rajeera Hill (राजीरा पहाड़ी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/6c/f6/c8/parasnath-hills.jpg?w=1200&h=1200&s=1",
        "description": "Rajeera Hill is a scenic and less explored spot in Giridih, surrounded by nature and offering trekking opportunities. | राजीरा पहाड़ी, गिरिडीह का एक शांत और प्राकृतिक स्थल है जहाँ ट्रेकिंग का आनंद लिया जा सकता है।"
      },
      {
        "name": "Devari Temple (देवरी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJgTicjCkDkMrGipCt7IbpDqK9w6ED_totls180rooejTuR4pEuBi83vDj51axgXtwcQQ&usqp=CAU",
        "description": "Devari Temple is an ancient Shiva temple located in a peaceful setting of Giridih, attracting devotees and tourists alike. | देवरी मंदिर, गिरिडीह का प्राचीन शिव मंदिर है जो धार्मिक और ऐतिहासिक महत्व रखता है।"
      }
    ],

    "Godda (गोड्डा)": [
      {
        "name": "Sundar Dam (सुंदर डैम)",
        "image": "https://i0.wp.com/angdesh.com/wp-content/uploads/2022/08/Sundar-dam-godda-2.png?resize=560%2C315&ssl=1",
        "description": "Sundar Dam, located near Pathargama in Godda district, is one of the largest water reservoirs of the region. It is surrounded by scenic hills and greenery, making it a popular picnic spot. | सुंदर डैम, गोड्डा जिले के पथरगामा के पास स्थित है और क्षेत्र का एक बड़ा जलाशय है। यह हरियाली और पहाड़ियों से घिरा हुआ है और पिकनिक स्थल के रूप में प्रसिद्ध है।"
      },
      {
        "name": "Yogani Sakati Pith (योगिनी शक्तिपीठ)",
        "image": "https://cdn.s3waas.gov.in/s31ff1de774005f8da13f42943881c655f/uploads/bfi_thumb/2018042449-olw7q34ehq6ccpij96elyskru2w5wycfqf3rdyfima.png",
        "description": "Yogani Sakati Pith is one of the important Shakti Peeths located in Godda district. It is a highly revered temple dedicated to Goddess Sakati (Shakti) and attracts thousands of devotees, especially during Navratri. | योगिनी शक्तिपीठ गोड्डा जिले का एक प्रमुख शक्तिपीठ है। यह मंदिर देवी शक्ती को समर्पित है और यहाँ नवरात्रि के समय हजारों श्रद्धालु आते हैं।"
      },
    ],

    "Garhwa (गढ़वा)": [
      {
        "name": "Radha Krishna Temple/ bansidhar temple (राधा कृष्ण मंदिर)",
        "image": "https://static.vikaspedia.in/mediastorage/image/vr.jpg",
        "description": "Radha Krishna Temple in Nagaruntari, also known as Baba Bansidhar and Raja Pahari, is famous for its golden idols of Radha-Krishna made of 32 dims of gold. The temple, along with Raja Pahari Shiv Temple, is a highly revered site situated on a hilltop. | राधा कृष्ण मंदिर, नगरउंटारी (गढ़वा) जिसे बाबा बंसीधर और राजा पहाड़ी के नाम से भी जाना जाता है, अपने 32 तोले सोने से बने राधा-कृष्ण की मूर्ति के लिए प्रसिद्ध है। यहाँ शिव मंदिर (राजा पहाड़ी) भी स्थित है।"
      },
      {
        "name": "Sukhaldhari Falls (सुखालधारी जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThS77ay033_xxR8omsU62GVcLQ5CCpC2gj7A&s",
        "description": "Sukhaldhari Falls is located on the banks of the Kanhar River in Dhurki. The scenic waterfall is surrounded by lush greenery. Nearby attractions include Parsadiha Falls in Bhawanathpur (50 km from HQ) and Gursandhu Falls in Ranka. | सुखालधारी जलप्रपात, धुरकी में कनहर नदी के किनारे स्थित है। यह झरना प्राकृतिक हरियाली से घिरा हुआ है। पास में ही परसादीहा (भवनाथपुर) और गुरसंधु (रंका) जलप्रपात भी देखने योग्य हैं।"
      }
    ],

    "Gumla (गुमला)": [
      {
        "name": "Mahasadashiv 3 (महासदाशिव 3)",
        "image": "https://cdn.s3waas.gov.in/s3389bc7bb1e1c2a5e7e147703232a88f6/uploads/bfi_thumb/2021060955-p8ei4fj3dmxd2csd90xjwjsiqmdhh9wg4ucmfnrqiq.jpeg",
        "description": "This is the most magnificent Mahasadashiv temple of Gumla district. Its height is 85 feet and it is spread over an area of about 2 acres. | यह गुमला जिले का सबसे भव्य महासदाशिव मंदिर है। इसकी ऊँचाई 85 फीट है और यह लगभग 2 एकड़ में फैला हुआ है।"
      },
      {
        "name": "Baghmuda (बाघमुंडा)",
        "image": "https://cdn.s3waas.gov.in/s3389bc7bb1e1c2a5e7e147703232a88f6/uploads/bfi_thumb/2018062755-1-olw89a0045kcqss2uf1l1dwym577vkc2s6bkuihmkq.jpg",
        "description": "Baghmuda in Kamdara Tourism is famous for an old temple of Lord Shiva, situated at the bottom of a hill. | कामदारा पर्यटन क्षेत्र का बाघमुंडा भगवान शिव के प्राचीन मंदिर के लिए प्रसिद्ध है, जो पहाड़ी की तलहटी में स्थित है।"
      },
      {
        "name": "Basudevkona (बसुदेवकोना)",
        "image": "https://cdn.s3waas.gov.in/s3389bc7bb1e1c2a5e7e147703232a88f6/uploads/bfi_thumb/2018081311-olw89axm7shdppln1hg0xy011o6ba6mvpj94llxreq.jpg",
        "description": "Basudevkona is famous for its ancient religious stone sculptures similar to those of Ajanta caves, located 3 km east of Raidih. | बसुदेवकोना अपने धार्मिक पत्थर की मूर्तियों (अजंता गुफा जैसी) के लिए प्रसिद्ध है, जो रायडीह से 3 किमी पूर्व में स्थित है।"
      },
      {
        "name": "Tanginath (टांगीनाथ)",
        "image": "https://cdn.s3waas.gov.in/s3389bc7bb1e1c2a5e7e147703232a88f6/uploads/bfi_thumb/2018032010-olw88odhnrmhz2iep7oza3oysf9i5g5bmflh2yv7k2.jpg",
        "description": "Tanginath is known for its ancient and medieval architectural remains, making it an important historical site. | टांगीनाथ प्राचीन से मध्यकालीन काल तक की स्थापत्य कला के अवशेषों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Hawthorn (हॉथॉर्न)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/18/e1/c3/baghmunda-waterfall.jpg?w=1400&h=1400&s=1",
        "description": "Hawthorn is situated between Gumla and Sisai blocks. It is famous for the Jagannath temple and a snake-shaped rock formation called 'Naag'. | हॉथॉर्न गुमला और सिसई प्रखंड के बीच स्थित है। यह जगन्नाथ मंदिर और 'नाग' नामक सर्पाकृति चट्टान के लिए प्रसिद्ध है।"
      },
      {
        "name": "City (सिटी)",
        "image": "https://cdn.s3waas.gov.in/s3389bc7bb1e1c2a5e7e147703232a88f6/uploads/bfi_thumb/2018031962-olw88r7089qcxweb8qwuzkzckkvlsjgimtjxisr11e.jpg",
        "description": "City is located in Sisai block, about 9 km from its headquarters. It was the seat of the Nagbansi kings. | सिटी सिसई प्रखंड में स्थित है और मुख्यालय से लगभग 9 किमी दूर है। यह नागवंशी राजाओं की गद्दी रही है।"
      },
      {
        "name": "Devak (देवक)",
        "image": "https://cdn.s3waas.gov.in/s3389bc7bb1e1c2a5e7e147703232a88f6/uploads/bfi_thumb/2018061922-olw8991xu4et2hodcgmrsyh3uwfkusff19y5n20jr6.jpg",
        "description": "On the bank of river Ghagh in Ghaghra block, Devak is a religious place famous for its Shiva-Parvati temple. | घाघरा प्रखंड में घाघ नदी के किनारे स्थित देवक अपने शिव-पार्वती मंदिर के लिए प्रसिद्ध है।"
      },
      {
        "name": "Hapamuni (हपामुनी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtTVN6pNU3EJ-dcu4PxyQSImDiTEzD9Dz1TLoQ_fByKbGNN7JTncIqWIr3IaMeQWEVliM&usqp=CAU",
        "description": "Hapamuni is a famous ancient village on Gumla-Lohardaga road in Ghaghra block, about 12 km from the block headquarters. | हपामुनी एक प्राचीन प्रसिद्ध गाँव है, जो घाघरा प्रखंड में गुमला-लोहरदगा मार्ग पर, प्रखंड मुख्यालय से लगभग 12 किमी दूर स्थित है।"
      },
      {
        "name": "Aanjan (आंजन)",
        "image": "https://cdn.s3waas.gov.in/s3389bc7bb1e1c2a5e7e147703232a88f6/uploads/bfi_thumb/2018031952-olw88q961fp2mafoe8i8f37vz708kucsaowg1isf7m.jpg",
        "description": "Aanjan, about 18 km from Gumla, is believed to be the birthplace of Mata Anjani, the mother of Lord Hanuman. | गुमला से लगभग 18 किमी दूर आंजन गाँव माता अंजनी (हनुमानजी की माता) का जन्मस्थान माना जाता है।"
      }
    ],

    "Hazaribagh (हजारीबाग)": [
      {
        "name": "Hazaribag Lake (हजारीबाग झील)",
        "image": "https://cdn.s3waas.gov.in/s3ed265bc903a5a097f61d3ec064d96d2e/uploads/bfi_thumb/2018052979-olwdto732erslajz13f1gdrbokl23g3199l9f0ul1e.jpg",
        "description": "Hazaribag Lake is situated in the heart of the town. Boating facility is available here. It is a series of interconnected lakes. | हजारीबाग झील शहर के बीचों-बीच स्थित है। यहाँ नौका विहार की सुविधा उपलब्ध है। यह कई झीलों की श्रृंखला है।"
      },
      {
        "name": "Canary Hill (कैनरी हिल)",
        "image": "https://cdn.s3waas.gov.in/s3ed265bc903a5a097f61d3ec064d96d2e/uploads/bfi_thumb/2018052957-olwdto732erslajz13f1gdrbokl23g3199l9f0ul1e.jpg",
        "description": "Canary Hill is about 3 kilometers from Hazaribagh town. A post office is located on top of the hill. | कैनरी हिल हजारीबाग नगर से लगभग 3 किलोमीटर दूर स्थित है। यहाँ पहाड़ी के ऊपर एक डाकघर भी है।"
      },
      {
        "name": "Hazaribag Wildlife Sanctuary (हजारीबाग वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s3ed265bc903a5a097f61d3ec064d96d2e/uploads/bfi_thumb/2018052998-olwdto732erslajz13f1gdrbokl23g3199l9f0ul1e.jpg",
        "description": "This sanctuary is preserved to protect fauna and to enable visitors to view wild animals in their natural state. | यह अभयारण्य जीव-जंतुओं के संरक्षण के लिए बनाया गया है, जहाँ पर्यटक जंगली जानवरों को उनके प्राकृतिक आवास में देख सकते हैं।"
      },
      {
        "name": "Surajkund (सूरजकुंड)",
        "image": "https://cdn.s3waas.gov.in/s3ed265bc903a5a097f61d3ec064d96d2e/uploads/bfi_thumb/2018052948-olwdto732erslajz13f1gdrbokl23g3199l9f0ul1e.jpg",
        "description": "Surajkund is located on GT Road, 72 km from Hazaribag, in Barkaththa block. It is also close to Hazaribag Road railway station. | सूरजकुंड जीटी रोड पर, हजारीबाग से 72 किमी दूर, बरकट्ठा प्रखंड में स्थित है। यह हजारीबाग रोड रेलवे स्टेशन से भी पास है।"
      }
    ],

    "Jamtara (जामताड़ा)": [
      {
        "name": "Ladhna Dam (लधना डैम)",
        "image": "https://cdn.s3waas.gov.in/s313f320e7b5ead1024ac95c3b208610db/uploads/bfi_thumb/2018041821-olw73v7qxprbwjsg02n3iwfib6esyj4v0fxjzhdjpe.jpg",
        "description": "Ladhana Dam is located about 12 km from Jamtara railway station. This scenic dam is a peaceful and attractive spot for boating and nature lovers. | लधना डैम, जामताड़ा रेलवे स्टेशन से लगभग 12 किमी दूर स्थित है। यह प्राकृतिक और शांत वातावरण के साथ नौका विहार के लिए आकर्षक स्थल है।"
      },
      {
        "name": "Parvat Vihar Park (पर्वत विहार पार्क)",
        "image": "https://cdn.s3waas.gov.in/s313f320e7b5ead1024ac95c3b208610db/uploads/bfi_thumb/2018032821-olw73izugvalpma6zfcy4hiil6316gscmrg8qvvnya.jpg",
        "description": "Parvat Vihar Park is located 5 km from Jamtara railway station. It is an entertaining and refreshing spot for tourists. | पर्वत विहार पार्क, जामताड़ा रेलवे स्टेशन से लगभग 5 किमी दूर स्थित है। यह पर्यटकों के लिए मनोरंजन और ताजगी देने वाला स्थान है।"
      },
      {
        "name": "Karamdaha Temple (करमदाहा मंदिर)",
        "image": "https://i.ytimg.com/vi/PT5M_IZdFh4/maxresdefault.jpg",
        "description": "Karamdaha Temple is a famous religious place in Jamtara district dedicated to Lord Shiva. It attracts many devotees during festivals. | करमदाहा मंदिर, जामताड़ा जिले का प्रसिद्ध धार्मिक स्थल है जो भगवान शिव को समर्पित है। त्योहारों के समय यहाँ बड़ी संख्या में श्रद्धालु आते हैं।"
      },
    ],

    "Khunti (खूँटी)": [
      {
        "name": "Panchghagh Fall (पांचघाघ जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s301f78be6f7cad02658508fe4616098a9/uploads/2018/04/2018040353.jpg",
        "description": "Panchghagh is a combination of five waterfalls formed by the Banai River. The water falls from lesser height, making it safe for tourists to enjoy. Surrounded by natural beauty, it is a popular picnic spot. | पांचघाघ जलप्रपात बनई नदी से बना पाँच झरनों का समूह है। पानी कम ऊँचाई से गिरता है जिससे पर्यटक सुरक्षित रूप से आनंद ले सकते हैं। प्राकृतिक सुंदरता से घिरा यह स्थान पिकनिक के लिए प्रसिद्ध है।"
      },
      {
        "name": "Angrabari – Shiv Temple (अंगरबाड़ी शिव मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s301f78be6f7cad02658508fe4616098a9/uploads/2018/04/2018040385.jpg",
        "description": "Angrabari Temple complex, also known as Amreshwar Dham, houses idols of Lord Shiva, Ram, Sita, Hanuman, and Ganesh. The temple is surrounded by calm and serene natural beauty. | अंगरबाड़ी मंदिर परिसर, जिसे अमरेश्वर धाम भी कहा जाता है, भगवान शिव, राम, सीता, हनुमान और गणेश की प्रतिमाओं का घर है। यह मंदिर प्राकृतिक शांति और सुंदरता से घिरा है।"
      },
      {
        "name": "Dombari Buru (डोंबारी बुড়ू)",
        "image": "https://cdn.s3waas.gov.in/s301f78be6f7cad02658508fe4616098a9/uploads/2018/04/2018040312-768x576.jpg",
        "description": "Dombari Buru is a historic hill where Birsa Munda led his rebellion (Ulgulan) against the British. The Archaeological Survey of India is working to preserve it. | डोंबारी बुड़ू एक ऐतिहासिक पहाड़ी है जहाँ बिरसा मुंडा ने ब्रिटिशों के खिलाफ उलगुलान का नेतृत्व किया था। इसे पुरातत्व विभाग संरक्षित कर रहा है।"
      },
      {
        "name": "Ulihatu (उलीहातु)",
        "image": "https://cdn.s3waas.gov.in/s301f78be6f7cad02658508fe4616098a9/uploads/2018/04/2018040310.jpg",
        "description": "Ulihatu is the birthplace of Bhagwan Birsa Munda, also known as Dharti Aaba of Jharkhand. Surrounded by scenic hills, it has a beautiful sunset point. | उलीहातु भगवान बिरसा मुंडा का जन्मस्थान है, जिन्हें झारखंड का धरती आबा कहा जाता है। यह गाँव सुंदर पहाड़ियों से घिरा है और यहाँ एक आकर्षक सूर्यास्त स्थल भी है।"
      },
      {
        "name": "Birsa Mrig Vihar (बिरसा मृग विहार)",
        "image": "https://cdn.s3waas.gov.in/s301f78be6f7cad02658508fe4616098a9/uploads/2018/05/2018050256.jpg",
        "description": "Located in Kalamati forest on Ranchi-Khunti road, Birsa Mrig Vihar is spread over 54 acres and serves as a natural habitat for deer breeding. | रांची-खूंटी रोड पर कलामती के जंगल में स्थित बिरसा मृग विहार 54 एकड़ में फैला है और हिरणों के प्रजनन का प्राकृतिक केंद्र है।"
      },
      {
        "name": "Perwaghagh Fall (पेरवाघाघ जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s301f78be6f7cad02658508fe4616098a9/uploads/2018/05/2018050291-768x432.jpg",
        "description": "Perwaghagh Fall, also known as 'House of Pigeons', is located on the Chata River in Fatka Panchayat. It is surrounded by greenery and natural beauty. | पेरवाघाघ जलप्रपात फटका पंचायत की चाता नदी पर स्थित है। इसे 'कबूतरों का घर' भी कहा जाता है और यह प्राकृतिक सुंदरता से भरा हुआ है।"
      },
      {
        "name": "Rani Fall (रानी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s301f78be6f7cad02658508fe4616098a9/uploads/2018/05/2018050298.jpg",
        "description": "Rani Fall is located on Tajna River, about 20 km from Khunti. The slow river flow and sand banks around make it safe for tourists. | रानी जलप्रपात ताजना नदी पर स्थित है, जो खूंटी से लगभग 20 किमी दूर है। इसका धीमा जल प्रवाह और रेत इसे पर्यटकों के लिए सुरक्षित बनाता है।"
      },
      {
        "name": "GEL Church – Sarvda (जीईएल चर्च – सरवडा)",
        "image": "https://cdn.s3waas.gov.in/s301f78be6f7cad02658508fe4616098a9/uploads/2018/05/2018050295.jpg",
        "description": "GEL Church in Sarvda, Murhu block, is an old church from the British period with traditional architecture and interiors. | सरवडा, मुरहू प्रखंड में स्थित जीईएल चर्च ब्रिटिश काल का पुराना चर्च है जिसकी वास्तुकला और आंतरिक संरचना आज भी संरक्षित है।"
      }
    ],

    "Koderma (कोडरमा)": [
      {
        "name": "Dhajadhari Dham (धजाधरी धाम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ9T8FTDQ_eEbOkq8FiGdsRXGjucKmbrhwgQ&s",
        "description": "Dhajadhari Dham is one of the most popular religious places of Koderma, known for its spiritual environment and Shiv temple. हर साल यहाँ मकर संक्रांति और शिवरात्रि पर बड़ा मेला लगता है।"
      },
      {
        "name": "Tilaiya Dam (तिलैया डैम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRntZw7idGmYkvcFu2U6Y38z8tchetns8RiTg&s",
        "description": "Tilaiya Dam, built on Barakar river, is a major picnic spot in Koderma. It was the first dam built by Damodar Valley Corporation in 1953. यहाँ का प्राकृतिक नज़ारा और बोटिंग पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Koderma Wildlife Forest (कोडरमा वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/43/92/3b/koderma-reserve-forest.jpg?w=900&h=-1&s=1",
        "description": "Koderma forest is rich in Sal, Mahua, Bamboo trees and wildlife like deer, peacock, rabbit etc. It is a paradise for nature lovers and bird watchers. | यह जंगल अपनी हरियाली और वन्यजीवों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Koderma KTPS Power Plant (केटीपीएस पावर प्लांट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRawIAHmBQUfr364ute3W1KPssrvP_k6DX3Ew&s",
        "description": "Koderma Thermal Power Station (KTPS) is an important power generating unit in Jharkhand located near Banjhedih. | कोडरमा का थर्मल पावर स्टेशन झारखंड राज्य के लिए ऊर्जा का एक बड़ा स्रोत है।"
      },
    ],

    "Latehar (लातेहार)": [
      {
        "name": "Indra Waterfall (इन्द्रा जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3ba2fd310dcaa8781a9a652a31baf3c68/uploads/bfi_thumb/2018032891-olwbzl5kkqb2c8jnx12ank3o6cb1xiqei6fbrou0hu.jpg",
        "description": "Indra Waterfall is located near Tubed village in Latehar district. Surrounded by dense forests and mountains, it is a beautiful natural attraction. | इन्द्रा जलप्रपात ट्यूबेड गाँव के पास स्थित है। घने जंगलों और पहाड़ों से घिरा यह जलप्रपात बेहद सुंदर है।"
      },
      {
        "name": "Kanti Waterfall (कांति जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s3ba2fd310dcaa8781a9a652a31baf3c68/uploads/bfi_thumb/2018050445-olwbzl5kkqb2c8jnx12ank3o6cb1xiqei6fbrou0hu.jpg",
        "description": "Kanti Waterfall is one of the most popular waterfalls of Latehar. Tourists visit here to enjoy the scenic beauty and natural environment. | कांति जलप्रपात लातेहार का एक प्रसिद्ध पर्यटन स्थल है।"
      },
      {
        "name": "Tatapani (टाटापानी)",
        "image": "https://cdn.s3waas.gov.in/s3ba2fd310dcaa8781a9a652a31baf3c68/uploads/bfi_thumb/2018032860-olwbzl5kkqb2c8jnx12ank3o6cb1xiqei6fbrou0hu.jpg",
        "description": "Tatapani is a hot water spring located about 8 km from Latehar town, on the banks of the Sukari river. | टाटापानी लातेहार से 8 किमी दूर सुकारी नदी के किनारे स्थित एक गर्म पानी का झरना है।"
      },
      {
        "name": "Narayanpur Fort / Navagarh Fort (नारायणपुर किला / नवागढ़ किला)",
        "image": "https://cdn.s3waas.gov.in/s3ba2fd310dcaa8781a9a652a31baf3c68/uploads/bfi_thumb/2018032810-olwbzk7qdw9s0ml12ino32c7kyfoptmo61ruaeveo2.jpg",
        "description": "Narayanpur Fort is located near Navagarh village, about 11 km from Latehar headquarters. It reflects the historical and cultural heritage of the region. | यह किला लातेहार से 11 किमी दूर नवागढ़ गाँव के पास स्थित है।"
      },

    ],

    "Lohardaga (लोहरदगा)": [
      {
        "name": "Akhileshwar Dham (अखिलेश्वर धाम)",
        "image": "https://cdn.s3waas.gov.in/s33c59dc048e8850243be8079a5c74d079/uploads/bfi_thumb/2018060540-olw87plgmwaw1hwxcans7ugwt60x8nb95ngibqarya.jpg",
        "description": "Akhileshwar Dham is a famous religious site in Lohardaga where thousands of devotees come to worship. | अखिलेश्वर धाम लोहरदगा का प्रसिद्ध धार्मिक स्थल है जहाँ हजारों श्रद्धालु पूजा करने आते हैं।"
      },
      {
        "name": "Ancient Shiva Temple, Khakparata (प्राचीन शिव मंदिर, खाखपरता)",
        "image": "https://cdn.s3waas.gov.in/s33c59dc048e8850243be8079a5c74d079/uploads/bfi_thumb/2018052316-olw87g72qjy0teakv6liiwuavbb93o9xscxniyopoi.jpg",
        "description": "This is an ancient temple dedicated to Lord Shiva and is one of the most popular religious sites in Lohardaga. | यह भगवान शिव को समर्पित प्राचीन मंदिर है और लोहरदगा का एक प्रमुख धार्मिक स्थल है।"
      },
      {
        "name": "Lavapani Waterfall (लवापानी जलप्रपात)",
        "image": "https://cdn.s3waas.gov.in/s33c59dc048e8850243be8079a5c74d079/uploads/bfi_thumb/2018042971-e1528120487687-olw87f98jpwqhsby0o6vyf2u9xfvvz67g8a61oq3uq.jpg",
        "description": "Lavapani Waterfall is a scenic natural spot located in Peshrar block of Lohardaga district. | लवापानी जलप्रपात लोहरदगा जिले के पेशरार प्रखंड में स्थित एक सुंदर प्राकृतिक स्थल है।"
      },
    ],

    "Pakur (पाकुड़)": [
      {
        "name": "Sidho Kanho Murmu Park (सिधो कान्हू मुर्मू पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3df877f3865752637daa540ea9cbc474f/uploads/2018/04/2018040789-768x214.jpg",
        "description": "This is the only beautiful & entertaining park of the district, situated behind SDO Bungalow and in front of DC residence. Here stands the Martello tower built by the British rulers to defend against Santhal warriors. | यह पार्क जिले का एकमात्र सुंदर व मनोरंजन स्थल है। इसमें ब्रिटिश काल का मार्टेलो टावर स्थित है जो संथाल विद्रोह के इतिहास से जुड़ा है।"
      },
      {
        "name": "Shiv Sheetla Mandir (शिव शीतला मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3df877f3865752637daa540ea9cbc474f/uploads/2018/03/2018031967.jpg",
        "description": "A famous temple of Lord Shiva and Shakti, located about 0.5 km southeast from Pakur Railway Station. | भगवान शिव और शक्ति का प्रसिद्ध मंदिर, जो पाकुड़ रेलवे स्टेशन से मात्र आधा किलोमीटर की दूरी पर स्थित है।"
      },
      {
        "name": "Nityakali Mandir (नित्यकाली मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3df877f3865752637daa540ea9cbc474f/uploads/2018/03/20180319100.jpg",
        "description": "An ancient temple in the campus of Pakur Rajbari. The black stone statue of Goddess Kali is highly revered by devotees. | पाकुड़ राजबाड़ी परिसर में स्थित प्राचीन मंदिर, जहाँ काली माँ की विशाल शिलामूर्ति भक्तों के बीच प्रसिद्ध है।"
      },
      {
        "name": "Hot Spring, Pakuria (गरम झरना, पाकुरिया)",
        "image": "https://cdn.s3waas.gov.in/s3df877f3865752637daa540ea9cbc474f/uploads/2018/03/2018031923-768x514.jpg",
        "description": "A natural hot spring at Sidpur near Pakuria, 8 km from block HQ. Considered sacred especially during Makar Sankranti. | पाकुरिया प्रखंड मुख्यालय से 8 किमी दूर सिद्धपुर में स्थित प्राकृतिक गरम झरना, धार्मिक दृष्टि से अत्यंत महत्वपूर्ण।"
      },
      {
        "name": "Diwan-e-Pir (दीवान-ए-पिर)",
        "image": "https://cdn.s3waas.gov.in/s3df877f3865752637daa540ea9cbc474f/uploads/2018/03/2018031970.jpg",
        "description": "A sacred place for Muslims, located between Pakur & Tilvitta where prayers are offered during festivals. | यह मुस्लिम समाज का पवित्र स्थल है, जहाँ त्यौहारों के अवसर पर बड़ी संख्या में लोग नमाज़ अदा करते हैं।"
      },
      {
        "name": "Birkitti (बिरकिट्टी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIP9YKbxNzcab3FCBvH_17EfacBoKgGTjpFB28fzB7VCbqNLfjpf7CUm7ruNtYMKaFQtU&usqp=CAU",
        "description": "Located 10 km from Maheshpur HQ. Known for the battle between Raja Udit Narayan Singh and Nawab Murshid Kuli Khan in the 18th century. Ruins of the fort still exist. | महेशपुर प्रखंड से 10 किमी दूर स्थित यह स्थान राजा उदित नारायण सिंह और नवाब मुर्शिद कुली खान के बीच हुए युद्ध के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kanchangarah (कंचनगढ़)",
        "image": "https://www.nativeplanet.com/photos/325x244x100/2019/01/photo-92-131032-1.jpg",
        "description": "Situated 18 km from Littipara HQ on a hilltop. Known for its oval shape and peculiar echo sound. Believed to be seat of Paharia king. | लिट्टीपाड़ा प्रखंड से 18 किमी दूर पहाड़ी पर स्थित यह स्थल अपनी गूंज और प्राचीन ऐतिहासिक महत्व के लिए जाना जाता है।"
      },
    ],

    "Palamu (पलामू)": [
      {
        "name": "Betla National Park (बेतला राष्ट्रीय उद्यान)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Entrance_of_Betla_national_park.jpg/1200px-Entrance_of_Betla_national_park.jpg",
        "description": "The Betla National Park, located on the Ranchi-Daltonganj Road, is spread over 226 sq. km. It is home to 39 species of mammals and 174 species of birds, including tigers, leopards, elephants, and gaurs. Tourists can explore via jeep safari, elephant ride, or tree houses. | बेतला राष्ट्रीय उद्यान रांची-डाल्टनगंज रोड पर 226 वर्ग किमी में फैला है। यहाँ बाघ, तेंदुआ, हाथी, गौर सहित 39 स्तनधारी और 174 पक्षी प्रजातियाँ पाई जाती हैं। पर्यटक यहाँ जीप सफारी, हाथी की सवारी और ट्री हाउस का आनंद ले सकते हैं।"
      },
      {
        "name": "Palamu Tiger Reserve (पलामू टाइगर रिज़र्व)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/69/2a/08/elephants.jpg?w=1200&h=-1&s=1",
        "description": "Declared under Project Tiger in 1973, this reserve spans 928 sq. km. It houses diverse flora and fauna including tiger, jungle cat, wild dog, and four-horned antelope. Waterfalls like Suga Bandh and Lodh Falls add to its charm. | 1973 में प्रोजेक्ट टाइगर के अंतर्गत घोषित यह रिज़र्व 928 वर्ग किमी में फैला है। यहाँ बाघ, जंगली बिल्ली, जंगली कुत्ते और चौसिंगा पाए जाते हैं। सुगा बांध और लोध झरना जैसे जलप्रपात इसकी खूबसूरती बढ़ाते हैं।"
      },
      {
        "name": "Lodh Waterfalls (लोध जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/20/d8/92/f3/lodh-falls-are-the-highest.jpg?w=1200&h=1200&s=1",
        "description": "At 468 feet, Lodh is the highest waterfall in Jharkhand, located 60 km from Netarhat. The roaring sound can be heard up to 10 km away. | 468 फीट ऊँचाई वाला लोध झरना झारखंड का सबसे ऊँचा जलप्रपात है, जो नेतरहाट से 60 किमी दूर है। इसकी गड़गड़ाहट 10 किमी तक सुनाई देती है।"
      },
      {
        "name": "Shahpur Village (शाहपुर गाँव)",
        "image": "https://indiatouristspots.weebly.com/uploads/7/9/4/2/79421790/palamu-fort-in-palamu-jharkhand-india_orig.jpg",
        "description": "Located opposite Daltonganj on the banks of River Koel, it is known for the White Temple and masonry building built in the 18th century by Gopal Rai. | डाल्टनगंज के सामने कोयल नदी के किनारे स्थित शाहपुर गाँव सफेद मंदिर और 18वीं शताब्दी में गोपाल राय द्वारा निर्मित भवन के लिए प्रसिद्ध है।"
      },
      {
        "name": "Palamu Fort (पलामू किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/1/1d/Palamau_Fort.jpg",
        "description": "Inside Aurangabad forest near Daltonganj are two forts—Purana Qila and Naya Qila. Built by the Chero Kings in Mughal style, the forts hold immense historical and cultural significance. | डाल्टनगंज के पास औरंगाबाद जंगल में दो किले (पुराना किला और नया किला) स्थित हैं। इन्हें चेेेेेेरो राजाओं ने मुगल शैली में बनवाया था और ये ऐतिहासिक व सांस्कृतिक दृष्टि से महत्वपूर्ण हैं।"
      }
    ],

    "Ramgarh (रामगढ़)": [
      {
        "name": "Patratu Dam (पतरातू डैम)",
        "image": "https://cdn.s3waas.gov.in/s3e165421110ba03099a1c0393373c5b43/uploads/bfi_thumb/2018050555-1024x683-olwd6l9s72mxihjibqgzkrirw6phgzfkw0c4nx2bxe.jpg",
        "description": "Built on the Nalkari River, the Patratu Dam is surrounded by lush green hills and forests, offering a serene atmosphere and boating facilities. | नलकरी नदी पर बना पतरातू डैम चारों ओर हरियाली और पहाड़ियों से घिरा हुआ है। यहाँ नौकायन की सुविधा भी उपलब्ध है।"
      },
      {
        "name": "Patratu Valley (पतरातू घाटी)",
        "image": "https://cdn.s3waas.gov.in/s3e165421110ba03099a1c0393373c5b43/uploads/bfi_thumb/2018042354-olwd6m7mdwo7u3i568vm59a8hkkuoojb84zm570xr6.jpg",
        "description": "Known for its scenic zig-zag roadways and breathtaking views, Patratu Valley is a major tourist attraction especially for nature lovers and bikers. | अपनी घुमावदार सड़कों और प्राकृतिक दृश्यों के लिए प्रसिद्ध पतरातू घाटी पर्यटकों व बाइक सवारों को खूब आकर्षित करती है।"
      },
      {
        "name": "Rajrappa Temple (राजरप्पा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3e165421110ba03099a1c0393373c5b43/uploads/bfi_thumb/2018050582-1024x687-olwd6767ck3moc3zm2dl1d2uzemz9ivlu2jugrn8iq.jpg",
        "description": "Located at the confluence of the Damodar and Bhairavi rivers, Rajrappa Temple is dedicated to Goddess Chhinnamasta. | दामोदर और भैरवी नदियों के संगम पर स्थित यह मंदिर देवी छिन्नमस्ता को समर्पित है।"
      },
      {
        "name": "Sangam, Rajrappa (संगम, राजरप्पा)",
        "image": "https://cdn.s3waas.gov.in/s3e165421110ba03099a1c0393373c5b43/uploads/bfi_thumb/2018042372-olwd6n5gkqpi5pgs0ra8pr1p2yg7wdn1k9n3mgzjky.jpg",
        "description": "The holy confluence (sangam) of Damodar and Bhairavi rivers near Rajrappa Temple is considered sacred for rituals and festivals. | राजरप्पा मंदिर के पास दामोदर और भैरवी नदियों का संगम धार्मिक दृष्टि से अत्यंत पवित्र माना जाता है।"
      },
      {
        "name": "Shiv Temple & Broken Waterfall (शिव मंदिर और झरना)",
        "image": "https://cdn.s3waas.gov.in/s3e165421110ba03099a1c0393373c5b43/uploads/bfi_thumb/20180423100-olwd6m7mdwo7u3i568vm59a8hkkuoojb84zm570xr6.jpg",
        "description": "A famous Shiva temple located near a natural waterfall in Ramgarh, offering both religious and scenic beauty. | रामगढ़ में प्राकृतिक झरने के पास स्थित यह शिव मंदिर धार्मिक और प्राकृतिक दोनों ही दृष्टियों से महत्वपूर्ण है।"
      },
      {
        "name": "West Bokaro (वेस्ट बोकारो)",
        "image": "https://cdn.s3waas.gov.in/s3e165421110ba03099a1c0393373c5b43/uploads/bfi_thumb/2018042336-olwd6m7mdwo7u3i568vm59a8hkkuoojb84zm570xr6.jpg",
        "description": "Known for its coal mines and industrial establishments, West Bokaro also offers surrounding landscapes and cultural importance. | वेस्ट बोकारो अपने कोयला खदानों और औद्योगिक महत्व के लिए प्रसिद्ध है। आसपास की प्राकृतिक सुंदरता भी आकर्षक है।"
      },
      {
        "name": "Buddhist Temple & China Cemetery (बौद्ध मंदिर और चीन कब्रिस्तान)",
        "image": "https://cdn.s3waas.gov.in/s3e165421110ba03099a1c0393373c5b43/uploads/bfi_thumb/2018042372-1-olwd6n5gkqpi5pgs0ra8pr1p2yg7wdn1k9n3mgzjky.jpg",
        "description": "Located in Ramgarh Cantonment, this site includes a Buddhist Temple and a World War II-era Chinese cemetery, holding historical significance. | रामगढ़ छावनी क्षेत्र में स्थित यह स्थल बौद्ध मंदिर और द्वितीय विश्व युद्ध कालीन चीन कब्रिस्तान के लिए जाना जाता है।"
      },
      {
        "name": "Maya Tungri (माया तुंगरी)",
        "image": "https://cdn.s3waas.gov.in/s3e165421110ba03099a1c0393373c5b43/uploads/bfi_thumb/2018042344-olwd6m7mdwo7u3i568vm59a8hkkuoojb84zm570xr6.jpg",
        "description": "A local deity temple situated atop a small hill in Ramgarh, highly revered by tribal communities. | रामगढ़ की एक छोटी पहाड़ी पर स्थित यह मंदिर आदिवासी समाज के बीच अत्यंत श्रद्धा का केंद्र है।"
      }
    ],

    "Sahebganj (साहेबगंज)": [
      {
        "name": "Rajmahal (राजमहल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBVHLTiVAkx2OCTk5knsRs6WZpy2OdpibDlA&s",
        "description": "Situated on the right bank of river Ganges, Rajmahal was once the capital of Bengal during Mughal rule under Raja Man Singh in 1592. Important monuments here include Singhi Dalan, Akbari Masjid, Tomb of Maina-Bibi, and Tomb of Miran. | गंगा नदी के किनारे स्थित राजमहल एक ऐतिहासिक नगर है, जिसे 1592 में राजा मानसिंह ने बंगाल की राजधानी बनाया था। यहाँ सिंगही दलान, अकबरी मस्जिद, मैना बीबी की समाधि और मीरान की कब्र जैसे ऐतिहासिक स्मारक हैं।"
      },
      {
        "name": "Mangalhat (मंगलहाट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQUW5vwRRznFnhbVTmJPuvJs-Ik5kNvHibXw&s",
        "description": "Located 10 km west of Rajmahal, it is the site of Jama Masjid built during Emperor Akbar's reign. | राजमहल से 10 किमी पश्चिम स्थित यह स्थल अकबर काल में निर्मित जामा मस्जिद के लिए प्रसिद्ध है।"
      },
      {
        "name": "Kanhaiyasthan (कन्हैयास्थान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTozml5amIMADQrKRptYYZlrNum6Xrx9SxQig&s",
        "description": "Village on the bank of Ganges, 13 km NW of Rajmahal, named after Lord Krishna’s temple. It is believed that Chaitanya Mahaprabhu stayed here and had the vision of Lord Krishna. | गंगा किनारे राजमहल से 13 किमी उत्तर-पश्चिम स्थित यह गाँव भगवान कृष्ण के मंदिर और चैतन्य महाप्रभु के आगमन के लिए प्रसिद्ध है।"
      },
      {
        "name": "Teliagarhi Fort (टेलियागढ़ी किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc7PsCmJO8KxKmNEWHG6rCrwkox5gEMNTFrw&s",
        "description": "Old fort built by a Teli Zamindar who later converted to Islam during Shahjahan’s reign. Located near Karamtola station. | शाहजहाँ काल में बने इस किले का निर्माण एक तेली ज़मींदार ने किया था। यह करमटोला स्टेशन के पास स्थित है।"
      },
      {
        "name": "Shivgadi Temple (शिवगाड़ी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2f/41/c4/22/caption.jpg?w=1200&h=-1&s=1",
        "description": "A cave temple of Lord Shiva in Barhait block, 8 km north of Barhait. Water drips continuously on Shivling. Devotees gather on Mahashivratri and Shravan. | बरहेट प्रखंड से 8 किमी उत्तर स्थित गुफा मंदिर, जहाँ पहाड़ से निरंतर जल शिवलिंग पर टपकता रहता है। महाशिवरात्रि और श्रावण में बड़ी संख्या में श्रद्धालु आते हैं।"
      },
      {
        "name": "Binduvasini Temple (बिंदुवासिनी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvD-lwD6X4ufcXtLUI9oQKWfYCc4aCMAfV9wUGnjhhZURIaJsNq24PDasZNYrP8w6pn3U&usqp=CAU",
        "description": "Located 2 km from Barharwa railway station, famous for Ram Navami fair lasting 9 days. | बरहरवा रेलवे स्टेशन से 2 किमी दूर स्थित यह मंदिर रामनवमी मेले के लिए प्रसिद्ध है।"
      },
      {
        "name": "Shukravasini Temple (शुक्रवासिनी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/27/da/e0/bindabasini-temple.jpg?w=300&h=300&s=1",
        "description": "Temple of Goddess at Mirzapur village in Barharwa block. | बरहरवा प्रखंड के मिर्जापुर गाँव में स्थित यह देवी मंदिर श्रद्धालुओं के लिए आस्था का केंद्र है।"
      },
      {
        "name": "Raksisthan (राक्षिस्थान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeoIbxrJ06u5V9AhqC02koZGC92bsSHwUUXQ4SnAB--rL4UKGyib_woHHZb5YTCJSVYP4&usqp=CAU",
        "description": "Located in Mandro block near Karamtola station. Ancient tribal deity worship place mentioned in 1819 by Sutherland. | मांडरो प्रखंड में करमटोला स्टेशन के पास स्थित यह प्राचीन मंदिर आदिवासी और गैर-आदिवासी समाज में पूजनीय है।"
      },
      {
        "name": "Udhwa Bird Sanctuary (उधवा पक्षी अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/e4/d4/11/caption.jpg?w=900&h=500&s=1",
        "description": "Only bird sanctuary in Jharkhand, located near Udhwa (Patauda Lake). Migratory birds arrive from Europe & Siberia in winter. | झारखंड का एकमात्र पक्षी अभयारण्य, जहाँ सर्दियों में यूरोप और साइबेरिया से पक्षी आते हैं।"
      },
      {
        "name": "Moti Jharna (मोती झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/df/35/64/moti-jharna.jpg?w=900&h=500&s=1",
        "description": "A beautiful waterfall near Maharajpur in Rajmahal hills, popular picnic spot. | राजमहल पहाड़ियों में महाराजपुर के पास स्थित यह झरना प्राकृतिक सुंदरता और पिकनिक स्थल के रूप में प्रसिद्ध है।"
      },
    ],

    "Saraikela Kharsawan (सरायकेला-खरसावां)": [
      {
        "name": "Dalma Top (डलमा टॉप)",
        "image": "https://cdn.s3waas.gov.in/s3b337e84de8752b27eda3a12363109e80/uploads/bfi_thumb/2018052512-olwbqnorne301lim263vyt810kbit1a79zb9n22nlu.jpg",
        "description": "Situated in Chandil block at an altitude of about 3000 feet above sea level, it offers panoramic views of the surroundings. | चांडिल प्रखंड में समुद्र तल से लगभग 3000 फीट ऊँचाई पर स्थित यह स्थल आसपास के सुंदर नज़ारे देखने के लिए प्रसिद्ध है।"
      },
      {
        "name": "Jayda Temple (जयदा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3b337e84de8752b27eda3a12363109e80/uploads/bfi_thumb/2018052596-olwbqtbsseapz9af58jndrsskvjq37wlar86ipuaki.jpg",
        "description": "An ancient Shiva temple on the Ranchi-Tata road, located on the banks of the Subarnarekha river, considered a pilgrimage site. | रांची-टाटा मार्ग पर स्वर्णरेखा नदी के किनारे स्थित यह प्राचीन शिव मंदिर एक प्रमुख तीर्थ स्थल है।"
      },
      {
        "name": "Chandil Dam (चांडिल डैम)",
        "image": "https://cdn.s3waas.gov.in/s3b337e84de8752b27eda3a12363109e80/uploads/bfi_thumb/2018052577-olwbqg624pspgptja2uvev4c9hcl3ggcky3dsudszm.jpg",
        "description": "Built on the Subarnarekha river, this dam is one of the most visited tourist destinations of Jharkhand, known for natural beauty and picnic spot. | स्वर्णरेखा नदी पर बना यह डैम झारखंड के सबसे प्रसिद्ध पर्यटन स्थलों में से एक है और प्राकृतिक सुंदरता एवं पिकनिक स्थल के रूप में जाना जाता है।"
      }
    ],

    "Simdega (सिमडेगा)": [
      {
        "name": "Bhanwar Pahar (भँवर पहाड़)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2018060294-olw6vxgtcgry51gydjvqtadpx8kfn6xttpfx7qtp0g.jpg",
        "description": "Located in Kolebira block, Bhanwar Pahar is a major tourist attraction known for its natural beauty and large caves. | कोलेबिरा प्रखंड में स्थित भँवर पहाड़ प्राकृतिक सुंदरता और विशाल गुफाओं के कारण प्रसिद्ध है।"
      },
      {
        "name": "Astroturf Hockey Stadium (एस्ट्रोटर्फ हॉकी स्टेडियम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS47cXxtDAaQJRKEDoNxYEr2ZX6MbD2Hkm3Mw&s",
        "description": "Simdega is known as the nursery of hockey. This stadium has produced several national and international level players. | सिमडेगा हॉकी की नर्सरी के रूप में प्रसिद्ध है और इस स्टेडियम ने कई राष्ट्रीय और अंतर्राष्ट्रीय खिलाड़ी दिए हैं।"
      },
      {
        "name": "Rajadera Waterfall (राजडेड़ा जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/31/07/89/dangadi.jpg?w=900&h=500&s=1",
        "description": "Located on the Chhinda river in Thethaitangar, this waterfall is a popular picnic and tourist destination. | चिंद्रा नदी पर स्थित यह जलप्रपात थेथईटांगर प्रखंड में एक प्रमुख पिकनिक स्थल है।"
      },
      {
        "name": "Kobang Dam (कोबांग डैम)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2025021543-r1jdlx4iv05clcurh2fmmncibsi42q46a73yej3r9u.jpeg",
        "description": "Located about 20 km from Simdega in Pakartanr subdivision, it is a scenic picnic spot. | पाकड़टांड़ अनुमंडल में स्थित यह डैम सिमडेगा से 20 किमी दूर एक आकर्षक पिकनिक स्थल है।"
      },
      {
        "name": "Basatpur (बसतपुर)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2025021548-r1jd9xolq1qqkc9ggdxvc67xnxkmxnjdmvo34ivglu.jpeg",
        "description": "A peaceful natural site in Pakartanr subdivision, 20 km from Simdega town. | सिमडेगा से 20 किमी दूर स्थित यह स्थान प्रकृति की गोद में शांति प्रदान करता है।"
      },
      {
        "name": "Bhairo Baba Pahari (भैरो बाबा पहाड़ी)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2018060278-olw6vxgswoevsuozvl91mc80dub8539djh32dt1fwy.jpg",
        "description": "A sacred cave located in Phulwatangar village, believed to fulfill devotees' wishes. | फूलवाटांगर गाँव में स्थित यह गुफा धार्मिक आस्था का केंद्र है, जहाँ भक्त अपनी मनोकामना पूरी होने की मान्यता रखते हैं।"
      },
      {
        "name": "Dangadi (डांगाडी)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2018060288-olw6vxgswoevsuozvl91mc80dub8539djh32dt1fwy.jpg",
        "description": "Situated in Bolba block, Dangadi is famous for its waterfall and scenic beauty. | बोलबा प्रखंड में स्थित डांगाडी अपने झरने और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Ketunga Dham (केतुंगा धाम)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2018060299-olw6vxgswoevsuozvl91mc80dub8539djh32dt1fwy.jpg",
        "description": "An ancient religious site in Bano block, home to several temples and spiritual importance. | बांयो प्रखंड में स्थित यह प्राचीन धार्मिक स्थल कई मंदिरों और आस्था का केंद्र है।"
      },
      {
        "name": "Bandurga Temple (बांदुर्गा मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2018060222-olw6vwiypudlh8qd12uf1ugjsgfuxe5n7cfkwj2u36.jpg",
        "description": "A revered temple of Goddess Durga located in Bolba block. | बोलबा प्रखंड में स्थित यह मंदिर देवी दुर्गा को समर्पित है।"
      },
      {
        "name": "Mazar of Anjan Peer Sahib (अंजन पीर साहिब की मज़ार)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2018060134-olw6vwiypudlh8qd12uf1ugjsgfuxe5n7cfkwj2u36.jpg",
        "description": "Located in the Kolebira police station campus, it is a symbol of communal harmony. | कोलेबिरा थाना परिसर में स्थित यह मज़ार सांप्रदायिक सौहार्द्र का प्रतीक है।"
      },
      {
        "name": "Ram Rekha Dham (राम रेखा धाम)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2018052536-olw6vunac6b0u0t3c215wuxmlop4hzy6j34lxz5mfm.jpg",
        "description": "A sacred place associated with Lord Ram and Goddess Sita, located 26 km from Simdega. | सिमडेगा से 26 किमी दूर स्थित यह पवित्र स्थल भगवान राम और माता सीता से जुड़ा हुआ है।"
      },
      {
        "name": "Kelaghagh Dam (केलाघाघ डैम)",
        "image": "https://cdn.s3waas.gov.in/s30fcbc61acd0479dc77e3cccc0f5ffca7/uploads/bfi_thumb/2018052546-olw6vunac6b0u0t3c215wuxmlop4hzy6j34lxz5mfm.jpg",
        "description": "Located about 4 km from Simdega town on the Chhinda river, this dam is known for its scenic beauty. | सिमडेगा नगर से 4 किमी दूर चिंद्रा नदी पर स्थित यह डैम अपनी प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      }
    ],

    "West Singhbhum (पश्चिम सिंहभूम)": [
      {
        "name": "Benisagar (बेनीसागर)",
        "image": "https://i0.wp.com/n7india.com/wp-content/uploads/2023/07/benisagar_3.png?fit=500%2C208&ssl=1",
        "description": "Benisagar, located on the Jharkhand–Odisha border, is known for its archaeological remains and scenic charm. | बेनीसागर झारखंड-ओडिशा सीमा पर स्थित है और यह अपने पुरातात्विक अवशेषों और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Rungta Garden (रुंगटा गार्डन)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/30/f1/e4/img-20191128-150525-largejpg.jpg?w=900&h=-1&s=1",
        "description": "Rungta Garden is a beautiful park, ideal for relaxation and family gatherings. | रुंगटा गार्डन एक आकर्षक उद्यान है जो स्थानीय निवासियों और पर्यटकों के लिए विश्राम स्थल है।"
      },
      {
        "name": "Kiriburu Sunset Point(किरिबुरु सनसेट प्वाइंट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ50oFoXTwUJnSGxIn9dlmX2ghOx8RKVQxOqA&s",
        "description": "The hills of Kiriburu offer a breathtaking view of the setting sun. | किरिबुरु की पहाड़ियों से सूर्यास्त का मनोरम दृश्य बेहद आकर्षक होता है।"
      },
      {
        "name": "Kera Temple (केरा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTkD-vAVpem0syijKcIcI2nHHCwqR3RyBrWQ&s",
        "description": "Kera Temple in Kera village is dedicated to Goddess Bhagwati and is famous for the Chaitra Sankranti fair. | केरा गाँव का यह प्रसिद्ध भगवती मंदिर चैत्र संक्रांति मेले के लिए विख्यात है।"
      },
      {
        "name": "Martyr's Memorial, Serengsia (शहीद स्मारक, सेरेंगसिया)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa0waLEJPYGTOTtXfsMCd3DM_hVU31oo8-Lg&s",
        "description": "The Martyr's Memorial at Serengsia was built in honor of the freedom fighters. | सेरेंगसिया में स्थित यह स्मारक स्वतंत्रता सेनानियों की याद में बनाया गया है।"
      },
      {
        "name": "Deer Falls (डियर फॉल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/43/4f/16/img-20171104-101501-largejpg.jpg?w=300&h=300&s=1",
        "description": "Deer Falls is a scenic waterfall surrounded by lush greenery. | डियर फॉल्स एक खूबसूरत जलप्रपात है जो प्राकृतिक सुंदरता से भरपूर है।"
      },
      {
        "name": "Nakati Dam (नकटी डैम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm-G6Q26nj9EpfRJsKfhlcnHHt8UdAveWlKA&s",
        "description": "Nakati Dam is a popular picnic and tourist spot among locals. | नकटी डैम स्थानीय लोगों के लिए पिकनिक और पर्यटन का लोकप्रिय स्थल है।"
      },
      {
        "name": "Sangam River (संगम नदी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn5F6Gfb01f8kYv5QPyQLa1efgCU40rZPOQQ&s",
        "description": "The Sangam River site is a confluence of rivers, holding both religious and natural significance. | यह स्थान कई नदियों के संगम के लिए धार्मिक और प्राकृतिक महत्व रखता है।"
      },
      {
        "name": "Shaheed Park (शहीद पार्क, चाईबासा)",
        "image": "https://cdn.s3waas.gov.in/s32bb232c0b13c774965ef8558f0fbd615/uploads/bfi_thumb/2018051010-olw88vw7nzf9b76d4exw79472ytf0f7y3uwpszpc5w.jpg",
        "description": "Shaheed Park in Chaibasa is a newly developed park maintained by the Jharkhand Government. | शहीद पार्क चाईबासा एक नया विकसित पार्क है जिसे झारखंड सरकार द्वारा संजोया गया है।"
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
