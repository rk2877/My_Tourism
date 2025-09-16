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

    "Ajmer (अजमेर)": [
      {
        "name": "Ajmer Sharif Dargah (अजमेर शरीफ़ दरगाह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuSzxhPH17ei7RN9gl7jQIjEcaSgH-tcMM5f3ayvsU4xuHEA10B47wr27AVEH-jAMcmkc&usqp=CAU",
        "description": "This 13th-century Sufi shrine houses the maqbara of Khwaja Moinuddin Chishty. It has three gates – Nizam Gate, Shah Jahan Gate, and Buland Darwaza. Devotees are also blessed with sacred food cooked in giant cauldrons called 'degs'. | यह 13वीं सदी की सूफी दरगाह ख्वाजा मोइनुद्दीन चिश्ती की मज़ार है। इसमें निज़ाम गेट, शाहजहां गेट और बुलंद दरवाज़ा शामिल हैं। यहाँ विशाल देग में पकाए गए प्रसाद से भक्तों को आशीर्वाद मिलता है।"
      },
      {
        "name": "Adhai Din Ka Jhonpda (अढ़ाई दिन का झोंपड़ा)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/d/d3/Adhai_Din-ka-Jhonpra_Screen_wall_%286133975257%29.jpg",
        "description": "Originally a Sanskrit college, converted into a mosque by Sultan Ghori in 1198 AD, later beautified by Iltutmish. Famous for Indo-Islamic architecture. | मूलतः संस्कृत कॉलेज, जिसे 1198 ई. में सुल्तान ग़ोरी ने मस्जिद में बदला और इल्तुतमिश ने सजाया। इंडो-इस्लामिक स्थापत्य के लिए प्रसिद्ध।"
      },
      {
        "name": "Mayo College (मायो कॉलेज)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdBCWbJGucmDsB7ibHppMlC4PDTVrE4ytZ6g&s",
        "description": "Established in 1875, one of India’s oldest boarding schools built in Indo-Saracenic style. Its Coat of Arms was designed by John Lockwood Kipling. | 1875 में स्थापित भारत का सबसे पुराना बोर्डिंग स्कूल, इंडो-सारासेनिक शैली में निर्मित। इसका प्रतीक चिह्न जॉन लॉकवुड किपलिंग ने बनाया।"
      },
      {
        "name": "Anasagar Lake (आना सागर झील)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/The_Anas%C4%81gar_Lake_1_PHOTOGRAPHED_BY_FATEH.RawKEy.jpg/330px-The_Anas%C4%81gar_Lake_1_PHOTOGRAPHED_BY_FATEH.RawKEy.jpg",
        "description": "Built between 1135–1150 AD by Arnoraj Chauhan. Later Mughal emperors Jahangir and Shah Jahan developed gardens and pavilions around it. | 1135–1150 ई. में अर्णोराज चौहान द्वारा निर्मित। बाद में जहाँगीर और शाहजहां ने इसके चारों ओर बगीचे और मंडप बनवाए।"
      },
      {
        "name": "Anasagar Baradari (आना सागर बारादरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDGyZPhgMfRynCS4C6F2mp_r8uD5larOYUTA&s",
        "description": "The white marble pavilions built by Shah Jahan on the banks of Ana Sagar Lake. These were once pleasure gardens and later British offices. | आना सागर झील के किनारे शाहजहां द्वारा निर्मित सफेद संगमरमर के मंडप। पहले ये बगीचे और फिर ब्रिटिश काल में कार्यालय बने।"
      },
      {
        "name": "Soniji ki Nasiyan (सोनिजी की नसियां)",
        "image": "https://avathioutdoors.gumlet.io/travelGuide/dev/ajmer_P7248.jpg",
        "description": "A 19th-century Jain temple dedicated to Rishabhdev. Its main chamber Swarna Nagari houses gold-plated wooden figures. | 19वीं सदी का जैन मंदिर, ऋषभदेव को समर्पित। इसका मुख्य कक्ष स्वर्ण नगरी सोने से मढ़ी लकड़ी की मूर्तियों से सुसज्जित है।"
      },
      {
        "name": "Lake Foy Sagar (फॉय सागर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfR9xSDOmaMEyrndKgLcWoAFEtYOOCbxNmOA&s",
        "description": "Artificial lake built in 1892 by engineer Foy for famine relief. Offers scenic views of the Aravalli range. | 1892 में इंजीनियर फॉय द्वारा अकाल राहत हेतु निर्मित कृत्रिम झील। अरावली का सुंदर दृश्य प्रस्तुत करती है।"
      },
      {
        "name": "Nareli Jain Temple (नरेली जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuK3eOo_ISxix39sNlCWDnEyJLgzGStafdQw&s",
        "description": "Modern Jain temple blending traditional and contemporary architecture, with 24 miniature temples. | आधुनिक जैन मंदिर, पारंपरिक और आधुनिक शैली का मिश्रण, जिसमें 24 छोटे जैनालय हैं।"
      },
      {
        "name": "Sai Baba Temple (साईं बाबा मंदिर)",
        "image": "https://3.imimg.com/data3/WK/FV/MY-9271469/sai-baba-temple-250x250.jpg",
        "description": "Built in 1999 with pure translucent marble, spread over 2 acres. A popular shrine for Sai devotees. | 1999 में निर्मित, पारदर्शी संगमरमर से बना यह मंदिर 2 एकड़ में फैला है। साईं भक्तों के लिए प्रसिद्ध।"
      },
      {
        "name": "Ajmer Government Museum (अजमेर सरकारी संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/e0/52/e9/government-museum.jpg?w=900&h=500&s=1",
        "description": "Houses a rich collection of archaeological artefacts, stone sculptures, inscriptions and armory. | पुरातात्विक अवशेष, शिलालेख, मूर्तियां और शस्त्रों का समृद्ध संग्रहालय।"
      },
      {
        "name": "Taragarh Fort (टारागढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv26zLx5SUJ9PguvUsFppRqrc_x6JGgOZkew&s",
        "description": "Built by Raja Ajaipal Chauhan. Known for Bhim Burj, Garbh Gunjam cannon, reservoirs, and Dargah of Miran Sahib. | राजा अजयपाल चौहान द्वारा निर्मित। भीम बुर्ज, गर्भ गुंजाम तोप, जलाशय और मीरां साहिब की दरगाह के लिए प्रसिद्ध।"
      },
      {
        "name": "Kishangarh Fort (किशनगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/a2/2b/2f/kishangarh-fort.jpg?w=1200&h=-1&s=1",
        "description": "Fort with granaries, armories, Durbar Hall, and Phool Mahal decorated with murals and frescos. Nearby lakes and cenotaphs enhance its charm. | किले में अन्नागार, शस्त्रागार, दरबार हॉल और फूल महल हैं, जो भित्तिचित्रों से सजे हैं। पास में झीलें और स्मारक भी स्थित हैं।"
      },
      {
        "name": "Pragya Shikhar Todgarh (प्रज्ञा शिखर टोंडगढ़)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/17/f4/a1/4f/pragya-shikhar-todgarh.jpg",
        "description": "A Jain temple made of black granite in memory of Acharya Tulsi, inaugurated by Dr. A.P.J. Abdul Kalam in 2005. | आचार्य तुलसी की स्मृति में 2005 में बना काला ग्रेनाइट जैन मंदिर, जिसका उद्घाटन डॉ. ए.पी.जे. अब्दुल कलाम ने किया।"
      },
      {
        "name": "Victoria Clock Tower (विक्टोरिया क्लॉक टॉवर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/18/0c/be/cb/victoria-clock-tower.jpg",
        "description": "Built in 1887 opposite Ajmer railway station, a striking example of British architecture resembling Big Ben. | 1887 में रेलवे स्टेशन के सामने बना यह टॉवर ब्रिटिश स्थापत्य का सुंदर उदाहरण है, जो बिग बेन जैसा दिखता है।"
      },
      {
        "name": "Prithvi Raj Smarak (पृथ्वीराज स्मारक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/2e/31/c2/caption.jpg?w=1200&h=-1&s=1",
        "description": "Memorial of brave Rajput king Prithvi Raj Chauhan III with a black stone statue on horseback, offering panoramic city views. | वीर राजपूत राजा पृथ्वीराज चौहान तृतीय का स्मारक, जिसमें घोड़े पर उनकी काली पत्थर की प्रतिमा है, जहाँ से अजमेर का विहंगम दृश्य दिखता है।"
      },
      {
        "name": "Shahid Smarak (शहीद स्मारक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/4a/65/87/shahid-smarak.jpg?w=700&h=400&s=1",
        "description": "War memorial located in front of Ajmer railway station, lit up beautifully with fountains during events. | अजमेर रेलवे स्टेशन के सामने स्थित यह युद्ध स्मारक विशेष अवसरों पर रोशनी और फव्वारों से सजाया जाता है।"
      }
    ],

    "Alwar (अलवर)": [
      {
        "name": "Bala Qila (बाला किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/55/0c/4e/photo3jpg.jpg?w=1200&h=-1&s=1",
        "description": "Bala Qila, built on the foundations of a 10th century mud fort, is a towering structure atop a hill with six entry gates. Known for marble columns and latticed balconies, it also offers a forest safari. | बाला किला 10वीं सदी की मिट्टी की किलेबंदी पर बना एक विशाल किला है, जिसमें छह द्वार हैं और यह अपनी संगमरमर की नक्काशी और जालियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Alwar City Palace (अलवर सिटी पैलेस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUwgFH0z03lypq0j1GM4EjQowmReVRueI2YQ&s",
        "description": "Built in 1793 by Raja Bakhtawar Singh, City Palace blends Rajputana and Islamic styles. Now converted into government offices, its marble pavilions are the main highlight. | 1793 में राजा बख्तावर सिंह द्वारा निर्मित, यह राजपूत और इस्लामी शैली का मिश्रण है। वर्तमान में यह जिला कलेक्टरेट के रूप में प्रयुक्त होता है।"
      },
      {
        "name": "Government Museum (सरकारी संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/a7/72/7a/entry.jpg?w=1200&h=-1&s=1",
        "description": "The museum showcases manuscripts, Ragamala paintings, miniatures and armour, reflecting the royal lifestyle of Alwar Maharajas. | यहाँ दुर्लभ पांडुलिपियाँ, रागमाला पेंटिंग, लघुचित्र और शस्त्र प्रदर्शित हैं।"
      },
      {
        "name": "Moosi Maharani ki Chhatri (मूसी महारानी की छतरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdDheU8NqU9ONItTjPByb2iHb95rvJaR_yDw&s",
        "description": "A cenotaph built in memory of Maharaja Bakhtawar Singh and Rani Moosi, showcasing Indo-Islamic style. It features marble pavilions, red sandstone pillars and paintings. | महाराजा बख्तावर सिंह और रानी मूसी की स्मृति में बना स्मारक, जिसमें संगमरमर और लाल बलुआ पत्थर की नक्काशी है।"
      },
      {
        "name": "Fateh Jung Gumbad (फतेह जंग गुंबद)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/28/2f/3f/tomb.jpg?w=1200&h=1200&s=1",
        "description": "Spectacular tomb of Fateh Jung, minister of Shah Jahan, with a massive dome and medieval architecture. | शाहजहाँ के मंत्री फतेह जंग की समाधि, जो अपने विशाल गुंबद और स्थापत्य कला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Purjan Vihar (पुरजन विहार)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiR9yzjmz2Dekf05WJQQCKEQZFLJ3w-yO8bA&s",
        "description": "Built in 1868 by Maharaja Sheodan Singh, it is a beautiful garden with a Summer House, locally called 'Shimla'. | 1868 में महाराजा श्योदान सिंह द्वारा निर्मित यह सुंदर बगीचा ग्रीष्मकालीन विश्रामगृह के लिए प्रसिद्ध है।"
      },
      {
        "name": "Bhangarh Fort (भानगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSoLYZSFaTt8hpvBUpBtRsxq-D-WbpHphbqw&s",
        "description": "Built in the 17th century by Raja Madho Singh, Bhangarh is considered one of the most haunted places in India. | 17वीं सदी में राजा माधो सिंह द्वारा निर्मित, यह भारत के सबसे प्रेतवाधित स्थलों में से एक है।"
      },
      {
        "name": "Garbhaji Waterfalls (गर्भाजी जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/29/8a/d5/garbhaji-falls.jpg?w=1200&h=-1&s=1",
        "description": "Popular for scenic views, photography and nature lovers. The waterfalls cascade beautifully through the rocks. | यह झरना अपनी प्राकृतिक सुंदरता और फोटोग्राफी के लिए प्रसिद्ध है।"
      },
      {
        "name": "Pandu Pol (पांडु पोल)",
        "image": "https://cms.patrika.com/wp-content/uploads/2024/09/Pandupol-Hanuman-Ji.jpg",
        "description": "Located inside Sariska Sanctuary, Pandu Pol is a Hanuman temple with a natural spring. Legend says Pandavas stayed here during exile. | सरिस्का अभयारण्य में स्थित हनुमान मंदिर और झरना, जहाँ पांडवों ने अज्ञातवास बिताया था।"
      },
      {
        "name": "Siliserh Lake (सिलीसेढ़ झील)",
        "image": "https://cdn1.zeenews.india.com/prod/zee-rajasthan/images/2025/20250602/image-1748847172352.png",
        "description": "Constructed in 1845 by Maharaja Vinay Singh, the lake has a hunting lodge, now a hotel. Boating and birdwatching are major attractions. | 1845 में बनी यह झील नौकायन और पक्षी दर्शन के लिए प्रसिद्ध है।"
      },
      {
        "name": "Sariska Tiger Reserve (सरिस्का बाघ अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/87/92/9b/sariska-tiger-reserve.jpg?w=600&h=400&s=1",
        "description": "Declared a sanctuary in 1955 and National Park in 1979, it is famous for tiger relocation and diverse wildlife. | 1955 में अभयारण्य और 1979 में राष्ट्रीय उद्यान घोषित, यह बाघों और विविध जीव-जंतुओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Tijara Jain Temple (टीजारा जैन मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Tijara_Jain_Temple_-Main%282%29.jpg/250px-Tijara_Jain_Temple-_Main%282%29.jpg",
        "description": "An ancient temple dedicated to the 8th Tirthankar, Shri Chandraprabha Bhagwan, and a major Jain pilgrimage site. | 8वें तीर्थंकर श्री चंद्रप्रभु भगवान को समर्पित प्राचीन जैन मंदिर।"
      },
      {
        "name": "Jaisamand Lake (जैसमंद झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/84/fb/a8/jai-samand-lake.jpg?w=1200&h=1200&s=1",
        "description": "Constructed in 1910 by Maharaja Jai Singh, it is a serene spot with pavilions and towers on the banks. | 1910 में निर्मित कृत्रिम झील, जो पिकनिक और प्राकृतिक सौंदर्य के लिए आदर्श स्थल है।"
      },
      {
        "name": "Bhartrihari Temple (भरतृहरि मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsCK2nNjkUS6MwtvQKtps_WKhCvpozvFNBDA&s",
        "description": "A pilgrimage centre dedicated to King Bhartrihari who meditated here. | राजा भरतृहरि से जुड़ा प्रमुख धार्मिक स्थल।"
      },
      {
        "name": "Neelkanth Temple (नीलकंठ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiqsbo-Kn5vfUZvlkSFeCNcGrieH5iDB5gFg&s",
        "description": "Cluster of temples inside Sariska Reserve with Khajuraho-like carvings and a giant statue of Jain Tirthankar Shantinath. | सरिस्का के अंदर स्थित प्राचीन मंदिर समूह, जहाँ अद्भुत नक्काशी और जैन तीर्थंकर शांति नाथ की विशाल प्रतिमा है।"
      },
      {
        "name": "Neemrana Baori (नीमराना बावड़ी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/0a/a5/72/baoli-neemrana.jpg?w=1200&h=-1&s=1",
        "description": "A 9-storey deep stepwell resembling a fortress, showcasing traditional water architecture. | नीमराना की यह विशाल बावड़ी 9 मंज़िल गहरी है और अपने स्थापत्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Lal Masjid, Tijara (लाल मस्जिद, टीजारा)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/19/f9/63/cd/lal-masjid-tijara-the.jpg",
        "description": "A red sandstone mosque in Tijara with minars, domes and arched gateways. | टीजारा में स्थित लाल बलुआ पत्थर से बनी मस्जिद, जिसमें मीनारें और गुंबद हैं।"
      },
      {
        "name": "Hope Circus (होप सर्कस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCrZomRojLfMPzOGXKqsYAL-J1U1Wuxu4K_A&s",
        "description": "Circular heritage site built in 1940, located in the centre of Alwar city surrounded by markets. | 1940 में निर्मित गोलाकार स्मारक, जो अलवर शहर के केंद्र में स्थित है।"
      }
    ],

    "Banswara (बाँसवाड़ा)": [
      {
        "name": "Anand Sagar Lake (आनंद सागर झील)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1a/73/16/cc/anand-sagar-lake-this.jpg",
        "description": "Artificial lake built by Rani Lanchi Bai, surrounded by Kalpa Vriksha trees and cenotaphs of rulers. | रानी लांची बाई द्वारा निर्मित कृत्रिम झील, कल्पवृक्षों और शासकों की छतरियों से घिरी हुई।"
      },
      {
        "name": "Abdulla Pir (अब्दुल्ला पीर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa0kyAYVxOo6nHi36dq-2kbeZKoilXZ1hcjw&s",
        "description": "Shrine of Bohra saint Abdul Rasul, famous for Urs festival. | बोहरा संत अब्दुल रसूल की दरगाह, उर्स मेले के लिए प्रसिद्ध।"
      },
      {
        "name": "Andeshwar Parshwanathji (अंदेश्वर पार्श्वनाथजी)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1a/73/1a/4b/andeshwar-parshwanathji.jpg",
        "description": "Jain temple on a hill in Kushalgarh, with 10th century inscriptions. | कुशलगढ़ की पहाड़ी पर स्थित प्राचीन जैन मंदिर, 10वीं सदी के शिलालेखों सहित।"
      },
      {
        "name": "Ram Kund (राम कुण्ड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcs4fnuAudFT-TWmA6l9lWb75GQ-wi_XR8lw&s",
        "description": "A cave with cold water pool, believed to be visited by Lord Rama during exile. | गुफा में प्राकृतिक ठंडे पानी का कुंड, जहाँ भगवान राम के ठहरने की मान्यता है।"
      },
      {
        "name": "Vithala Deo Temple (विठ्ठल देव मंदिर)",
        "image": "https://i.ytimg.com/vi/SAB-3UZwZ7Y/maxresdefault.jpg",
        "description": "Beautiful red temple dedicated to Lord Krishna. | भगवान कृष्ण को समर्पित लाल पत्थर का सुंदर मंदिर।"
      },
      {
        "name": "Dialab Lake (डायलाब झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/b4/2a/e1/dialab-is-popular-pond.jpg?w=1200&h=-1&s=1",
        "description": "Lake famous for lotus flowers and summer palace of rulers. | कमल पुष्पों और शाही ग्रीष्मावास के लिए प्रसिद्ध झील।"
      },
      {
        "name": "Kagadi Pikup Weir (कगदी पिकअप वेयर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/d5/9b/c8/dream-view.jpg?w=1200&h=-1&s=1",
        "description": "Scenic spot with fountains, gardens and Kagdi Lake view. | फव्वारों, बगीचों और कगदी झील के सुंदर दृश्यों वाला स्थान।"
      },
      {
        "name": "Mahi Dam (माही बाँध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/23/44/32/life-line-of-banswara.jpg?w=1200&h=-1&s=1",
        "description": "Built on Mahi River, Banswara is known as 'city of hundred islands'. | माही नदी पर बना बाँध, बाँसवाड़ा 'सौ द्वीपों का शहर' कहलाता है।"
      },
      {
        "name": "Paraheda (पाराहेड़ा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBxnBxZ2p9H1dT4JBPMrDLWCFFSQkI1rH5ug&s",
        "description": "12th century Shiva temple located in Garhi Tehsil. | गढ़ी तहसील में स्थित 12वीं सदी का शिव मंदिर।"
      },
      {
        "name": "Raj Mandir (राज महल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/2c/ac/a3/img-20190415-174816-largejpg.jpg?w=500&h=500&s=1",
        "description": "16th century City Palace atop a hill, built in Rajput style. | पहाड़ी पर स्थित 16वीं सदी का राजमहल।"
      },
      {
        "name": "Talwara Temples (तालवाड़ा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJDBcpoy5bVBdQkxbStYojSe_tGirYMcGS7Q&s",
        "description": "Famous for Sun Temple, Laxmi Narayan, Jain and Dwarkadhish temples. | सूर्य मंदिर, लक्ष्मी नारायण और जैन मंदिरों के लिए प्रसिद्ध।"
      },
      {
        "name": "Tripura Sundari (त्रिपुरा सुंदरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJfnLYBm6TpuFXSQwInLxuRZ8MVh8DhA5HPg&s",
        "description": "Shakti Peeth temple of Goddess Tripura Sundari with 18-armed idol. | 18 भुजाओं वाली देवी त्रिपुरा सुंदरी का शक्तिपीठ।"
      },
      {
        "name": "Madareshwar Temple (मदरेश्वर मंदिर)",
        "image": "https://i0.wp.com/www.rajasthandirect.com/wp-content/uploads/2017/05/Madareshwar-Temple.jpg?fit=700%2C400&ssl=1",
        "description": "Shiva temple inside a natural cave on a hill. | पहाड़ी गुफा में बना शिव मंदिर।"
      },
      {
        "name": "Kalpa Vriksha (कल्पवृक्ष)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLJxbgIrzzAMazZrTs8_4ksM5vVuLLFzzBdg&s",
        "description": "Rare Kalpa trees near Bai Talab Lake, believed to fulfill wishes. | बाई तालाब के पास कल्पवृक्ष, मनोकामना पूरी करने की मान्यता।"
      },
      {
        "name": "Samai Mata Bhandariya (समई माता भंडारिया)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROfZjG7AjxOZL1PcdcIKVvVapW97ck3nY9Zw&s",
        "description": "Temple atop a hill with 400 steps, picnic spot. | 400 सीढ़ियों पर स्थित मंदिर, पिकनिक स्थल।"
      },
      {
        "name": "Mangarh Dham (मांगढ़ धाम)",
        "image": "https://cms.patrika.com/wp-content/uploads/2022/10/30/mangarh_dham.jpg?w=450&q=90",
        "description": "Memorial of Guru Govind and Bhil martyrs, called Jallianwala Bagh of Rajasthan. | गुरु गोविंद और 1500 भीलों की शहादत का स्थल, राजस्थान का जलियांवाला बाग।"
      },
      {
        "name": "Cheech (चीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/7b/2d/54/cheench-brahma-temple.jpg?w=1200&h=-1&s=1",
        "description": "Village known for 12th century Brahma temple. | भगवान ब्रह्मा के 12वीं सदी के मंदिर के लिए प्रसिद्ध।"
      },
      {
        "name": "Singpura (सिंगपुरा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTog4yCxfvAQ2lcfsGwLdhKiUitkVLjffHEUO7y5OsIBc7w4jr_zUpU2SqQNyaFQceV4KQ&usqp=CAU",
        "description": "Village with lake, forest and hillocks, an off-beat holiday spot. | झील, जंगल और पहाड़ियों से घिरा ग्रामीण पर्यटन स्थल।"
      },
      {
        "name": "Jua Falls (जुआ जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOHL6dAwd-2bONTUk5jJNyakmnAY0SYosPrQ&s",
        "description": "Beautiful waterfall best visited in rainy season. | वर्षा ऋतु में भव्य झरना।"
      },
      {
        "name": "Arthuna (अर्थुना)",
        "image": "https://3.imimg.com/data3/CI/XK/MY-10305486/arthuna-turism-and-hanuman-mandir-250x250.jpg",
        "description": "Cluster of ruined Hindu & Jain temples (11th–15th century) with intricate carvings. | 11वीं–15वीं सदी के खंडहर मंदिर समूह, अद्भुत नक्काशी के साथ।"
      },
      {
        "name": "Sai Baba Temple (साई बाबा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/7b/33/75/shri-sai-baba-mandir.jpg?w=900&h=500&s=1",
        "description": "Hilltop temple dedicated to Sai Baba with marble idol and black stone sculptures. | पहाड़ी पर स्थित साई बाबा मंदिर, संगमरमर की मूर्ति और काले पत्थर की प्रतिमाओं सहित।"
      }
    ],

    "Baran (बारां)": [
      {
        "name": "Ramgarh Bhand Devra Temple (रामगढ़ भंड देवरा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/39/71/9f/bhand-devra-temple.jpg?w=1200&h=1200&s=1",
        "description": "Situated 40 km from Baran, this 10th century Shiva temple is built in Khajuraho style, also called Mini Khajuraho of Rajasthan. | बारां से 40 किमी दूर स्थित यह 10वीं शताब्दी का शिव मंदिर खजुराहो शैली में निर्मित है, जिसे राजस्थान का मिनी खजुराहो कहा जाता है।"
      },
      {
        "name": "Shahabad Fort (शाहाबाद किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/8e/33/d0/shahabad-fort.jpg?w=1200&h=1200&s=1",
        "description": "Built in 16th century by Mukatmani Dev, this strong fort is surrounded by Kunda Koh valley and dense forests. Aurangzeb once stayed here. | 16वीं शताब्दी में मुकटमणि देव द्वारा निर्मित यह किला कुंडा खोह घाटी और घने जंगलों से घिरा है। औरंगजेब भी यहाँ ठहरे थे।"
      },
      {
        "name": "Shahi Jama Masjid of Shahabad (शाही जामा मस्जिद, शाहाबाद)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/4c/80/c6/caption.jpg?w=900&h=500&s=1",
        "description": "Built during Aurangzeb’s reign, modelled on Delhi’s Jama Masjid, famous for its pillars and mehrab. | औरंगजेब के शासनकाल में निर्मित यह मस्जिद दिल्ली की जामा मस्जिद की तर्ज पर बनी है और अपनी मेहराबों व स्तंभों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Shergarh Fort (शेरगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/5b/25/bd/shergarh-fort-located.jpg?w=1200&h=-1&s=1",
        "description": "Located on river Parvan, ruled by many dynasties. Originally called Koshavardhan, later named after Sher Shah. | परवन नदी के किनारे स्थित यह किला कई वंशों द्वारा शासित रहा। इसका प्राचीन नाम कोशवर्धन था जिसे शेरशाह ने शेरगढ़ नाम दिया।"
      },
      {
        "name": "Shergarh Sanctuary (शेरगढ़ अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/1c/20/56/caption.jpg?w=800&h=400&s=1",
        "description": "Rich in flora-fauna, home to tigers, leopards, sloth bears and endangered plants. | यह अभयारण्य बाघ, तेंदुए, भालू और दुर्लभ वनस्पतियों का घर है।"
      },
      {
        "name": "Sitabari (सीताबाड़ी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJxWI9BeRFKGCqsrYmSfTXI95eFwR8-Xr9xA&s",
        "description": "Pilgrimage and picnic spot with temples of Sita and Luv-Kush’s birthplace. Famous Sitabari fair held here. | माता सीता व लव-कुश से जुड़ा धार्मिक स्थल और पिकनिक स्पॉट, जहाँ प्रसिद्ध सीताबाड़ी मेला लगता है।"
      },
      {
        "name": "Tapasviyo ki Bagechi (तपस्वियों की बग़ेची)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnQl45Gdmieb6BpG_YaeH0Re3iIRDi9-HCpg&s",
        "description": "A serene picnic spot with mountain backdrop, once famous for betel farming. | शांत वातावरण और पर्वतीय पृष्ठभूमि वाला सुंदर स्थल, जो कभी पान की खेती के लिए प्रसिद्ध था।"
      },
      {
        "name": "Kakuni Temple Complex (काकुनी मंदिर समूह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6TBBcuIWzS0coLhApDCBbK6EUci8GFocjZA&s",
        "description": "Ancient temples of 8th century dedicated to Jain, Vaishnava deities and Shiva, near Bhimgarh Fort ruins. | 8वीं सदी के प्राचीन मंदिर, जैन, वैष्णव और शिव को समर्पित। पास में भीमगढ़ किला अवशेष स्थित है।"
      },
      {
        "name": "Sorsan Wildlife Sanctuary (सोरसण वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4B3W_dZgSMve6dlmF8oVMoMmMyN8pTIK0TvFy6RV_3qRO3mnuVQUS1UFOn1pKv_ZJAGA&usqp=CAU",
        "description": "41 sq.km bird sanctuary, home to blackbucks, gazelles, migratory birds. | 41 वर्गकिमी का पक्षी अभयारण्य, जहाँ काला हिरण, गज़ल और प्रवासी पक्षी पाए जाते हैं।"
      },
      {
        "name": "Sorsan Mataji Temple (सोरसण माताजी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1QPcIwSm3iaTAIGb7Gcc0YbtlHqLoQqSHtA&s",
        "description": "Temple with eternal flame burning for 400 years. Fair held on Shivratri. | यहाँ 400 वर्षों से अखंड ज्योत जल रही है और शिवरात्रि पर मेला आयोजित होता है।"
      },
      {
        "name": "Nahargarh Fort (नाहरगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpyWg2E4RLSEGMpDnJ_mwVOLMWC5LURZh__2UaYXP_KKJipFuXkaJqIgdnknV062MmuDg&usqp=CAU",
        "description": "A red stone fort showing Mughal architecture, located 73 km from Baran. | लाल पत्थरों से बना शानदार किला, जो मुगल स्थापत्य का उदाहरण है।"
      },
      {
        "name": "Kanya Dah – Bilas Garh (कन्या दाह – बिलासगढ़)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/17/5a/ab/2a/kanya-dah-bilas-garh.jpg",
        "description": "Ruins of Bilasgarh city destroyed by Aurangzeb. Spot where princess sacrificed her life. | बिलासगढ़ नगर के खंडहर, जिसे औरंगजेब ने नष्ट किया। यहाँ राजकुमारी ने आत्मबलिदान दिया था।"
      },
      {
        "name": "Kapil Dhara (कपिल धारा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTurgbmvhVc867UmjS4uuBeysnggTSrEXXYw&s",
        "description": "A scenic waterfall and Gomukh, popular among tourists. | सुंदर झरना और गोमुख, जो पर्यटकों के बीच लोकप्रिय है।"
      },
      {
        "name": "Gugor Fort (गुगोर किला)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/9064_ACH_e131430a-deb4-4435-8420-522f0ee139d6.jpeg",
        "description": "Fort on a hillock beside Parvati river, near Chhabra town. | पार्वती नदी किनारे पहाड़ी पर स्थित यह किला छबड़ा कस्बे के पास है।"
      },
      {
        "name": "Hadouti Panorama (हाड़ौती पैनोरमा)",
        "image": "https://i.ytimg.com/vi/BkT90SKqOY4/sddefault.jpg",
        "description": "Exhibition centre showcasing history of Kota, Bundi, Jhalawar and Baran. | हाड़ौती क्षेत्र (कोटा-बूंदी-झालावाड़-बारां) के इतिहास को प्रदर्शित करने वाला केंद्र।"
      },
      {
        "name": "Ramgarh Mata Temple (रामगढ़ माता मंदिर)",
        "image": "https://i.ytimg.com/vi/p1u1Th0RSPQ/sddefault.jpg",
        "description": "Historic hilltop temple with Kisnai Mata and Annapurna Devi shrines. | पहाड़ी पर स्थित ऐतिहासिक मंदिर, जहाँ किसनाई माता और अन्नपूर्णा देवी की पूजा होती है।"
      },
      {
        "name": "Ramgarh Crater (रामगढ़ क्रेटर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwGrF_J005TJA2f007abvn-dn1KFD9FwAhHQ&s",
        "description": "3.5 km wide meteor impact crater, 75,000 years old, a geological monument. | 3.5 किमी चौड़ा उल्कापिंड प्रभाव क्रेटर, 75,000 वर्ष पुराना, राष्ट्रीय भूवैज्ञानिक स्मारक।"
      },
      {
        "name": "Bansthuni Temple (बनस्थुनी मंदिर)",
        "image": "https://l450v.alamy.com/450v/2wh0y0p/rear-view-and-carvings-on-the-wall-of-bhand-devara-temple-bansthuni-baran-rajasthan-india-2wh0y0p.jpg",
        "description": "10th century temple with Varaha sculpture and ornate pillars. | 10वीं सदी का प्राचीन मंदिर, जहाँ वराह की प्रतिमा और सुंदर स्तंभ हैं।"
      },
      {
        "name": "Government Museum (सरकारी संग्रहालय, बारां)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS-s_hTjKdAke66bfox4RI97pz6hRFBvBfFQ&s",
        "description": "Museum with sculptures, paintings, weapons and artifacts from local forts and temples. | मूर्तियों, चित्रों, हथियारों और स्थानीय मंदिर-किलों की कलाकृतियों वाला संग्रहालय।"
      }
    ],

    "Barmer (बाड़मेर)": [
      {
        "name": "Kiradu Temples (किराडू मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK9sWN6GhaQWCx6gbszL-UKQh68Z48wdoHWQ&s",
        "description": "35 km from Barmer, these 5 temples in Solanki style are known for magnificent carvings. The Someshvara Temple is the most remarkable among them. | बाड़मेर से 35 किमी दूर स्थित पाँच मंदिर, सोलंकी शैली की अद्भुत नक्काशी के लिए प्रसिद्ध। इनमें सोमेश्वर मंदिर सबसे प्रमुख है।"
      },
      {
        "name": "Barmer Fort & Garh Temple (बाड़मेर किला और गढ़ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz1rtaQ_Hu44G_ZuVk008XL1TDwzLaJwUHXQ&s",
        "description": "Built in 1552 AD by Rawat Bhima, this fort is on a hillock with Jogmaya Devi and Nagnechi Mata temples. | 1552 ई. में रावत भीमा द्वारा निर्मित किला, जहाँ जोगमाया देवी और नागनेची माता के मंदिर स्थित हैं।"
      },
      {
        "name": "Shri Nakoda Jain Temple (श्री नकोडा जैन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/e3/ca/7d/shri-nakoda-jain-temple.jpg?w=900&h=-1&s=1",
        "description": "Built in 3rd century and renovated many times, this is an important Jain pilgrimage site. | 3री शताब्दी में बना और कई बार पुनर्निर्मित, यह प्रमुख जैन तीर्थ स्थल है।"
      },
      {
        "name": "Devka Sun Temple (देवका सूर्य मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLdfp0TC1QIa9SZ8r-Lm1f8JB-CWi7jnO2lQ&s",
        "description": "12th–13th century temple located in Devka village, 62 km from Barmer. | 12वीं–13वीं शताब्दी का सूर्य मंदिर, बाड़मेर से 62 किमी दूर देवका गाँव में स्थित।"
      },
      {
        "name": "Vishnu Temple, Khed (विष्णु मंदिर, खेड़)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/71/f7/00/20160227-123550-largejpg.jpg?w=300&h=300&s=1",
        "description": "Located in Khed, famous for its architecture, though now in ruins. | खेड़ का विष्णु मंदिर अद्भुत स्थापत्य का उदाहरण है, भले ही अब खंडहर हो चुका है।"
      },
      {
        "name": "Rani Bhatiyani Temple (रानी भाटियानी मंदिर, जसोल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/7b/d1/a4/images-largejpg.jpg?w=1200&h=1200&s=1",
        "description": "Dedicated to Rani Bhatiyani, worshipped as Majisa, especially by Manganiar community. | जसोल स्थित रानी भाटियानी मंदिर, जिन्हें मंगनियार समुदाय ‘माजीसा’ कहकर पूजता है।"
      },
      {
        "name": "Juna Fort & Temple (जूना किला और मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1a/eb/b0/96/juna-fort-temple-juna.jpg",
        "description": "25 km from Barmer, old Barmer ruins with Jain temples and fort, built in 12th–13th century. | बाड़मेर से 25 किमी दूर जूना किला और जैन मंदिर, 12वीं–13वीं सदी के प्राचीन अवशेष।"
      },
      {
        "name": "Chintamani Parasnath Jain Temple (चिंतामणि पारसनाथ जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdhe8DnL26U0W3PiMPxERu1NUBcUASIZ6Oag&s",
        "description": "16th century temple with glass inlay and rich paintings. | 16वीं सदी का जैन मंदिर, काँच की जड़ाई और रंगीन चित्रों से सुसज्जित।"
      },
      {
        "name": "Mahabar Sand Dunes (महाबर रेत के टीले)",
        "image": "https://cdn1.zeenews.india.com/prod/zee-rajasthan/images/2025/20250729/image-1753792492158.png",
        "description": "Beautiful sand dunes, less crowded than Sam, perfect for sunrise and sunset views. | शांत और कम भीड़भाड़ वाले महाबर रेत के टीले, जहाँ सूर्योदय और सूर्यास्त अद्भुत दृश्य प्रस्तुत करते हैं।"
      },
      {
        "name": "Safed Akhara (सफेद अखाड़ा)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1b/2b/0a/8b/safed-akhara-located.jpg",
        "description": "Also called Sideshwara Mahadev Temple, with shrines of Shiva, Krishna–Radha, Hanuman, and gardens with peacocks. | साइडेश्वर महादेव मंदिर परिसर, जहाँ शिव, कृष्ण–राधा और हनुमान के मंदिर हैं तथा मोरों से भरे सुंदर उद्यान।"
      },
    ],

    "Bharatpur (भरतपुर)": [
      {
        "name": "Bharatpur Palace and Museum (भरतपुर महल और संग्रहालय)",
        "image": "https://content-tourist.rajasthan.gov.in/uploads/bharatpur_bc9d24861c.jpg",
        "description": "Located inside Bharatpur Palace, the Kamra Khas museum houses 581 stone sculptures, 861 local art wares and ancient scriptures. The palace shows a fusion of Mughal and Rajput styles. | भरतपुर महल के भीतर स्थित कमरा खास संग्रहालय में 581 पत्थर की मूर्तियाँ, 861 हस्तशिल्प वस्तुएँ और प्राचीन ग्रंथ संग्रहित हैं। यह महल मुगल और राजपूत स्थापत्य का सुंदर संगम है।"
      },
      {
        "name": "Ganga Mandir (गंगा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWPl9juGLrgWCEH6B8T_MR6L5pnnivUH1B4w&s",
        "description": "One of the most beautiful temples of Rajasthan with white marble idol of Ganga Maharaj. Built in mid-19th century by Maharaja Balwant Singh with donations from city residents. | राजस्थान के सबसे सुंदर मंदिरों में से एक, जिसमें गंगा महाराज की संगमरमर की मूर्ति है। महाराजा बलवंत सिंह ने 19वीं सदी में इसका निर्माण शुरू किया।"
      },
      {
        "name": "Laxman Mandir (लक्ष्मण मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/e0/41/c3/laxman-temple.jpg?w=1200&h=-1&s=1",
        "description": "Dedicated to Laxman, brother of Lord Rama, this temple is known for pink stonework and carvings of flowers and birds. | भगवान राम के भाई लक्ष्मण को समर्पित मंदिर, गुलाबी पत्थर की नक्काशी और फूल-पक्षियों की कलाकृतियों के लिए प्रसिद्ध।"
      },
      {
        "name": "Keoladeo Ghana National Park (केवलादेव घना राष्ट्रीय उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHXOf0OWkyYdcFf8_0CYPO49xU1BvHGU-9Ng&s",
        "description": "World-renowned bird sanctuary created in 18th century. Thousands of migratory birds like cranes and sandpipers visit in winter. | विश्व प्रसिद्ध पक्षी अभयारण्य, 18वीं सदी में बना। हर साल हजारों प्रवासी पक्षी यहाँ आते हैं।"
      },
      {
        "name": "Lohagarh Fort (लोहागढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3X_MrPku99glmMH8axnDKsrOrPiMucseEEw&s",
        "description": "Built by Raja Suraj Mal, this fort withstood many British attacks. It has monuments like Jawahar Bhurj, Fateh Bhurj, Moti Mahal and Kishori Mahal. | राजा सूरज मल द्वारा निर्मित किला, जिसने अंग्रेज़ों के हमलों का सामना किया। यहाँ जवाहर बुर्ज, फतेह बुर्ज और मोती महल जैसे स्मारक हैं।"
      },
      {
        "name": "Deeg (डीग)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvvl94r2saLGGdEQPmsiVpWiYVF4zrgAZwMyq44fMnXOZTYzE-hDQR2orBYnLuXt_fuok&usqp=CAU",
        "description": "Garden town with palaces, fountains and a fort built by Raja Suraj Mal. Known for its moats, gateways and beautiful gardens. | राजा सूरज मल द्वारा निर्मित किलों, महलों, उद्यानों और फव्वारों वाला सुंदर नगर।"
      },
      {
        "name": "Band Baretha (बांद बरेठा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtJ7RkMjIsVfYXJesFudQ1PhQq03i9e8LHqSRcEQfqRf-VM2_sgJ7pX9cofDJ9LVgDb_0&usqp=CAU",
        "description": "Old wildlife reserve with a dam built in 19th century. Home to over 200 bird species including Black Bittern. | पुराना वन्यजीव अभयारण्य, जहाँ 200 से अधिक पक्षी प्रजातियाँ मिलती हैं। काकुंड नदी पर 19वीं सदी का बांध स्थित है।"
      },
      {
        "name": "Kaman (कामां)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFEszYH3NzyLcm-9gtRqVD1LtikqEMunod22KUw_-5gaJSSHC7rFz7Ao_SWwWjXqdvKL0&usqp=CAU",
        "description": "Part of Brij region, linked with Lord Krishna. Main attraction is Chaurasi Khamba (84-pillared temple/mosque ruins). | ब्रज क्षेत्र का तीर्थ स्थल, भगवान कृष्ण से जुड़ा। यहाँ चौरासी खंभा प्रमुख आकर्षण है।"
      }
    ],

    "Bhilwara (भीलवाड़ा)": [
      {
        "name": "Badnore Fort (बदनोर किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ2P82Er4eDgoLJ1FdlwBYmm2MieoLP-0x1w&s",
        "description": "Seven-storied fort on a small hill, example of medieval Indian architecture, located 70 km from Bhilwara. Offers breath-taking views and has temples & monuments inside. | सात मंजिला किला, मध्यकालीन भारतीय स्थापत्य का सुंदर उदाहरण।"
      },
      {
        "name": "Pur Udan Chatri (पुर उड़न छतरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg6FI3Rmk3qIvc9EQgjHA4kPleIJcF3OLXYQ&s",
        "description": "Located 10 km from Bhilwara, famous for Udan Chatri and Adhar Sheela Mahadev where a large rock rests naturally on a small one. | 10 किमी दूर स्थित यह स्थल अधर शीला महादेव और उड़न छतरी के लिए प्रसिद्ध।"
      },
      {
        "name": "Kyara ke Balaji (क्यारा के बालाजी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGu6kwK_En2d5lc77k4J34Av6kHRpJUGwzGAdoNmoQC_T8dJoXYkWZ1F8aiYXCIKV4Az8&usqp=CAU",
        "description": "Natural image of Lord Hanuman on rock. Nearby temples include Patola Mahadev, Ghata Rani, Beeda Mataji and Neelkanth Mahadev. | प्राकृतिक रूप से प्रकट हनुमान जी की छवि वाला पवित्र स्थल।"
      },
      {
        "name": "Madhav Gou Vigyan Anusandhan Kendra (माधव गौ विज्ञान अनुसंधान केंद्र)",
        "image": "https://i.ytimg.com/vi/3HQg3C3YsJg/maxresdefault.jpg",
        "description": "Research centre in Gaadarmala village providing knowledge about cow care and livelihood for locals. | गाय पालन और देखभाल के लिए प्रसिद्ध अनुसंधान केंद्र।"
      },
      {
        "name": "Mandal (मांडल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxZSMN91S_lybhLrl-TbDg-v4lewQcGIqbUw&s",
        "description": "16 km from Bhilwara, known for Battis Khambon ki Chhatri with 32 sandstone pillars and a huge Shivaling. | 32 खंभों वाली ऐतिहासिक छतरी और शिवलिंग के लिए प्रसिद्ध।"
      },
      {
        "name": "Harni Mahadev (हरणी महादेव)",
        "image": "https://cms.patrika.com/wp-content/uploads/2024/03/02/harni_madav.jpg",
        "description": "Shiva temple surrounded by hills, 8 km from Bhilwara city. A scenic and spiritual destination. | सुरम्य पहाड़ियों में स्थित शिव मंदिर।"
      },
      {
        "name": "Gayatri Shakti Peeth (गायत्री शक्ति पीठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqsetW4H5MuajpEho40hujrp_L2UJEyq6QJg&s",
        "description": "Sacred Shakti Peetha near main bus stand of Bhilwara dedicated to Goddess Shakti. | शक्ति उपासना का प्रमुख स्थल।"
      },
      {
        "name": "Dhanop Mataji (धनोप माताजी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdsstxVThu7cKw7PBrnJ8meh8fG9VEafqm3g&s",
        "description": "Sheetla Mata temple with bright red walls and marble flooring, located in village Dhanop. | रंगीन शीतला माता मंदिर, संगमरमर की फर्श और लाल दीवारों के साथ।"
      },
      {
        "name": "Shri Beed ke Balaji (श्री बीड़ के बालाजी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3DKGFFP7pPC8dx6mc8k94UdNWXDzw_Z_Dew&s",
        "description": "Hanuman temple situated in Shahpura tehsil near Kanechhan village, peaceful and surrounded by nature. | प्राकृतिक वातावरण में स्थित शांतिपूर्ण बालाजी मंदिर।"
      },
      {
        "name": "Shri Charbhuja Nath Temple (श्री चारभुजनाथ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjp-7q90urGXgMBKv8yvx1SwZlR2tQjLrT5lwYSVFEUb_A0-qNM-f3YdF2DPYZ1i3Ekho&usqp=CAU",
        "description": "Located in Kotri tehsil, 30 km from Bhilwara, dedicated to Lord Vishnu. | विष्णु भगवान को समर्पित मंदिर।"
      },
      {
        "name": "Bagore Sahib (बागोर साहिब)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR23h7kws9-Q6mH7hmAWIiWXb1ENNJqbU5p7A&s",
        "description": "Historic Gurudwara in Bagore village where Guru Gobind Singh Ji stayed. | पवित्र गुरुद्वारा जहाँ गुरु गोबिंद सिंह जी रुके थे।"
      },
      {
        "name": "Chamunda Mata Mandir (चामुंडा माता मंदिर)",
        "image": "https://i.ytimg.com/vi/GO_Nl-mnHlw/sddefault.jpg",
        "description": "Located on hills near Harni Mahadev, offers spectacular view of Bhilwara city. | पहाड़ियों पर स्थित मंदिर, जहाँ से पूरे शहर का सुंदर दृश्य मिलता है।"
      },
      {
        "name": "Triveni (त्रिवेणी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXfdhgYMAlpTCzmSxA6X2FZZEPnZhkf2iRUI7wRFMz6pJvrBurSUo0MEpr0AtGMwQMBGs&usqp=CAU",
        "description": "Confluence of Menali, Badachh and Banas Rivers with a Shiva temple, 40 km from Bhilwara. | तीन नदियों का संगम और शिव मंदिर।"
      },
      {
        "name": "Meja Dam (मेझा बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/a0/a2/c7/it-was-a-photo-taken.jpg?w=900&h=-1&s=1",
        "description": "One of the biggest dams in Bhilwara with lush green park, popular picnic spot. | प्रसिद्ध पिकनिक स्थल और बड़ा बांध।"
      },
      {
        "name": "Bijolia (बीजोलिया)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f9/e9/c4/the-undeshwara-temple.jpg?w=500&h=500&s=1",
        "description": "Known for Digambar Jain Parshwanath Atishaya Teerth and Mandakini Temple complex with Hajaresvara Mahadeva temple. | जैन तीर्थ और प्राचीन मंदिरों के लिए प्रसिद्ध।"
      },
      {
        "name": "Tilasvan Mahadev (तिलस्वान महादेव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt5GePnq4C-aoZmC8mbqP_qfx19dAAaoeWlw&s",
        "description": "Ancient temple complex (10th–11th century) near Bijolia with Sarweshwar temple, kund, monastery and toran. | प्राचीन शिव मंदिर और तोरण द्वार।"
      },
      {
        "name": "Shahpura (शाहपुरा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2d_EQyIPnrKRAasW4haM3zqMAfNPjUTsjIw&s",
        "description": "Town of Ram Sanehi sect with Ram Dwara shrine, famous for Phad painting and annual Phool Dol fair. | राम सनेही सम्प्रदाय का प्रमुख केंद्र, फड़ चित्रकला और फूल डोल मेले के लिए प्रसिद्ध।"
      },
      {
        "name": "Jahazpur (जहाज़पुर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDdWbxkMuApmBejJFJnn2m9-zCNJZN8T1i6A&s",
        "description": "Large fort by Rana Kumbha, Jain temple of Munisvuratnath, Barah Deora temples and Gaibi Pir mosque. | किला, जैन मंदिर और ऐतिहासिक धरोहरों के लिए प्रसिद्ध।"
      },
      {
        "name": "Asind (आसींद)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvGiM7qyBGWk1C5Ee-e1yIXxjFt8U-naxh-g&s",
        "description": "Town on Khari river with Sawai Bhoj temple, fairs dedicated to saint Devnarayan Bagdavat. | संत देव नारायण बगदावत से जुड़े प्राचीन मंदिर।"
      }
    ],

    "Bikaner (बीकानेर)": [
      {
        "name": "Junagarh Fort (जूनागढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/62/f6/bb/caption.jpg?w=800&h=400&s=1",
        "description": "Built in 1588 AD by Raja Rai Singh, this fort was never conquered. It houses palaces of red sandstone and marble with beautiful courtyards and balconies. | 1588 ई. में राजा राय सिंह द्वारा निर्मित यह किला कभी भी विजित नहीं हुआ। इसमें लाल पत्थर और संगमरमर के बने महल, आंगन और झरोखे हैं।"
      },
      {
        "name": "National Research Centre on Camel (राष्ट्रीय ऊंट अनुसंधान केंद्र)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzRR8JlZ6epoJUurbPmdKRFdr2zGdb_oisDw&s",
        "description": "Asia’s only camel research and breeding centre, offering camel rides and camel milk products like kulfi, coffee and cheese. | एशिया का एकमात्र ऊंट अनुसंधान एवं प्रजनन केंद्र, जहाँ ऊंट की सवारी और ऊंट के दूध से बने कुल्फी, कॉफी व चीज़ मिलते हैं।"
      },
      {
        "name": "Lalgarh Palace and Museum (लालगढ़ पैलेस एवं संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/b8/a6/b0/palace-exteriors.jpg?w=1200&h=-1&s=1",
        "description": "Red sandstone palace built in 1902 by Maharaja Ganga Singh blending Rajput, Islamic and European styles. | 1902 में महाराजा गंगा सिंह द्वारा निर्मित लाल पत्थर का महल, जिसमें राजपूत, इस्लामी और यूरोपीय स्थापत्य का संगम है।"
      },
      {
        "name": "Rampuria Havelis (रामपुरिया हवेलियाँ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQawuzLi-vk9az2VL45Fk5vvN1F56sBZnUOSg&s",
        "description": "Famous group of havelis built with red stone, decorated with golden work and Victorian influence. | लाल पत्थर से बनी प्रसिद्ध हवेलियाँ जिनमें स्वर्ण नक्काशी और विक्टोरियन प्रभाव दिखाई देता है।"
      },
      {
        "name": "Ganga Government Museum (गंगा गवर्नमेंट म्यूज़ियम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJa1qkjDZgfBZqE0I-JngUu_S3MmKG-xX5yvIEjxNw4HAUzhv3BpfI99eMGcKto-40vVs&usqp=CAU",
        "description": "Best museum in Rajasthan with Harappan artifacts, Gupta period sculptures, weapons, coins and paintings. | राजस्थान का श्रेष्ठ संग्रहालय जिसमें हड़प्पा, गुप्तकालीन मूर्तियाँ, शस्त्र, सिक्के और चित्रकारी संग्रहित हैं।"
      },
      {
        "name": "Laxmi Niwas Palace (लक्ष्मी निवास पैलेस)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/21/a6/bf/9e/the-laxmi-niwas-palace.jpg",
        "description": "Former royal residence of Maharaja Ganga Singh built in Indo-Saracenic style (1898–1902). Now a luxury hotel. | महाराजा गंगा सिंह का शाही निवास (1898-1902), इंडो-सरैसेनिक शैली में निर्मित। अब एक लग्ज़री होटल।"
      },
      {
        "name": "Prachina Museum (प्राचीन संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/06/00/51/prachina-museum.jpg?w=1200&h=-1&s=1",
        "description": "Located in Junagarh Fort, it displays royal costumes, textiles, traditional designs and portraits of rulers. | जूनागढ़ किले में स्थित संग्रहालय जिसमें शाही परिधान, वस्त्र और पारंपरिक डिज़ाइन प्रदर्शित हैं।"
      },
      {
        "name": "Deshnok Karni Mata Temple (देशनोक करणी माता मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS0gkrAvrqO4QFJEnRbmuNpB3aL0i4Mmkw0g&s",
        "description": "World famous temple dedicated to Karni Mata, known for thousands of freely roaming rats. | विश्व प्रसिद्ध करणी माता मंदिर, जहाँ हजारों चूहे (काबा) स्वतंत्र रूप से घूमते हैं।"
      },
      {
        "name": "Bhandasar Jain Temple (भंडासर जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk043Exj2rmAe4xu_TURZJg67cYO6szVIW4Q&s",
        "description": "15th century temple dedicated to Sumatinath Ji, famous for murals, mirror work and gold leaf paintings. | 15वीं शताब्दी का जैन मंदिर, सुमतिनाथ जी को समर्पित। भित्तिचित्रों, दर्पण कार्य और स्वर्ण चित्रकारी के लिए प्रसिद्ध।"
      },
      {
        "name": "Kodamdesar Temple and Lake (कोडमदेसर मंदिर एवं झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/41/82/8b/kodamdeshwar-temple.jpg?w=200&h=-1&s=1",
        "description": "Historic Bhairav temple established by Rao Bikaji with a serene lake. | राव बीकाजी द्वारा स्थापित भैरव मंदिर और सुंदर झील।"
      },
      {
        "name": "Shri Laxminath Temple (श्री लक्ष्मीनाथ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6YMxVyeeU1IYBb5-0uE2lHM4fRHkVttvWWQ&s",
        "description": "One of the oldest temples of Bikaner dedicated to Lord Vishnu, regarded as the true king of Bikaner. | बीकानेर का प्राचीन मंदिर, भगवान विष्णु को समर्पित जिन्हें बीकानेर का वास्तविक राजा माना गया।"
      },
      {
        "name": "Shiv Bari Temple (शिव बाड़ी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/19/83/42/shiv-bari-temple.jpg?w=1200&h=-1&s=1",
        "description": "Built by Maharaja Doongar Singh in 19th century with a black marble Shiva idol and bronze Nandi statue. | 19वीं शताब्दी में महाराजा दूंगर सिंह द्वारा निर्मित, जिसमें काले संगमरमर का शिवलिंग और कांस्य नंदी प्रतिमा है।"
      },
      {
        "name": "Gajner Palace and Lake (गजनेर पैलेस एवं झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/6f/82/4f/gajner-lake-palace.jpg?w=1200&h=1200&s=1",
        "description": "Palace built in 1784 as royal hunting lodge, later expanded by Maharaja Ganga Singh. Now a heritage hotel. | 1784 में शिकारगाह के रूप में निर्मित महल, जिसे गंगा सिंह ने विस्तारित किया। अब हेरिटेज होटल।"
      },
      {
        "name": "Gajner Wildlife Sanctuary (गजनेर वन्यजीव अभयारण्य)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Gajner_Wildlife_Sanctuary-MBP-20131009.jpg/960px-Gajner_Wildlife_Sanctuary-MBP-20131009.jpg",
        "description": "Forest area with blackbuck, chinkara, nilgai, wild boar and migratory birds. | काले हिरण, चिंकारा, नीलगाय, जंगली सूअर और प्रवासी पक्षियों से भरपूर वन क्षेत्र।"
      },
      {
        "name": "Devi Kund (देवी कुंड)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/af/0c/69/devi-kund-sagar.jpg?w=1200&h=1200&s=1",
        "description": "Royal crematorium with cenotaphs (chhatris) of Bikaji dynasty rulers, decorated with Rajput paintings. | बीकाजी वंश के शासकों की छतरियों वाला शाही श्मशान, राजपूत चित्रकला से सुसज्जित।"
      },
      {
        "name": "Kolayat (कोलायत)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYpfzqu5K3a1hNICmqlh6Ch4ONCerTfo1laA&s",
        "description": "Important pilgrimage site with sacred lake, temples and ghats associated with Kapil Muni. | कपिल मुनि से जुड़ा पवित्र तीर्थ स्थल, झील और घाटों के लिए प्रसिद्ध।"
      },
      {
        "name": "Jorbeed (जोरबीड)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/62/f6/bb/caption.jpg?w=800&h=400&s=1",
        "description": "Birding hotspot famous for largest congregation of vultures and raptors in Asia. | एशिया में गिद्धों और शिकारी पक्षियों का सबसे बड़ा जमावड़ा देखने का प्रसिद्ध स्थल।"
      },
      {
        "name": "Horse Ecotourism (घोड़ा ईकोटूरिज़्म)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/ec/21/9d/national-research-centre.jpg?w=1200&h=-1&s=1",
        "description": "Equine tourism centre offering horse riding, pony rides and Marwari horses display. | घोड़ों के संरक्षण हेतु बना केंद्र जहाँ पर्यटक घुड़सवारी और मरवाड़ी घोड़ों का आनंद ले सकते हैं।"
      },
      {
        "name": "Darbari Lake (दरबारी झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1lDo06ri-5uvdMhWhApa0g1IOn3s4UqEL1w&s",
        "description": "Popular picnic spot on Bikaner–Jaisalmer highway, lush green during monsoon. | बीकानेर-जैसलमेर मार्ग पर लोकप्रिय पिकनिक स्थल, बरसात में हरी-भरी झील।"
      },
      {
        "name": "Raisar Dunes (रायसर ड्यून्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/24/87/07/caption.jpg?w=1200&h=-1&s=1",
        "description": "Desert dunes famous for camel safari, jeep safari and camping. | ऊँट सफारी, जीप सफारी और रेगिस्तानी कैंपिंग के लिए प्रसिद्ध बालू के टीले।"
      },
      {
        "name": "Public Park (पब्लिक पार्क)",
        "image": "https://cdnbbsr.s3waas.gov.in/s3ec02528aecdf9cf67e516dfd5eaa675c/uploads/bfi_thumb/2023052288-qmke7krzqu30uob2uejb0rzough5gvigztzwqcxhb4.jpg",
        "description": "Garden built in 1937 resembling Buckingham Palace garden, dedicated to Maharaja Ganga Singh. | 1937 में निर्मित यह उद्यान बकिंघम पैलेस गार्डन की प्रतिकृति है।"
      },
      {
        "name": "Karni Mata Panorama (करणी माता पैनोरमा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT85KhfrWXKAGifGC777tSJuwABteBbTvzMlg&s",
        "description": "Panorama dedicated to Karni Mata with her statue and depictions of her life events. | करणी माता के जीवन चरित्र और मूर्ति से युक्त भव्य पैनोरमा।"
      }
    ],

    "Bundi (बूंदी)": [
      {
        "name": "Sukh Mahal (सुख महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt8q1BEzEuCv66_AIQWOX1mVwrVFYtTP2f8LOz1jiX5hrPPLR6hj9hWZEz2PbdqpivjZ0&usqp=CAU",
        "description": "A small two-storied summer palace where Kipling wrote ‘Kim’. Part of the movie based on the novel was also shot here. | दो मंज़िला छोटा ग्रीष्मकालीन महल, जहाँ किपलिंग ने ‘किम’ उपन्यास लिखा। इस पर आधारित फ़िल्म का एक हिस्सा भी यहाँ फिल्माया गया।"
      },
      {
        "name": "Kshar Bag (क्षार बाग)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAgtrPzOBdYae_pOzmDEjKSHnzsmxfQZ8a0A&s",
        "description": "Located near Chhatra Vilas Garden, it houses cenotaphs of Bundi’s royal family. | छत्र विलास गार्डन के पास स्थित, जहाँ बूंदी शाही परिवार की छतरियाँ हैं।"
      },
      {
        "name": "Raniji ki Baori (रानीजी की बावड़ी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/0a/29/1f/this-is-a-huge-baori.jpg?w=1200&h=1200&s=1",
        "description": "Built in 1699 by Rani Nathavati Ji, it is the famous Queen’s Stepwell with intricate carvings and a high arched gate. | 1699 में रानी नथावती जी द्वारा निर्मित, उत्कृष्ट नक्काशी और विशाल मेहराब वाला प्रसिद्ध ‘क्वीन स्टेपवेल’।"
      },
      {
        "name": "Dabhai Kund (दाभाई कुंड)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/0a/28/c4/dhabhai-kund-is-walking.jpg?w=900&h=500&s=1",
        "description": "Also known as Jail Kund, it is the largest stepwell in Bundi shaped like an inverted pyramid. | जेल कुंड के नाम से प्रसिद्ध, उल्टे पिरामिड के आकार का बूंदी का सबसे बड़ा कुंड।"
      },
      {
        "name": "Nagar Sagar Kund (नगर सागर कुंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1vHkIROiZrqKwa39h9orSTsT8wSORewJt-Q&s",
        "description": "A set of twin stepwells outside Chauhan Gate built for famine water supply. | चौहान गेट के बाहर स्थित दो जुड़वाँ बावड़ियाँ, अकाल के समय जल आपूर्ति हेतु निर्मित।"
      },
      {
        "name": "Taragarh Fort (तारागढ़ किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Garh_Palace_and_Taragarh_Fort%2C_Bundi_2011-12-26_EK_II.jpg/250px-Garh_Palace_and_Taragarh_Fort%2C_Bundi_2011-12-26_EK_II.jpg",
        "description": "Built in 1354, one of the most impressive forts with Rajput style architecture and scenic grounds. | 1354 में निर्मित, राजपूत स्थापत्य वाला शानदार किला, सुंदर वातावरण और घूमने योग्य स्थल।"
      },
      {
        "name": "84 Pillared Cenotaph (चौरासी खंभों की छतरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlHaqAEsx0qKQipqu0OnVU1ixYcoD-iGR5iw&s",
        "description": "Commissioned by Rao Anirudh in memory of his nurse Deva, supported by 84 pillars with carvings of animals and apsaras. | राव अनिरुद्ध द्वारा अपनी धाय माँ ‘देवा’ की स्मृति में बनवाई गई, 84 स्तंभों पर आधारित भव्य छतरी।"
      },
      {
        "name": "Lake Jait Sagar (झील जैत सागर)",
        "image": "https://i.ytimg.com/vi/IOpWjaWKY-Y/sddefault.jpg",
        "description": "Beautiful lake near Taragarh Fort, surrounded by hills and lotus flowers. | तारागढ़ किले के पास स्थित सुंदर झील, पहाड़ियों से घिरी और कमल पुष्पों से ढकी।"
      },
      {
        "name": "Lake Nawal Sagar (झील नवल सागर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/c9/d8/c4/nawal-sagar.jpg?w=200&h=-1&s=1",
        "description": "Artificial lake with half-submerged Varun Dev temple and reflections of nearby palaces. | कृत्रिम झील, जिसके बीच में अर्ध-डूबा वरुण देव मंदिर और झील में महलों का प्रतिबिंब।"
      },
      {
        "name": "Lake Kanak Sagar, Dugari (झील कनक सागर, दुगारी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/93/c3/bb/kanak-sagar.jpg?w=1200&h=-1&s=1",
        "description": "Flat lake about 48 km from Bundi, famous for migratory birds like bar-headed goose and Demoiselle cranes. | बूंदी से 48 किमी दूर विस्तृत झील, जहाँ प्रवासी पक्षी जैसे बार हेडेड गूज और डेमोइसेल क्रेन देखे जाते हैं।"
      },
      {
        "name": "Ramgarh Tiger Reserve (रामगढ़ टाइगर रिज़र्व)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScj8wJJj5tiU0RRG16iCMPgROK0cx0irNmag&s",
        "description": "Wildlife sanctuary of 252 sq. km., a buffer for Ranthambore, best visited between Sep–May. | 252 वर्ग किमी में फैला वन्यजीव अभयारण्य, रणथंभौर का बफर ज़ोन, घूमने का श्रेष्ठ समय सितंबर–मई।"
      },
      {
        "name": "Phool Sagar (फूल सागर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/b4/32/27/bundi-phoolsagar-bundi.jpg?w=1200&h=1200&s=1",
        "description": "Artificial lake and palace with gardens, paintings by Italian prisoners. Permission required for entry. | कृत्रिम झील व महल, इतालवी कैदियों द्वारा बनाई गई चित्रकारी और सुंदर उद्यान। प्रवेश हेतु अनुमति आवश्यक।"
      },
      {
        "name": "Garh Palace (गढ़ पैलेस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvHQyCj0Y7lCh43AfGOjMboEkOH6gOW4oV4A&s",
        "description": "One of India’s largest palaces built over 3 centuries with Rajput architecture, murals and jharokhas. Famous Chitrashala gallery. | तीन शताब्दियों में निर्मित भारत के सबसे बड़े महलों में से एक, राजपूत स्थापत्य और चित्रशाला के लिए प्रसिद्ध।"
      },
      {
        "name": "Badal Mahal (बादल महल)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1a/ba/51/a6/badal-mahal-bundi-the.jpg",
        "description": "Located inside Garh Palace, known as Palace of Clouds, decorated with paintings and Dawra stone arches. | गढ़ पैलेस के भीतर स्थित ‘बादल महल’, सुंदर चित्रकारी और दौरा पत्थर की मेहराबों वाला महल।"
      },
      {
        "name": "Hathi Pole (हाथी पोल)",
        "image": "https://i.ytimg.com/vi/acOGXPj5h08/oar2.jpg?sqp=-oaymwEYCJUDENAFSFqQAgHyq4qpAwcIARUAAIhC&rs=AOn4CLAkQz-F6qqWPGkQmbRJb7uq7X22Tg",
        "description": "Grand entrance gate of Garh Palace, built by Rao Ratan Singh, with two elephants blowing bugles. | गढ़ पैलेस का भव्य प्रवेशद्वार, राव रतन सिंह द्वारा निर्मित, जिसमें शंख बजाते दो हाथियों की आकृति है।"
      },
      {
        "name": "Chhatra Mahal (छत्र महल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/3c/21/d6/view-of-bundi-from-chhatra.jpg?w=800&h=500&s=1",
        "description": "Garden palace with fountains and pools, famous for miniature paintings and Chitrashala. | बागीचा महल जिसमें फव्वारे और हौज़ हैं, लघु चित्रकला और चित्रशाला के लिए प्रसिद्ध।"
      },
      {
        "name": "Shikar Burj (शिकार बुर्ज)",
        "image": "https://i.ytimg.com/vi/llsaC8Q8p9Q/hq720.jpg?sqp=-oaymwE7CK4FEIIDSFryq4qpAy0IARUAAAAAGAElAADIQj0AgKJD8AEB-AH-CYAC0AWKAgwIABABGEwgVyhlMA8=&rs=AOn4CLDVGbCaFmtgfjq4eKmx1t_K66SKwg",
        "description": "Old hunting lodge of Bundi rulers, later retreat of Umed Singh, now a picnic spot. | बूंदी शासकों का पुराना शिकार महल, बाद में उमेद सिंह का निवास, अब पिकनिक स्थल।"
      }
    ],

    "Chittorgarh (चित्तौड़गढ़)": [
      {
        "name": "Light & Sound Show at Chittorgarh Fort (लाइट एंड साउंड शो, चित्तौड़गढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTdAGQ9UMqjw6SzaCu6Wy1bpY5oQ46sGAzvA&s",
        "description": "The Light & Sound Show at Chittorgarh Fort depicts its history, rulers, and battles with LED lights, gobo effects, and 5.1 surround sound. | चित्तौड़गढ़ किले का लाइट एंड साउंड शो LED लाइट्स और सराउंड साउंड के साथ किले का इतिहास, शासकों और युद्धों को जीवंत रूप में दिखाता है।"
      },
      {
        "name": "Vijay Stambh (विजय स्तंभ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs86a09X3TYAs49qFoEpxubn1lUKTvi-v6vg&s",
        "description": "Built by Maharana Kumbha (1440-1448 AD), this 9-storey Tower of Victory has sculptures of Hindu gods and offers panoramic views. | महाराणा कुम्भा द्वारा 1440-1448 ई. में निर्मित विजय स्तंभ 9 मंजिला है और इसमें देवी-देवताओं की नक्काशी तथा सुंदर दृश्य दिखाई देते हैं।"
      },
      {
        "name": "Kirti Stambh (कीर्ति स्तंभ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA_UuuQ4IFHmXug10tbUYw39L8V2nEJDA4UA&s",
        "description": "A 12th-century 7-storey Jain tower dedicated to Adinathji, adorned with Digambar monk figures. | 12वीं सदी का सात मंजिला जैन स्तंभ, जिसे आदिनाथ जी को समर्पित किया गया है और जिस पर दिगंबर साधुओं की मूर्तियाँ हैं।"
      },
      {
        "name": "Fateh Prakash Palace & Museum (फतेह प्रकाश पैलेस और संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1lNcexPJ6ZMdUnwjkkA7Yd8EM1XJRLwUF3g&s",
        "description": "Residence of Maharana Fateh Singh, now a museum displaying statues, weapons, woodcraft, tribal art, and crystal items. | महाराणा फतेह सिंह का निवास, जिसे अब संग्रहालय बना दिया गया है जहाँ मूर्तियाँ, हथियार, लकड़ी की कला, जनजातीय शिल्प और क्रिस्टल प्रदर्शित हैं।"
      },
      {
        "name": "Jain Temples (जैन मंदिर)",
        "image": "https://www.chittorgarh.net/images/tourism/saatbees-jain-temple-1.jpg",
        "description": "The fort houses six Jain temples, including the grand Adinath Temple with 52 shrines. | किले के अंदर छह जैन मंदिर हैं, जिनमें आदिनाथ मंदिर प्रमुख है जिसमें 52 देवकुलिकाएँ हैं।"
      },
      {
        "name": "Kalika Mata Temple (कालिका माता मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2J_Ie9mrV6dg6CqIGpDXjOnOkYAFgWe_ntA&s",
        "description": "Originally a Sun temple (8th century), later dedicated to Goddess Kali by Rana Hamir. | यह मंदिर मूलतः सूर्य देव का था (8वीं सदी), बाद में राणा हमीर ने इसे देवी काली को समर्पित किया।"
      },
      {
        "name": "Tulja Bhawani Temple (तुलजा भवानी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/78/0d/50/tulja-bhavani-temple.jpg?w=1200&h=1200&s=1",
        "description": "Dedicated to Goddess Durga, built in the 16th century, later associated with Marathas. | देवी दुर्गा को समर्पित यह मंदिर 16वीं सदी में बना और बाद में मराठों से जुड़ा।"
      },
      {
        "name": "Gaumukh Reservoir (गौमुख कुंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1kI8QtwO2FDzJZL1MH0n6_XP3NseVRxpTeA&s",
        "description": "A sacred tank fed by a spring from a cow-shaped rock formation. | एक पवित्र जलकुंड जिसे गाय के मुख जैसी शिला से निकलने वाले झरने से भरा जाता है।"
      },
      {
        "name": "Ratan Singh Palace (रतन सिंह महल)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/ratan-singh-palace-chittorgarh-rajasthan-3-attr-hero?qlt=82&ts=1727352845527",
        "description": "Winter palace of the royals, overlooking a lake, now in ruins. | राजघराने का शीतकालीन महल जो एक झील के पास स्थित है, अब खंडहर में है।"
      },
      {
        "name": "Rana Kumbha Palace (राणा कुम्भा महल)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/rana-kumbha-palace-chittorgarh-rajasthan-2-attr-hero?qlt=82&ts=1727352867288",
        "description": "One of the largest monuments in the fort, known for its ruins, dungeons, and historical importance. | किले का विशाल महल, जिसमें तहखाने और ऐतिहासिक महत्व के खंडहर हैं।"
      },
      {
        "name": "Kumbha Shyam Temple (कुम्भा श्याम मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/c5/c3/08/kumbha-shyam-temple.jpg?w=1200&h=-1&s=1",
        "description": "Originally a Varaha temple, renovated by Maharana Kumbha, dedicated to Kumbhashyam. | मूलतः वराह मंदिर, जिसे महाराणा कुम्भा ने पुनर्निर्मित किया और कुम्भाश्याम को समर्पित किया।"
      },
      {
        "name": "Meerabai Temple (मीरा मंदिर)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/meerabai-temple-chittorgarh-rajasthan-2-attr-hero?qlt=82&ts=1727352856030",
        "description": "Temple where devotee Meerabai worshipped Lord Krishna, built in North Indian style. | संत मीरा बाई द्वारा भगवान कृष्ण की पूजा के लिए बना मंदिर, जो उत्तर भारतीय शैली में निर्मित है।"
      },
      {
        "name": "Menal Temple & Waterfall (मेनाल मंदिर और झरना)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT2FnTv7fYr__MFt4rTUJmg0TFpUpYxeQkVw&s",
        "description": "A scenic 150m waterfall and ancient temple, best visited in monsoon. | 150 मीटर ऊँचा सुंदर झरना और प्राचीन मंदिर, जिसे बरसात में देखना श्रेष्ठ होता है।"
      },
      {
        "name": "Bhainsrorgarh Fort (भैंसरोरगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/46/db/b6/bhainsroadgarh-fort-built.jpg?w=900&h=500&s=1",
        "description": "Perched on a cliff between Chambal and Brahmani rivers, now a heritage hotel. | चंबल और ब्रह्माणी नदियों के बीच पहाड़ी पर स्थित किला, जिसे अब हेरिटेज होटल में बदला गया है।"
      },
      {
        "name": "Baroli Temples (बारोली मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/54/e3/3d/baroli-temples.jpg?w=900&h=-1&s=1",
        "description": "9th-century temple complex built by Huna rulers, with Ghateshwar Mahadev as main temple. | 9वीं सदी में हूण शासकों द्वारा निर्मित मंदिर समूह, जिसमें मुख्य मंदिर घाटेश्वर महादेव है।"
      },
      {
        "name": "Jaimal and Patta’s Palace (जैमल और पत्ता महल)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/jaimal-and-pattas-palace-chittorgarh-rajasthan-2-attr-hero?qlt=82&ts=1727352785729",
        "description": "Palace inside the fort commemorating warriors Jaimal and Patta’s bravery against Akbar. | किले के अंदर स्थित महल जो अकबर से युद्ध में वीरता दिखाने वाले जैमल और पत्ता की स्मृति में है।"
      },
      {
        "name": "Bhamashah ki Haveli (भामाशाह की हवेली)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrB7zjmVzAMr9clRCsl5_NYR705NVphmMf7w&s",
        "description": "Historic haveli of Bhamashah, minister of Maharana Pratap, now preserved by ASI. | महाराणा प्रताप के मंत्री भामाशाह की हवेली, जिसे अब पुरातत्व विभाग द्वारा संरक्षित किया गया है।"
      },
      {
        "name": "Sanwaliya Ji Temple (सांवलिया जी मंदिर)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/1-sanwaliya-seth-temple-chittorgarh-rajasthan-attr-hero?qlt=82&ts=1727352857615",
        "description": "A famous Krishna temple near Mandafiya village attracting millions of devotees. | मांडफिया गाँव के पास स्थित प्रसिद्ध कृष्ण मंदिर, जहाँ लाखों श्रद्धालु दर्शन करते हैं।"
      },
      {
        "name": "Samidheshwar Temple (समिदेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlylRK_K4mXcms1Iw2XnBCEsSdCf-yGN1jKQ&s",
        "description": "11th-century Shiva temple with a three-faced idol, renovated by Maharana Mokal. | 11वीं सदी का शिव मंदिर, जिसमें त्रिमुखी शिव प्रतिमा है, महाराणा मोकल द्वारा पुनर्निर्मित।"
      },
      {
        "name": "Bassi Wildlife Sanctuary (बासी वन्यजीव अभयारण्य)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/2-bassi_wildlife_sanctuary-chittorgarh-rajasthan1-attr-hero?qlt=82&ts=1727352781662",
        "description": "Established in 1988, home to leopards, deer, and migratory birds like Sarus Crane. | 1988 में स्थापित यह अभयारण्य तेंदुआ, हिरण और सारस जैसे प्रवासी पक्षियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Sita Mata Wildlife Sanctuary (सीता माता वन्यजीव अभयारण्य)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/3/3a/A_View_of_Sita_Mata_sanctuary%2C_Pratapgarh%2C_Rajasthan%2C_India.jpg",
        "description": "Dense forest with teak trees, leopards, hyenas, and flying squirrels. | घना जंगल जहाँ सागौन के पेड़, तेंदुआ, लकड़बग्घा और उड़ने वाली गिलहरियाँ पाई जाती हैं।"
      }
    ],

    "Churu (चूरू)": [
      {
        "name": "Sethani ka Johara (सेठानी का जोहड़ा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/96/bf/e6/sethani-ka-johara.jpg?w=1200&h=1200&s=1",
        "description": "Sethani ka Johara is a water reservoir built in 1956 during a famine by the wife of Bhagwan Das Bagla. It never dried up since then and attracts birds and animals like blackbuck and nilgai. | सेठानी का जोहड़ा 1956 में अकाल के समय भगवानदास बागला की पत्नी द्वारा बनवाया गया था। यह तालाब आज तक कभी सूखा नहीं है और यहाँ नीलगाय, चिंकारा व अन्य पक्षी-पशु दिखाई देते हैं।"
      },
      {
        "name": "Salasar Balaji (सालासर बालाजी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/35/78/98/shree-salasar-balaji.jpg?w=500&h=500&s=1",
        "description": "Salasar Balaji Temple is a famous Hanuman temple in Rajasthan. The idol here is believed to be self-originated. Devotees tie coconuts to fulfill wishes. | सालासर बालाजी राजस्थान का प्रसिद्ध हनुमान मंदिर है। यहाँ की मूर्ति स्वयंभू मानी जाती है और भक्त अपनी मनोकामना पूरी करने के लिए नारियल बाँधते हैं।"
      },
      {
        "name": "Tal Chappar Wildlife Sanctuary (ताल छप्पर वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/e1/94/3b/caption.jpg?w=1200&h=1200&s=1",
        "description": "Tal Chappar Sanctuary is famous for blackbucks and migratory birds like Demoiselle Cranes and eagles. It also houses desert fox and jungle cat. | ताल छप्पर अभयारण्य काले हिरण और प्रवासी पक्षियों जैसे कुरजां और चील के लिए प्रसिद्ध है। यहाँ रेगिस्तानी लोमड़ी और जंगली बिल्ली भी पाई जाती है।"
      },
      {
        "name": "Churu Fort (चूरू किला)",
        "image": "https://static.punjabkesari.in/multimedia/09_43_466622450churu-fort-1.jpg",
        "description": "Built in 1694 by Thakur Kushal Singh, Churu Fort is famous for the 1871 battle when women donated silver jewelry to make cannon shells. | 1694 में ठाकुर कुशल सिंह द्वारा बनवाया गया चूरू किला 1871 के युद्ध के लिए प्रसिद्ध है जब महिलाओं ने अपनी चाँदी की जेवरात तोप के गोले बनाने हेतु दान किए थे।"
      },
      {
        "name": "Surana Haveli (सुराना हवेली)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0W2SDFIddDoyww5305eqhk-ZqkaXwTL0mow&s",
        "description": "Surana Haveli, also called Wind Palace, was built in 1870 with 1111 doors and windows. It showcases Rajasthani interiors and grand architecture. | सुराना हवेली, जिसे हवा महल भी कहते हैं, 1870 में बनी और इसमें 1111 दरवाजे व खिड़कियाँ हैं। यह राजस्थानी कला और भव्यता का प्रतीक है।"
      },
      {
        "name": "Babosa Dham (बाबोसा धाम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2PuNnR0Nqd_AQ2Us6JzQpBk-Cc1T2yJezug&s",
        "description": "Babosa Dham is a revered temple of Babosa Maharaj, considered an incarnation of Vishnu/Krishna. Devotees tie coconuts for wish fulfillment. | बाबोसा धाम बाबोसा महाराज का मंदिर है जिन्हें विष्णु/कृष्ण का अवतार माना जाता है। यहाँ भक्त नारियल बाँधकर मनोकामना पूरी करते हैं।"
      },
      {
        "name": "Ram Mandir (राम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP1lNO4b5lyGk-iuiI5oeI9t0e3lApHS8CUg&s",
        "description": "Ram Mandir is a popular temple dedicated to Lord Ram, attracting devotees from Churu and nearby regions. It also has a Dharamshala for pilgrims. | राम मंदिर भगवान श्रीराम को समर्पित लोकप्रिय मंदिर है जहाँ चूरू और आसपास के क्षेत्र से श्रद्धालु आते हैं। यहाँ एक धर्मशाला भी है।"
      }
    ],

    "Dausa (दौसा)": [
      {
        "name": "Chand Baori (Stepwell) - Abhaneri (चाँद बावड़ी - आभानेरी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/4b/9c/c6/chand-baori-abhaneri.jpg?w=1200&h=-1&s=1",
        "description": "Chand Baori, built in the 8th century, is one of the deepest and largest stepwells in India with 1000 narrow steps across 13 storeys, 19.5 meters deep. It is located in Abhaneri, famous for its Abhaneri Festival with cultural programs and camel safaris. | चाँद बावड़ी 8वीं शताब्दी में बनी भारत की सबसे गहरी और विशाल बावड़ियों में से एक है, जिसमें 1000 सीढ़ियाँ और 13 मंज़िलें हैं, जिसकी गहराई 19.5 मीटर है। यह आभानेरी में स्थित है, जो आभानेरी महोत्सव के लिए प्रसिद्ध है।"
      },
      {
        "name": "Harshat Mata Temple - Abhaneri (हर्षत माता मंदिर - आभानेरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToi8IZv0vYmRNNh_yuXV0KCauT7Ysov8Mn4Q&s",
        "description": "Located next to Chand Baori, Harshat Mata Temple is dedicated to the goddess of joy and happiness. Its magnificent architecture and sculptures attract visitors. | चाँद बावड़ी के पास स्थित हर्षत माता मंदिर आनंद और खुशी की देवी को समर्पित है। इसका भव्य स्थापत्य और मूर्तिकला दर्शकों को आकर्षित करती है।"
      },
      {
        "name": "Jhajhirampura (झाझीरामपुरा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIbgCGG1tDHiTuNJ0Z232_M7Mn7zL1Uz5swA&s",
        "description": "Jhajhirampura is famous for its natural water tank and temples of Rudra (Shiv), Balaji (Hanuman), and other deities. Surrounded by hills and water bodies, it holds natural and spiritual significance. | झाझीरामपुरा अपने प्राकृतिक जलाशय और रुद्र (शिव), बालाजी (हनुमान) सहित अन्य देवी-देवताओं के मंदिरों के लिए प्रसिद्ध है। यह पहाड़ियों और जलस्रोतों से घिरा होने के कारण प्राकृतिक और धार्मिक महत्व रखता है।"
      },
      {
        "name": "Bhandarej (भंडारेज)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/c9/e2/fb/bhandarej-bhandarej-is.jpg?w=1400&h=1400&s=1",
        "description": "Bhandarej, historically known as Bhadrawati, is famous for its Baori (stepwell), Bhadrawati Palace, and ancient artifacts. It is also known for carpet making traditions. | भंडारेज, जिसे महाभारत काल में भद्रावती कहा जाता था, अपनी बावड़ी, भद्रावती पैलेस और प्राचीन अवशेषों के लिए प्रसिद्ध है। यह क्षेत्र कालीन बुनाई के लिए भी जाना जाता है।"
      },
      {
        "name": "Lotwara (लोटवाड़ा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/d9/db/d9/property-exterior-facade.jpg?w=300&h=-1&s=1",
        "description": "Lotwara village is known for Lotwara Fort built by Thakur Ganga Singh in the 17th century and its large population of peacocks. | लोटवाड़ा गाँव 17वीं शताब्दी में ठाकुर गंगा सिंह द्वारा बनवाए गए लोटवाड़ा किले और यहाँ पाए जाने वाले मोरों की बड़ी संख्या के लिए प्रसिद्ध है।"
      },
      {
        "name": "Bandikui (बांदीकुई)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT_B5ZiHhnYr8hy2nu4R4pb1567x_ea8XXrUOP2CexpRXXEUOWN1eEofkLdkixuGa1blw&usqp=CAU",
        "description": "Bandikui is known for its Roman-style Protestant Church, a unique attraction in the region. | बांदीकुई अपनी रोमन शैली की प्रोटेस्टेंट चर्च के लिए प्रसिद्ध है, जो क्षेत्र का एक अनोखा आकर्षण है।"
      },
      {
        "name": "Mehandipur Balaji Temple (मेहंदीपुर बालाजी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/8f/d7/8e/balaji-temple-near-dosa.jpg?w=1200&h=-1&s=1",
        "description": "Mehandipur Balaji Temple is world-famous for Lord Hanuman and is believed to have powers for ritual healing and exorcism of spirits. It attracts lakhs of devotees. | मेहंदीपुर बालाजी मंदिर भगवान हनुमान को समर्पित विश्व प्रसिद्ध मंदिर है। यह आत्मिक उपचार और भूत-प्रेत बाधा दूर करने की परंपराओं के लिए जाना जाता है और लाखों श्रद्धालुओं को आकर्षित करता है।"
      }
    ],

    "Dholpur (धौलपुर)": [
      {
        "name": "Light & Sound Show at Machkund (लाइट एंड साउंड शो - मच्कुंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2zVuktZMsFP-J47sGBBQNdGaWDiRgzk29sw&s",
        "description": "This 3-D projection mapping-based light & sound show narrates the story of Maharaja Machkund, his boon from Indradev, battle with Kalyavan, and importance of Machkund. | मच्कुंड का 3-डी प्रोजेक्शन मैपिंग लाइट एंड साउंड शो महाराजा मच्कुंड की कहानी, इन्द्रदेव का वरदान, काल्यवन से युद्ध और मच्कुंड के महत्व को दर्शाता है।"
      },
      {
        "name": "City Palace (सिटी पैलेस/धौलपुर पैलेस)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2025/Feb/10388_ACH_ee385b4e-9ca2-48fe-97de-a5527f215339.jpeg",
        "description": "City Palace, built from red sandstone, was once the residence of the Royal Family. Surrounded by Chambal ravines and near Agra, it reflects royal grandeur. | लाल बलुआ पत्थर से बना सिटी पैलेस कभी शाही परिवार का निवास था। चंबल की घाटियों और आगरा के पास स्थित यह महल राजसी वैभव को दर्शाता है।"
      },
      {
        "name": "Royal Stepwell (रॉयल बावड़ी)",
        "image": "https://l450v.alamy.com/450v/2x20w4h/royal-dholpur-bawdi-stepwell-behind-shri-mahadev-nihaleshwar-temple-dholpur-rajasthan-india-2x20w4h.jpg",
        "description": "Constructed between 1873–1880, this four-storied stepwell behind Nihaleshwar Temple has beautiful pillars and carvings. | 1873–1880 के बीच बनी यह चार मंज़िला बावड़ी निहलेश्वर मंदिर के पीछे स्थित है और सुंदर स्तंभों व नक्काशी से सजी है।"
      },
      {
        "name": "Nihal Tower (निहाल टॉवर/घंटाघर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSJ_wWfrdChimRraT9qJ7oR5C26y-STcA8BQ&s",
        "description": "Built by Raja Nihal Singh and completed by Raja Ram Singh, this 150-feet high tower has 12 gates at its base. | राजा निहाल सिंह द्वारा शुरू और राजा राम सिंह द्वारा पूर्ण किया गया यह 150 फीट ऊँचा टॉवर अपने आधार पर 12 द्वारों से घिरा है।"
      },
      {
        "name": "Shiv Temple aka Chausath Yogini Temple (शिव मंदिर/चौंसठ योगिनी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF7-6SKgb8wW3mv18Ii41UlBMP1xNeu1T9Jg&s",
        "description": "Built in the 19th century, this ancient Shiv temple is famous for Mahashivratri celebrations and traditional architecture. | 19वीं शताब्दी में बना यह प्राचीन शिव मंदिर महाशिवरात्रि उत्सव और पारंपरिक वास्तुकला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Shergarh Fort (शेरगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVt_EBxXjBR7A-Ar5Jz53E-QK2OFhLvV4_PQ&s",
        "description": "Originally built by Raja Maldeo and reconstructed by Sher Shah Suri, Shergarh Fort has carved images of Hindu gods and Jain motifs. | राजा मालदेव द्वारा निर्मित और शेरशाह सूरी द्वारा पुनर्निर्मित शेरगढ़ किला हिंदू देवी-देवताओं और जैन प्रतिमाओं की नक्काशी से सुसज्जित है।"
      },
      {
        "name": "Sher Shikhar Gurudwara (शेर शिखर गुरुद्वारा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4xJ0MVQsEchU3rIO48THYKTyH33psnTabIA&s",
        "description": "Built to commemorate Guru Hargobind Sahib’s visit, this Gurudwara is an important Sikh pilgrimage site. | गुरु हरगोबिंद साहिब की यात्रा की स्मृति में बना यह गुरुद्वारा सिख धर्म का एक महत्वपूर्ण तीर्थ स्थल है।"
      },
      {
        "name": "Mughal Garden, Jhor (मुगल गार्डन, झोर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiXiV8qGSVVd_qK2siz-UyMumTBC59mJ0nyxZlFmO061iumskGyKcRgdRqqUDQPx6bgxs&usqp=CAU",
        "description": "Located in Jhor village, Bagh-e-Nilofar is considered the oldest Mughal garden, begun during Emperor Babur’s reign. | झोर गाँव में स्थित बाग़-ए-नीलौफर मुग़ल सम्राट बाबर के काल का सबसे प्राचीन मुग़ल गार्डन माना जाता है।"
      },
      {
        "name": "Damoh Waterfall (दमोह झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/1f/7d/82/damoh-waterfall-near.jpg?w=1200&h=1200&s=1",
        "description": "Located in Sarmathura, Damoh waterfall flows during monsoon, from July to September, beautifying its surroundings. | सरमथुरा में स्थित दमोह झरना वर्षा ऋतु (जुलाई से सितम्बर) में बहता है और अपने आस-पास को हरियाली व सौंदर्य से भर देता है।"
      },
      {
        "name": "Talab-e-Shahi (तालाब-ए-शाही)",
        "image": "https://static.toiimg.com/photo/74951552.cms",
        "description": "Built in 1617 as a hunting lodge for Prince Shah Jahan, this lake attracts migratory birds like pintail and pochards. | 1617 में शाहजादा शाहजहाँ के शिकारगाह के रूप में बना यह तालाब पिंटेल और पोचार्ड जैसी प्रवासी पक्षियों को आकर्षित करता है।"
      },
      {
        "name": "Van Vihar Sanctuary (वन विहार अभयारण्य)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/17/e1/ee/b7/van-vihar-sanctuary-one.jpg",
        "description": "Spread over 25 sq. km on the Vindhyan Plateau, this sanctuary is home to sambhar, chital, nilgai, leopard, and many birds. | 25 वर्ग किमी में फैला यह अभयारण्य विंध्य पठार पर स्थित है और सांभर, चीतल, नीलगाय, तेंदुआ व अनेक पक्षियों का घर है।"
      },
    ],

    "Dungarpur (डूंगरपुर)": [
      {
        "name": "Udai Bilas Palace (उदय बिलास पैलेस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHFxKBZUkN_xPbvcy3RWUXg9kURsLT-qphow&s",
        "description": "Named after Maharawal Udai Singh II, the palace is built in Rajput style with intricate balconies, arches, and marble carvings. Today it serves as a heritage hotel. | महारावल उदय सिंह द्वितीय के नाम पर बना यह राजपूताना शैली का महल सुंदर झरोखों, मेहराबों और संगमरमर की नक्काशी से सजा है। आज यह एक हेरिटेज होटल है।"
      },
      {
        "name": "Juna Mahal (जुना महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAkFiV81eFFBZDqAdawcj9DS6PzDaYJDE9fA&s",
        "description": "A 13th-century seven-storey palace with a rugged exterior but stunning interiors of murals, miniature paintings, glass, and mirror work. | 13वीं सदी का सात मंजिला महल, बाहर से किले जैसा लेकिन अंदर सुंदर भित्तिचित्रों, लघुचित्रों, शीशे और कांच की कारीगरी से सजा।"
      },
      {
        "name": "Gaib Sagar Lake (गैब सागर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxvcI3dwKIJBHs7ilevwnkrlUynI9Eagyg2g&s",
        "description": "The lake houses the Shrinathji shrine and Vijay Rajrajeshwar Temple, showcasing the craftsmanship of Dungarpur’s sculptors. | यह झील श्रीनाथजी मंदिर और विजय राजराजेश्वर मंदिर के लिए प्रसिद्ध है जो डूंगरपुर के शिल्पियों की कारीगरी को दर्शाते हैं।"
      },
      {
        "name": "Government Archaeological Museum (सरकारी पुरातत्व संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXh5Unh8fwEHmsTmQ2Jzle4p8eMODYvKQ3pw&s",
        "description": "Established with sculptures from the Vagad region, the museum displays deities’ statues, inscriptions, coins, and paintings dating back to the 6th century. | वागड़ क्षेत्र से एकत्र मूर्तियों के साथ स्थापित इस संग्रहालय में देवी-देवताओं की प्रतिमाएँ, शिलालेख, सिक्के और 6वीं सदी की चित्रकला प्रदर्शित है।"
      },
      {
        "name": "Badal Mahal (बादल महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK-3_1zcRKcYgsgzg-w7J8Pye3FQ6w76bM5A&s",
        "description": "Built with Pareva stone on Gaib Sagar Lake, Badal Mahal blends Rajput and Mughal styles with domes and lotus carvings. | गैब सागर झील के किनारे पारेवा पत्थर से बना यह महल राजपूत और मुगल वास्तुकला का मिश्रण है, जिसमें गुम्बद और कमल की नक्काशी है।"
      },
      {
        "name": "Baneshwar Temple (बनेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnF98mxyXSy1OwMCOyUqU1I6EpFHlybhVlng&s",
        "description": "A Shiva temple at the confluence of Som and Mahi rivers, with a self-manifested linga. Nearby temples of Vishnu, Laxmi Narayan, and Brahma also attract devotees. | सोम और माही नदियों के संगम पर स्थित शिव मंदिर, जिसमें स्वयंभू लिंग है। पास ही विष्णु, लक्ष्मीनारायण और ब्रह्मा के मंदिर भी हैं।"
      },
      {
        "name": "Bhuvaneshwar (भुवनेश्वर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/57/da/2c/bai-harir-stepwell-gate.jpg?w=900&h=500&s=1",
        "description": "A mountain-top Shiva temple with a naturally formed Shivaling and an ancient monastery nearby. | पहाड़ी पर स्थित यह शिव मंदिर प्राकृतिक शिवलिंग और पास ही प्राचीन मठ के लिए प्रसिद्ध है।"
      },
      {
        "name": "Surpur Temple (सुरपुर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtWXMhPpxE1QmXuQ_xOR33czQW5L8bcvuKFw&s",
        "description": "Located on the Gangdi River bank, the temple area also features Bhulbhulaiya, Madhavrai Temple, Hathiyon Ki Agad, and inscriptions. | गंगदी नदी किनारे स्थित इस प्राचीन मंदिर के पास भूलभुलैया, माधवराय मंदिर, हाथियों की अगद और शिलालेख देखने योग्य हैं।"
      },
      {
        "name": "Vijay Rajrajeshwer Temple (विजय राजराजेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/07/90/e3/the-temple-island-at.jpg?w=900&h=500&s=1",
        "description": "Built in 1923 by Maharawal Vijay Singh, this Shiva-Parvati temple showcases fine architecture on the banks of Gaib Sagar Lake. | 1923 में महारावल विजय सिंह द्वारा निर्मित शिव-पार्वती मंदिर, गैब सागर झील के किनारे सुंदर वास्तुकला को प्रदर्शित करता है।"
      },
      {
        "name": "Shrinathji Temple (श्रीनाथजी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/f3/ae/12/img-20190320-105911-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Built in 1623 by Maharawal Punjraj, the temple houses idols of Shri Radhika, Goverdhan Nathji, and other deities. | 1623 में महारावल पुंजराज द्वारा निर्मित यह मंदिर श्री राधिका, गोवर्धननाथजी और अन्य देवताओं की प्रतिमाओं से सुसज्जित है।"
      },
      {
        "name": "Nagfanji (नागफंजी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_Ge1c1BAQY9YvsDSkRYoiicaf5kSYcru-Kg&s",
        "description": "Famous Jain pilgrimage with statues of Padmavati, Parshwanath, and Dharnendra, along with a nearby Shiva temple. | पद्मावती, पार्श्वनाथ और धरणेंद्र की प्रतिमाओं वाला प्रसिद्ध जैन तीर्थ, पास ही शिवालय भी है।"
      },
      {
        "name": "Galiakot (गालियाकोट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDsrSTQCAzstH_st0QpGygOoAv1pRckGb-UvkqVdB7n1tOU0B3XEGl9Lz4ZVrvs88_cnE&usqp=CAU",
        "description": "Located on Mahi River, Galiakot is known for Syed Fakhruddin’s white marble shrine with Quranic inscriptions. | माही नदी किनारे स्थित गालियाकोट सय्यद फखरुद्दीन की संगमरमर की दरगाह और कुरान की आयतों की नक्काशी के लिए प्रसिद्ध है।"
      },
      {
        "name": "Deo Somnath (देव सोमनाथ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUFsIf6eFqs-6-cgBYDTBj-ItTOFDeko84PQ&s",
        "description": "A 12th-century white stone Shiva temple with turrets, domes, Sabha Mandap, and Torans. Pilgrims’ inscriptions date back to 1493 AD. | 12वीं सदी का श्वेत पत्थर से बना शिव मंदिर, जिसमें गुम्बद, सभा मंडप और तोरण हैं। यहाँ 1493 ई. के शिलालेख भी हैं।"
      },
      {
        "name": "Boreshwar (बोरेश्वर)",
        "image": "https://aapkarajasthan.com/static/c1e/client/91529/uploaded/ab2af4480c1ec2b551c0f74d431d0e3e.webp?width=968&height=500&resizemode=4",
        "description": "Boreshwar Mahadev Temple, built in 1179 AD during Maharawal Samant Singh’s reign, lies on Som River banks. | 1179 ई. में महारावल समंत सिंह के काल में बना बोरेश्वर महादेव मंदिर सोम नदी के किनारे स्थित है।"
      },
      {
        "name": "Kshetrapal Temple (क्षेत्रपाल मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhwNbwclakuWR1F3YcO34JE7YtLlUdqBnlWg&s",
        "description": "200-year-old temple in Khadagada, dedicated to Goddess Bhairav, with nearby shrines of Ganapati, Shiva, Laxmi, and Hanuman. | लगभग 200 वर्ष पुराना मंदिर, जो देवी भैरव को समर्पित है, इसके पास गणपति, शिव, लक्ष्मी और हनुमान के मंदिर भी हैं।"
      },
      {
        "name": "Fateh Garhi (फतेहगढ़ी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRByq1Cs_qsCqXsvoq9ivSD_2xdSgdLp8FmCB_sXBAMdKbMr-vy2WWwMjlK0PBZCKeQhr0&usqp=CAU",
        "description": "A viewpoint offering beautiful panoramic views of Dungarpur town. | डूंगरपुर शहर का सुंदर विहंगम दृश्य देखने का प्रसिद्ध स्थल।"
      }
    ],

    "Hanumangarh (हनुमानगढ़)": [
      {
        "name": "Bhatner Fort (भटनेर किला)",
        "image": "https://staticimg.amarujala.com/assets/images/2020/04/06/bhatner-fort-hanumangarh_1586180092.jpeg?w=750",
        "description": "Considered to be one of the oldest forts in India, built around 1700 years ago by Bhupat Bhatti, son of Jaisalmer’s King Bhatti. Located on the banks of river Ghaggar, the fort has temples of Lord Shiva and Hanuman. Emperor Akbar mentioned it in Ain-e-Akbari. | भारत के सबसे पुराने किलों में से एक, लगभग 1700 वर्ष पूर्व भूपत भट्टी द्वारा निर्मित। घग्घर नदी के किनारे स्थित यह किला शिव और हनुमान मंदिरों का घर है। अकबर ने भी इसे आईन-ए-अकबरी में उल्लेखित किया।"
      },
      {
        "name": "Temple of Shri Gogaji (श्री गोगाजी मंदिर)",
        "image": "https://aapkarajasthan.com/static/c1e/client/91529/uploaded/b423c42f704e1d4ca9bc82003e35dd0a.jpg?width=968&height=500&resizemode=4",
        "description": "Located 120 km from Hanumangarh, the temple is dedicated to warrior saint Gogaji, also revered as the ‘God of Snakes’. Built about 900 years ago by Maharaja Shri Ganga Singh, it shows a blend of Hindu and Muslim architecture. | हनुमानगढ़ से 120 किमी दूर स्थित यह मंदिर योद्धा संत गोगाजी (सर्प देवता) को समर्पित है। लगभग 900 वर्ष पूर्व महाराजा गंगा सिंह ने इसका निर्माण कराया। मंदिर की वास्तुकला हिन्दू और मुस्लिम शैली का संगम है।"
      },
      {
        "name": "Gogamedi Panorama (गोगामेड़ी पैनोरमा)",
        "image": "https://aapkarajasthan.com/static/c1e/client/91529/uploaded/cf6237a2eb80ef9bd5b357c1f6851063.jpg?width=968&height=500&resizemode=4",
        "description": "Gogamedi village is famous for the Gogamedi Fair held in memory of Shri Gogaji. The site offers stunning panoramic views and attracts devotees and tourists alike. | गोगामेड़ी गाँव गोगाजी की स्मृति में लगने वाले मेले के लिए प्रसिद्ध है। यहाँ का विहंगम दृश्य श्रद्धालुओं और पर्यटकों को आकर्षित करता है।"
      },
      {
        "name": "Kalibangan (कालीबंगा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn2jI-FdkkEwzcu0p3ogErTEZz6qWr42gU4Q&s",
        "description": "An important archaeological site of the Harappan and pre-Harappan civilization (2500 BC). Excavations revealed seals, skeletons, beads, coins, toys, terracotta, etc. The Archaeological Museum (est. 1983) houses findings in 3 galleries. | हड़प्पा और प्राक्-हड़प्पा सभ्यता (2500 ई.पू.) का प्रमुख पुरातात्विक स्थल। खुदाई में मुहरें, कंकाल, मनके, सिक्के, खिलौने, मिट्टी की मूर्तियाँ आदि मिलीं। यहाँ 1983 में स्थापित पुरातत्व संग्रहालय में 3 गैलरियाँ हैं।"
      },
      {
        "name": "Temple of Mata Bhadrakali (माता भद्रकाली मंदिर)",
        "image": "https://aapkarajasthan.com/static/c1e/client/91529/uploaded_original/dff324a6bcadf92cf55a5c1e340bc73e.jpg",
        "description": "Located 7 km from Hanumangarh on the banks of Ghaggar River, dedicated to Goddess Bhadrakali (avatar of Durga). Built by Maharaja Ram Singh of Bikaner, it houses a red stone idol. | हनुमानगढ़ से 7 किमी दूर घग्घर नदी के किनारे स्थित यह मंदिर देवी भद्रकाली (दुर्गा का अवतार) को समर्पित है। महाराजा राम सिंह ने इसका निर्माण कराया था। यहाँ लाल पत्थर की प्रतिमा स्थापित है।"
      },
      {
        "name": "Masitavali Head (मसिटावली हेड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROljEMVNNWx2mALUM5O80d6kHcb9G5u8FQACzx0c0a-S-Fsp5OM5-6Yd0Sa3mlix9QTQM&usqp=CAU",
        "description": "Located in Masitavali village, 34 km from Hanumangarh, this is the entry point of Asia’s largest irrigation project – Indira Gandhi Canal Project. The site resembles an oasis and is a picturesque location. | हनुमानगढ़ से 34 किमी दूर मसिटावली गाँव में स्थित यह एशिया की सबसे बड़ी सिंचाई परियोजना – इंदिरा गाँधी नहर परियोजना का प्रवेश बिंदु है। यह स्थल नखलिस्तान जैसा दृश्य प्रस्तुत करता है।"
      }
    ],

    "Jaipur (जयपुर)": [
      {
        "name": "Samode (समोद)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/bd/c7/5b/samode-palace.jpg?w=500&h=-1&s=1",
        "description": "Samode is 40 km from Jaipur, famous for its 475-year-old palace, haveli architecture, Samode Bagh, camel safaris, and village craftsmen. | समोद जयपुर से 40 किमी दूर स्थित है, 475 साल पुराने महल, हवेली वास्तुकला, सामोद बाग, ऊँट सफारी और ग्रामीण कारीगरों के लिए प्रसिद्ध।"
      },
      {
        "name": "Light & Sound Show at Jainiwas Udhyan (जैनीवास उद्यान लाइट एंड साउंड शो)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejQtbB6kPBWZQv1EAMbfkcvskkDdeK_Lmfg&s",
        "description": "3-D projection-based light & sound show depicting Shri Govind Dev Ji’s story. | श्री गोविंद देव जी की कथा को दर्शाता 3-डी प्रोजेक्शन लाइट एंड साउंड शो।"
      },
      {
        "name": "Amber Palace (आमेर का किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlthYgpeai7vpUgPXohLTsgpR5rGBqpEasIg&s",
        "description": "UNESCO site, built in 1592, blends Mughal & Rajput styles with red sandstone, marble, carvings, and Maota Lake view. | यूनेस्को स्थल, 1592 में बना, मुगल और राजपूत शैली का संगम, लाल बलुआ पत्थर, संगमरमर, नक्काशी और मौटा झील का दृश्य।"
      },
      {
        "name": "City Palace (सिटी पैलेस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9nz1ahkd47CqDpM4jzQBOA9nMkpLOM-XVyA&s",
        "description": "Fusion of Mughal and Rajput architecture, home to Jaipur royals, houses Mubarak Mahal & Maharani’s Palace museums. | मुगल और राजपूत शैली का संगम, जयपुर राजघराने का निवास, मुबारक महल और महारानी पैलेस संग्रहालय।"
      },
      {
        "name": "Jantar Mantar (जंतर मंतर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Jantar_Mantar_at_Jaipur.jpg/1200px-Jantar_Mantar_at_Jaipur.jpg",
        "description": "UNESCO site, astronomical observatory built by Maharaja Jai Singh II, with 16 instruments to track planets and time. | यूनेस्को स्थल, महाराजा जय सिंह द्वितीय द्वारा निर्मित वेधशाला, 16 यंत्रों से ग्रह और समय माप।"
      },
      {
        "name": "Hawa Mahal (हवा महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuDD8CIjBDuVukV24jBDSDnW6-DUu3qrzpeQ&s",
        "description": "1799-built Palace of Winds with latticed windows for royal women, Jaipur’s iconic pink sandstone landmark. | 1799 में बना ‘हवा महल’, जालीदार खिड़कियों वाला महल, जयपुर का गुलाबी बलुआ पत्थर का प्रतीक चिन्ह।"
      },
      {
        "name": "Albert Hall Museum (अल्बर्ट हॉल संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ-QnpGEpa0oN7nS9YO0rY2u1YGeXcGwB4Vw&s",
        "description": "Indo-Saracenic architecture, houses miniatures, metal, wood crafts, textiles, arms & artefacts. | इंडो-सरासेनिक शैली में बना, लघुचित्र, धातु, लकड़ी शिल्प, वस्त्र और हथियारों का संग्रह।"
      },
      {
        "name": "Nahargarh Fort (नाहरगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0OZU670_mC2NW6G7UMyXzsQQ4Gx9oqUkTbg&s",
        "description": "1734 fort on Aravalli hills with Madhavendra Bhawan for queens, offers panoramic Jaipur views. | 1734 का किला, अरावली पहाड़ियों पर, माधवेन्द्र भवन और जयपुर का विहंगम दृश्य।"
      },
      {
        "name": "Jaigarh Fort (जयगढ़ किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/3/34/Rajasthan-Jaipur-Jaigarh-Fort-compound-Apr-2004-00.JPG",
        "description": "18th-century fort built by Sawai Jai Singh II, home to world’s largest cannon Jaiban. | 18वीं सदी का किला, सवाई जय सिंह द्वितीय द्वारा निर्मित, विश्व की सबसे बड़ी तोप ‘जयबान’।"
      },
      {
        "name": "Birla Temple (बिड़ला मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPWNgRUjT8cGUlkuwg1qjs042IgHQreNi6Kg&s",
        "description": "Modern white marble temple (1988) dedicated to Laxmi-Narayan, with carvings & three domes symbolising religions. | 1988 में बना आधुनिक सफेद संगमरमर का लक्ष्मी-नारायण मंदिर, नक्काशी और तीन गुंबदों वाला।"
      },
      {
        "name": "Jal Mahal (जल महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ8_AUWZMykDohvWPLt48TrEXYcfAXYG33mw&s",
        "description": "Picturesque palace in the middle of Man Sagar Lake, appears floating on water. | मानसागर झील के बीच स्थित अद्भुत महल, जो पानी पर तैरता प्रतीत होता है।"
      },
      {
        "name": "Gaitore (गैटोर - राजाओं की छतरियां)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkhOXWo-RZhdtjSWRtMi4nvZ1gsZMrV_JFGw&s",
        "description": "Royal cenotaphs of Jaipur rulers with marble chhatris, finest is Maharaja Jai Singh’s. | जयपुर राजाओं की समाधि स्थल, संगमरमर की छतरियां, महाराजा जय सिंह की छतरी सर्वश्रेष्ठ।"
      },
      {
        "name": "Sisodia Rani Palace & Garden (सिसोदिया रानी का बाग)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1a/32/65/e2/sisodia-rani-palace-and.jpg",
        "description": "8 km from Jaipur, Mughal-style terraced garden with Radha-Krishna murals. | जयपुर से 8 किमी दूर, मुगल शैली का बगीचा, राधा-कृष्ण की भित्तिचित्रों से सजा।"
      },
      {
        "name": "Vidyadhar Garden (विद्याधर उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6yf291GD2XD2BA_8OQbee1FHNAysVYVcb-A&s",
        "description": "Garden near Sisodia Bagh, named after Jaipur’s chief architect Vidyadhar Bhattacharya. | सिसोदिया बाग के पास स्थित उद्यान, जयपुर के मुख्य वास्तुकार विद्याधर भट्टाचार्य के नाम पर।"
      },
      {
        "name": "Kanak Vrindavan (कणक वृंदावन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ6lsy-SyP5gWCe3yicmnI09IjQ397UN91GA&s",
        "description": "Beautiful garden at the foot of Nahargarh hills, resembles Vrindavan, with temples and fountains. | नाहरगढ़ पहाड़ियों की तलहटी में स्थित सुंदर उद्यान, वृंदावन जैसा, मंदिर और फव्वारों से सजा।"
      },
      {
        "name": "Ishwar Lat (ईश्वर लाट)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/03/2d/cf/ishwar-lat-sargasuli.jpg",
        "description": "Known as Swarg Suli, 18th-century minaret built by Ishwari Singh, offers city view. | स्वर्ग सुली नाम से प्रसिद्ध, 18वीं सदी की मीनार, ईश्वरी सिंह द्वारा निर्मित, शहर का विहंगम दृश्य।"
      },
      {
        "name": "Statue Circle (स्टेच्यू सर्कल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/de/b5/ab/sawai-jai-singh-statue.jpg?w=1200&h=-1&s=1",
        "description": "Famous landmark with Sawai Jai Singh statue, popular evening spot. | सवाई जय सिंह की प्रतिमा वाला प्रसिद्ध स्थल, शाम की सैर के लिए लोकप्रिय।"
      },
      {
        "name": "Ram Niwas Garden (राम निवास बाग)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/ram-niwas-garden-jaipur-rajasthan-1-attr-hero?qlt=82&ts=1742168222616",
        "description": "19th-century garden built by Maharaja Sawai Ram Singh, houses Albert Hall Museum. | 19वीं सदी का बाग, महाराजा सवाई राम सिंह द्वारा निर्मित, अल्बर्ट हॉल संग्रहालय यहाँ स्थित है।"
      },
      {
        "name": "Raj Mandir Cinema (राज मंदिर सिनेमा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnXwNjt-6wHycJrnRaCKit5hE7fTkWX6umcw&s",
        "description": "Famous cinema hall with meringue-shaped auditorium, opened in 1976. | 1976 में खुला प्रसिद्ध सिनेमा हॉल, मेरिंग आकार का ऑडिटोरियम।"
      },
      {
        "name": "Sambhar Lake (सांभर झील)",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0a/08/c5/1f.jpg",
        "description": "India’s largest inland salt lake, also a bird sanctuary famous for flamingos. | भारत की सबसे बड़ी खारे पानी की झील, पक्षी अभयारण्य, विशेषकर फ्लेमिंगो के लिए प्रसिद्ध।"
      },
      {
        "name": "Galta Ji Temple (गलता जी मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Zanana_Kund_Aur_Galta_Ji_Ka_Mandir_-edited.jpg/960px-Zanana_Kund_Aur_Galta_Ji_Ka_Mandir-_edited.jpg",
        "description": "Ancient pilgrimage site with natural springs and sacred kunds, also known as Monkey Temple. | प्राचीन तीर्थस्थल, प्राकृतिक झरनों और पवित्र कुंडों वाला, जिसे मंकी टेम्पल भी कहते हैं।"
      },
      {
        "name": "Moti Dungri (मोती डूंगरी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYRUQ7Cr3TQgoM3gEs_SIezuVgHOg-mUZLtQ&s",
        "description": "Hilltop Ganesh temple near Birla Mandir, iconic Jaipur landmark. | बिरला मंदिर के पास पहाड़ी पर स्थित गणेश मंदिर, जयपुर का प्रतीक स्थल।"
      },
      {
        "name": "Govind Dev Ji Temple (गोविंद देव जी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkbw2sH9eVkHcYStWM50OeRvGnwQKuUu8HlR8wKp4tg3xUNfZEAoSGpVXSwYkvyl6wqLM&usqp=CAU",
        "description": "Famous Krishna temple inside City Palace complex, major devotional center. | सिटी पैलेस परिसर में स्थित प्रसिद्ध कृष्ण मंदिर, प्रमुख धार्मिक स्थल।"
      },
      {
        "name": "Khole Ke Hanuman Ji (खोले के हनुमान जी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/63/9e/8e/khole-ke-hanuman-ji-temple.jpg?w=1200&h=-1&s=1",
        "description": "Popular Hanuman temple surrounded by hills, attracts huge crowds on Tuesdays & Saturdays. | पहाड़ियों से घिरा प्रसिद्ध हनुमान मंदिर, मंगलवार व शनिवार को बड़ी भीड़।"
      },
      {
        "name": "Anokhi Museum of Hand Printing (अनोकही हैंड प्रिंटिंग संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/79/c7/64/anokhi-museum-of-hand.jpg?w=1200&h=1200&s=1",
        "description": "Museum in Amer dedicated to block printing tradition, with workshops & displays. | आमेर में स्थित संग्रहालय, ब्लॉक प्रिंटिंग परंपरा को समर्पित, कार्यशालाएं और प्रदर्शनी।"
      },
      {
        "name": "Elefantastic (एलीफैंटास्टिक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/2d/95/98/this-is-elephant-love.jpg?w=1200&h=1200&s=1",
        "description": "Elephant farm near Amer offering interactive experiences with elephants. | आमेर के पास स्थित हाथी फार्म, जहाँ हाथियों के साथ अनोखा अनुभव मिलता है।"
      },
      {
        "name": "Jawahar Circle Garden (जवाहर सर्किल गार्डन)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/jawahar-circle-jaipur-rajasthan-1-attr-hero?qlt=82&ts=1742190477621",
        "description": "Asia’s largest circular park with musical fountain, jogging tracks & rose garden. | एशिया का सबसे बड़ा गोलाकार बाग, संगीतमय फव्वारा, जॉगिंग ट्रैक और गुलाब उद्यान।"
      },
      {
        "name": "Amrapali Museum (अम्रपाली संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/c2/eb/df/museum-building.jpg?w=1200&h=-1&s=1",
        "description": "Private museum showcasing tribal & traditional Indian jewelry and ornaments. | निजी संग्रहालय, आदिवासी व पारंपरिक भारतीय आभूषणों का प्रदर्शन।"
      },
      {
        "name": "World Trade Park (वर्ल्ड ट्रेड पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDsvrl9YOYKFASoWKIY20CWHE0vwd47x19VA&s",
        "description": "Modern shopping mall & commercial hub with futuristic architecture. | आधुनिक शॉपिंग मॉल और व्यावसायिक केंद्र, भविष्यवादी वास्तुकला वाला।"
      },
      {
        "name": "Central Park (सेंट्रल पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5_72Yfap2P0e8tAmHFbM-TKo0YFx5hVa3hg&s",
        "description": "Jaipur’s largest park with walking tracks, musical fountain, golf club, and tallest national flag. | जयपुर का सबसे बड़ा पार्क, वॉकिंग ट्रैक, संगीतमय फव्वारा, गोल्फ क्लब और सबसे ऊँचा राष्ट्रीय ध्वज।"
      },
      {
        "name": "Amar Jawan Jyoti (अमर जवान ज्योति)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/44/a5/bb/amar-jawan-jyoti.jpg?w=1200&h=1200&s=1",
        "description": "Memorial dedicated to martyrs of 1971 Indo-Pak war, lit flame and sculptures. | 1971 भारत-पाक युद्ध के शहीदों की स्मृति में निर्मित, अनन्त ज्योति और शिल्पाकृतियां।"
      },
      {
        "name": "Dolls Museum (गुड़िया संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/2e/92/fb/one-of-the-display-cabinets.jpg?w=1200&h=-1&s=1",
        "description": "Unique museum showcasing dolls from India and around the world. | अनोखा संग्रहालय, भारत और दुनिया भर की गुड़ियों का प्रदर्शन।"
      },
      {
        "name": "Akshardham Temple (अक्षरधाम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDXO_OCQEfvtKwryGfYyvuSysx4md4afJlPA&s",
        "description": "Modern temple dedicated to Lord Narayan, known for carvings and gardens. | भगवान नारायण को समर्पित आधुनिक मंदिर, नक्काशी और उद्यानों के लिए प्रसिद्ध।"
      },
      {
        "name": "Museum on Political Narratives (राजनीतिक कथानक संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5mW6oQ6mI0n3jfIfJvQuguu0LFz7aQxY3MmR8aLmLG-S-ofAiMMWr3YPTdLIhcojaHTU&usqp=CAU",
        "description": "Digital museum at Rajasthan Legislative Assembly depicting state’s history, leaders, and democracy. | राजस्थान विधानसभा में डिजिटल संग्रहालय, राज्य के इतिहास, नेताओं और लोकतंत्र को दर्शाता।"
      }
    ],

    "Jaisalmer (जैसलमेर)": [
      {
        "name": "Light & Sound Show at Gadisar Lake (गडीसर झील का लेज़र शो)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqJwOFGHHPY7PLywYQZt8StI6bXF_fhAuJ7g&s",
        "description": "Laser Water Show at Gadisar Lake depicting Jaisalmer's history with 3-chip DLP projectors of 25,000 lumens. | गडीसर झील पर लेज़र वाटर शो, जो जैसलमेर का इतिहास दर्शाता है।"
      },
      {
        "name": "Jaisalmer Fort (जैसलमेर किला)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Jaisalmer_forteresse.jpg/960px-Jaisalmer_forteresse.jpg",
        "description": "UNESCO World Heritage fort known as Sonar Quila, built with golden sandstone. | सोनार किला, यूनेस्को विश्व धरोहर, पीले बलुआ पत्थर से निर्मित।"
      },
      {
        "name": "Jaisalmer Government Museum (जैसलमेर सरकारी संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT09YHkcltm4iWfAKf065xSiwG__mhZIy8GXg&s",
        "description": "Displays cultural heritage, fossils, statues and the state bird Godawan. | सांस्कृतिक धरोहर, जीवाश्म, मूर्तियाँ और राज्य पक्षी गोडावण का प्रदर्शन।"
      },
      {
        "name": "Nathmal Ji Ki Haveli (नाथमल जी की हवेली)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/54/b1/04/nathmal-ji-ki-haveli.jpg?w=900&h=500&s=1",
        "description": "19th century haveli with intricate carvings and miniature paintings. | 19वीं शताब्दी की हवेली, बारीक नक्काशी और लघुचित्रों से सजी।"
      },
      {
        "name": "Salim Singh Ki Haveli (सलीम सिंह की हवेली)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/1-salim-singh-ki-haveli-jaisalmer-rajasthan-attr-hero?qlt=82&ts=1727352768296",
        "description": "Historic haveli with arched roof and peacock-shaped brackets. | ऐतिहासिक हवेली, मोर आकार की मेहराब और नक्काशीदार छत के साथ।"
      },
      {
        "name": "Patwon Ki Haveli (पटवों की हवेली)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHU8XSnf3RZAJnXty7KPLEwaIOzwzYiQHa1g&s",
        "description": "Five-storey haveli famous for carvings, paintings and mirror work. | पाँच मंज़िला हवेली, नक्काशी, चित्रकारी और शीशे के काम के लिए प्रसिद्ध।"
      },
      {
        "name": "Mandir Palace (मंदिर महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSyvIHaPFbSQXBhpXjjtJDWYxY4sYvJJ232A&s",
        "description": "Palace with Badal Mahal and Tazia Tower showcasing Rajasthani art. | बादल महल और ताजिया टॉवर वाला महल, राजस्थानी कला का प्रतीक।"
      },
      {
        "name": "Jain Temples of Jaisalmer (जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWhiDZPiuq-qCXv5ESeLSzoxyJMLgi4P6BXw&s",
        "description": "12th–15th century temples inside Jaisalmer Fort, built in Dilwara style. | 12वीं–15वीं सदी के जैन मंदिर, दिलवाड़ा शैली में निर्मित।"
      },
      {
        "name": "Bada Bagh (बड़ा बाग)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmyL7dUyI06RoC8oxDNUJ_6GTxsCYD-xRRYw&s",
        "description": "Royal cenotaphs of Jaisalmer rulers with stunning sunset views. | शाही छतरियों वाला उद्यान, सुंदर सूर्यास्त दृश्य के लिए प्रसिद्ध।"
      },
      {
        "name": "Desert National Park (रेगिस्तान राष्ट्रीय उद्यान)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/1-desert-national-park-jaisalmer-attr-hero?qlt=82&ts=1727352528006",
        "description": "Wildlife reserve with Great Indian Bustard and desert fauna. | गोडावण पक्षी और रेगिस्तानी जीव-जंतुओं का राष्ट्रीय उद्यान।"
      },
      {
        "name": "Kuldhara (कुलधरा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQefhEAj8LuBA6UwuLbLzsnkHqG2vX5HOF1HA&s",
        "description": "Abandoned village with mysterious history of mass exodus. | रहस्यमयी इतिहास वाला परित्यक्त गाँव।"
      },
      {
        "name": "Tanot Mata Temple (तानोट माता मंदिर)",
        "image": "https://cf-img-a-in.tosshub.com/lingo/gnt/images/story/202505/681dddb986b54-tanot-mata-temple-rajasthan-094924636-16x9.jpg",
        "description": "Famous temple where bombs didn’t explode during 1965 war. | 1965 युद्ध में जहाँ बम नहीं फटे, वह प्रसिद्ध मंदिर।"
      },
      {
        "name": "Ramdevra Temple (रामदेवरा मंदिर)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/ramdevra-temple-jaisalmer-rajasthan-1-attr-hero-1?qlt=82&ts=1727352799035",
        "description": "Temple dedicated to saint Baba Ramdevji, attracts all faiths. | संत बाबा रामदेवजी को समर्पित मंदिर, सभी धर्मों के लिए आस्था का केंद्र।"
      },
      {
        "name": "Jaisalmer War Museum (जैसलमेर युद्ध संग्रहालय)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/longewala-war-memorial-jaisalmer-rajasthan-1-attr-hero?qlt=82&ts=1727352778364",
        "description": "Museum showcasing battles of 1965 & 1971 with war memorabilia. | 1965 और 1971 के युद्ध का स्मारक संग्रहालय।"
      },
      {
        "name": "Laungewala War Memorial (लोंगेवाला युद्ध स्मारक)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/longewala-war-memorial-jaisalmer-rajasthan-2-attr-hero?qlt=82&ts=1727352858592",
        "description": "Memorial of 1971 battle showcasing Indian Army’s bravery. | 1971 की लड़ाई का स्मारक, भारतीय सेना के साहस का प्रतीक।"
      },
      {
        "name": "Akal Wood Fossil Park (अकाल वुड फॉसिल पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIFMQIZOeiD7luS9NOFJ2_zVNDBK4gp1Z8Vw&s",
        "description": "Jurassic-era fossilized trees preserved in a 21-hectare park. | जुरासिक युग के जीवाश्म वृक्षों का 21 हेक्टेयर का पार्क।"
      },
      {
        "name": "Vyas Chhatri (व्यास छतरी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/00/52/7c/1.jpg?w=1200&h=-1&s=1",
        "description": "Golden sandstone cenotaphs dedicated to sage Ved Vyas. | वेद व्यास को समर्पित सुनहरी बलुआ पत्थर की छतरियाँ।"
      },
      {
        "name": "Amar Sagar Lake (अमर सागर झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/e9/6a/24/un-lago-en-un-desierto.jpg?w=1200&h=-1&s=1",
        "description": "Historic lake with Amar Singh Palace and Jain temple. | अमर सिंह महल और जैन मंदिर वाली ऐतिहासिक झील।"
      }
    ],

    "Jalore (जालोर)": [
      {
        "name": "Jalore Fort (जालोर किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/f2/8e/e9/photo1jpg.jpg?w=1200&h=-1&s=1",
        "description": "Constructed between 8th–10th century, perched atop a steep hill at 336m, known for fortified walls, bastions and massive gates. | 8वीं–10वीं शताब्दी में निर्मित, ऊँचे पहाड़ी पर स्थित, किले की मजबूत दीवारों और विशाल द्वारों के लिए प्रसिद्ध।"
      },
      {
        "name": "Topekhana (तोपेखाना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/61/ab/a1/caption.jpg?w=900&h=500&s=1",
        "description": "Former Sanskrit school built by King Bhoj, later used to store artillery; features stone carvings and elevated headmaster room. | राजा भोज द्वारा बनायी गई संस्कृत पाठशाला, बाद में तोपखाने के रूप में उपयोग हुई; पत्थर की नक्काशी और ऊँचा मुख्याध्यापक कक्ष देखने लायक।"
      },
      {
        "name": "Malik Shah's Mosque (मलिक शाह की मस्जिद)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/82/07/74/pir-malik-shah-jalore.jpg?w=1200&h=-1&s=1",
        "description": "Commissioned by Ala-Ud-Din-Khilji, located inside Jalore Fort, inspired by Gujarat architecture. | अलाउद्दीन खिलजी द्वारा बनवायी गई, जालोर किले के अंदर, गुजरात की स्थापत्य शैली से प्रेरित।"
      },
      {
        "name": "Sirey Mandir (सिरे मन्दिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/f2/8f/df/photo0jpg.jpg?w=1200&h=-1&s=1",
        "description": "Temple at 646m on Kalashachal hill, built by Rawal Ratan Singh in honour of Maharishi Jabali; Pandavas legend associated. | कालाशाचल पहाड़ी पर 646 मीटर ऊँचाई पर स्थित मंदिर, महारिषी जबली को समर्पित, पांडवों की कथा से जुड़ा।"
      },
      {
        "name": "Sundha Mata Temple (सुंधा माता मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/23/bb/61/sundha-mata-temple.jpg?w=1200&h=-1&s=1",
        "description": "Sacred temple atop Sundha Mountain (1220m), houses Goddess Chamunda Devi idol, made of white marble; pillars inspired by Dilwara Temple. | सुंधा पर्वत पर 1220 मीटर ऊँचाई पर स्थित पवित्र मंदिर, देवी चामुंडा की मूर्ति और सफेद संगमरमर का बना, स्तंभ दिलवाड़ा मंदिर जैसी शैली में।"
      }
    ],

    "Jhunjhunu (झुंझुनूं)": [
      {
        "name": "Garh Palace (Jhalawar Fort) (गढ़ पैलेस / झालावर किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/17/55/4f/33/jhalawar-fort-situated.jpg",
        "description": "Built between 1838-1854 AD by Maharaj Rana Madan Singh, known for beautiful paintings and frescoes on walls and mirrors. | 1838-1854 ईस्वी में महाराज राणा मदन सिंह द्वारा निर्मित, दीवारों और शीशों पर शानदार चित्रों और भित्ति चित्रों के लिए प्रसिद्ध।"
      },
      {
        "name": "Government Museum (सरकारी संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ1Nd_tTKY2BwsI5Pjci1FsRrU8E8wxiULug&s",
        "description": "One of the oldest museums in Rajasthan established in 1915 AD; rare paintings, manuscripts, idols; part of Garh Palace. | 1915 ई. में स्थापित राजस्थान के सबसे पुराने संग्रहालयों में से एक; दुर्लभ चित्र, पांडुलिपियाँ और मूर्तियाँ।"
      },
      {
        "name": "Bhawani Natyashala (भवानी नाट्यशाला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/7d/8d/80/front-view-of-bhawani.jpg?w=900&h=500&s=1",
        "description": "Constructed in 1921 AD by Maharaja Bhawani Singh; features underground passage for horses and chariots; famous theatre. | 1921 ई. में महाराजा भवानी सिंह द्वारा निर्मित; घोड़ों और रथों के लिए भूमिगत मार्ग, प्रसिद्ध थिएटर।"
      },
      {
        "name": "Gagron Fort (गागरों किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR83XHg_kYy-qkfWhb_-oFC7QEkEiUgryQWiQ&s",
        "description": "Hill and water fort, UNESCO World Heritage Site; surrounded by Ahu and Kali Sindh rivers; Sufi saint Mitheshah mausoleum nearby. | पहाड़ी और जल किला, यूनेस्को विश्व धरोहर स्थल; तीन ओर से नदियों से घिरा; समीप सूफी संत मीथेशाह का मकबरा।"
      },
      {
        "name": "Chandrabhaga Temple (चंद्रभागा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/2c/3b/cb/chandrabhaga-temples.jpg?w=1200&h=-1&s=1",
        "description": "Located on banks of Chandrabhaga River; features intricately carved pillars and arched gateways; includes Chandramouleshwar, Lakulish, Harihar and Devi temples. | चंद्रभागा नदी के किनारे, सुंदर नक्काशीदार स्तंभ और मेहराबदार द्वार; चंद्रमौलेश्वर, लाकुलिश, हरिहर और देवी मंदिर शामिल।"
      },
      {
        "name": "Sun Temple (सूर्य मंदिर / पद्मनाभ मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/1c/f6/78/jhalarapatan-sun-temple.jpg?w=900&h=500&s=1",
        "description": "10th-century, 97-ft high temple dedicated to Lord Vishnu; finely carved shikhara, rich columns and arches, old deity tiles. | 10वीं शताब्दी का 97 फीट ऊँचा मंदिर, विष्णु भगवान को समर्पित; नक्काशीदार शिखर, स्तंभ और मेहराब, प्राचीन देवता टाइलें।"
      },
      {
        "name": "Herbal Garden (हर्बल गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY1LATamKV_uPT7pLTbzYvDBpS8lwzcAHD0A&s",
        "description": "Located near Dwarkadheesh Temple; wide variety of medicinal plants maintained by forest department. | द्वारकाधीश मंदिर के पास, विभिन्न औषधीय पौधे, वन विभाग द्वारा संरक्षित।"
      },
      {
        "name": "Dwarkadheesh Temple (द्वारकाधीश मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngCFCJTAYq18ZKn1JYGGwxAZSwxhDKisZwg&s",
        "description": "Built in 1796 AD by Jhala Zalim Singh; idol of Lord Krishna installed in 1806 AD; located on Gomati Sagar Lake. | 1796 ई. में झालाल ज़ालिम सिंह द्वारा निर्मित; 1806 ई. में कृष्ण भगवान की मूर्ति स्थापित; गोमती सागर झील के किनारे।"
      },
      {
        "name": "Chandkheri Adinath Jain Temple, Khanpur (चांदखेड़ी आदिनाथ जैन मंदिर, खानपुर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/5a/73/64/chandkheri-jain-temple.jpg?w=1200&h=-1&s=1",
        "description": "17th-century temple devoted to first Jain Tirthankar Adinath; six-feet tall statue; traditional meals and accommodation available. | 17वीं शताब्दी का मंदिर, आदिनाथ तिर्थंकर को समर्पित; छह फीट ऊँची मूर्ति; पारंपरिक भोजन और आवास।"
      },
      {
        "name": "Nageshwar Parshvnath Jain Temple, Unhel (नागेश्वर पार्श्वनाथ जैन मंदिर, ऊँहल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfb0yTmFALZkvYPBYYd6r82KyHqGNut-DzBw&s",
        "description": "Jain pilgrim center with thousand-year-old statue of Lord Parshvnath; religiously significant. | जैन तीर्थ स्थल, पार्श्वनाथ भगवान की हजार साल पुरानी मूर्ति; धार्मिक महत्व।"
      },
      {
        "name": "Buddhist Caves and Stupas (बौद्ध गुफाएँ और स्तूप)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmV48SfnSInwirmKXbGy5YFIrSITloPpGXIQ&s",
        "description": "Located in Kolvi village, colossal Buddha figure, carved stupas; finest rock-cut Buddhist caves in Rajasthan. | कोलवी गांव में स्थित, विशाल बुद्ध प्रतिमा, नक्काशीदार स्तूप; राजस्थान की बेहतरीन शिला-नक़्क़ाशी बौद्ध गुफाएँ।"
      },
      {
        "name": "Saint Pipaji Panorama (संत पिपाजी पैनोरमा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/1b/8c/85/panorama-jhalawar.jpg?w=900&h=500&s=1",
        "description": "Presentation of historical and spiritual stories of Rajarshi Pipaji, who became saint from king of Gagron. | राजर्षि पिपाजी की ऐतिहासिक और आध्यात्मिक कथाओं का प्रदर्शन।"
      },
      {
        "name": "Shantinath Jain Temple (शान्तिनाथ जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXZt6Xe4mY1azsqPSyohuv5ZewONSzZal-fQ&s",
        "description": "11th-century Jain temple near Sun Temple; 92 ft high, dedicated to Tirthankar Shantinath. | 11वीं शताब्दी का जैन मंदिर, सूर्य मंदिर के पास; 92 फीट ऊँचा, शान्तिनाथ तिर्थंकर को समर्पित।"
      },
      {
        "name": "Naulakha Fort (नौलखा किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqcPzPpUlD3JRtgDNX6qFglvjD4ZrTtpgWGX1cpSa-KwNcESQMTILq9HkC2Bjqseistac&usqp=CAU",
        "description": "Constructed in 1860 AD by King Prithvi Singh; among last forts built in Rajasthan during this period. | 1860 ई. में राजा पृथ्वी सिंह द्वारा निर्मित; इस काल के दौरान राजस्थान के अंतिम किलों में से एक।"
      }
    ],

    "Jhunjhunu (झुंझुनू)": [
      {
        "name": "Sethani Ka Johara (सेठानी का जोहड़ा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/96/bf/e6/sethani-ka-johara.jpg?w=1200&h=1200&s=1",
        "description": "Built in 1899 by widow of Bhagwan Das Bagla as famine relief project; largest reservoir in the area; attracts birds and animals in winter. | 1899 में भगवांदास बगला की विधवा द्वारा अकाल राहत परियोजना के रूप में निर्मित; क्षेत्र का प्रमुख जलाशय; सर्दियों में पक्षियों और जानवरों को आकर्षित करता है।"
      },
      {
        "name": "Kanhaiyalal Bagla Haveli (कन्हैयालाल बगला हवेली)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/e3/47/4b/great-experience-must.jpg?w=1200&h=1200&s=1",
        "description": "Built around 1880; finest lattice work and murals depicting Dhola-Marui folk tales; architectural gem of Shekhawati. | 1880 के आसपास निर्मित; धोल-मारू folk tales के चित्रों और जाली के काम के लिए प्रसिद्ध; Shekhawati का वास्तुशिल्प उत्कृष्ट उदाहरण।"
      },
      {
        "name": "Aath Kambh Chhatri (आठ खंभ चhatri)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/b7/ad/30/chhatri.jpg?w=1200&h=-1&s=1",
        "description": "Constructed in 1776; eight-pillared dome with murals and stone carvings; historical significance in northern town. | 1776 में निर्मित; आठ खंभों वाला गुंबद, भित्ति चित्र और पत्थर की नक्काशी; ऐतिहासिक महत्व।"
      },
      {
        "name": "Ratangarh Fort (रतंगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/de/b1/a4/sethani-ka-johara-sethani.jpg?w=900&h=-1&s=1",
        "description": "Built in early 18th century by Surat Singh; features imposing gateways, clock tower, and nearby ethnic villages. | 18वीं शताब्दी की शुरुआत में सुरत सिंह द्वारा निर्मित; भव्य द्वार, घंटाघर और पास के ग्रामीण इलाके।"
      },
      {
        "name": "Digambar Jain Temple (दिगंबर जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK83OAKt1EWVVDSsoKmStQk1G1T10UoCmR_g&s",
        "description": "150-year-old temple; interiors resemble royal court; gold paintings on moral living; glass works of Rajput era. | 150 वर्ष पुराना मंदिर; अंदरूनी हिस्सा शाही दरबार जैसा; नैतिक शिक्षा पर स्वर्ण चित्र; राजपूत युग की कांच की सजावट।"
      },
      {
        "name": "Tal Chhapar Sanctuary (ताल छापर अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/e1/94/3b/caption.jpg?w=1200&h=-1&s=1",
        "description": "Located in Sujangarh Tehsil; safe haven for blackbucks and birds; savannah-like grasslands. | सुजानगढ़ तहसील में स्थित; ब्लैकबक और पक्षियों का आश्रय; घास के मैदान में सवाना जैसी खूबसूरती।"
      },
      {
        "name": "Laxmangarh Fort (लक्ष्मणगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/de/b5/f7/laxmangarh-fort-laxmangarh.jpg?w=900&h=-1&s=1",
        "description": "Majestic fort on scattered rocks; offers bird's eye view of town; exceptional fort architecture. | विखंडित चट्टानों पर स्थित शानदार किला; शहर का विहंगम दृश्य; उत्कृष्ट किला वास्तुकला।"
      },
      {
        "name": "Mansa Devi Temple (मानसा देवी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQgFpYL7DumWD87XSCwp2a5RcbFoReQJxGKQ&s",
        "description": "Located in Khoh-Guda hills; about 25 km from Udaipurwati; serene temple visited by thousands during Navratras. | खोह-गुड़ा की पहाड़ियों में स्थित; उदयपुरवाटी से 25 किमी; नवरात्रि में हजारों भक्तों द्वारा दौरा।"
      },
      {
        "name": "Raghunathji Mandir (रघुनाथजी मंदिर / बड़ा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLQZKmgiIEDu2o2LRrxt07BIwZm0qic5UBfQ&s",
        "description": "Early 19th century; dedicated to Lord Rama; single storied with cupolas; believed to relieve life’s pains. | 19वीं शताब्दी की शुरुआत; भगवान राम को समर्पित; एक मंजिला, ऊपर कपोलास; जीवन की पीड़ा से मुक्ति दिलाने वाला।"
      },
      {
        "name": "Fatehpur (फतेहपुर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTaq1IdTkScQ7fqRFYZLtmDhQsT-F5NB2x_GDbmYZloTYsF7jG1Mkdtx2_gwhbsqfSVyQ&usqp=CAU",
        "description": "Founded in 1508 AD by Kayamkhani Nawab Fateh Mohd; cultural capital of Shekhawati; famous havelis and temples. | 1508 ई. में कायमखानी नवाब फतेह मोहम्मद द्वारा स्थापित; Shekhawati की सांस्कृतिक राजधानी; प्रसिद्ध हवेलियाँ और मंदिर।"
      },
      {
        "name": "Ramgarh (रामगढ़)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2uDgzM3prSnubzjZ7p2cAswrYVdBKsJXwN14SeWpUQXbKOAHNY6V_OpGclNC2i2Is7VQ&usqp=CAU",
        "description": "Founded in 1791 by Poddar family; known for paintings, old temples, cenotaphs, and havelis; Ramgopal Chhatri popular. | 1791 में पोद्दार परिवार द्वारा स्थापित; चित्रकला, पुराने मंदिर, छतरियाँ और हवेलियों के लिए प्रसिद्ध।"
      },
      {
        "name": "Khetri Mahal (खेतीरी महल / विंड पैलेस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSADfh8Vxk0ToZQmIX_euVJBn2FYVdkTCPGlQ&s",
        "description": "Built in 1770; fine art of Shekhawati; no doors/windows, unique wind stream; interconnected rooms with pillars and arches. | 1770 में निर्मित; Shekhawati की कला; बिना दरवाजे/खिड़कियों, अद्वितीय हवा का प्रवाह; स्तंभ और मेहराब से जुड़े कमरे।"
      },
      {
        "name": "Sunset Point Moda Pahar (सूर्यास्त बिंदु मोड़ा पहाड़)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRze1cZIVtXAGTZiu_sYaO82E9KJBhvoaGkur2tnTIIwkdM9Gjs7PCgkjXZHbFS-n30n2k&usqp=CAU",
        "description": "Popular spot to watch sunset; adjacent to Ajit Sagar Lake; migratory birds frequent the area. | सूर्यास्त देखने का लोकप्रिय स्थान; अजीत सागर झील के पास; प्रवासी पक्षियों का आवास।"
      },
      {
        "name": "Rani Sati Mandir (रानी सती मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/b4/fb/ca/de-plus-pres.jpg?w=1200&h=1200&s=1",
        "description": "Over 400 years old; symbolizes feminine bravery; famous for magnificent paintings; part of ancient pilgrimage. | 400+ साल पुराना; महिला साहस का प्रतीक; शानदार चित्रों के लिए प्रसिद्ध; प्राचीन तीर्थ का हिस्सा।"
      },
      {
        "name": "Hazrat Qamruddin Shah's Dargah (हज़रत कामरुद्दीन शाह का दरगाह)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/14/ec/18/caption.jpg?w=1200&h=-1&s=1",
        "description": "Mosque and madrasa complex with ornate tomb; retains original murals; located west of Khetri Mahal. | मस्जिद और मदरसा परिसर, सजीव दरगाह; मूल भित्ति चित्र अभी भी मौजूद; खेट्री महल के पश्चिम में।"
      },
      {
        "name": "Panchdev Mandir (पंचदेव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShaCy10eL-kvGN-FbOW_dDefhou5s8VyFvmw&s",
        "description": "Famous temple with beautiful architecture, drawings, and evergreen gardens. | सुंदर वास्तुकला, चित्रों और सदाबहार बगीचों वाला प्रसिद्ध मंदिर।"
      },
      {
        "name": "Bande Ka Balaji Temple (बांदे का बालाजी मंदिर)",
        "image": "https://cms.patrika.com/wp-content/uploads/2023/03/30/bandhe_ka_balaji.jpg",
        "description": "Modern Hanuman temple; unique circular face idol of Balaji; surrounded by hills in Jhunjhunu. | आधुनिक हनुमान मंदिर; बालाजी की अनोखी गोलाकार मूर्ति; झुंझुनू में पहाड़ियों से घिरा।"
      },
      {
        "name": "Mandawa (मंडावा)",
        "image": "https://www.jagranimages.com/images/04_07_2019-haweli_mandawa_19369899.jpg",
        "description": "Ancient trade center between Middle East and China; famous for forts, havelis, and fresco paintings; popular tourist destination. | प्राचीन व्यापार केंद्र; किले, हवेलियाँ और भित्ति चित्रों के लिए प्रसिद्ध; लोकप्रिय पर्यटन स्थल।"
      },
      {
        "name": "Dundlod (दुंदलोड़)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/08/bd/6b/inner-courtyard-and-entrance.jpg?w=1200&h=1200&s=1",
        "description": "Famous for fort and havelis; built in 1750 by Keshari Singh; blend of Rajput and Mughal architecture; Marwari horse breed. | किला और हवेलियों के लिए प्रसिद्ध; 1750 में केशरी सिंह द्वारा निर्मित; राजपूत-मुगल वास्तुकला का मिश्रण; मारवाड़ी घोड़े।"
      },
      {
        "name": "Alsisar (अलसिसर)",
        "image": "https://static.wixstatic.com/media/e0ce5d_6fa67bfc0946434b9bea3f90be763653~mv2.jpg/v1/fill/w_1500,h_1001,al_c/e0ce5d_6fa67bfc0946434b9bea3f90be763653~mv2.jpg",
        "description": "Famous for Alsisar Mahal and havelis; Rajput architecture, fresco carvings; renowned hospitality. | अलसिसर महल और हवेलियों के लिए प्रसिद्ध; राजपूत वास्तुकला, भित्ति चित्र; प्रसिद्ध आतिथ्य।"
      },
      {
        "name": "Nawalgarh (नवलगढ़)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/c8/e1/f7/dr-ramnath-a-podar-haveli.jpg?w=500&h=500&s=1",
        "description": "Famous for havelis and frescoes; located between Jhunjhunu and Sikar; Dr. Ramnath A. Poddar Museum here. | हवेलियों और भित्ति चित्रों के लिए प्रसिद्ध; झुंझुनू और सीकर के बीच; डॉ. रामनाथ ए. पोद्दार संग्रहालय।"
      },
      {
        "name": "Jeenmata Temple (जीण माता मंदिर)",
        "image": "https://cms.patrika.com/wp-content/uploads/2018/03/24/jeen_mata_photo.jpg",
        "description": "Around 1000 years old; near Rewasa village; surrounded by thick forest; pilgrimage site for Shekhawati clans. | लगभग 1000 साल पुराना; रेवासा गांव के पास; घने जंगल से घिरा; शेखावाटी कुलों का तीर्थ स्थल।"
      },
      {
        "name": "Khatu Shyam Temple (खाटू श्याम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA6_PbKMo1XtyPTgN6GAxVsnxM41Hp0Hucmg&s",
        "description": "55 km from Sikar; revered Krishna shrine; 10-day fair in Feb/March; devotees start padyatra from Bhairuji Temple. | सीकर से 55 किमी; प्रसिद्ध कृष्ण तीर्थ; फरवरी/मार्च में 10 दिन का मेला; भक्त पैदल यात्रा भैरूजी मंदिर से शुरू।"
      },
      {
        "name": "Harsh Nath Temple (हर्ष नाथ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLZaay58wUTU6pxWQTIWsWIKHG6IjBcmqK5g&s",
        "description": "10th-century Shiva temple ruins on Aravali hills; Navratri and Maha Shivratri attracts thousands. | 10वीं शताब्दी का शिव मंदिर खंडहर, अरावली पहाड़ियों में; नवरात्रि और महा शिवरात्रि में हजारों भक्त आते हैं।"
      },
      {
        "name": "Shakambhari Mata Temple (शाकंभरी माता मंदिर)",
        "image": "https://cms.patrika.com/wp-content/uploads/2023/10/18/shakambari_mata_udaipurwati.jpg",
        "description": "Located in Sakrai village near Udaipurwati; idols of Brahmani and Rudrani; goddess of famine relief; Nath cult priests. | उदयपुरवाटी के पास सकराई गांव में; ब्राह्मणी और रुद्राणी मूर्तियाँ; अकाल राहत की देवी; नाथ संप्रदाय के पुजारी।"
      },
      {
        "name": "Government Museum (सरकारी संग्रहालय)",
        "image": "https://c8.alamy.com/comp/WATWN7/morarka-haveli-nawalgarh-shekhawati-region-rajasthan-india-WATWN7.jpg",
        "description": "Near Bara Talab and Rani Sati Mandir; galleries with antiquities from 3000 B.C.; sculptures from Harshnath Temple. | बड़ा तालाब और रानी सती मंदिर के पास; 3000 ई.पू. की प्राचीन वस्तुएँ; हर्ष नाथ मंदिर की मूर्तियाँ।"
      },
      {
        "name": "Gaj Kesari Haveli (गज केसरी हवेली)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQonTy-wsNfsQK2xn92r0r9IRDeUS4n_uAQdw&s",
        "description": "Located in Ratannagar town; built in 1899; 1500 wall frescoes; architectural styles: Rajput, Shekhawati, Persian, European Neo-Classical; 24-carat gold fittings. | रतननगर शहर में स्थित; 1899 में निर्मित; 1500 भित्ति चित्र; वास्तुकला: राजपूत, शेखावाटी, फारसी, यूरोपीय नव-शास्त्रीय; 24 कैरेट सोने के फिटिंग।"
      }
    ],

    "Jodhpur (जोधपुर)": [
      {
        "name": "Mehrangarh Fort (मेहरानगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/99/ae/7f/images-14-largejpg.jpg?w=700&h=400&s=1",
        "description": "Historic fort built in 1459 by Rao Jodha, rising 125 m above Jodhpur. Known for cannonball marks, latticed windows, and palaces like Moti Mahal, Phool Mahal, Sheesh Mahal. | ऐतिहासिक किला जिसे 1459 में राव जोधा ने बनवाया। 125 मीटर ऊंचा, तोपों के निशान, झरोखे और मोती महल, फूल महल व शीश महल जैसी इमारतें।"
      },
      {
        "name": "Umaid Bhawan Palace (उमैद भवन पैलेस)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/umaid-bhawan-jodhpur-rajasthan-1-attr-hero?qlt=82&ts=1726660866668",
        "description": "Built in 1929 by Maharaja Umaid Singh to counter famine. Designed by British architect HV Lanchester; blend of Indo-Saracenic, Classical Revival, and Art Deco. One of the world’s largest private homes. | 1929 में महाराजा उमेद सिंह द्वारा अकाल राहत हेतु निर्मित; ब्रिटिश आर्किटेक्ट HV Lanchester की डिजाइन। दुनिया के सबसे बड़े निजी महलों में से एक।"
      },
      {
        "name": "Moti Mahal (मोती महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6o6gx2e_LM3NnNyoaalSuynqBHbUqg9-giw&s",
        "description": "Pearl Hall where royals held audience; queens listened from hidden alcoves. | मोती महल, जहां दरबार लगता था; रानियां गुप्त जगह से सभा सुनती थीं।"
      },
      {
        "name": "Sheesh Mahal (शीश महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXvXKJgeFd5whiN_iN_P-DixuOMRUPWSBTHw&s",
        "description": "Glass palace inside Mehrangarh Fort; adorned with mirror work and painted figures. | कांच का महल, दीवारों और छत पर शीशे व धार्मिक चित्रकारी।"
      },
      {
        "name": "Phool Mahal (फूल महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnjYo8V6zTqc0mj7fB8pM8zrP1Teiq4OHzWg&s",
        "description": "Flower Hall, pleasure dome for Maharajas; gold for decoration brought from Ahmedabad. | फूल महल, राजाओं का आनंद कक्ष; सोने का काम अहमदाबाद से लाया गया।"
      },
      {
        "name": "Chamunda Mataji Temple (चामुंडा माताजी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/6e/29/4c/chamunda-mata-temple.jpg?w=1200&h=1200&s=1",
        "description": "Located inside Mehrangarh Fort; deity of Rao Jodha and royal family’s Isht Devi. | मेहरानगढ़ किले में स्थित; राव जोधा की आराध्य देवी और राजपरिवार की इष्ट देवी।"
      },
      {
        "name": "Ranisar and Padamsar Lakes (रणीसर व पद्मसर झीलें)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/e6/44/e7/caption.jpg?w=1200&h=-1&s=1",
        "description": "Twin lakes near Fateh Pole; built in 1459 by queens Jasmade Hadi and Padmini. | 1459 में रानी जस्मादे हाड़ी और पद्मिनी ने बनवायी जुड़वां झीलें।"
      },
      {
        "name": "Sardar Government Museum (सरदार सरकारी संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC91xbcxGkHqpKyZ9n1moyrCOFtZH5hU_npw&s",
        "description": "Located in Umaid Garden; collection of arms, art, textiles, manuscripts, Jain statues. | उमेद गार्डन में स्थित; शस्त्र, कला, पांडुलिपियां और जैन मूर्तियों का संग्रह।"
      },
      {
        "name": "Jaswant Thada (जसवंत थड़ा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/49/39/6c/jaswant-thada.jpg?w=900&h=500&s=1",
        "description": "White marble memorial built in 19th century for Jaswant Singh; managed by Mehrangarh Museum Trust. | सफेद संगमरमर का स्मारक; 19वीं शताब्दी में जसवंत सिंह की याद में निर्मित।"
      },
      {
        "name": "Ghanta Ghar (घंटाघर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/b/b8/Jodhpur_Clock_Tower.jpg",
        "description": "Clock tower built by Maharaja Sardar Singh; adjacent Sardar Market famous for spices and handicrafts. | महाराजा सरदार सिंह द्वारा बनवाया गया घंटाघर; पास का सरदार बाजार मशहूर।"
      },
      {
        "name": "Mahamandir Temple (महामंदिर मंदिर)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/mahamandir-temple-jodhpur-rajasthan-1-attr-hero?qlt=82&ts=1726660881186",
        "description": "Temple with 84 pillars, carvings of yoga postures; built on Mandore road. | 84 खंभों वाला मंदिर; योग मुद्राओं की नक्काशी।"
      },
      {
        "name": "Mandaleshwar Mahadev (मंडलेश्वर महादेव)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/shri-mandaleshwar-mahadev-temple-jodhpur-rajasthan-2-attr-hero?qlt=82&ts=1726660923898",
        "description": "Oldest Shiva temple, built in 923 AD by Mandal Nath; walls painted with Shiva-Parvati images. | 923 ई. में मंडलनाथ द्वारा निर्मित प्राचीन शिव मंदिर।"
      },
      {
        "name": "Sardar Samand Lake & Palace (सरदार समंद झील व महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGkq7uVr7DFp5vvDGxBpfWD24Iw4Ng1MsMgA&s",
        "description": "Built in 1933 as hunting lodge by Umaid Singh; birdwatching paradise with pelicans and pigeons. | 1933 में उमेद सिंह द्वारा शिकारगाह के रूप में निर्मित; प्रवासी पक्षियों का घर।"
      },
      {
        "name": "Masuria Hills (मासूरिया हिल्स)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0q8W7oYCkczvOPoJME8v3SCw90YIpJo3v-A&s",
        "description": "Garden on hilltop with Baba Ramdev temple; offers panoramic city views. | पहाड़ी पर उद्यान; बाबा रामदेव मंदिर और शहर का विहंगम दृश्य।"
      },
      {
        "name": "Shastri Circle (शास्त्री सर्कल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs0VrsmNTaV8eHnak-lTX_8yomnjSBDYgbgA&s",
        "description": "Traffic roundabout; illuminated at night with fountains and lights. | ट्रैफिक राउंडअबाउट; रात में रोशनी और फव्वारों से जगमगाता।"
      },
      {
        "name": "Mandore (मंडोर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxW0DEQ6MdYrS_PApDeF5JtxHQxeCnmCRb5A&s",
        "description": "Ancient capital of Marwar; cenotaphs of rulers, temples, museum, light & sound show. | मारवाड़ की प्राचीन राजधानी; शासकों की छतरियां, मंदिर, संग्रहालय और शो।"
      },
      {
        "name": "Kailana Lake (कैलाना झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmeZkpJNuAZZfva0JChkPHWvOzsbD-DEC0Uw&s",
        "description": "Artificial lake on Jaisalmer road; ideal picnic and boating spot. | जैसलमेर रोड पर कृत्रिम झील; पिकनिक व नौकायन स्थल।"
      },
      {
        "name": "Machiya Biological Park (माचिया जैविक उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/37/6f/a3/entrance.jpg?w=1200&h=-1&s=1",
        "description": "Zoo and birdwatching spot near Kailana Lake; home to deer, foxes, wild cats. | कैलाना झील के पास जैविक उद्यान; हिरण, लोमड़ी व जंगली जानवर।"
      },
      {
        "name": "Balsamand Lake (बालसमंद झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoc0TizgkWy1Iy2RuTjNfuQ2o3UhQ4QezUdg&s",
        "description": "Built in 1159 AD as reservoir; later summer palace; lush orchards and gardens. | 1159 ई. में जलाशय के रूप में निर्मित; बाद में ग्रीष्मकालीन महल।"
      },
      {
        "name": "Guda Bishnoi Village (गुड़ा बिश्नोई गाँव)",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/09/24/b2/bf.jpg",
        "description": "Village of Bishnoi community; habitat for blackbucks, antelopes, and migratory birds. | बिश्नोई समुदाय का गाँव; काले हिरण और प्रवासी पक्षियों का घर।"
      },
      {
        "name": "Chokhelao Bagh (चोखेलाओ बाग़)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/chokhelao-bagh-jodhpur-rajasthan-2-attr-hero?qlt=82&ts=1726660783247",
        "description": "18th-century garden at foot of Mehrangarh; restored with native Marwar flora. | 18वीं शताब्दी का बाग; मेहरानगढ़ किले के नीचे।"
      },
      {
        "name": "Salawas Village (सलावास गाँव)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/cf/6b/82/photo-from-outside-our.jpg?w=1200&h=-1&s=1",
        "description": "22 km from Jodhpur; famous for hand-woven carpets, pottery, and rural lifestyle. | हस्तनिर्मित कालीन, मिट्टी के बर्तन और ग्रामीण जीवनशैली के लिए प्रसिद्ध।"
      },
      {
        "name": "Osiyan Village (ओसियां गाँव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-KQB2xAJjARL3EVax7N4KClvxs6ONiLodCA&s",
        "description": "65 km from Jodhpur; ancient temples from 8th-11th century; Sachchiya Mata & Jain temples; camel safari. | 8वीं-11वीं सदी के प्राचीन मंदिर; सच्चीया माता व जैन मंदिर; ऊंट सफारी।"
      },
      {
        "name": "Khejrli Village (खेजड़ली गाँव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREROJJHVvsVW3hqPcQhwr1N2z60v07hxVMjQ&s",
        "description": "Bishnoi village, site of 1730 AD sacrifice where 363 people died protecting Khejri trees. | 1730 में 363 लोगों ने खेजड़ी वृक्षों की रक्षा हेतु बलिदान दिया।"
      }
    ],

    "Karauli (करौली)": [
      {
        "name": "Kaila Devi Temple (कैला देवी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/7b/dd/8e/kaila-devi-mandir.jpg?w=900&h=500&s=1",
        "description": "Situated 25 km from Karauli on the banks of Kalisil River in Trikut hills. Built in 1100 AD, one of the nine Shakti Peethas. Hosts a grand annual fair. | करौली से 25 किमी दूर त्रिकूट पर्वत की घाटियों में स्थित, 1100 ई. में निर्मित शाक्त पीठ। हर साल विशाल मेला लगता है।"
      },
      {
        "name": "Madan Mohan Ji Temple (मदन मोहन जी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/1c/b0/e6/madan-mohanji-temple.jpg?w=1200&h=1200&s=1",
        "description": "Dedicated to Lord Krishna, considered auspicious by Karauli kings. Famous for intricately carved idols of Krishna and Radha, built with Karauli stone. | भगवान कृष्ण का मंदिर, करौली राजाओं द्वारा शुभ माना गया। कृष्ण-राधा की सुंदर मूर्तियां।"
      },
      {
        "name": "Shri Mahavir Ji Temple (श्री महावीर जी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/4f/6d/73/mahaveerji-temple-and.jpg?w=1200&h=1200&s=1",
        "description": "19th-century Jain temple, major pilgrimage site. Hosts annual fair on Mahavir Jayanti. | जैन समुदाय का प्रसिद्ध तीर्थ, महावीर जयंती पर विशाल मेला।"
      },
      {
        "name": "Gomtidhām (गोमतीधाम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWM4zFMI-3O_69zN3YeBu2j5gqsIprCJFrYQ&s",
        "description": "Ashram of Sant Gomti Das Ji near Sagar Talab and Timangarh Fort amidst forest. Known for peace and tranquility. | संत गोमती दास जी का आश्रम, शांत वातावरण व प्राकृतिक सौंदर्य।"
      },
      {
        "name": "Bhanwar Vilas Palace (भंवर विलास पैलेस)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/40/3d/64/bhanwar-vilas-palace.jpg?w=900&h=500&s=1",
        "description": "Built in 1938 by Maharaja Ganesh Pal Deo Bahadur. Now a heritage hotel with colonial architecture and antique interiors. | 1938 में बना शाही निवास, अब हेरिटेज होटल।"
      },
      {
        "name": "Kaila Devi Sanctuary (कैला देवी अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPL05aQYdutCMfjLurCXQNsvsJVP8fOIzN4Q&s",
        "description": "Dense forest reserve adjoining Kaila Devi Temple, extending till Ranthambore. Home to chinkaras, nilgai, jackals, leopards and rare birds. | कैलादेवी मंदिर से लगा जंगल, रणथंभौर तक फैला।"
      },
      {
        "name": "City Palace (सिटी पैलेस)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/2e/d9/7b/karauli-city-palace.jpg?w=1400&h=1400&s=1",
        "description": "14th-century palace originally by Arjun Pal, later expanded in 18th century by Raja Gopal Singh. Known for stone carvings, frescoes and royal view. | 14वीं सदी का भव्य महल, शानदार नक्काशी व झरोखे।"
      },
      {
        "name": "Chhatri of Raja Gopal Singh (राजा गोपाल सिंह की छतरी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/2e/d8/25/karauli-city-palace.jpg?w=900&h=500&s=1",
        "description": "Beautiful cenotaph with fresco paintings near Nadi Gate. Dayanand Saraswati once gave a speech here. | सुंदर चित्रकारी से सजी छतरी, आर्य समाज के प्रवर्तक स्वामी दयानंद भी आए।"
      },
      {
        "name": "Timangarh Fort (टिमनगढ़ किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/8e/ac/65/timangarh-fort.jpg?w=1200&h=1200&s=1",
        "description": "Built in 1100 AD, rebuilt by King Timanpal. Known for ancient idols and Ashtadhatu artifacts. | 1100 ई. का किला, प्राचीन अष्टधातु मूर्तियों का खजाना।"
      },
      {
        "name": "Devgiri Fort & Utgir (देवगिरि किला व उतगीर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFQWqiPKwazEC2OkVPI8Dj2exaESVz0n7tiQ&s",
        "description": "Utgir built by Lodha warriors, Devgiri near Chambal ravines. Later used by Karauli rulers as garrison forts. | प्राचीन किले, करौली शासकों द्वारा रक्षा हेतु उपयोग।"
      },
      {
        "name": "Mandrayal (मंडरायल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLXMyOFTSwkvXyOW8ybF_eOcL0W0CklM9Eog&s",
        "description": "Town 40 km from Karauli, captured in 1327 AD by Raja Arjun Dev. Later a garrison fort. | 1327 में अर्जुन देव द्वारा जीता गया, बाद में गढ़ी के रूप में उपयोग।"
      },
      {
        "name": "Gadhmora (गढ़मोरा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCKha6n3LyP8YxofJSprwGRcdKGGPrh2l0tQ&s",
        "description": "Ancient village believed to exist since Krishna’s era. Hosts annual fair at sacred Kund during Sankranti. | भगवान कृष्ण काल का प्राचीन गांव, पवित्र कुंड व मेला।"
      },
      {
        "name": "Gufa Temple (गुफा मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/12/6f/e9/jai-mata-di-jai-baba.jpg?w=500&h=-1&s=1",
        "description": "Cave temple in dense Ranthambore forest, believed original Kaila Devi shrine. Devotees walk 8-10 km to reach. | रणथंभौर के जंगलों में गुफा मंदिर, कैलादेवी का प्राचीन स्थल।"
      },
      {
        "name": "Madan Mohan Ji Temple (मदन मोहन जी मंदिर - भद्रावती)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/1c/b0/e6/madan-mohanji-temple.jpg?w=1200&h=1200&s=1",
        "description": "Situated on Bhadravati River bank. Temple timings 5 AM–10 PM. Accessible via Gangapur or Mahaveerji. | भद्रावती नदी किनारे मंदिर, भक्तों के लिए दिनभर खुला।"
      },
      {
        "name": "Shri Mahaveer Ji Jain Temple (श्री महावीर जी जैन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/4f/6d/73/mahaveerji-temple-and.jpg?w=1200&h=1200&s=1",
        "description": "Major Jain pilgrimage in Karauli, accessible via Shri Mahaveerji railway station. Hosts grand Mahaveer Jayanti fair. | जैन समाज का प्रमुख तीर्थ, महावीर जयंती पर लाखों श्रद्धालु आते हैं।"
      }
    ],

    "Kota (कोटा)": [
      {
        "name": "Garh Palace (गढ़ पैलेस)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/View_of_the_palace_with_hathi_pole.jpg/500px-View_of_the_palace_with_hathi_pole.jpg",
        "description": "The foremost tourist attraction in Kota, also known as City Palace, built in Rajput style with multiple suites and apartments by different rulers. | कोटा का प्रमुख आकर्षण गढ़ पैलेस, राजपूत शैली में निर्मित विशाल महल।"
      },
      {
        "name": "Rao Madho Singh Museum (राव माधो सिंह संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY_ut3BLMrkHLcnUtAh6vthBoazhLL1gY5pQ&s",
        "description": "Located inside Garh Palace, the museum has Rajput miniature paintings, sculptures, arms and antiques. | गढ़ पैलेस के अंदर स्थित यह संग्रहालय राजपूत लघुचित्रों, मूर्तियों और प्राचीन वस्तुओं के लिए प्रसिद्ध है।"
      },
      {
        "name": "Abheda Mahal & Abheda Biological Park (अभेड़ा महल और अभेड़ा जैविक उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/15/33/3d/caption.jpg?w=900&h=500&s=1",
        "description": "Medieval palace and eco-friendly biological park, popular for natural beauty and wildlife. | मध्यकालीन महल और जैविक उद्यान, प्राकृतिक सौंदर्य और वन्यजीव के लिए प्रसिद्ध।"
      },
      {
        "name": "Dad Devi Temple (दाद देवी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXqrcVhCF9nEFMSJ0GoltFT0Gvkr0ctntdO6NZkuliJmivtJRE4KK0Kjz4p4ab3myu0Cg&usqp=CAU",
        "description": "Temple dedicated to Shri Dad Devi Mata Ji, surrounded by forests, 18 km from Kota. | कोटा से 18 किमी दूर वन क्षेत्र में स्थित दाद देवी माता जी का मंदिर।"
      },
      {
        "name": "Charan Chauki (चरण चौकी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQli_TqF0bGqmIEnQh_7r07CdurDDrVqGKOng&s",
        "description": "Marks the spot where Lord Krishna is believed to have rested while travelling to Dwarka. | पौराणिक स्थल जहां भगवान श्रीकृष्ण ने द्वारका जाते समय विश्राम किया था।"
      },
      {
        "name": "Kishore Sagar Jagmandir (किशोर सागर जगमंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhe9WmfrP7WHyAn_JVf3MlcKueZGhdCgkSBA&s",
        "description": "Jagmandir Palace built in red sandstone between 1743-1745, situated in middle of Kishore Sagar Lake. | किशोर सागर झील के बीच लाल बलुआ पत्थर से बना जगमंदिर महल।"
      },
      {
        "name": "Garden of Joy (City Park) (गार्डन ऑफ जॉय - सिटी पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzT11YNErDE51NFeIEyd6E4_Pa-dtlzsHBAA&s",
        "description": "30-hectare city park with canal, food zone, amphitheater, kids zone, open gym and boating. | 30 हेक्टेयर में फैला पार्क जिसमें नहर, एम्फीथिएटर, किड्स जोन और नौकायन की सुविधा।"
      },
      {
        "name": "Chambal River Front (चंबल रिवर फ्रंट)",
        "image": "https://feeds.abplive.com/onecms/images/uploaded-images/2023/07/28/3c9fa7aa0b639352ed7424c8f15d16bb1690522007996658_original.jpg",
        "description": "India’s first heritage riverfront with 26 ghats, world heritage replicas, LED garden and fountain shows. | भारत का पहला हेरिटेज रिवर फ्रंट, 26 घाट, विश्व धरोहर प्रतिकृतियां और एलईडी गार्डन।"
      },
      {
        "name": "Chambal Garden (चंबल गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqJyqDrrcOXV3BH18x0iEuo0kv-Mn48T-6lQ&s",
        "description": "Picnic spot on banks of Chambal River, known for boat rides and gharial sanctuary. | चंबल नदी किनारे स्थित सुंदर पिकनिक स्थल, नाव विहार और घड़ियाल अभयारण्य के लिए प्रसिद्ध।"
      },
      {
        "name": "Seven Wonder Park (सेवन वंडर पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJhuPp06iQdrnXR2iYxSH8w95kjLVH13_PFQ&s",
        "description": "Park with replicas of all Seven Wonders of the World near Kishore Sagar Lake. | किशोर सागर झील किनारे विश्व के सात अजूबों की प्रतिकृतियां वाला पार्क।"
      },
      {
        "name": "Khade Ganesh Ji Temple (खड़े गणेश जी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0hveMNy04Kyw-Nu7eGoxzajectks8c0G71w&s",
        "description": "Unique temple with standing idol of Lord Ganesha, only one of its kind in India. | भारत का एकमात्र मंदिर जहां खड़े हुए गणेश जी की प्रतिमा है।"
      },
      {
        "name": "Karneshwar Temple (कर्णेश्वर मंदिर)",
        "image": "https://media1.thrillophilia.com/filestore/u1vk2aqv05m6xzt5k49dehjfv8ca_1581163729_Jagmandir_palace.jpg",
        "description": "Shiva temple on Jhalawar Road, especially beautiful during monsoon. | झालावाड़ रोड पर स्थित शिव मंदिर, विशेषकर वर्षा ऋतु में अत्यंत मनमोहक।"
      },
      {
        "name": "Godawari Dham (गोदावरी धाम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/5a/ce/03/temple-premises.jpg?w=1200&h=-1&s=1",
        "description": "Hanuman temple beside Chambal River, built in white marble with tall towers. | चंबल नदी किनारे सफेद संगमरमर से निर्मित हनुमान मंदिर।"
      },
      {
        "name": "Alnia Dam (अल्निया बांध)",
        "image": "https://cdnbbsr.s3waas.gov.in/s3ec0252edc4a5890adc59cec82cb60f8a/uploads/bfi_thumb/2023050716-qmkeccsghimhvbd7xyw172l1jyxblhhcnhdrjzufog.jpg",
        "description": "Known for beautiful Paleolithic rock paintings along the riverbank. | प्रागैतिहासिक काल की चट्टानी चित्रकारी के लिए प्रसिद्ध बांध।"
      },
      {
        "name": "Mukundara Hills Tiger Reserve (मुखुंदरा हिल्स टाइगर रिजर्व)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0OotmcUuJJ5iDV-gESEUyjrnJpd_Ahgly3Q&s",
        "description": "Tiger reserve spread across 417 sq km core area, home to tigers, panthers, deer and birds. | 417 वर्ग किमी में फैला बाघ अभयारण्य, जहां बाघ, तेंदुए, हिरण और पक्षी पाए जाते हैं।"
      },
      {
        "name": "Garadia Mahadev (गरड़िया महादेव)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/9b/67/59/grand-view-of-garadiya.jpg?w=1200&h=-1&s=1",
        "description": "Temple on NH-76 offering breathtaking views of River Chambal and valley. | एनएच-76 पर स्थित महादेव मंदिर से चंबल नदी और घाटी का अद्भुत दृश्य।"
      },
      {
        "name": "Kansua Temple (कंसुआ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMMQOnu6Cc9Er5eGW-6r6HbhyedtRTNTsXkQ&s",
        "description": "Ancient Shiva temple with inscription of 738 AD, believed to be built by Pandavas. | प्राचीन शिव मंदिर, जिसका निर्माण पांडवों द्वारा किया गया माना जाता है।"
      },
      {
        "name": "Mathuradheesh Mandir (मथुराधीश मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/00/7f/42/front.jpg?w=1200&h=1200&s=1",
        "description": "Vaishnav temple of Pushti Marg dedicated to Lord Krishna, festivals celebrated with enthusiasm. | पुष्टिमार्ग का वैष्णव मंदिर, भगवान कृष्ण को समर्पित।"
      },
      {
        "name": "Gaiparnath Temple (गैपारनाथ मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/18/c2/db/95/gaiparnath-temple-gaipar.jpg",
        "description": "Shiva temple in a gorge with scenic waterfall and Chambal valley views. | सुंदर झरने और चंबल घाटी के दृश्य वाला शिव मंदिर।"
      },
      {
        "name": "Brajvilas Museum (Government Museum Kota) (ब्रह्विलास संग्रहालय - कोटा सरकारी संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/2f/f7/90/entry-gate.jpg?w=900&h=-1&s=1",
        "description": "Museum inside Brij Vilas Palace with collection of statues, manuscripts, coins and artefacts. | ब्रज विलास पैलेस में स्थित संग्रहालय, जहां मूर्तियां, पांडुलिपियां और शिल्पकृतियां प्रदर्शित हैं।"
      },
      {
        "name": "Kishore Sagar Lake (किशोर सागर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVads1LHS-C3DtBQE4XhjGinIG9Y_6awizbQ&s",
        "description": "Historic lake with Jagmandir in the middle, offering boat rides and city views. | ऐतिहासिक झील जिसके बीच स्थित जगमंदिर से नौका विहार और शहर का सुंदर दृश्य।"
      }
    ],

    "Nagaur (नागौर)": [
      {
        "name": "Light & Sound Show at Meera Bai, Merta (मीरा बाई, मेड़ता का लाइट एंड साउंड शो)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Meera_Smarak.jpg/250px-Meera_Smarak.jpg",
        "description": "Traditional light & sound show depicting the life of Bhakt Shiromani Meera Bai with LED lights, gobo lights and 5.1 surround sound. | भक्त शिरोमणि मीरा बाई के जीवन पर आधारित अद्भुत लाइट एंड साउंड शो।"
      },
      {
        "name": "Nagaur Fort (नागौर किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/97/28/0d/inside-nagaur-fort.jpg?w=1200&h=700&s=1",
        "description": "Built by Nag dynasty rulers in 2nd century, rebuilt in 12th century. A Rajput-Mughal architecture marvel, now renovated with gardens and fountains, hosts Sufi music festival. | नागवंश शासकों द्वारा निर्मित, 12वीं सदी में पुनर्निर्मित किला। राजपूत-मुगल स्थापत्य का अद्भुत उदाहरण।"
      },
      {
        "name": "Ladnun (लाडनूं)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/bf/10/ab/ladnun-is-an-important.jpg?w=1000&h=1000&s=1",
        "description": "Centre of Jainism and spirituality, home to Jain Vishva Bharati University, ancient temples and birthplace of saint Acharya Shri Tulsi. | जैन धर्म और अहिंसा का प्रमुख केंद्र, आचार्य श्री तुलसी की जन्मभूमि।"
      },
      {
        "name": "Khimsar Fort (खिमसर किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/f6/5a/1e/pool-side.jpg?w=300&h=-1&s=1",
        "description": "Built in 1523, located on the edge of Thar desert. Once visited by Aurangzeb, now a heritage hotel with black buck roaming nearby. | 1523 में निर्मित किला, अब हेरिटेज होटल, पास में काले हिरण।"
      },
      {
        "name": "Kuchaman City (कुचामन शहर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaPTMIjpNdzuKo6dI3_zRep16c1QrVD7jlExlrXxAP96ta7YG0RKXoWLgPpKjxa3D_LFY&usqp=CAU",
        "description": "Famous for Kuchaman Fort, old havelis, temples, stepwells, and salt lake. Fort has unique water harvesting system and minted coins for Jodhpur rulers. | कुचामन किला, हवेलियां, बावड़ियां और नमक झील का प्रसिद्ध नगर।"
      },
      {
        "name": "Kuchaman Fort (कुचामन किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPm9SivosiBg-k2ReZ_2Tk9rEW5Kw7DqQUJmOuPI-M-Sdu1BMJ8c2IADkn3yjr1E9YMXk&usqp=CAU",
        "description": "9th-century fort atop 300m cliff, surrounded by 32 bastions and 10 gates. Known for miniature paintings, inlay work, and Bollywood film shootings. | 9वीं सदी का विशाल किला, सुंदर नक्काशी और फिल्म शूटिंग स्थल।"
      },
      {
        "name": "Ahhichatragarh Fort & Museum (अहिछत्रगढ़ किला व संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3OSMCCCGOdKmfmJ3KP4XZ6LpCEqOwCRhGwehSJSdu5_c83aDoygseSS2VGUvvJ7S2OeU&usqp=CAU",
        "description": "Known as 'Fort of the Hooded Cobra', spread over 36 acres. Won UNESCO Asia-Pacific Heritage Award 2002, hosts World Sacred Spirit Festival. | 36 एकड़ में फैला प्राचीन किला, यूनेस्को पुरस्कृत धरोहर।"
      },
      {
        "name": "Pashupati Nath Temple (पशुपति नाथ मंदिर)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/10667_ACH_0b052cfc-7d2a-4516-a1cd-75b34120d7e5.jpeg",
        "description": "Built in 1982 at Manjhwas village, dedicated to Lord Shiva. Similar to Nepal’s Pashupatinath temple, houses an Ashtadhatu Shivalinga. | 1982 में निर्मित शिव मंदिर, नेपाल के पशुपतिनाथ जैसा।"
      },
      {
        "name": "Jhorda (झोर्डा)",
        "image": "https://aapkarajasthan.com/static/c1e/client/91529/uploaded/39e98ab072f0461c5297720c5debc409.webp?width=968&height=500&resizemode=4",
        "description": "Birthplace of poet Kandan Kalpit and saint Baba Hariram. Hosts big annual fair visited by lakhs of devotees. | कवि कंदन कल्पित व संत बाबा हरिराम की जन्मभूमि, वार्षिक मेला प्रसिद्ध।"
      },
      {
        "name": "Bade Peer Saheb Dargah (बड़े पीर साहब दरगाह)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/17/cd/8d/3b/being-a-celebrated-shrine.jpg",
        "description": "Famous shrine turned museum in 2008. Displays Quran written in golden ink, old coins and relics of Hazrat Syed Saifuddin Abdul Jilani. | प्रसिद्ध दरगाह, संग्रहालय में प्राचीन कुरान व ऐतिहासिक वस्तुएं।"
      }
    ],

    "Pali (पाली)": [
      {
        "name": "Ranakpur Jain Temples (राणकपुर जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWlMwv4S6hSVK3imiauw_qrjUdgasc8owYYQ&s",
        "description": "15th-century temple complex dedicated to Adinath, supported by Rana Kumbha. Built in a valley of the Aravalli mountains, known for its stunning marble architecture. | 15वीं सदी का जैन मंदिर परिसर, अदिनाथ को समर्पित, अरावली की घाटियों में स्थित।"
      },
      {
        "name": "Jawai Dam (जवाई बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/9a/cb/5e/view-from-the-shore.jpg?w=1200&h=-1&s=1",
        "description": "Built by Maharaja Umaid Singh across a Luni tributary. Largest dam in western Rajasthan, home to crocodiles, leopards and migratory birds. | पश्चिमी राजस्थान का सबसे बड़ा बांध, मगरमच्छ, तेंदुए और प्रवासी पक्षियों का आश्रय।"
      },
      {
        "name": "Parshuram Mahadev Temple (परशुराम महादेव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLL8qc-9i4Ws4Bbf3wJHjmRdPxzAUoCwK0JQ&s",
        "description": "Cave temple 3990 feet above sea level. Believed to be created by Lord Parshuram’s axe, houses natural idols of Shiva and Ganesha. | परशुराम द्वारा निर्मित गुफा मंदिर, प्राकृतिक गणेश और शिव की मूर्तियां।"
      },
      {
        "name": "Nimbo Ka Nath Temple (निंबो का नाथ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0r7aAPVr2OK0l9g7iZyxZRYLLBLUTnR_hXQ&s",
        "description": "On Falna-Sanderav route, dedicated to Lord Shiva. Believed Kunti worshipped here during Pandavas’ exile. Hosts Navdurga and annual fairs. | फालना-सांडेरव मार्ग पर शिव मंदिर, कुंती द्वारा पूजा स्थल।"
      },
      {
        "name": "Sun Temple, Ranakpur (सूर्य मंदिर, राणकपुर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/f1/48/8c/surya-narayan-temple.jpg?w=1200&h=-1&s=1",
        "description": "Originally built in 13th century, rebuilt in 15th century with white limestone in Nagara style. Dedicated to Surya Narayan, features intricate carvings. | नागर शैली में निर्मित प्राचीन सूर्य मंदिर, शानदार नक्काशी।"
      },
      {
        "name": "Ranakpur Dam (राणकपुर बांध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJl8aSwJCJMEEPz5S2nJHAQLcyKOKiXkqykA&s",
        "description": "Located near Ranakpur Jain Temple. Surrounded by greenery and hills, perfect spot for sunrise and sunset views. | राणकपुर जैन मंदिर के पास स्थित बांध, प्राकृतिक सौंदर्य और सूर्योदय-सूर्यास्त का अद्भुत दृश्य।"
      },
      {
        "name": "Om Banna Dham (ओम बन्ना धाम / बुलेट बाबा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEncGt5ekUwBh1iTgN-6d2tLERvCuw_hRrKw&s",
        "description": "Shrine dedicated to Om Banna, known as Bullet Baba, on Pali-Jodhpur highway. Features his Royal Enfield bike worshipped by devotees. | ओम बन्ना की याद में बना अनोखा मंदिर, भक्त सुरक्षित यात्रा की कामना करते हैं।"
      },
      {
        "name": "Samand Lake (सरदार समंद झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY3ahd644qcABp5jQjZs8XlV2kekxNK9QIy16EuCchKqmX1vOVxctQ_WdEy6yh86pCIjQ&usqp=CAU",
        "description": "Built in 1933 by Maharaja Umaid Singh. Famous for bird watching (pelicans, pigeons, Himalayan griffon) and wildlife sightings of Chinkara, Nilgai, Blackbuck. | पक्षी प्रेमियों और वन्यजीव प्रेमियों का स्वर्ग, 1933 में निर्मित झील।"
      }
    ],

    "Pratapgarh (प्रतापगढ़)": [
      {
        "name": "Jakham Dam (जाखम बांध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn1vcrb_LVIlTfIUf_pz-gXEwvP5pkPyWqA3Qy6cbjKVcniRi8GYrbyNDKRFoTSZnGMJs&usqp=CAU",
        "description": "Built in 1986 on river Jakham (tributary of Mahi) near Anuppura village. Provides irrigation and drinking water, surrounded by lush green forests. | 1986 में जाखम नदी पर बना बांध, सिंचाई और पेयजल का स्रोत, हरियाली से घिरा पर्यटक स्थल।"
      },
      {
        "name": "Sitamata Wildlife Sanctuary (सीतामाता अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGtzRpiG--bzhTZezAQgNosOr0sf1PCzgQFA&s",
        "description": "Spread over 423 sq km, declared protected in 1979. Only forest with large teak population. Home to leopard, deer, hyena, flying squirrel. Linked to Sita’s exile story. | 423 वर्ग किमी में फैला संरक्षित क्षेत्र, सीता माता से जुड़ी पौराणिक मान्यताओं वाला वन्यजीव अभयारण्य।"
      },
      {
        "name": "Devgadh (Devaliya) (देवगढ़ / देवलिया)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEyOOK6E8rGqQC5tUqwuVdYf6X9TyXN7mUgw&s",
        "description": "Former capital of Pratapgarh, situated 13 km away. Famous for Tejasagar pond, cenotaphs, solar clock, and many temples (Raghunath, Hari, Beej Mata). | प्रतापगढ़ की प्राचीन राजधानी, तालाबों और ऐतिहासिक मंदिरों से समृद्ध।"
      },
      {
        "name": "Dhariyawad Fort (धारियावाद किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNNAhWTN0Md_hX5NV9685xvgcwhtad1H5vfMi5sOg0Pl0QCWnVn6P-Fd4xNMC1SZQAp8E&usqp=CAU",
        "description": "Founded in 16th century by Sahasmal, son of Maharana Pratap. Located at confluence of Jakham & Karmoi rivers. Now a heritage hotel. | महाराणा प्रताप के पुत्र साहसमल द्वारा निर्मित किला, अब हेरिटेज होटल।"
      },
      {
        "name": "Deepnath Mahadev Temple (दीपनाथ महादेव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRii2MtWMpEfPHcHCc1bUBq6if5tP1WK0rgy3HsUyn-8seCiI8sFDjBBW2XZ6GuegbBnHs&usqp=CAU",
        "description": "Built by Prince Deep Singh, located in southern hills of Pratapgarh. Hosts fairs on Mahashivratri, Shravan Mondays, and Hariyali Amavasya. | गहरे पहाड़ों में स्थित शिव मंदिर, धार्मिक मेलों के लिए प्रसिद्ध।"
      },
      {
        "name": "Gautmeshwar Mahadev (गौतमेश्वर महादेव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL5CT35A0BPrEET5ZjHixBzgI5v9aVF7qGHARkrnLpzIm1X5AjiXInESS3LnkGtO6JQEo&usqp=CAU",
        "description": "Located 3 km from Arnod. Known as Haridwar of local tribes. Dedicated to Shiva, with Mandakini Kund for holy dips. Surrounded by waterfalls and forests. | आदिवासी समाज का हरिद्वार कहलाने वाला शिव मंदिर, मानसून में बेहद आकर्षक।"
      },
      {
        "name": "Thewa Art (ठेवा कला)",
        "image": "https://thewastore.com/cdn/shop/collections/Image_1_18a9068c-3dd0-4aef-82f6-cbc571e7b6c4.jpg?v=1676927734",
        "description": "Traditional jewellery art of Pratapgarh since Mughal era. Involves embossing 23K gold on multicolored glass, handcrafted by artisans. | प्रतापगढ़ की पारंपरिक ठेवा कला, सोने और कांच पर बारीक नक्काशी।"
      },
      {
        "name": "Bhanwarmata Temple (भँवर माता मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLmiR53I3IfFw3vTqGB2QtRQ695MJ50QfC3Q&s",
        "description": "Ancient temple built in 491 AD by King Gauri near Chhotisadri. Surrounded by forest, with a seasonal waterfall. Fair held on Hariyali Amavasya. | 491 ई. में निर्मित प्राचीन मंदिर, हरीयाली अमावस्या पर मेला आयोजित होता है।"
      }
    ],

    "Rajsamand (राजसमंद)": [
      {
        "name": "Kumbhalgarh Fort (कुंभलगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwbmCBWAcWKo6lf527xhx7S4EdBl7J_rNxyfcpUitbL9XeBzBZqUY-Ve0n7ZsslVdppG0&usqp=CAU",
        "description": "15th century fort built by Rana Kumbha, birthplace of Maharana Pratap. Famous for its 36 km long massive wall and Badal Mahal. | 15वीं सदी में राणा कुंभा द्वारा निर्मित किला, महाराणा प्रताप का जन्मस्थान। 36 किमी लंबी दीवार और बादल महल के लिए प्रसिद्ध।"
      },
      {
        "name": "Golerao Jain Temple (गोलेराव जैन मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1b/03/32/7b/golerao-jain-temple-the.jpg",
        "description": "Located inside Kumbhalgarh Fort, group of nine Jain temples adorned with intricate sculptures. | कुंभलगढ़ किले में स्थित नौ जैन मंदिरों का समूह, सुंदर नक्काशी से सुसज्जित।"
      },
      {
        "name": "Neelkanth Mahadev Temple (नीलकंठ महादेव मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/7b/b0/33/neelkanth-mahadev-templekumbha.jpg?w=1200&h=-1&s=1",
        "description": "Built in 1458 AD, a unique Sarvatobhadra style Shiva temple with 6 ft stone Shivling. Hosts light & sound show. | 1458 में बना अद्वितीय शिव मंदिर, चारों दिशाओं से प्रवेश द्वार और 6 फीट ऊँचा शिवलिंग।"
      },
      {
        "name": "Kumbhalgarh Wildlife Sanctuary (कुंभलगढ़ वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo8JF0KGhDnZoT3AUenBVuzuz9rFSgtIUOvw&s",
        "description": "Spread across Aravali hills, home to leopards, wolves, sloth bears, jungle cats, and rich flora. | अरावली की पहाड़ियों में फैला अभयारण्य, कई दुर्लभ जीव-जंतुओं का निवास।"
      },
      {
        "name": "Rajsamand Lake (राजसमंद झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG7RODBhjY2Yx9QRk-5DcPOm6PxnTyyjygMg&s",
        "description": "Constructed between 1662–1676 by Maharana Raj Singh I on Gomati, Kelwa & Tali rivers. Used as a WWII seaplane base. | महाराणा राज सिंह प्रथम द्वारा निर्मित झील, द्वितीय विश्व युद्ध में सीप्लेन बेस के रूप में उपयोग।"
      },
      {
        "name": "Nauchowki (नौचौकी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc91-Kba59YIwlNXK0Q8r1LkgzlZJ3LP-Xmg&s",
        "description": "White stone embankment with ghats, based on number nine philosophy. | नौ ग्रहों की अवधारणा पर आधारित विशाल घाट और संगमरमर का बांध।"
      },
      {
        "name": "Dwarikadheesh Ji Temple (द्वारिकाधीश जी मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Dwarkadhish_Temple_Gate_Kankroli.pdf/page1-800px-Dwarkadhish_Temple_Gate_Kankroli.pdf.jpg",
        "description": "Located at Kankroli, third peeth of Vaishnav religion (Pushtimarg). Idol installed in 1726 VS. | कांकरोली स्थित प्रसिद्ध द्वारिकाधीश मंदिर, वैष्णव पंथ का तीसरा पीठ।"
      },
      {
        "name": "Anuvrata Vishwa Bharati (अनुव्रत विश्व भारती)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiz8fvpsq8Y8Nw6tPpTtRAoOQ3S1aZyaTU2w&s",
        "description": "Centre for Jain teachings founded with blessings of Acharya Tulsi & Mahapragna. | आचार्य तुलसी एवं महाप्रज्ञा के आशीर्वाद से स्थापित जैन शिक्षण केंद्र।"
      },
      {
        "name": "Shrinath Ji Nathdwara (श्रीनाथ जी नाथद्वारा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/74/e6/6c/statue-of-belief-world.jpg?w=500&h=400&s=1",
        "description": "Famous Krishna temple established in 1672 when idol was shifted from Govardhan to protect from Mughals. | 1672 में स्थापित श्रीनाथजी मंदिर, वृंदावन से लाया गया विग्रह।"
      },
      {
        "name": "Haldighati (हल्दीघाटी)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/2-haldighati-udaipur-rajasthan-attr-hero?qlt=82&ts=1742160239591",
        "description": "Site of 1576 battle between Maharana Pratap and Mughal army. Soil is turmeric-yellow. Famous for rose products. | 1576 के युद्ध का स्थल, हल्दी जैसे पीले मिट्टी के कारण नाम पड़ा हल्दीघाटी।"
      },
      {
        "name": "Pratap Smarak (प्रताप स्मारक, हल्दीघाटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaMgZvQO70-3yybBjXnvta-WMs8298PDBEtg&s",
        "description": "Memorial of Maharana Pratap at Haldighati with equestrian statue on horse Chetak. | महाराणा प्रताप और चेतक की विशाल प्रतिमा वाला स्मारक।"
      },
      {
        "name": "Chetak Tomb (चेतक समाधि)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/5495_ACH_28a9b903-1d43-49c2-9b09-d0700284c019.jpeg",
        "description": "2 km west of Haldighati, memorial of Maharana Pratap’s loyal horse Chetak. | चेतक की समाधि, महाराणा प्रताप के प्रिय घोड़े की याद में निर्मित।"
      },
      {
        "name": "Rakamgarh Fort (रकमगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLfGhTIkHL736sxiCnkCj7ARAQZReSXSGBBA&s",
        "description": "Fort linked to 1857 freedom struggle, Tantya Tope stayed here briefly. | 1857 की क्रांति से जुड़ा किला, जहां तात्या टोपे ने शरण ली थी।"
      },
      {
        "name": "Charbhuja Temple (चारभुजा मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMqh287KSj7jm0Efvxab4y25Adz9Rkbs215w&s",
        "description": "Vishnu temple built in 1444 AD at Garhbor village, considered miraculous deity. Annual fair on Jhaljhoolani Ekadashi. | 1444 में निर्मित प्रसिद्ध विष्णु मंदिर, झलझूलनी एकादशी पर मेला।"
      }
    ],

    "Sawai Madhopur (सवाई माधोपुर)": [
      {
        "name": "Ranthambore Fort (रणथंभौर किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/01/7d/b4/54/ranthambore-fort.jpg",
        "description": "Built in the 10th century by Chauhan rulers, the Ranthambore Fort is known for its strategic location and historical significance. Associated with jauhar performed by royal women during Alauddin Khilji's siege in 1303. | चौहान शासकों द्वारा 10वीं शताब्दी में निर्मित रणथंभौर किला अपनी सामरिक स्थिति और ऐतिहासिक महत्व के लिए प्रसिद्ध है। 1303 में अलाउद्दीन खिलजी के आक्रमण के दौरान राजपूत महिलाओं द्वारा किए गए जौहर से जुड़ा है।"
      },
      {
        "name": "Ghushmeshwar Temple (घुश्मेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4z0jJzxYjiJ1o67u7TphusxHMWW5iaoUAjQ&s",
        "description": "The 12th and last Jyotirlinga of Lord Shiva, located in Siwar village. Associated with the legend of Ghusma’s devotion. | भगवान शिव का 12वां और अंतिम ज्योतिर्लिंग, सीवर गांव में स्थित। घुस्मा की भक्ति से जुड़ी कथा प्रसिद्ध है।"
      },
      {
        "name": "Sunheri Kothi (सुनहरी कोठी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQazLdHaHKnOM5juKXkcgAiizOkk5mLhSyjDw&s",
        "description": "Built in 1824, the mansion showcases stunning mirror work, mosaic, and glass inlay, reflecting Indo-Islamic architecture. | 1824 में बनी इस हवेली में अद्भुत शीशे का काम, मोज़ेक और कांच की जड़ाई है, जो हिन्दू-मुस्लिम स्थापत्य का प्रतीक है।"
      },
      {
        "name": "Jama Masjid, Tonk (जामा मस्जिद, टोंक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/b0/43/72/caption.jpg?w=1200&h=-1&s=1",
        "description": "Built by Nawab Ameer Khan, this mosque is Rajasthan’s finest, decorated with frescoes and ancient lamps. | नवाब अमीर खान द्वारा निर्मित यह मस्जिद राजस्थान की श्रेष्ठ मस्जिदों में से एक है, जिसमें भित्तिचित्र और प्राचीन दीपक सजाए गए हैं।"
      },
      {
        "name": "Hathi Bhata (हाथी भाटा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLcxWqmA3PKLmGOUOa4xFg_U48L0hpNAa0Gw&s",
        "description": "A life-size stone elephant carved from a single rock in 1200 AD, depicting the tale of Raja Nal and Damyanti. | एक विशाल पत्थर पर उकेरा गया हाथी, 1200 ई. में निर्मित, राजा नल और दमयंती की कथा को दर्शाता है।"
      },
      {
        "name": "Amreshwar Mahadev (अमरेश्वर महादेव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPP2XYPNCx2lwTMu6Iw1i0D-qoXbpIfKAuuA&s",
        "description": "Located amidst hills near Ranthambore, this temple features 12 Jyotirlings and an 11ft high Shivling. | रणथंभौर के पास पहाड़ियों के बीच स्थित यह मंदिर 12 ज्योतिर्लिंग और 11 फीट ऊंचे शिवलिंग के लिए प्रसिद्ध है।"
      },
      {
        "name": "Khandar Fort (खंडार किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7ReFrT3pqUZjZdpDYcl2JHdREYWyYup6sVQ&s",
        "description": "Situated 45 km from Sawai Madhopur, the fort was ruled by Sisodia Kings and later the Mughals. Known as unconquered. | सवाई माधोपुर से 45 किमी दूर स्थित यह किला सिसोदिया राजाओं और बाद में मुगलों के अधीन रहा, कहा जाता है कि इसे कभी पराजित नहीं किया गया।"
      },
      {
        "name": "Kaila Devi Temple (कैलादेवी मंदिर)",
        "image": "https://aapkarajasthan.com/static/c1e/client/91529/uploaded/9254bc434635ae777c6932c23f34d105.jpg",
        "description": "Located near Karauli, dedicated to Goddess Kaila Devi, famous for fairs in March-April and September-October. | करौली के पास स्थित यह मंदिर माता कैलादेवी को समर्पित है, जहाँ मार्च-अप्रैल और सितंबर-अक्टूबर में मेला लगता है।"
      },
      {
        "name": "Shri Mahavirji Temple (श्री महावीरजी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/a8/90/86/the-temple-outside-area.jpg?w=1200&h=-1&s=1",
        "description": "On the banks of Gambhiri River, this Jain pilgrimage is dedicated to the 24th Tirthankara, Lord Mahavir. | गम्भीरी नदी के किनारे स्थित यह जैन तीर्थ स्थल 24वें तीर्थंकर भगवान महावीर को समर्पित है।"
      },
      {
        "name": "Ranthambore National Park (रणथंभौर राष्ट्रीय उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/17/6b/3e/caption.jpg?w=1200&h=-1&s=1",
        "description": "Spread over 392 sq.km, home to tigers, leopards, chinkara, sambhar, cheetal, and over 300 species of birds. | 392 वर्ग किमी में फैला यह पार्क बाघ, तेंदुआ, चिंकारा, सांभर, चीतल और 300 से अधिक पक्षियों का घर है।"
      },
      {
        "name": "Shilpgram, Sawai Madhopur (शिल्पग्राम, सवाई माधोपुर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDecWlAx1UIXqRS0b28zhJkRxRT8FKoSBdw&s",
        "description": "A craft village showcasing arts and culture of Indian states, empowering local craftspeople. | विभिन्न भारतीय राज्यों की कला और संस्कृति को प्रदर्शित करने वाला यह शिल्पग्राम स्थानीय कारीगरों को सशक्त बनाता है।"
      },
      {
        "name": "Trinetra Ganesh Temple (त्रिनेत्र गणेश मंदिर)",
        "image": "https://staticimg.amarujala.com/assets/images/2022/05/17/trinetra-ganesh-temple_1652784365.jpeg",
        "description": "Located inside Ranthambore Fort, visited by millions every year, famous for Bhadrapad Chaturthi fair. | रणथंभौर किले में स्थित यह मंदिर प्रतिवर्ष लाखों भक्तों द्वारा दर्शन किया जाता है, भाद्रपद चतुर्थी का मेला प्रसिद्ध है।"
      },
      {
        "name": "Chauth Mata Mandir (चौथ माता मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Chauth_ka_Barwara%2C_Sawai_Madhopur.jpg/1200px-Chauth_ka_Barwara%2C_Sawai_Madhopur.jpg",
        "description": "Ancient temple at Chauth Ka Barwada, 25 km from Sawai Madhopur, hosts a large fair annually. | चौथ का बरवाड़ा में स्थित प्राचीन मंदिर, सवाई माधोपुर से 25 किमी दूर, जहाँ प्रतिवर्ष विशाल मेला लगता है।"
      },
      {
        "name": "Chambal Ghadiyal Sanctuary (चंबल घड़ियाल अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6vjiyQwiCoxPGxxFCq2AxjKfscv7Z5lEBdQ&s",
        "description": "Located 45 km from Sawai Madhopur, the sanctuary is home to gharials and aquatic wildlife. | सवाई माधोपुर से 45 किमी दूर स्थित यह अभयारण्य घड़ियाल और जलीय वन्यजीवों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Rajiv Gandhi Regional Natural History Museum (राजीव गांधी क्षेत्रीय प्राकृतिक इतिहास संग्रहालय)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbN0o4lcrdZMU7LD3LkK4yEhUpSDnx7uQz2Q&s",
        "description": "Located in Ramsinghpura, showcasing biodiversity and natural heritage of Rajasthan. | रामसिंहपुरा में स्थित यह संग्रहालय राजस्थान की जैव विविधता और प्राकृतिक धरोहर को प्रदर्शित करता है।"
      },
      {
        "name": "Soorwal Lake (सूरवाल झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/62/53/cb/surwal-lake.jpg?w=1200&h=-1&s=1",
        "description": "Picturesque lake near Sawai Madhopur, famous for migratory birds during winters. | सवाई माधोपुर के पास स्थित यह सुंदर झील सर्दियों में प्रवासी पक्षियों के लिए प्रसिद्ध है।"
      }
    ],

    "Sikar (सीकर)": [
      {
        "name": "Khatu Shyam Ji Temple (खाटू श्याम जी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwZ8timYO3aB-HNVCWZrXSB_Sr31y1Xf9D9A&s",
        "description": "Located in Khatu village of Sikar, this temple is dedicated to Shyam Baba (Barbarik), an incarnation of Lord Krishna. Only his head is worshipped here, and lakhs of devotees visit every year. | सीकर जिले के खाटू गाँव में स्थित यह मंदिर श्याम बाबा (बर्बरीक) को समर्पित है, जो भगवान कृष्ण के अवतार माने जाते हैं। यहाँ केवल उनका शीश पूजनीय है और हर साल लाखों श्रद्धालु यहाँ दर्शन के लिए आते हैं।"
      },
      {
        "name": "Shyam Kund (श्याम कुंड)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/83/8f/64/shyam-kund.jpg?w=1200&h=-1&s=1",
        "description": "A sacred water body near Khatu Shyam Temple where Barbarik’s head was discovered. Bathing here is believed to cure skin diseases and bring peace. | खाटू श्याम मंदिर के पास स्थित यह पवित्र कुंड है, जहाँ बर्बरीक का शीश मिला था। यहाँ स्नान करने से त्वचा रोग दूर होते हैं और मानसिक शांति मिलती है।"
      },
      {
        "name": "Jeen Mata Temple (जीण माता मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZbIcA-ejb87Pf-WU0a1HNcXImdJQVovPmuw&s",
        "description": "An ancient temple situated in the Aravali hills, Jeen Mata is worshipped as the Kuldevi of the Chauhan dynasty. Liquor is offered as prasad here. | अरावली की घाटी में स्थित यह प्राचीन मंदिर चौहान वंश की कुलदेवी जीण माता को समर्पित है। यहाँ प्रसाद के रूप में शराब अर्पित की जाती है।"
      },
      {
        "name": "Harshanath Temple (हर्षनाथ मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy8glrK8dvp-j80im3i5U__df6eq8YsyfBFA&s",
        "description": "Built in 956 AD on Harsha Hills, this Shiva temple is known for its carvings and depiction of Lingodbhav with Brahma and Vishnu. | हर्ष पर्वत पर 956 ई. में बना यह शिव मंदिर अपनी सुंदर नक्काशी और लिंगोद्भव प्रतिमा के लिए प्रसिद्ध है।"
      },
      {
        "name": "Shri Shakambhari Mata Temple (श्री शाकंभरी माता मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLdND-5y8hliOSjA9b54FA8S1eOJEn7PeKfg&s",
        "description": "Located in Sakrai Dham on the Aravalli hills, dedicated to Goddess Shakambhari, the goddess of greenery. Festivals like Navratri are celebrated grandly here. | अरावली पर्वतमाला में स्थित यह मंदिर शाकंभरी माता को समर्पित है, जिन्हें हरियाली की देवी माना जाता है। यहाँ नवरात्रि जैसे पर्व धूमधाम से मनाए जाते हैं।"
      },
      {
        "name": "Laxmangarh Fort (लक्ष्मणगढ़ किला)",
        "image": "https://media1.thrillophilia.com/filestore/ygj5cwi22trfvqvrx6mdi3vvt13s_1603518655_Laxmangarh_fort.jpg?w=400&dpr=2",
        "description": "A Shekhawati-style fort built by Raja Laxman Singh in the 19th century, located on a hilltop offering panoramic views of the town. | राजा लक्ष्मण सिंह द्वारा 19वीं सदी में बनाया गया यह किला शेखावाटी शैली की वास्तुकला का उदाहरण है और पहाड़ी पर स्थित होने से अद्भुत दृश्य प्रस्तुत करता है।"
      },
      {
        "name": "Devgarh Fort (देवगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg5INtsoXlmQpY2EDuUhPSiWHjzB5fasY8aA&s",
        "description": "An 18th century Shekhawat Rajput fort known for Rajput architecture, grand gateways, and temples. Offers panoramic views of Aravalli Hills. | 18वीं सदी का यह किला शेखावत राजपूतों का गढ़ था, जो राजपूताना स्थापत्य और विशाल द्वारों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Ramgarh Fort (रामगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo6lFgtW5pDQ_ASZD7R245Mz14Fd6O9wcAfg&s",
        "description": "An 18th century fort of Kachwaha Rajputs, blending Rajput and Mughal architecture, located amidst serene surroundings. | 18वीं सदी में कछवाहा राजपूतों का गढ़ रहा यह किला राजपूत और मुगल स्थापत्य शैली का अद्भुत मिश्रण है।"
      },
      {
        "name": "Shiva Temple of Ganeshwar (गणेश्वर का शिव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4BXxawrwsZeekZGyiQEcGio6kRSwhRS5iTQ&s",
        "description": "An ancient Shiva temple near hot water springs, believed to have healing properties. | प्राचीन शिव मंदिर, जिसके पास गर्म पानी के झरने हैं जिन्हें औषधीय गुणों वाला माना जाता है।"
      },
      {
        "name": "Galava Ganga (गालव गंगा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxtmxg4DbRHlo0IAGZakbQ6w5vuMCxVReTmvbGN-WuoAwTNTDQ5qYitWhz379FLG_3unk&usqp=CAU",
        "description": "A sacred water body linked to sage Galav, known for spiritual significance and healing powers. | ऋषि गालव से जुड़ा यह पवित्र सरोवर धार्मिक और ऐतिहासिक महत्व रखता है।"
      },
      {
        "name": "Gopinath Ji Temple (गोपीनाथ जी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/c1/47/1a/the-gopinath-temple.jpg?w=900&h=500&s=1",
        "description": "An 18th century Krishna temple with beautiful carvings, attracting devotees during Janmashtami and Holi. | 18वीं सदी का यह मंदिर भगवान कृष्ण को समर्पित है और अपनी सुंदर नक्काशी के लिए प्रसिद्ध है।"
      },
      {
        "name": "Nehru Park (नेहरू पार्क)",
        "image": "https://media1.thrillophilia.com/filestore/cvn3zktl4f9hk9oggucsktqqwmvt_1603517959_Nehru_Park.jpg",
        "description": "A peaceful park in Sikar with gardens, trees, children’s play area and a statue of Pandit Nehru. | सीकर का एक शांत पार्क जहाँ हरियाली, बच्चों के खेल क्षेत्र और पंडित नेहरू की प्रतिमा है।"
      }
    ],

    "Sirohi (सिरोही)": [
      {
        "name": "Achalgarh Fort and Temple (अचलगढ़ किला और मंदिर)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/5446_ACH_e50ba252-8847-4093-b152-23d66cb8eb8a.jpeg",
        "description": "Originally built by the Paramara dynasty and later renovated by Maharana Kumbha in 1452 CE, this fort is 11 km from Mount Abu. It houses Achaleshwar Mahadev Temple, brass Nandi, and Jain temples built in 1513. | परमार वंश द्वारा निर्मित और महाराणा कुम्भा द्वारा 1452 ई. में पुनर्निर्मित यह किला माउंट आबू से 11 किमी दूर स्थित है। इसमें अचलेश्वर महादेव मंदिर, पीतल का नंदी और 1513 में बने जैन मंदिर हैं।"
      },
      {
        "name": "Bheru Tarak Dham (भैरु तारक धाम)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/5447_ACH_18c7f95d-9eaf-4b5a-9430-aaa2327e0bf9.jpeg",
        "description": "Located in Nandgiri valley near Mount Abu, this Jain temple is dedicated to Parshvanath with Sahastra Fana (1000 hoods of serpent). It also has Dharmshala and Bhojnalaya facilities for pilgrims. | नंदगिरि घाटी में स्थित यह जैन धाम सहस्रफना (सर्प के 1000 फनों) वाले पार्श्वनाथ को समर्पित है। यहाँ धर्मशाला और भोजनालय जैसी सुविधाएँ उपलब्ध हैं।"
      },
      {
        "name": "Chandravati (चन्द्रावती)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/5448_ACH_e206ee86-a1d1-4df9-adc8-b5cad56462c3.jpeg",
        "description": "Situated 6 km from Abu Road, this ruined Parmar capital was once a center of trade and architecture in the 10th–11th centuries. | आबू रोड से 6 किमी दूर स्थित यह प्राचीन नगरी परमार शासकों की राजधानी थी और 10वीं–11वीं सदी में व्यापार व स्थापत्य का केंद्र रही।"
      },
      {
        "name": "Pavapuri Temple (पावापुरी मंदिर)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/5449_ACH_02093530-ed34-4bf7-b27b-75b5d6b21b6e.jpeg",
        "description": "Spread over 150 bigha, Pavapuri Tirtha Dham is dedicated to Shankheshwar Parshvanath. It also has Gaushala with 4500+ cows, Dharmshala, gardens, and Toran Gate. | 150 बीघा भूमि पर फैला यह तीर्थ शंखेश्वर पार्श्वनाथ को समर्पित है। यहाँ 4500 से अधिक गायों वाली गौशाला, धर्मशाला, उद्यान और तोरण द्वार हैं।"
      },
      {
        "name": "Sarneshwar Ji Temple (सर्नेश्वर जी मंदिर)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/5451_ACH_edf831eb-cc4e-48a7-82d2-47d6ce5653aa.jpeg",
        "description": "Situated on Siranwa hill, this Shiva temple is Kuldevta of Deora Chauhans of Sirohi. It features 108 Shivlingas, colorful elephant statues, and a Kund for holy baths. | सिरानवा पहाड़ी पर स्थित यह शिव मंदिर सिरोही के देओरा चौहानों का कुलदेव स्थल है। इसमें 108 शिवलिंग, रंगीन हाथी प्रतिमाएँ और पवित्र स्नान कुंड है।"
      },
      {
        "name": "Nakki Lake (नक्की झील)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/11163_ACH_e604344d-1069-4a06-96f1-1a4dc18f5116.jpeg",
        "description": "India’s first man-made lake, located in Mount Abu, popular for boating and sunset views. Mahatma Gandhi’s ashes were immersed here. | भारत की पहली कृत्रिम झील, माउंट आबू में स्थित, नौकायन और सूर्यास्त के लिए प्रसिद्ध। महात्मा गांधी की अस्थियाँ भी यहीं विसर्जित की गई थीं।"
      },
      {
        "name": "Guru Shikhar (गुरु शिखर)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2023/Nov/11164_ACH_0893daeb-34ef-497c-af7b-8d7a140dc077.jpeg",
        "description": "The highest peak of Aravalli range, housing a temple of Guru Dattatreya. Offers panoramic views after climbing 300 steps. | अरावली की सबसे ऊँची चोटी, जहाँ गुरु दत्तात्रेय का मंदिर है। 300 सीढ़ियाँ चढ़ने के बाद यहाँ से अद्भुत दृश्य दिखते हैं।"
      },
      {
        "name": "Toad Rock View Point (टोड रॉक व्यू पॉइंट)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/11165_ACH_b26e301f-f5f2-450b-881b-55b636647a0c.jpeg",
        "description": "A naturally shaped rock near Nakki Lake, resembling a toad. Popular for trekking, photography, and panoramic lake views. | नक्की झील के पास स्थित यह प्राकृतिक चट्टान मेंढक जैसी आकृति की है और ट्रैकिंग व फोटोग्राफी के लिए प्रसिद्ध है।"
      },
      {
        "name": "Dilwara Jain Temple (दिलवाड़ा जैन मंदिर)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/11166_ACH_804aef40-9fc3-4a5b-893a-5801aedecc9d.jpeg",
        "description": "Built between 11th–13th centuries, these marble temples are known for intricate carvings and considered masterpieces of Indian architecture. | 11वीं–13वीं सदी में बने ये संगमरमर के मंदिर अपनी बारीक नक्काशी के लिए प्रसिद्ध हैं और भारतीय स्थापत्य कला के उत्कृष्ट उदाहरण हैं।"
      },
      {
        "name": "Peace Park (पीस पार्क, माउंट आबू)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/11167_ACH_d76ac6f4-ecb8-4e83-9c45-f67585fee102.jpeg",
        "description": "A Brahma Kumaris center between Guru Shikhar and Achalgarh, offering meditation, rock gardens, rose gardens, and guided tours. | ब्रह्माकुमारी संस्थान द्वारा निर्मित यह पार्क गुरु शिखर और अचलगढ़ के बीच स्थित है। यहाँ ध्यान, उद्यान और मार्गदर्शित भ्रमण की सुविधाएँ हैं।"
      },
      {
        "name": "Lal Mandir (लाल मंदिर, माउंट आबू)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/11169_ACH_adc15bd7-dfcb-45ef-ab41-0b0d7f67d862.png",
        "description": "A small Shiva temple near Dilwara Temples, painted red, known as a Swayambhu temple. Offers peaceful ambiance. | दिलवाड़ा मंदिरों के पास स्थित यह छोटा शिव मंदिर लाल रंग से रंगा हुआ है और स्वयम्भू शिवलिंग के लिए प्रसिद्ध है।"
      },
      {
        "name": "Trevor’s Tank (ट्रेवर्स टैंक, माउंट आबू)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/11170_ACH_1fa87b00-41d7-4df9-a7ea-48416614c223.jpeg",
        "description": "A crocodile breeding spot and wildlife sanctuary 5 km from Mount Abu. Famous for bird watching, crocodiles, and natural beauty. | माउंट आबू से 5 किमी दूर स्थित यह कृत्रिम झील मगरमच्छ प्रजनन और वन्यजीवों के लिए प्रसिद्ध है। यहाँ पक्षी दर्शन और प्राकृतिक सुंदरता का आनंद लिया जा सकता है।"
      }
    ],

    "Sri Ganganagar (श्रीगंगानगर)": [
      {
        "name": "Bror Village (ब्रोर गाँव)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW_KEB2qqTnNmA4EG8mM8VJD-vzEt8bCGjxZB2Q1PMJk4AF0-ctG_hVw8214ItNh7dms8&usqp=CAU",
        "description": "Located on the Anoopgarh-Ramsinghpur road, Bror village is famed for the remnants of the Indus Valley Civilisation being unearthed here. Several artefacts, skeletal remains and buildings have been found in the vicinity of the village. | अनूपगढ़-रामसिंहपुर रोड पर स्थित ब्रोर गाँव सिंधु घाटी सभ्यता के अवशेषों के लिए प्रसिद्ध है। यहाँ कई कलाकृतियाँ, कंकाल और इमारतों के अवशेष मिले हैं।"
      },
      {
        "name": "Laila Majnu Ka Mazar (लैला मजनूँ का मज़ार)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcj7Fy0XRv7grTXlsundKRIpbOkWfgX0gwTQ&s",
        "description": "Situated at Binjaur village around 11 km from Anupgarh, this tomb is believed to be of the legendary lovers Laila and Majnu. A fair is held here every year in their memory. | अनूपगढ़ से लगभग 11 किमी दूर बिनजौर गाँव में स्थित यह मज़ार प्रसिद्ध प्रेमी लैला-मजनूँ की मानी जाती है। यहाँ हर साल एक मेला आयोजित होता है।"
      },
      {
        "name": "Anupgarh Fort (अनूपगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwbjaIFNZUCqdPjxIn9L1kqD3Jg43iEgYFJNU-YF7KlG38en96rmlGuXldFVzJtpQQ008&usqp=CAU",
        "description": "Located near the Pakistan border, Anupgarh Fort was built in 1689 by a Mughal governor. Though in ruins today, it once served as a strong defense against the Bhati Rajputs. | पाकिस्तान सीमा के पास स्थित अनूपगढ़ किला 1689 में एक मुगल सूबेदार द्वारा बनवाया गया था। आज खंडहर है लेकिन कभी यह भट्टी राजपूतों के खिलाफ मजबूत रक्षा था।"
      },
      {
        "name": "Hindumalkot Border (हिंदूमलकोट सीमा)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/19/c6/63/5d/hindumalkot-border-the.jpg",
        "description": "This border point, 25 km from Sri Ganganagar, separates India and Pakistan. Named after Hindumal, the Diwan of Bikaner, it is open to the public during the day. | श्रीगंगानगर से 25 किमी दूर यह सीमा भारत और पाकिस्तान को अलग करती है। बीकानेर के दीवान हिंदूमल के नाम पर इसका नाम रखा गया है। दिन के समय यह आम जनता के लिए खुला रहता है।"
      },
      {
        "name": "Buddha Johad Gurudwara (बुद्धा जोहड़ गुरुद्वारा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqWz19FqkGyAuKzx3DBg3TngSzCAI0bhd9JA&s",
        "description": "Built to commemorate Sukha Singh and Mehtab Singh’s justice against Massa Ranghar in 1740, this Gurudwara near Dabla village also houses historical paintings. | 1740 में सुखा सिंह और मेहताब सिंह द्वारा मस्सा रंगड़ को न्याय दिलाने की घटना की याद में यह गुरुद्वारा डाबला गाँव के पास बनाया गया था। इसमें ऐतिहासिक चित्र भी हैं।"
      }
    ],

    "Tonk (टोंक)": [
      {
        "name": "Golden House (सुनहरी कोठी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwvhtyKefV5tTYtuQcbJhc7VeCpk6CVQB2dA&s",
        "description": "Tonk's main attraction, the 19th century Sunehri Kothi, looks simple outside but its interiors shine with multicoloured gold hues, glass work, and meenakari art. Declared a historical monument in 1996. | टोंक का मुख्य आकर्षण 19वीं सदी की सुनहरी कोठी बाहर से साधारण दिखती है, लेकिन अंदर इसका वैभव बहुरंगी सुनहरे रंगों, कांच और मीनाकारी कला से जगमगाता है। इसे 1996 में ऐतिहासिक धरोहर घोषित किया गया।"
      },
      {
        "name": "Arabian and Persian Research Institute (अरबी और फारसी शोध संस्थान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy7ahoTNZH6z4tfevJ7GVtsEi55HD85SaswA&s",
        "description": "Established in 2002, the institute houses manuscripts, religious texts, historical books, paintings, and calligraphy. Some manuscripts are decorated with gold and precious stones. | 2002 में स्थापित इस संस्थान में पांडुलिपियाँ, धार्मिक ग्रंथ, ऐतिहासिक पुस्तकें, चित्रकला और सुलेख संरक्षित हैं। कुछ पांडुलिपियाँ सोने और रत्नों से सजाई गई हैं।"
      },
      {
        "name": "Haathi Bhata (हाथी भाटा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaXNeujGWg7k5dhKhZ1Hizax8Gx26a9GtpFg&s",
        "description": "A massive elephant carved from a single rock on the Sawai Madhopur highway, about 22 km from Tonk. Built by Ramnath Siyat during Sawai Ram Singh’s reign. | टोंक से 22 किमी दूर सवाई माधोपुर हाईवे पर एक ही चट्टान से बने विशाल हाथी की प्रतिमा। इसे सवाई राम सिंह के शासनकाल में रामनाथ सियात ने बनवाया था।"
      },
      {
        "name": "Bisaldev Temple (बिसलदेव मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAZQP5R04CaZEhLYg1sr9Y4Py-N0CM_KRcbA&s",
        "description": "Located in Bisalpur, built in the 12th century by ruler Vigraharaja IV. Dedicated to Lord Gokarneshwar (Shiva), the temple has a dome supported by 8 floral-carved pillars. | 12वीं सदी में चौहान शासक विग्रहराज चतुर्थ द्वारा बिसलपुर में निर्मित। भगवान गोकर्णेश्वर (शिव) को समर्पित इस मंदिर का गुम्बद आठ अलंकृत स्तंभों पर टिका है।"
      },
      {
        "name": "Hadi Rani Bawdi (हाड़ी रानी बावड़ी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f6/ef/c0/the-side-with-the-galleries.jpg?w=1200&h=-1&s=1",
        "description": "A 12th-century stepwell in Todaraisingh, featuring a two-storey verandah, arched doorways, and carved images of deities. Some scenes of Bollywood film Paheli were shot here. | 12वीं सदी की बावड़ी टोंक के टोडारायसिंह में स्थित है। इसमें दो-मंजिला बरामदे, मेहराबदार द्वार और देवताओं की मूर्तियाँ उकेरी गई हैं। फिल्म 'पहेली' के दृश्य यहाँ फिल्माए गए।"
      },
      {
        "name": "Diggi Kalyanji Temple (डिग्गी कल्याणजी मंदिर)",
        "image": "https://staticimg.amarujala.com/assets/images/2022/08/03/lakkhi-padyatra_1659527445.jpeg",
        "description": "One of the oldest temples (about 5600 years old) dedicated to Lord Vishnu’s incarnation Shri Kalyanji. Known for blessings and grand architecture with a 16-pillar shikhar. | लगभग 5600 वर्ष प्राचीन भगवान विष्णु के अवतार श्री कल्याणजी को समर्पित मंदिर। 16 स्तंभों पर आधारित इसका शिखर भव्य है।"
      },
      {
        "name": "Jama Masjid (जामा मस्जिद)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/b0/43/73/caption.jpg?w=900&h=500&s=1",
        "description": "One of India’s largest mosques, built by Nawab Amir Khan and completed under Nawab Wazir-ud-Daula. Interiors feature gold painting and enamel, with four towering minarets. | भारत की सबसे बड़ी मस्जिदों में से एक, नवाब आमिर खान द्वारा शुरू और वज़ीर-उद-दौला के समय पूर्ण हुई। अंदरूनी भाग सोने की पेंटिंग और इनेमल से सुसज्जित है, बाहर चार विशाल मीनारें हैं।"
      },
      {
        "name": "Bisalpur Dam (बिसलपुर बाँध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/b8/64/12/extreme-view.jpg?w=1200&h=-1&s=1",
        "description": "A gravity dam on the Banas River near Deoli, completed in 1999. Known as Rajasthan’s lifeline, supplying water to Jaipur, Tonk, Ajmer, and Sawai Madhopur. | बनास नदी पर देोली के पास 1999 में बना यह बाँध राजस्थान की जीवनरेखा माना जाता है। यह जयपुर, टोंक, अजमेर और सवाई माधोपुर को पानी सप्लाई करता है।"
      },
      {
        "name": "Jal Devi Temple (जल देवी मंदिर)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2022/Feb/10409_ACH_24b84c3d-b226-4c18-b2fc-58e3e7cce6cd.jpeg",
        "description": "Located in Baori village near Todaraisingh, about 250 years old. The idol was found in a nearby well. A three-day fair is held here on Chaitra Purnima. | टोंक के टोडारायसिंह के पास बावड़ी गाँव में स्थित 250 वर्ष पुराना मंदिर। देवी की मूर्ति कुएँ से प्राप्त हुई थी। चैत्र पूर्णिमा पर यहाँ तीन दिवसीय मेला लगता है।"
      },
      {
        "name": "Clock Tower (घंटाघर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa4kJ4gXxrE1ZCVnx0eTBCnnXDGoJmqlew1g&s",
        "description": "Built by Nawab Mohammad Saadat Ali Khan. Constructed with leftover funds after cholera relief in 1936. Today it is a cultural hub of Tonk. | नवाब मोहम्मद सादत अली खान द्वारा 1936 में हैजे की महामारी राहत के बाद बचे धन से बनवाया गया घंटाघर। आज यह टोंक का सांस्कृतिक केंद्र है।"
      },
      {
        "name": "Badrivishal Temple Natwara (बद्रिविशाल मंदिर, नटवाड़ा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqpKhTlbSBViN4wxah4toaNWKFgSrfWxalAg&s",
        "description": "A 450-year-old grand temple of Badrivishalji, located 1 km east of Tonk district HQ in Natwara. A fair is held every Akshaya Tritiya. | लगभग 450 वर्ष पुराना बद्रिविशालजी का भव्य मंदिर टोंक मुख्यालय से 1 किमी दूर नटवाड़ा में स्थित है। अक्षय तृतीया पर मेला लगता है।"
      },
      {
        "name": "Raktachanal Mountain (रक्ताचल पर्वत, निवाई)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-c/1280x250/0b/21/e8/63/shiv-temple.jpg",
        "description": "Located about 45 km from Tonk HQ in Niwai, the hill has temples dedicated to Mataji and other deities. | टोंक मुख्यालय से लगभग 45 किमी दूर निवाई में स्थित इस पर्वत पर माताजी और अन्य प्राचीन मंदिर हैं।"
      },
      {
        "name": "Dhannabhagat Gurdwara (धन्ना भगत गुरुद्वारा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUQ8T_4RcCsaRKHTL9v8lwXg2kMJAwlpJCHA&s",
        "description": "Located at Dhuankala, about 45 km from Tonk HQ. A fair is held every year on Prakash Parv. | टोंक से लगभग 45 किमी दूर धुआँ कला में स्थित। यहाँ हर साल प्रकाश पर्व पर मेला लगता है।"
      }
    ],

    "Udaipur (उदयपुर)": [
      {
        "name": "Pratap Memorial (Moti Magri) (प्रताप स्मारक, मोती मगरी)",
        "image": "https://jankalyanfile.rajasthan.gov.in//Content/UploadFolder/Advertisement/Achievements/2025/Feb/5261_ACH_64b92325-b7fa-488c-97a9-af2516b023dd.jpeg",
        "description": "Bronze statue of Maharana Pratap with his loyal horse Chetak, overlooking Fateh Sagar Lake. | महाराणा प्रताप और उनके वफादार घोड़े चेतक की कांस्य प्रतिमा, जो फतेह सागर झील की ओर देखती है।"
      },
      {
        "name": "City Palace (सिटी पैलेस)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/city-palace-udaipur-rajasthan-1-musthead-hero?qlt=82&ts=1742174471611",
        "description": "A majestic palace with courtyards, pavilions, and peacock mosaics, showcasing Mewar’s royal heritage. | आंगनों, मंडपों और मोर चौक की सुंदर मोज़ेक के साथ भव्य महल, जो मेवाड़ की शाही धरोहर दर्शाता है।"
      },
      {
        "name": "Lake Palace (लेक पैलेस)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/2-lake-palace-udaipur-rajasthan-attr-hero?qlt=82&ts=1742166394501",
        "description": "Built between 1743–1746 on Lake Pichola’s island, now a luxury hotel. | 1743–1746 में पिचोला झील के द्वीप पर बना, अब एक लग्ज़री होटल।"
      },
      {
        "name": "Jag Mandir (जग मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/06/e2/e6/a-grand-heritage-palace.jpg?w=900&h=-1&s=1",
        "description": "Island palace on Lake Pichola, inspiration for Taj Mahal. | पिचोला झील का द्वीप महल, जिसने ताजमहल को प्रेरित किया।"
      },
      {
        "name": "Monsoon Palace (मॉनसून पैलेस)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/2-monsoon-palace-udaipur-rajasthan-attr-hero?qlt=82&ts=1742180604469",
        "description": "19th-century hilltop palace offering panoramic views. | पहाड़ी पर स्थित 19वीं सदी का महल, जो शानदार नज़ारे प्रस्तुत करता है।"
      },
      {
        "name": "Ahar Museum (आहर संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/0f/1a/c6/caption.jpg?w=900&h=500&s=1",
        "description": "Museum with pottery, sculptures and cenotaphs of Maharanas. | मिट्टी के बर्तनों, मूर्तियों और महाराणाओं की छतरियों वाला संग्रहालय।"
      },
      {
        "name": "Jagdish Temple (जगदीश मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjn8gvKyIHEvIFfCQcziw7kUaUvKwk14QPkg&s",
        "description": "Indo-Aryan style Vishnu temple built in 1651. | 1651 में बना भगवान विष्णु को समर्पित इंडो-आर्यन शैली का मंदिर।"
      },
      {
        "name": "Fateh Sagar Lake (फतेह सागर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2bjE-gkhv5arM5rxD766R2ji1hgqlZJQrGw&s",
        "description": "Artificial lake with Nehru Island and Solar Observatory. | कृत्रिम झील जिसमें नेहरू द्वीप और सौर वेधशाला स्थित है।"
      },
      {
        "name": "Lake Pichola (पिचोला झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/77/15/9a/photo0jpg.jpg?w=900&h=500&s=1",
        "description": "Famous lake housing Jag Mandir & Lake Palace, best for boat rides. | प्रसिद्ध झील जिसमें जग मंदिर और लेक पैलेस स्थित हैं, नौकायन के लिए उत्तम।"
      },
      {
        "name": "Saheliyon Ki Bari (सहेलियों की बाड़ी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/af/47/e9/sahelion-ki-bari.jpg?w=900&h=500&s=1",
        "description": "Garden with fountains, lotus pool, and marble elephants. | फव्वारों, कमल ताल और संगमरमर के हाथियों वाला उद्यान।"
      },
      {
        "name": "Bird Park Gulab Bagh (गुलाब बाग पक्षी उद्यान)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/bird-park-at-gulab-bagh-udaipur-rajasthan-2-attr-hero?qlt=82&ts=1742178858663",
        "description": "Spread over 5.11 hectares, home to 28 species of birds. | 5.11 हेक्टेयर में फैला, 28 पक्षी प्रजातियों का घर।"
      },
      {
        "name": "Sukhadia Circle (सुखाड़िया सर्कल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/46/6d/e1/photo0jpg.jpg?w=1200&h=-1&s=1",
        "description": "Fountain garden with a 21-foot tall marble fountain. | 21 फीट ऊँचे संगमरमर के फव्वारे वाला बगीचा।"
      },
      {
        "name": "Bharatiya Lok Kala Mandal (भारतीय लोक कला मंडल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGJmzKXhbiyMJkGtxhNY2zMTATC8-rRU3nsw&s",
        "description": "Museum and institute for Rajasthani folk culture. | राजस्थानी लोक संस्कृति का संग्रहालय और संस्थान।"
      },
      {
        "name": "Bagore Ki Haveli (बागौर की हवेली)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/fc/2e/5a/peace-resides-here-for.jpg?w=900&h=500&s=1",
        "description": "18th-century haveli with 100+ rooms, costumes, and folk art. | 18वीं सदी की हवेली, 100+ कमरों, परिधानों और लोक कला के साथ।"
      },
      {
        "name": "Shilpgram (शिल्पग्राम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqW3Af1p7h_XEQvfgwDMBamvVwc10K1YBqgcMOrBcp51ItzhGYQkse1YXP2HLNdHI9CDw&usqp=CAU",
        "description": "Rural Arts & Crafts Complex depicting folk lifestyles. | ग्रामीण कला एवं शिल्प परिसर, लोक जीवनशैली को दर्शाता है।"
      },
      {
        "name": "Udai Sagar Lake (उदय सागर झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVCj-sjynkEEdPNAJ8B6xEFx9nEhvOzEXM9A&s",
        "description": "Lake built in 1559 by Maharana Udai Singh. | 1559 में महाराणा उदय सिंह द्वारा निर्मित झील।"
      },
      {
        "name": "Doodh Talai Lake (दूध तलाई झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMUBp1n5kQR3JjMkCgb-yfu2tpnLMclTUHsuQnL_74MTt4zOyRJvSEbRIHJj9YXFew8sA&usqp=CAU",
        "description": "Scenic lake with nearby gardens and viewpoints. | सुंदर झील जिसके पास उद्यान और दर्शनीय स्थल हैं।"
      },
      {
        "name": "Jaisamand Lake (जयसमंद झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRunlf1JA5V8JYjuQaLkG9AJYlm_BX79KALAg&s",
        "description": "Asia’s 2nd largest artificial freshwater lake. | एशिया की दूसरी सबसे बड़ी कृत्रिम मीठे पानी की झील।"
      },
      {
        "name": "Navalakha Mahal (Gulab Bagh) (नवलखा महल, गुलाब बाग)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/11/51/82/70/navlakha-mahal.jpg",
        "description": "Historical site where Maharishi Dayanand wrote 'Satyarth Prakash'. | ऐतिहासिक स्थल जहाँ महर्षि दयानंद ने 'सत्यार्थ प्रकाश' लिखा।"
      },
      {
        "name": "Wax Museum (वैक्स म्यूज़ियम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/ee/80/98/wax-museum-udaipur.jpg?w=200&h=-1&s=1",
        "description": "Interactive wax museum with 9D cinema & gaming. | 9D सिनेमा और गेमिंग के साथ इंटरैक्टिव वैक्स म्यूज़ियम।"
      },
      {
        "name": "Udaipur Fish Aquarium (उदयपुर फिश एक्वेरियम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo7V4LlvXyEfUWXIbMy4RasD8kYvx0hhDK7A&s",
        "description": "India’s first hi-tech virtual fish aquarium with 156+ species. | भारत का पहला हाई-टेक वर्चुअल फिश एक्वेरियम, 156+ प्रजातियों के साथ।"
      },
      {
        "name": "Vintage Car Collection (विंटेज कार संग्रह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSn13oQ_LjHIDH5C7yZO2Jgq29raO1mdMYqg&s",
        "description": "Collection of classic vehicles owned by Maharanas. | महाराणाओं की क्लासिक गाड़ियों का संग्रह।"
      },
      {
        "name": "Crystal Gallery (क्रिस्टल गैलरी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/1b/80/08/located-inside-the-city.jpg?w=1200&h=-1&s=1",
        "description": "Largest collection of Osler cut glass and crystal furniture. | ओस्लर कांच और क्रिस्टल फर्नीचर का सबसे बड़ा संग्रह।"
      },
      {
        "name": "Nagda (नगदा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAJlHnrIKJNuUvcuypxrwWobRVqoORMjzudg&s",
        "description": "Ancient site with 9th–10th century Sas-Bahu temples. | 9वीं–10वीं सदी के सास-बहू मंदिरों वाला प्राचीन स्थल।"
      },
      {
        "name": "Badi Lake (बाड़ी झील)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/badi-lake-udaipur-raj-2-attr-hero?qlt=82&ts=1742188416393",
        "description": "Artificial lake built by Maharana Raj Singh, also called Jiyan Sagar. | महाराणा राज सिंह द्वारा निर्मित कृत्रिम झील, जिसे जियान सागर भी कहते हैं।"
      },
      {
        "name": "Sajjangarh Biological Park (सज्जनगढ़ जैविक उद्यान)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/sajjangarh-biological-park-udaipur-rajasthan-1-attr-hero?qlt=82&ts=1742195668783",
        "description": "36-hectare park with carnivores and herbivores in natural habitat. | 36 हेक्टेयर में फैला उद्यान, प्राकृतिक आवास में जानवरों के साथ।"
      },
      {
        "name": "Sahastra Bahu Temple (सहस्त्र बहु मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrCDYuw4-h6rgEKWVrl8a_6JOyLRPCO566Nw&s",
        "description": "10th-century Vishnu temple with exquisite carvings. | 10वीं सदी का भगवान विष्णु मंदिर, सुंदर नक्काशी के साथ।"
      },
      {
        "name": "Menar (मेनार)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsOJ2YWUS0HcReUOWUKC3HC9_Gv1wVQ4eG2A&s",
        "description": "Village known for migratory birds at Brahm Talab & Dand Talab. | गाँव, जो ब्रह्म तालाब और डांड तालाब में प्रवासी पक्षियों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Pratap Gaurav Kendra (प्रताप गौरव केंद्र)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaamhAEy9Isy3OjrvBEQfVNnUhm1R1Pe7p-g&s",
        "description": "Dedicated to Maharana Pratap with 57-ft statue & 3D shows. | महाराणा प्रताप को समर्पित केंद्र, 57 फीट प्रतिमा और 3D शो के साथ।"
      },
      {
        "name": "Gogunda (गोगुंदा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCIu2mdDMm7ETDWu2K4gDY7gt-YizM2rNNmw&s",
        "description": "Historic town where Maharana Pratap was coronated in 1572. | ऐतिहासिक स्थल जहाँ 1572 में महाराणा प्रताप का राज्याभिषेक हुआ।"
      },
      {
        "name": "Rishabhdeo Ji (ऋषभदेव जी)",
        "image": "https://s7ap1.scene7.com/is/image/incredibleindia/rishabhadeo-temple-udaipur-rajasthan-2-attr-hero?qlt=82&ts=1742167710274",
        "description": "15th-century Jain temple dedicated to Rishabhdeo. | ऋषभदेव को समर्पित 15वीं सदी का जैन मंदिर।"
      }
    ],

    "Anupgarh (अनूपगढ़)": [
      {
        "name": "Anupgarh Fort (अनूपगढ़ किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx-BZ9rGo88sfXbubwNBUK55JbHS5lUbf4JA&s",
        "description": "Built by Maharaja Anup Singh, this fort is a testimony to the rich history of the region and offers amazing views of the landscape. | महाराजा अनूप सिंह द्वारा निर्मित यह किला क्षेत्र के समृद्ध इतिहास का प्रतीक है और यहाँ से प्राकृतिक दृश्यों का सुंदर नज़ारा दिखाई देता है।"
      },
      {
        "name": "Laila-Majnu's Tomb (लैला–मजनूं की मज़ार)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR3TsmRfAVL4EEZy0JA7Oy0eSmJvaeVqN0SEepis-1sac6YPhiENrrqwwqlKlnyVuFkHQ&usqp=CAU",
        "description": "Situated near Binjor village, about 30 km from Anupgarh, close to the Pakistan border. It is believed to be the resting place of the legendary lovers Laila and Majnu. | अनूपगढ़ से लगभग 30 किमी दूर बिनजो़र गाँव में, पाकिस्तान सीमा के पास स्थित। माना जाता है कि यही पर लैला–मजनूं का देहांत हुआ था।"
      },
      {
        "name": "Gauri Shankar Temple (गौरी शंकर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/e4/ed/03/gauri-shankar-temple.jpg?w=1200&h=1200&s=1",
        "description": "Dedicated to Lord Shiva and Goddess Parvati, this temple is an important spiritual site and often visited after the fort. | भगवान शिव और माता पार्वती को समर्पित यह मंदिर एक प्रमुख धार्मिक स्थल है और किले के बाद घूमने के लिए उत्तम स्थान है।"
      },
      {
        "name": "Gurudwara Buddah Johad (गुरुद्वारा बुधा जोहड़)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpdg4U96MMNCdCiX1RF391A3QNTL5dHSTZCD9HDTss6qgSx9pmSqQFwFMeTHjl6fzVSpI&usqp=CAU",
        "description": "A major tourist destination in Anupgarh, this Gurudwara is an important place of Sikh history and faith. | अनूपगढ़ का प्रमुख पर्यटन स्थल, यह गुरुद्वारा सिख धर्म और इतिहास से जुड़ा हुआ महत्वपूर्ण स्थान है।"
      }
    ],

    "Balotra (बालोतरा)": [
      {
        "name": "Nakoda Parshvanath Jain Temple (नाकोड़ा पार्श्वनाथ जैन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/71/f7/00/20160227-123550-largejpg.jpg?w=1200&h=1200&s=1",
        "description": "The most famous and sacred Jain pilgrimage site in Balotra, highly significant for the Jain community. | बालोतरा का सबसे प्रसिद्ध और पवित्र जैन तीर्थ स्थल, जो जैन समाज के लिए अत्यंत महत्वपूर्ण है।"
      },
      {
        "name": "Ranchhod Rai Temple (रंचोड़ राय मंदिर)",
        "image": "https://i.ytimg.com/vi/al2UwsZzEkI/maxresdefault.jpg",
        "description": "A historical temple dedicated to Lord Vishnu, located near Balotra. | भगवान विष्णु को समर्पित यह ऐतिहासिक मंदिर बालोतरा के पास स्थित है।"
      },
    ],

    "Beawar (ब्यावर)": [
      {
        "name": "Neelkanth Mahadev Temple (नीलकंठ महादेव मंदिर)",
        "image": "https://i.ytimg.com/vi/F_zcNDHPn_8/maxresdefault.jpg",
        "description": "This temple is famous for its amazing architecture and spiritual atmosphere. | यह मंदिर अपनी अद्भुत वास्तुकला और आध्यात्मिक वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Shoolbred Memorial Church (शूलब्रेड मेमोरियल चर्च)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp7lSAm0k99uOPsGhT0wFASgoglLPgsSuIEw&s",
        "description": "This church reflects the city’s colonial past and offers visitors an interesting experience. | यह चर्च शहर के औपनिवेशिक अतीत को दर्शाता है और आगंतुकों को एक रोचक अनुभव प्रदान करता है।"
      }
    ],

    "Deeg (डीग)": [
      {
        "name": "Deeg Fort (डीग किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROBCh8hdboICXvOHLMWHCyB5FnGThP1rLiqXeFtw315UfXlcxeHX2f6IdF7-nkvL3MwcA&usqp=CAU",
        "description": "Built by Raja Suraj Mal in the 17th century, Deeg Fort is a blend of Mughal architecture and natural beauty. Surrounded by Roop Sagar and Gobind Sagar lakes, it also has a 70 ft watchtower and a huge cannon. | राजा सूरज मल द्वारा 17वीं सदी में निर्मित डीग किला मुगल वास्तुकला और प्राकृतिक सुंदरता का अद्भुत संगम है। यह रूप सागर और गोविंद सागर झीलों से घिरा है। किले में 70 फीट ऊँचा वॉचटावर और एक विशाल तोप भी है।"
      },
      {
        "name": "Deeg Palace (डीग महल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/21/70/9e/less-visited-place-near.jpg?w=1200&h=1200&s=1",
        "description": "Built by Raja Suraj Mal in 1772, Deeg Palace was the summer retreat of Bharatpur rulers. Its Rajput-Mughal fusion style, Charbagh-inspired gardens, and decorated halls make it a top attraction. | 1772 में राजा सूरज मल द्वारा निर्मित डीग महल भरतपुर के शासकों का ग्रीष्मकालीन निवास था। इसका राजपूत-मुगल शैली का संगम, चारबाग़ शैली के बाग़ और सजाए गए हॉल इसे प्रमुख आकर्षण बनाते हैं।"
      },
      {
        "name": "Gopal Bhavan (गोपाल भवन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8YMmZrrHQbwCWA1jyVSbhUfpNxye6bUtEHw&s",
        "description": "The largest mansion inside Deeg Palace, surrounded by Gopal Sagar lake. It has a black marble throne, Mughal war trophies, and Victorian furniture. | डीग महल के अंदर सबसे बड़ा भवन, जो गोपाल सागर झील से घिरा है। इसमें काले संगमरमर का सिंहासन, मुगल युद्ध की ट्रॉफियाँ और विक्टोरियन फर्नीचर देखने को मिलते हैं।"
      },
      {
        "name": "Suraj Bhavan (सूरज भवन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK1BT88nXqCC5unB-qMc1GKSkML9ZTAOy8_w&s",
        "description": "A mansion made of buff sandstone encased in white marble, with arched verandahs on all sides. Known for its stunning architecture. | बलुआ पत्थर और सफेद संगमरमर से बना यह भवन अपनी सुंदर वास्तुकला और चारों ओर मेहराबदार बरामदों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Bharatpur Bird Sanctuary (भरतपुर पक्षी अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLGczsXM1SftrYEs2Mg0G1gD4LwJW4ql513w&s",
        "description": "Located near Deeg, this UNESCO World Heritage Site is a paradise for bird lovers and nature enthusiasts. Declared a National Park in 1982. | डीग के पास स्थित यह यूनेस्को विश्व धरोहर स्थल पक्षी प्रेमियों और प्रकृति प्रेमियों के लिए स्वर्ग है। इसे 1982 में राष्ट्रीय उद्यान घोषित किया गया था।"
      }
    ],

    "Didwana-Kuchaman (डीडवाना-कुचामन)": [
      {
        "name": "Kuchaman Fort (कुचामन किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlf034gxuzOFHTQaFINppU8bvxIjYVU95LnQ&s",
        "description": "Known for its massive ramparts, 32 small forts, 10 gates, and excellent water conservation system. The fort has also been featured in films like 'Drona' and 'Jodhaa Akbar'. | अपने विशाल परकोटों, 32 छोटे किलों, 10 द्वारों और उत्कृष्ट जल संरक्षण प्रणाली के लिए प्रसिद्ध। यह किला 'ड्रोना' और 'जोधा अकबर' जैसी फ़िल्मों में भी दिखाया गया है।"
      },
      {
        "name": "Nawa Lake (नावा झील)",
        "image": "https://lh3.googleusercontent.com/gps-cs-s/AC9h4npyLjhJMLHerqRvLg16m5a8p97MzcEtIYHGXDPCDfIF4yAW1XkJWHr8pEO3gFwcMS8LrSHfaXgzPmRD4axdxzt9Y2yQbWjkfZHowO14-DA4kyG2OMyGWlzEfVZXhzf_PpqzTmCk-Q=s1360-w1360-h1020-rw",
        "description": "An important saltwater lake with a salt market located nearby. | एक महत्वपूर्ण खारे पानी की झील, जिसके पास ही नमक का बड़ा बाजार स्थित है।"
      }
    ],

    "Dudu (दूदू)": [
      {
        "name": "Dudu Fort (दूदू किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFZ5qDWZY94eHY6_cXAmP_kgak33EP4kamGw&s",
        "description": "A historical landmark in Dantri, Dudu, rated highly and considered one of the main historical attractions of the city. | दूदू के डनट्री में स्थित एक ऐतिहासिक स्मारक, जो उच्च रेटिंग वाला और शहर का प्रमुख इतिहासिक आकर्षण माना जाता है।"
      },
      {
        "name": "Shri 1008 Parshvnath Digamber Jain Mandir, Nasiya Ji (नासिया जी जैन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrZlfK8fKyH_J0EdIxYNMMa_jHtssp0NUoHQ&s",
        "description": "A revered Parshvnath Jain temple near Dudu Pond. | दूदू तालाब के पास स्थित पार्श्वनाथ जैन मंदिर, जिसे लोग श्रद्धा के साथ दर्शन करते हैं।"
      },
    ],

    "Gangapur City (गंगापुर सिटी)": [
      {
        "name": "Chowk Wale Hanuman Ji Temple (चौक वाले हनुमान जी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSreD8UdI5g6mKjKYcoKvdM-QfxBmWutQ7uRA&s",
        "description": "A well-known local Hanuman temple located at the heart of the city market area. | शहर के बाज़ार क्षेत्र के बीचों-बीच स्थित एक प्रसिद्ध हनुमान मंदिर।"
      },
    ],

    "Kekri (केकड़ी)": [
      {
        "name": "St. Mary's Graveyard (सेंट मैरीज़ ग्रेवयार्ड)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/c8/cc/ec/ajmer-sightseen.jpg?w=500&h=-1&s=1",
        "description": "A historic cemetery in Kekri that reflects colonial-era architecture and heritage. | केकड़ी में स्थित यह ऐतिहासिक कब्रिस्तान औपनिवेशिक युग की झलक और धरोहर प्रस्तुत करता है।"
      },
      {
        "name": "Bhoraji-ka-Kund (भोराजी का कुंड)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/fc/43/35/bhoraji-ka-kund.jpg?w=800&h=600&s=1",
        "description": "An ancient stepwell and historic site known for its architecture and heritage importance. | एक प्राचीन बावड़ी और ऐतिहासिक स्थल, जो अपनी वास्तुकला और धरोहर महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Raja Rai Singh Mahal (राजा राय सिंह महल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f7/0d/28/several-storeys-high.jpg?w=800&h=600&s=1",
        "description": "A heritage palace in Kekri showcasing Rajput architecture, lesser-known but historically significant. | केकड़ी का यह धरोहर महल राजपूत वास्तुकला का उदाहरण है, कम ज्ञात परंतु ऐतिहासिक रूप से महत्वपूर्ण।"
      }
    ],

    "Khairthal-Tijara (खैरथल-तिजारा)": [
      {
        "name": "Lal Masjid, Tijara (लाल मस्जिद, तिजारा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVZZ8bFx2hCoDMcU6rugP802gwTpAMz6lJxg&s",
        "description": "A 17th-century red sandstone Mughal mosque built by Hindal Mirza, listed as a Monument of National Importance. | 17वीं सदी में हिंदल मिर्जा द्वारा निर्मित लाल बलुआ पत्थर की मुगल शैली की मस्जिद, जो राष्ट्रीय महत्व की स्मारक है।"
      },
      {
        "name": "Tijara Jain Temple (तिजारा जैन मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/1/1c/Tijara_Jain_Temple_-_Main%282%29.jpg",
        "description": "An Atishaya Kshetra dedicated to Chandraprabhu, established after the discovery of miraculous idols in 1956; a major Jain pilgrimage site. | 1956 में चमत्कारिक मूर्तियों के मिलने पर स्थापित यह चंद्रप्रभु को समर्पित अतिशय क्षेत्र है और एक प्रमुख जैन तीर्थ स्थल है।"
      },
      {
        "name": "Tijara Fort-Palace & Gardens (तिजारा किला-महल एवं उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/85/a2/63/neemrana-s-tijara-fort.jpg?w=900&h=-1&s=1",
        "description": "A 19th-century unfinished palace converted into a heritage hotel. Its terraced gardens bloom year-round, offering a lush retreat. | 19वीं सदी का अधूरा महल जो अब हेरिटेज होटल में परिवर्तित है, इसकी पट्टेदार बागवानी पूरे वर्ष खिलती रहती है और यह विश्राम के लिए आदर्श स्थल है।"
      },
      {
        "name": "Sariska Tiger Reserve (सारिस्का टाइगर रिज़र्व)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/4d/4a/d6/caption.jpg?w=800&h=400&s=1",
        "description": "Located nearby, this national park is home to Bengal tigers, leopards, and diverse bird species—popular for wildlife safaris. | पास में स्थित यह राष्ट्रीय उद्यान बंगाल टाइगर्स, तेंदुए और विभिन्न पक्षियों का आकर्षण है—वन्यजीव सफारी के लिए प्रसिद्ध।"
      },
    ],

    "Kotputli-Behror (कोटपुतली-बहरोड़)": [
      {
        "name": "Neemrana Fort Palace (नीमराना किला महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwyefZLFP50UIw8ukfLtMYDgpJ_CqW09lIaQ&s",
        "description": "A 15th-century heritage fort converted into a luxury hotel, famous for its architecture, step-wells, and zip-lining adventure. | 15वीं सदी का ऐतिहासिक किला जो अब लक्ज़री होटल में बदल चुका है, अपनी वास्तुकला, बावड़ियों और ज़िप-लाइनिंग रोमांच के लिए प्रसिद्ध है।"
      },
      {
        "name": "Baba Khetanath Temple (बाबा खेतानाथ मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Baba_Khetanath.jpg/330px-Baba_Khetanath.jpg",
        "description": "A revered temple dedicated to Baba Khetanath, visited by thousands of devotees seeking blessings. | बाबा खेतानाथ को समर्पित यह पवित्र मंदिर श्रद्धालुओं के लिए आस्था का केंद्र है।"
      },
    ],

    "Neem ka Thana (नीम का थाना)": [
      {
        "name": "Khetri Fort (खेतड़ी किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/c6/c1/10/getlstd-property-photo.jpg?w=500&h=400&s=1",
        "description": "A historic fort built in the 18th century by Raja Bhopal Singh, known for its Rajput-Mughal architectural style and panoramic views of the region. | 18वीं सदी में राजा भोपाल सिंह द्वारा निर्मित यह किला राजपूत-मुगल स्थापत्य शैली और क्षेत्र के विहंगम दृश्यों के लिए प्रसिद्ध है।"
      },
      {
        "name": "Khalda Wale Hanumanji (खालदा वाले हनुमानजी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/72/37/c1/khalda-wale-hanumanji.jpg?w=800&h=600&s=1",
        "description": "A famous temple dedicated to Lord Hanuman, attracting devotees from nearby regions. Known for its spiritual aura and religious gatherings. | भगवान हनुमान को समर्पित प्रसिद्ध मंदिर, जो आसपास के क्षेत्रों से श्रद्धालुओं को आकर्षित करता है और अपनी आध्यात्मिकता व धार्मिक आयोजनों के लिए जाना जाता है।"
      }
    ],

    "Phalodi (फालोदी)": [
      {
        "name": "Jain Glass Temple (जैन ग्लास मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/85/fa/22/magnifique-plafond-et.jpg?w=1200&h=-1&s=1",
        "description": "A beautiful Jain temple in Phalodi, famous for its glasswork and intricate carvings. It is an important pilgrimage site for the Jain community. | फलोदी का प्रसिद्ध जैन मंदिर, जो कांच की नक्काशी और कलात्मक शिल्पकला के लिए जाना जाता है। यह जैन समाज का महत्वपूर्ण तीर्थ स्थल है।"
      },
      {
        "name": "Phalodi Fort (फलोदी किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/9e/60/1c/phalodi-fort.jpg?w=1200&h=-1&s=1",
        "description": "Built in the 15th century, this fort is known for its strong Rajput architecture and historical significance in Marwar. | 15वीं सदी में निर्मित यह किला अपनी सुदृढ़ राजपूत स्थापत्य कला और मारवाड़ के इतिहास में महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Lal Niwas Haveli (लाल निवास हवेली)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9_Oc3C5WSNcbr6v_FSVUX0OSXEMgzUX5FMQ&s",
        "description": "An old heritage haveli turned into a hotel, showcasing beautiful red sandstone architecture of Phalodi. | लाल बलुआ पत्थर से बनी यह पुरानी हवेली अब हेरिटेज होटल है, जो फलोदी की शिल्पकला को दर्शाती है।"
      },
    ],

    "Salumbar (सलूम्बर)": [
      {
        "name": "Jaisamand Lake (जयसमंद झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/08/e4/96/jaisamand-as-seen-from.jpg?w=800&h=600&s=1",
        "description": "Asia’s second-largest artificial lake, built in the 17th century by Maharana Jai Singh. Surrounded by marble temples and palaces, it is a scenic attraction. | एशिया की दूसरी सबसे बड़ी कृत्रिम झील, जिसका निर्माण 17वीं सदी में महाराणा जयसिंह ने कराया। झील के किनारे संगमरमर के मंदिर और महल हैं, जो इसे दर्शनीय बनाते हैं।"
      },
      {
        "name": "Rishabhdeo or Kesariyaji Jain Temple (ऋषभदेव या केसरीयाजी जैन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/84/40/b5/20160602-102613-largejpg.jpg?w=800&h=-1&s=1",
        "description": "An important Jain pilgrimage dedicated to Lord Rishabhdev, also revered by Hindus as Kesariyaji. Known for its architectural beauty and spiritual significance. | भगवान ऋषभदेव को समर्पित प्रमुख जैन तीर्थ, जिसे हिंदू समाज केसरीयाजी के नाम से पूजता है। इसकी स्थापत्य कला और धार्मिक महत्व इसे विशेष बनाते हैं।"
      },
      {
        "name": "Sita Mata Wildlife Sanctuary (सीता माता वन्यजीव अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/a7/50/b2/wind-energy-setup-near.jpg?w=800&h=600&s=1",
        "description": "A forest reserve rich in biodiversity, home to flying squirrels, leopards, hyenas, and migratory birds. It is also linked to the legend of Goddess Sita. | जैव विविधता से भरपूर वन्यजीव क्षेत्र, जहाँ उड़न गिलहरी, तेंदुए, लकड़बग्घा और प्रवासी पक्षी पाए जाते हैं। इसका संबंध माता सीता की कथा से भी माना जाता है।"
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
