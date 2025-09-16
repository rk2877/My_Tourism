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

    // ✅ Chennai District
    "Chennai (चेन्नई)": [
      {
        "name": "Marina Beach (मरीना बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSocT-mLQMNOrA6x7NV1cklnBikdzAOVVFfiQ&s",
        "description": "Longest urban beach in India. भारत का सबसे लंबा शहरी समुद्र तट।"
      },
      {
        "name": "Kapaleeshwarar Temple (कपलीश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/86/2c/66/caption.jpg?w=800&h=400&s=1",
        "description": "Famous Shiva temple in Mylapore. प्रसिद्ध शिव मंदिर।"
      },
      {
        "name": "Fort St. George (फोर्ट सेंट जॉर्ज)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/63/67/f1/the-fort-which-now-houses.jpg?w=900&h=500&s=1",
        "description": "First English fortress in India. भारत का पहला अंग्रेजी किला।"
      },
      {
        "name": "Valluvar Kottam (वल्लुवर कोट्टम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLRfuuyJIVK7CA6na4IdX9u2-aFIrXUeZyeA&s",
        "description": "Memorial of Tamil poet Thiruvalluvar. तमिल कवि तिरुवल्लुवर का स्मारक।"
      },
      {
        "name": "Government Museum (सरकारी संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/e1/c5/ff/government-museum.jpg?w=900&h=500&s=1",
        "description": "Oldest museum in India. भारत का सबसे पुराना संग्रहालय।"
      },
      {
        "name": "Santhome Basilica (संतोमे बेसिलिका)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7rNBWnB_midZ-bovMX6SZXJ2k69gIirxogg&s",
        "description": "Historic Roman Catholic church. ऐतिहासिक कैथोलिक चर्च।"
      },
      {
        "name": "Guindy National Park (गुइंडी नेशनल पार्क)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/12/39/85/da/guindy-national-park.jpg",
        "description": "One of the smallest national parks in India. भारत का सबसे छोटा राष्ट्रीय उद्यान।"
      },
      {
        "name": "Elliot’s Beach (एलियट बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/02/27/0d/ac/elliots-beach-memorial.jpg?w=900&h=500&s=1",
        "description": "Peaceful beach loved by youngsters. युवाओं का पसंदीदा शांत समुद्र तट।"
      },
      {
        "name": "Arignar Anna Zoological Park (अरिग्नार अन्ना जूलॉजिकल पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWbbFiSS2KdJqaLoIo-nlJhASMSZcBe_-7ZQ&s",
        "description": "Largest zoo in South Asia. दक्षिण एशिया का सबसे बड़ा चिड़ियाघर।"
      },
      {
        "name": "Birla Planetarium (बिरला तारामंडल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/8a/59/b8/birla-planetarium-chennai.jpg?w=600&h=400&s=1",
        "description": "Popular science and space centre. लोकप्रिय विज्ञान और अंतरिक्ष केंद्र।"
      },
    ],

    // ✅ Madurai District
    "Madurai (मदुरै)": [
      {
        "name": "Meenakshi Temple (मीनाक्षी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_VyU0Tji6mnfTwZ68jDI4h1ajKjyXg62DZA&s",
        "description": "Famous Hindu temple of Goddess Meenakshi. देवी मीनाक्षी का प्रसिद्ध हिंदू मंदिर।"
      },
      {
        "name": "Thirumalai Nayakkar Palace (तिरुमलाई नायक महल)",
        "image": "https://c8.alamy.com/comp/HN19WG/courtyard-of-thirumalai-nayakkar-mahal-palace-madurai-HN19WG.jpg",
        "description": "17th century palace of Nayak dynasty. 17वीं सदी का ऐतिहासिक महल।"
      },
      {
        "name": "Gandhi Memorial Museum (गांधी संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/7e/8a/77/glowny-budynek.jpg?w=1200&h=1200&s=1",
        "description": "Museum dedicated to Mahatma Gandhi. महात्मा गांधी को समर्पित संग्रहालय।"
      },
      {
        "name": "Azhagar Kovil (अझगर कोविल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/bc/28/5b/alagarkoil-temple-and.jpg?w=1200&h=-1&s=1",
        "description": "Famous Vishnu temple. प्रसिद्ध विष्णु मंदिर।"
      },
      {
        "name": "Pazhamudhir Solai (पझमुदिर सोलई)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMLaCIpaHDLxb2Jjr-bl6TTTGoVwsH28d4ng&s",
        "description": "Hill temple dedicated to Murugan. मुरुगन को समर्पित पहाड़ी मंदिर।"
      },
      {
        "name": "Koodal Azhagar Temple (कूडल अळगर मंदिर)",
        "image": "https://c8.alamy.com/comp/CE5N77/koodal-azhagar-vishnu-temple-madurai-tamil-nadu-india-asia-CE5N77.jpg",
        "description": "Ancient Dravidian style temple. प्राचीन द्रविड़ शैली का मंदिर।"
      },
      {
        "name": "Vandiyur Mariamman Teppakulam (वंडीयूर मरिअम्मन टैंक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/22/62/8b/taken-on-the-float-festival.jpg?w=1200&h=1200&s=1",
        "description": "Huge temple tank used for festivals. त्योहारों के लिए प्रसिद्ध बड़ा जलाशय।"
      },
    ],

    // ✅ Rameswaram District
    "Ramanathapuram (रामनाथपुरम)": [
      {
        "name": "Ramanathaswamy Temple (रामनाथस्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/91/84/f9/the-main-attraction-of.jpg?w=1200&h=-1&s=1",
        "description": "One of the Char Dham pilgrimage sites. चार धाम में से एक प्रमुख तीर्थ।"
      },
      {
        "name": "Pamban Bridge (पंबन ब्रिज)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/cd/6c/f3/photo0jpg.jpg?w=1200&h=1200&s=1",
        "description": "India’s first sea bridge, iconic landmark. भारत का पहला समुद्री पुल।"
      },
      {
        "name": "Dhanushkodi Beach (धनुष्कोडी बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0KB_Jmq7CIsg8x8afqDk5-ENuTbvng2tfNA&s",
        "description": "Ghost town with scenic beach. सुनसान गाँव और खूबसूरत समुद्र तट।"
      },
      {
        "name": "Agni Theertham (अग्नि तीर्थ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/16/88/52/agnitheertham.jpg?w=1200&h=-1&s=1",
        "description": "Sacred bathing spot near temple. मंदिर के पास पवित्र स्नान स्थल।"
      },
      {
        "name": "Kothandaramaswamy Temple (कोठंडरामस्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/4f/20/7d/unique-honour-for-vibeeshanan.jpg?w=900&h=500&s=1",
        "description": "Associated with Ramayana legend. रामायण से जुड़ा मंदिर।"
      },
    ],

    // ✅ Kodaikanal District
    "Nilgiris (नीलगिरी)": [
      {
        "name": "Kodaikanal Lake (कोडाईकनाल झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/a7/9f/46/the-misty-lake.jpg?w=1200&h=-1&s=1",
        "description": "Popular for boating and scenic views. नौका विहार और प्राकृतिक दृश्य।"
      },
      {
        "name": "Coaker’s Walk (कोकर वॉक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/4d/0a/5d/views-of-valley-mountains.jpg?w=900&h=500&s=1",
        "description": "Beautiful valley view path. घाटी के दृश्य वाला सुंदर रास्ता।"
      },
      {
        "name": "Pillar Rocks (पिलर रॉक्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/f3/4b/79/pillar-rocks.jpg?w=1200&h=1200&s=1",
        "description": "Natural tall rock pillars. प्राकृतिक चट्टान स्तंभ।"
      },
      {
        "name": "Bryant Park (ब्रायंट पार्क)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/dd/0c/3a/bryant-park.jpg?w=1200&h=-1&s=1",
        "description": "Botanical park near the lake. झील के पास का बॉटनिकल पार्क।"
      },
      {
        "name": "Silver Cascade Falls (सिल्वर कैस्केड झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/55/42/61/silver-cascade-falls.jpg?w=800&h=-1&s=1",
        "description": "Famous roadside waterfall. सड़क किनारे का प्रसिद्ध झरना।"
      },
    ],


    // ✅ Thanjavur District
    "Thanjavur (तंजावुर)": [
      {
        "name": "Brihadeeswara Temple (बृहदीश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHTZ-NEyNh84dJgPurCOYRvNkqF_ZSOET_xw&s",
        "description": "UNESCO World Heritage temple. यूनेस्को विश्व धरोहर मंदिर।"
      },
      {
        "name": "Thanjavur Palace (तंजावुर महल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzymQm9vauWwFgzpswOjcWLeNq6ybqBQcJGw&s",
        "description": "Historic Maratha palace. ऐतिहासिक मराठा महल।"
      },
      {
        "name": "Saraswathi Mahal Library (सरस्वती महल पुस्तकालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/76/99/d9/saraswathi-mahal-library.jpg?w=900&h=500&s=1",
        "description": "One of the oldest libraries in Asia. एशिया का सबसे पुराना पुस्तकालय।"
      },
    ],

    // ✅ Kanyakumari District
    "Kanyakumari (कन्याकुमारी)": [
      {
        "name": "Vivekananda Rock Memorial (विवेकानंद रॉक स्मारक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/94/8f/da/img-20170304-wa0027-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Memorial of Swami Vivekananda. स्वामी विवेकानंद का स्मारक।"
      },
      {
        "name": "Thiruvalluvar Statue (तिरुवल्लुवर प्रतिमा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/b5/2a/fb/thiruvalluvar-statue.jpg?w=1200&h=1200&s=1",
        "description": "133 feet tall statue. 133 फीट ऊँची प्रतिमा।"
      },
      {
        "name": "Kanyakumari Beach (कन्याकुमारी बीच)",
        "image": "https://img.traveltriangle.com/apac//attachments/pictures/869878/original/shutterstock_258682913.jpg",
        "description": "Triveni Sangam of 3 seas. तीन समुद्रों का संगम।"
      },
      {
        "name": "Gandhi Mandapam (गांधी मंडपम)",
        "image": "https://c8.alamy.com/comp/2JM0BGE/view-of-mahatma-gandhi-mandapam-at-beachside-kanyakumari-tamilnadu-india-2JM0BGE.jpg",
        "description": "Memorial for Mahatma Gandhi. महात्मा गांधी का स्मारक।"
      },
      {
        "name": "Suchindram Temple (सुचिंद्रम मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/56/a7/63/suchindram-temple.jpg?w=800&h=-1&s=1",
        "description": "Temple with musical pillars. संगीत स्तंभों वाला मंदिर।"
      },
      {
        "name": "Padmanabhapuram Palace (पद्मनाभपुरम पैलेस)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/d5/ce/46/padmanabhapuram-palace.jpg?w=900&h=500&s=1",
        "description": "Wooden palace of Travancore kings. त्रावणकोर राजाओं का लकड़ी का महल।"
      },
      {
        "name": "Vattakottai Fort (वट्टकोट्टई किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP4jEv8PkkzphPnNiv9V8a8nG7KNXcPrY_bA&s",
        "description": "Seaside fort with scenic views. समुद्र किनारे का किला।"
      },
      {
        "name": "Thirparappu Falls (थिरपारप्पु जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/15/a3/6d/thirparappu-falls.jpg?w=900&h=500&s=1",
        "description": "Beautiful waterfall. सुंदर जलप्रपात।"
      },
    ],

    // 🔹 Ariyalur District (अरियालूर)
    "Ariyalur (अरियालुर)": [
      {
        "name": "Gangaikonda Cholapuram Temple (गंगैकोंडा चोलपुरम मंदिर)",
        "image": "https://c8.alamy.com/comp/DHY65H/brihadeeswarar-temple-11th-century-gangaikonda-cholapuram-tamil-nadu-DHY65H.jpg",
        "description":
        "UNESCO World Heritage Site, built by Rajendra Chola. लाखों लोग हर साल यहाँ दर्शन करने आते हैं।"
      },
      {
        "name": "Karaivetti Bird Sanctuary (करैवेट्टी पक्षी अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Hk_JyIWjbEvD2tg24Jga8cWAjZKE2kuY9g&s",
        "description":
        "Famous sanctuary for migratory birds. प्रवासी पक्षियों को देखने के लिए हजारों सैलानी आते हैं।"
      },
      {
        "name": "Ariyalur Fossil Park (अरियालूर जीवाश्म उद्यान)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZz99hOSD0jZLkNu_WF2Ivr3-Vo5NgookmZw&s",
        "description":
        "Unique fossil park showcasing 65 million-year-old fossils. छात्रों और वैज्ञानिकों की खास पसंद।"
      },
      {
        "name": "Kiliyur Falls (किलीयूर जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/3a/eb/38/kiliyur-falls.jpg?w=1200&h=-1&s=1",
        "description":
        "Beautiful waterfalls, popular picnic spot. गर्मियों में हजारों पर्यटक आते हैं।"
      },
      {
        "name": "Sivan Temple (शिवन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmN5Z48lt9zaykKAIn0BvEQNsueqg7rwhP8w&s",
        "description":
        "Historic temple known for architecture and Chola inscriptions. धार्मिक और सांस्कृतिक महत्व।"
      },
    ],

    // 🔹 Chengalpattu District (चेंगलपट्टु)
    "Chengalpattu (चेंगलपट्टु)": [
      {
        "name": "Mahabalipuram Shore Temple (महाबलीपुरम शोर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/4a/8a/c0/shore-temple.jpg?w=800&h=-1&s=1",
        "description":
        "UNESCO World Heritage Site, lakhs of tourists visit yearly. शोर मंदिर अपनी मूर्तिकला और समुद्री दृश्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Pancha Rathas (पंच रथ)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/e6/57/c7/pancha-pandava-rathas.jpg?w=200&h=-1&s=1",
        "description":
        "Famous rock-cut temples dedicated to Pandavas. लाखों लोग देखने आते हैं।"
      },
      {
        "name": "Arjuna's Penance (अर्जुन तपस्या)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/4e/cd/91/arjuna-s-penance.jpg?w=1200&h=1200&s=1",
        "description":
        "World’s largest rock relief carvings. पर्यटकों और इतिहासकारों के लिए आकर्षण।"
      },
      {
        "name": "Crocodile Bank (मगरमच्छ बैंक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/f4/1f/bb/a-close-up.jpg?w=1200&h=1200&s=1",
        "description":
        "Wildlife lovers’ hub with crocodiles, snakes, turtles. बच्चों और परिवारों के लिए मशहूर।"
      },
      {
        "name": "Thirukazhukundram Temple (थिरुकळुकुंद्रम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ95re-iIN8YDSx4o97MH0Diw7KFmB3AAXdRg&s",
        "description":
        "Holy temple on a hill, lakhs of pilgrims visit. इसे वेदगिरी हिल भी कहते हैं।"
      },
      {
        "name": "Dakshina Chitra Museum (दक्षिण चित्र संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/5c/76/04/dakshinachitra.jpg?w=1200&h=-1&s=1",
        "description":
        "Living museum of South Indian culture, art and crafts. संस्कृति प्रेमियों के लिए आकर्षण।"
      },
    ],

    // 🔹 Coimbatore District (कोयंबटूर)
    "Coimbatore (कोयंबटूर)": [
      {
        "name": "Marudamalai Temple (मरुदमलाई मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/35/44/21/marudamalai-temple.jpg?w=1200&h=1200&s=1",
        "description":
        "Hill temple dedicated to Lord Murugan, lakhs of devotees every year. सुंदर पहाड़ी नजारे।"
      },
      {
        "name": "Isha Yoga Center & Adiyogi Statue (ईशा योग केंद्र और आदि योगी प्रतिमा)",
        "image": "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/15/3b/8c/de.jpg",
        "description":
        "112 feet tall Adiyogi Shiva statue, spiritual hub. लाखों लोग ध्यान और शांति के लिए आते हैं।"
      },
      {
        "name": "VOC Park and Zoo (वीओसी पार्क और चिड़ियाघर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/a9/30/31/voc-park-3.jpg?w=1200&h=-1&s=1",
        "description":
        "Family-friendly zoo and park. बच्चों और पर्यटकों के लिए खास जगह।"
      },
      {
        "name": "Siruvani Waterfalls (सिरुवाणी झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/59/2e/df/vaidehi-waterfall.jpg?w=300&h=300&s=1",
        "description":
        "Famous for sweetest water in the world. सुंदर प्राकृतिक स्थल।"
      },
      {
        "name": "Perur Pateeswarar Temple (पेरूर पाटेश्वरर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi6QhBqgFh7C6jh3EV12BYIXVm72M7KVfYzg&s",
        "description":
        "Ancient temple known for its carvings and rituals. धार्मिक महत्व का स्थान।"
      },
      {
        "name": "Kovai Kondattam (कोवाई कोंडट्टम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/d0/08/9a/fish-pool.jpg?w=1200&h=1200&s=1",
        "description":
        "Popular water theme park. बच्चों और परिवारों के लिए खास।"
      },
      {
        "name": "Gedee Car Museum (गेडी कार संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/37/86/7c/caption.jpg?w=1200&h=-1&s=1",
        "description":
        "Vintage and rare cars collection. कार प्रेमियों का स्वर्ग।"
      },
    ],
    // 🔹 Cuddalore (कुड्डालोर)
    "Cuddalore (कड्डलोर)": [
      {
        "name": "Silver Beach (सिल्वर बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/da/7d/19/walk-to-beach.jpg?w=900&h=500&s=1",
        "description": "Famous long beach on Coromandel Coast, perfect for sunrise view. कोरमंडल तट का लंबा प्रसिद्ध बीच, सूर्योदय देखने के लिए बेहतरीन।"
      },
      {
        "name": "Fort St. David (फोर्ट सेंट डेविड)",
        "image": "https://cdn.s3waas.gov.in/s3a96b65a721e561e1e3de768ac819ffbb/uploads/bfi_thumb/2018070391-olwbvuqvimbbkp3zdcytwxp5e3lu5vppqgutvavs7e.png",
        "description": "Historic 17th century British fort. 17वीं सदी का ऐतिहासिक ब्रिटिश किला।"
      },
      {
        "name": "Pichavaram Mangrove Forest (पिचावरम मैंग्रोव जंगल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/49/d1/6e/pichavaram.jpg?w=1200&h=-1&s=1",
        "description": "World’s second largest mangrove forest, famous for boating. दुनिया का दूसरा सबसे बड़ा मैंग्रोव जंगल, नौकायन के लिए मशहूर।"
      },
      {
        "name": "Devanathaswamy Temple (देवनाथस्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/32/63/9a/photo0jpg.jpg?w=1200&h=1200&s=1",
        "description": "Ancient Vishnu temple in Thiruvanthipuram. तिरुवंथिपुरम का प्राचीन विष्णु मंदिर।"
      },
      {
        "name": "Padaleeswarar Temple (पदलीश्वरर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/4a/d8/a7/temple.jpg?w=900&h=500&s=1",
        "description": "Dedicated to Lord Shiva, located in Cuddalore OT. भगवान शिव को समर्पित प्रसिद्ध मंदिर।"
      }
    ],

// 🔹 Dharmapuri (धर्मपुरी)
    "Dharmapuri (धर्मपुरी)": [
      {
        "name": "Hogenakkal Falls (होगेनक्कल जलप्रपात)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/9c/63/b6/hogenakkal-falls.jpg?w=1200&h=1200&s=1",
        "description": "Niagara of India, very popular for coracle rides. भारत का 'नियाग्रा', नाव की सवारी के लिए प्रसिद्ध।"
      },
      {
        "name": "Theerthamalai Temple (तीर्थमलाई मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/ed/29/e5/kasi-viswanath-shrine.jpg?w=1200&h=-1&s=1",
        "description": "Hill temple dedicated to Lord Shiva. पहाड़ी पर भगवान शिव का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Chenraya Perumal Temple (चेनराया पेरुमल मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1c/cd/95/73/temple.jpg",
        "description": "Famous Vishnu temple with historic architecture. ऐतिहासिक वास्तुकला वाला विष्णु मंदिर।"
      },
      {
        "name": "Subramanya Siva Memorial (सुबरमण्या शिवा स्मारक)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/d7/05/72/subramanya-siva-memorial.jpg?w=600&h=300&s=1",
        "description": "Memorial for freedom fighter Subramanya Siva. स्वतंत्रता सेनानी सुबरमण्या शिवा की स्मृति।"
      }
    ],

// 🔹 Dindigul (डिंडीगुल)
    "Dindigul (डिंडीगुल)": [
      {
        "name": "Sirumalai Hills (सिरुमलाई हिल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/04/62/d1/sirumalai-reserved-forest.jpg?w=400&h=-1&s=1",
        "description": "Green hills with trekking trails. हरियाली से भरी पहाड़ियाँ, ट्रेकिंग के लिए मशहूर।"
      },
      {
        "name": "Dindigul Fort (डिंडीगुल किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/a3/e3/7e/photo6jpg.jpg?w=1200&h=1200&s=1",
        "description": "Historic fort built by Madurai Nayaks. मदुरै नायकों द्वारा बनाया गया ऐतिहासिक किला।"
      },
      {
        "name": "Kodaikanal (कोडाईकनाल)",
        "image": "https://imagedelivery.net/y9EHf1toWJTBqJVsQzJU4g/www.indianholiday.com/2024/09/koidaikanal-best-1.png/w=330",
        "description": "Popular hill station with lake, waterfalls, and valleys. झीलों और झरनों से घिरा हिल स्टेशन।"
      },
      {
        "name": "Palani Murugan Temple (पालनी मुरुगन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/42/47/c0/palani-murugan-temple.jpg?w=1200&h=-1&s=1",
        "description": "One of the six abodes of Lord Murugan. भगवान मुरुगन के छह पवित्र धामों में से एक।"
      },
      {
        "name": "Begambur Big Mosque (बेगमपुर बड़ी मस्जिद)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgiGOnCHk1iui6rkBbKloN1-ZDBJaeZuNhgQ&s",
        "description": "Historic mosque built in 17th century. 17वीं सदी की ऐतिहासिक मस्जिद।"
      }
    ],
// ✅ Erode District (इरोड)
    "Erode (ईरोड)": [
      {
        "name": "Bhavani Sangameshwarar Temple (भवानी संगमेश्वर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/18/01/56/gopuram-2.jpg?w=1200&h=1200&s=1",
        "description": "तीन नदियों (भवानी, कावेरी और अमुधा) के संगम पर स्थित प्रमुख मंदिर। हर साल लाखों श्रद्धालु आते हैं।"
      },
      {
        "name": "Vellode Bird Sanctuary (वेलोड पक्षी अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/25/29/ef/vellode-bird-sanctuary.jpg?w=900&h=-1&s=1",
        "description": "प्रवासी पक्षियों का प्रसिद्ध अभयारण्य। सर्दियों में लाखों पक्षी देखने आते हैं।"
      },
      {
        "name": "Periya Mariamman Temple (पेरिया मरियम्मन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/60/b3/9d/peria-mariamman-kovil.jpg?w=1200&h=-1&s=1",
        "description": "देवी मरियम्मन का ऐतिहासिक मंदिर। हर साल बड़ा उत्सव आयोजित होता है।"
      },
      {
        "name": "Chennimalai Murugan Temple (चेनिमलाई मुरुगन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiiguXVgeeXUfbLZ-WgQ7SfhDDqB7u5EhiLw&s",
        "description": "पहाड़ी पर स्थित मुरुगन मंदिर। तीर्थयात्रियों के लिए प्रसिद्ध स्थल।"
      },
      {
        "name": "Kodiveri Dam (कोडिवेरी बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/b7/55/15/near-water-falling-location.jpg?w=1200&h=-1&s=1",
        "description": "सुंदर बांध और पिकनिक स्थल। गर्मियों में पर्यटकों की भीड़।"
      },
      {
        "name": "Bannari Amman Temple (बन्नारी अम्मन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/bf/01/48/img20180109123821-largejpg.jpg?w=1200&h=1200&s=1",
        "description": "देवी मरियम्मन का एक और प्रमुख मंदिर। लाखों श्रद्धालु आते हैं।"
      },
      {
        "name": "Government Museum Erode (सरकारी संग्रहालय, इरोड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwWpqaWUTgB0tWXezJEoS02maPz4VDv1EAxg&s",
        "description": "कला और पुरातत्व का संग्रहालय। छात्रों और शोधकर्ताओं के लिए प्रसिद्ध।"
      },
      {
        "name": "Amirthi Forest & Zoo (अमिर्थी वन्यजीव उद्यान)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/fb/64/a5/amirthi-zoological-park.jpg?w=1200&h=-1&s=1",
        "description": "वन्यजीव और जलप्रपात के लिए प्रसिद्ध। परिवारों के लिए घूमने का स्थान।"
      },
    ],

// ✅ Kallakurichi District (कल्लाकुरिची)
    "Kallakurichi (कल्लाकुरिची)": [
      {
        "name": "Kalvarayan Hills (कलवरायन हिल्स)",
        "image": "https://feeds.abplive.com/onecms/images/uploaded-images/2024/05/17/4f1bf423f8b6b73fcae3522f29c72eca1715954486519113_original.jpg",
        "description": "झरनों और ट्रेकिंग के लिए प्रसिद्ध पहाड़ियां। गर्मियों में भीड़ रहती है।"
      },
      {
        "name": "Kalrayan Falls (कलरायन जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZuOwzFuYQTbs0FPkBRoZVIIwNGB1w_xxrfA&s",
        "description": "सुंदर मौसमी जलप्रपात। मानसून के समय अधिक आकर्षक।"
      },
      {
        "name": "Periyar Eri Lake (पेरियार एरी झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/f1/46/5b/periyar-lake.jpg?w=1200&h=-1&s=1",
        "description": "बड़ी झील, नौका विहार और पिकनिक के लिए प्रसिद्ध।"
      },
      {
        "name": "Chinna Salem Temples (चिन्ना सलेम मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrLExRD5wjm25K29BAN7kJQK-MSYPqHOCmTA&s",
        "description": "चिन्ना सलेम कस्बे के प्राचीन मंदिर। धार्मिक महत्व के लिए मशहूर।"
      },
    ],

// ✅ Kanchipuram District (कांचीपुरम)
    "Kanchipuram (कांचीपुरम)": [
      {
        "name": "Kailasanathar Temple (कैलासनाथर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbJj5KjUBClOZWNNgmOC124v_IE3NKBOsQOQ&s",
        "description": "पल्लव काल का सबसे पुराना मंदिर। लाखों लोग दर्शन के लिए आते हैं।"
      },
      {
        "name": "Ekambareswarar Temple (एकाम्बरेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz5vTxo5ftvv5ouE7M39sbPz8aiOVaCw7ecw&s"
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz5vTxo5ftvv5ouE7M39sbPz8aiOVaCw7ecw&s",
        "description": "पंचभूत स्थलों में से एक प्रमुख शिव मंदिर। बहुत बड़ा परिसर।"
      },
      {
        "name": "Kamakshi Amman Temple (कामाक्षी अम्मन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/8e/51/4d/kamakshi-amman-temple.jpg?w=900&h=500&s=1",
        "description": "देवी कामाक्षी का प्रसिद्ध मंदिर। नवरात्रि पर लाखों श्रद्धालु आते हैं।"
      },
      {
        "name": "Varadharaja Perumal Temple (वरदराज पेरुमल मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRVJaXkvLyoBOuTyo_3vTc6Csth6RUdMqtWA&s",
        "description": "विशाल विष्णु मंदिर। स्थापत्य कला का अद्भुत उदाहरण।"
      },
      {
        "name": "Kanchi Kudil (कांची कुडिल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/dd/fa/64/kanchi-kudil-2.jpg?w=900&h=-1&s=1",
        "description": "पारंपरिक विरासत घर। संस्कृति और कला प्रेमियों के लिए आकर्षण।"
      },
      {
        "name": "Devarajaswami Temple (देवराजस्वामी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/ba/c2/5a/main-gopuram.jpg?w=900&h=500&s=1",
        "description": "कांचीपुरम का एक और महत्वपूर्ण विष्णु मंदिर। धार्मिक पर्यटक यहाँ जरूर आते हैं।"
      },
    ],

// ✅ Karur District (करूर)
    "Karur (करूर)": [
      {
        "name": "Kalyana Pasupatheswarar Temple (कल्याण पासुपतेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKtHPv0Ckyu3FLfgI4wQ6yotsE0G0fPIiCGg&s",
        "description": "प्रसिद्ध शिव मंदिर। करूर शहर का धार्मिक केंद्र।"
      },
      {
        "name": "Pugazhimalai Arupadai Murugan Temple (पुगझिमलाई मुरुगन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/6b/1a/38/img-20180901-173554-largejpg.jpg?w=900&h=-1&s=1",
        "description": "महत्वपूर्ण मुरुगन मंदिर। हर साल बड़ी संख्या में भक्त आते हैं।"
      },
      {
        "name": "Mayanur Barrage (मयनूर बैराज)",
        "image": "https://feeds.abplive.com/onecms/images/uploaded-images/2022/08/09/dcb0796db6678a24abc26122e934c14b1660025330800183_original.jpeg?impolicy=abp_cdn&imwidth=1200",
        "description": "कावेरी नदी पर बना बांध। पिकनिक और फोटोग्राफी स्थल।"
      },
      {
        "name": "Ponnaniyar Dam (पोननैयार बांध)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTDH9XUlR3-uXrAJVrq5At2GAq9hA6jHlAuw&s",
        "description": "सुंदर प्राकृतिक पिकनिक स्थल। गर्मियों में भीड़ रहती है।"
      },
      {
        "name": "Thanthonimalai Temple (थंथोनिमलाई मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvNGEmn6QQ5NuvgNcEx7ZMO9LHqQza7AlyBQ&s",
        "description": "करूर के प्रमुख मंदिरों में से एक। धार्मिक महत्व।"
      },
    ],

// ✅ Krishnagiri District (कृष्णागिरी)
    "Krishnagiri (कृष्णगिरि)": [
      {
        "name": "Krishnagiri Dam (कृष्णागिरी बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/91/8c/3f/krp-dam.jpg?w=1200&h=-1&s=1",
        "description": "लोकप्रिय बांध और बगीचा। परिवारों के लिए पिकनिक स्थल।"
      },
      {
        "name": "Rayakottai Fort (रायाकोट्टई किला)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/11/24/e3/a2/photo3jpg.jpg",
        "description": "ऐतिहासिक पहाड़ी किला। ट्रेकिंग और इतिहास प्रेमियों के लिए आकर्षण।"
      },
      {
        "name": "Shree Parshwa Padmavathi Shaktipeet (पार्श्व पद्मावती शक्तिपीठ तीर्थ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpvRC3IAP8ZK_xNcHTbsGhT781I0d7rM4_UA&s",
        "description": "प्रसिद्ध जैन तीर्थस्थल। श्रद्धालु पूरे साल आते हैं।"
      },
      {
        "name": "Thali Temple (थाली मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/30/d7/e3/temple.jpg?w=900&h=500&s=1",
        "description": "सुंदर पहाड़ी मंदिर। धार्मिक महत्व।"
      },
      {
        "name": "Hanumanthathirtham (हनुमंथतीर्थम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIL6TyjxSlVqje6bc358kSDlCFyW7ehgRM8Q&s",
        "description": "पवित्र स्थल, हनुमानजी से जुड़ा हुआ। तीर्थयात्री आते हैं।"
      },
    ],

// ✅ Mayiladuthurai District (मयिलाडुथुरै)
    "Mayiladuthurai (मयिलाडुथुरै)": [
      {
        "name": "Mayuranathar Temple (मयूरनाथर मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Gopuram_of_Mayuranathaswami_Temple.jpg/250px-Gopuram_of_Mayuranathaswami_Temple.jpg",
        "description": "प्रमुख शिव मंदिर। हर साल लाखों श्रद्धालु दर्शन के लिए आते हैं।"
      },
      {
        "name": "Vaitheeswaran Koil (वैद्येश्वरन कोइल)",
        "image": "https://thetempleguru.com/wp-content/uploads/2023/04/vaitheeswaran-koil-temple-9.jpg",
        "description": "प्रसिद्ध वैद्य मंदिर। रोगों के इलाज के लिए श्रद्धालु आते हैं।"
      },
      {
        "name": "Poombuhar Beach (पूम्बुहार बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/a1/84/81/view-from-light-house.jpg?w=1200&h=-1&s=1",
        "description": "ऐतिहासिक बीच टाउन। समुद्री सौंदर्य और इतिहास प्रेमियों के लिए आकर्षण।"
      },
      {
        "name": "Thirumanancheri Temple (तिरुमनांचेरी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/90/fc/eb/temple-for-marriage-very.jpg?w=1200&h=-1&s=1",
        "description": "विवाह से संबंधित प्रसिद्ध मंदिर। जोड़े यहाँ दर्शन करते हैं।"
      },
      {
        "name": "Sirkazhi Temple (सीर्काझी मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxtJHW1JUH_-LJ7qGLnT4szttWbX1K_E35QA&s",
        "description": "प्रमुख शिव मंदिर। धार्मिक महत्व।"
      },
      {
        "name": "Mela Kadambur Amirthakadeswarar Temple (मेल कडंबूर अमृतकडेश्वर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd69tsHEcFCbPCIua2rGd_KsG-crt24_bkew&s",
        "description": "चोल काल का प्राचीन मंदिर। स्थापत्य कला का उत्कृष्ट उदाहरण।"
      },
    ],

    // 🔹 Nagapattinam (नागपट्टिनम)
    "Nagapattinam (नागपट्टिनम)": [
      {
        "name": "Velankanni Church (वेलंकन्नी चर्च)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiLnnHllED3UuVqBq1DDkkhlAOPHC_bZW-JQ&s",
        "description": "Famous Basilica of Our Lady of Good Health. विश्व प्रसिद्ध मदर मेरी का चर्च।"
      },
      {
        "name": "Nagore Dargah (नागोर दरगाह)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1a/91/eb/7c/nagore-silladi-dargah.jpg",
        "description": "Sacred Islamic shrine over 500 years old. 500 साल पुराना इस्लामिक धार्मिक स्थल।"
      },
      {
        "name": "Kodikkarai Wildlife Sanctuary (कोडिक्करई अभयारण्य)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/66/14/7a/kodiakkarai-beach.jpg?w=900&h=500&s=1",
        "description": "Bird sanctuary with migratory birds. प्रवासी पक्षियों का प्रसिद्ध स्थल।"
      },
      {
        "name": "Soundararajaperumal Temple (सौंदरराजपेरुमल मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/cd/47/0a/soundararaja-perumal.jpg?w=200&h=-1&s=1",
        "description": "Ancient Vishnu temple. प्राचीन विष्णु मंदिर।"
      },
      {
        "name": "Kayarohanaswami Temple (कयरोहनस्वामी मंदिर)",
        "image": "https://c8.alamy.com/comp/FFYMH5/shri-kayahorana-swami-neelayathatchi-amman-temple-nagapattinam-chennai-FFYMH5.jpg",
        "description": "Shaivite temple with historic architecture. ऐतिहासिक शिव मंदिर।"
      },
    ],

    // 🔹 Namakkal (नमक्कल)
    "Namakkal (नमक्कल)": [
      {
        "name": "Namakkal Rock Fort (नमक्कल रॉक फोर्ट)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkHcf20FDKbCTmnPtuBUT53w-3cWEIkIdD2w&s",
        "description": "Historic rock fort. प्राचीन किला।"
      },
      {
        "name": "Anjaneyar Temple (अंजनेयर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/c5/89/8b/20160629000553-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Huge Hanuman idol temple. विशाल हनुमान प्रतिमा वाला मंदिर।"
      },
      {
        "name": "Kolli Hills (कोल्ली हिल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/0d/5f/bb/agaya-gangai-waterfalls.jpg?w=600&h=-1&s=1",
        "description": "Hill station with natural beauty. सुंदर हिल स्टेशन।"
      },
      {
        "name": "Seeku Parai View Point (सीकू पराई व्यू प्वाइंट)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/1f/53/f8/seeku-parai-view-point.jpg?w=200&h=-1&s=1",
        "description": "Scenic hill viewpoint. मनमोहक दृश्य।"
      },
      {
        "name": "Agaya Gangai Waterfalls (आगया गंगई झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/0d/5f/bb/agaya-gangai-waterfalls.jpg?w=1200&h=-1&s=1",
        "description": "Spectacular waterfall in Kolli Hills. शानदार झरना।"
      },
    ],

    // 🔹 Perambalur (पेरम्बलूर)
    "Perambalur (पेराम्बलूर)": [
      {
        "name": "Ranjankudi Fort (रंजनकुड़ी किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/3a/d0/92/view-from-top-on-the.jpg?w=1200&h=-1&s=1",
        "description": "Historical fort built by Nawabs. नवाबों द्वारा निर्मित ऐतिहासिक किला।"
      },
      {
        "name": "Karuvalur Temple (करुवलूर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5ED7CqWdo_tVXfD2eioEz9YEYnx4tOLpPGQ&s",
        "description": "Ancient temple with Dravidian architecture. द्रविड़ शैली का प्राचीन मंदिर।"
      },
      {
        "name": "National Fossil Wood Park (नेशनल फॉसिल वुड पार्क)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/2d/27/9a/sunset.jpg?w=1200&h=-1&s=1",
        "description": "Park with 120-million-year-old fossilized trees. 12 करोड़ साल पुराने जीवाश्म वृक्ष।"
      },
      {
        "name": "Sri Bangaru Kamakshi Temple (श्री बंगारु कामाक्षी मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s3550a141f12de6341fba65b0ad0433500/uploads/bfi_thumb/2018062432-olw9ckmw85r3ihj1dkith8ku0n7c0cry8air9kuxg4.jpg",
        "description": "Important Shakti temple. शक्तिपीठ।"
      },
    ],

    // 🔹 Pudukkottai (पुदुकोट्टई)
    "Pudukkottai (पुदुकोट्टई)": [
      {
        "name": "Thirumayam Fort (थिरुमयम किला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/11/ba/90/thirumayam-fort.jpg?w=900&h=500&s=1",
        "description": "Historical fort with rock-cut temples. ऐतिहासिक किला व गुफा मंदिर।"
      },
      {
        "name": "Avudaiyarkoil Temple (अवुदैयारकोइल मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/ff/46/43/gopuram-first-snap.jpg?w=1200&h=-1&s=1",
        "description": "Renowned Shiva temple. प्रसिद्ध शिव मंदिर।"
      },
      {
        "name": "Sittanavasal Cave (सिट्टनावासल गुफा)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/7e/3e/8d/fresco-paintings-hall.jpg?w=1200&h=-1&s=1",
        "description": "Jain cave paintings. जैन गुफा चित्रकला।"
      },
      {
        "name": "Kudumiyanmalai Temple (कुडुमियानमलाई मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/cc/6e/9a/temple-entrance.jpg?w=800&h=400&s=1",
        "description": "Temple with inscriptions. शिलालेखों वाला मंदिर।"
      },
      {
        "name": "Viralimalai Murugan Temple (विरालीमलाई मुरुगन मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-q48LO-ogRzGoxT5yawwEqkr2PLSl8gEcxg&s",
        "description": "Popular Murugan temple. प्रसिद्ध मुरुगन मंदिर।"
      },
    ],

    // 🔹 Ranipet (रानीपेट)
    "Ranipet (रानीपेट)": [
      {
        "name": "Amirthi Zoological Park (अमिर्थी जूलॉजिकल पार्क)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/32/50/6b/img-20180211-152449-hdr.jpg?w=900&h=500&s=1",
        "description": "Zoo and picnic spot. लोकप्रिय जू व पिकनिक स्थल।"
      },
      {
        "name": "Jalakandeswarar Temple (जलाकंदेश्वरर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/b0/3f/e5/img-20190306-120035-largejpg.jpg?w=1200&h=1200&s=1",
        "description": "Famous Shiva temple inside Vellore Fort. वेल्लोर किले का शिव मंदिर।"
      },
      {
        "name": "Wallajah Mosque (वल्लजह मस्जिद)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/13/16/a5/20191119-140456-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Historic Nawab mosque. ऐतिहासिक मस्जिद।"
      },
      {
        "name": "Mordhana Dam (मोरधना डैम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSEMepNodZrxxoNLh4jRbjsCfcJq1c8Y1TpQ&s",
        "description": "Scenic dam near Ranipet. सुंदर जलाशय।"
      },
    ],

    // 🔹 Salem (सेलम)
    "Salem (सेलम)": [
      {
        "name": "Yercaud Hill Station (येरकौड़ हिल स्टेशन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHgUAut-hQxreo4XxW79x9f_N92Ni0jfEwkA&s",
        "description": "Famous hill station with lake and gardens. झील व बगीचों वाला प्रसिद्ध हिल स्टेशन।"
      },
      {
        "name": "Kiliyur Falls (किलीयूर फॉल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/7f/9c/00/img-20181117-165229-largejpg.jpg?w=800&h=500&s=1",
        "description": "Beautiful waterfall in Yercaud. येरकौड़ का सुंदर झरना।"
      },
      {
        "name": "Shevaroy Temple (शेवरॉय मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/05/d2/ec/da/shevaroy-temple.jpg",
        "description": "Temple dedicated to Lord Shevaroyan. शेवरॉय देवता का मंदिर।"
      },
      {
        "name": "Mookaneri Lake (मूकानेरी झील)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/05/d2/ec/da/shevaroy-temple.jpg",
        "description": "Scenic lake for boating. बोटिंग के लिए झील।"
      },
      {
        "name": "Kurumbapatti Zoological Park (कुरुंबपट्टी जूलॉजिकल पार्क)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/83/d1/f0/entrance.jpg?w=900&h=500&s=1",
        "description": "Mini zoo near Salem. छोटा जू।"
      },
      {
        "name": "Sugavaneshwarar Temple (सुगवनेश्वरर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/5c/ee/07/inside-temple-2.jpg?w=1200&h=-1&s=1",
        "description": "Historic Shiva temple. प्राचीन शिव मंदिर।"
      },
    ],


    // 🔹 Sivagangai (सिवगंगई)
    "Sivagangai (सिवगंगई)": [
      {
        "name": "Chettinad Palace (चेट्टिनाड पैलेस)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/68/94/6c/caption.jpg?w=200&h=-1&s=1",
        "description": "Famous for unique Chettinad architecture. अनोखी चेट्टिनाड शैली के लिए प्रसिद्ध।"
      },
      {
        "name": "Pillayarpatti Karpaga Vinayagar Temple (पिल्लयारपट्टी कार्पगा विनायक मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0f/60/82/f8/karpaga-vinayagar-temple.jpg",
        "description": "Ancient rock-cut Ganesha temple. प्राचीन गुफा गणेश मंदिर।"
      },
      {
        "name": "Kundrakudi Murugan Temple (कुंदराकुड़ी मुरुगन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/0f/59/fd/kundrakkudi-murugan-temple.jpg?w=700&h=400&s=1",
        "description": "Murugan temple on hilltop. पहाड़ी पर मुरुगन मंदिर।"
      },
      {
        "name": "Devakottai Temples (देवकोट्टई मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/2a/12/7f/fe/kandadevi-swarna-moortheeswara.jpg",
        "description": "Cluster of heritage temples. विरासत मंदिर समूह।"
      },
    ],

    // 🔹 Tenkasi (तेनकासी)
    "Tenkasi (तेनकासी)": [
      {
        "name": "Courtallam Waterfalls (कुर्तालम झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/1f/3c/71/five-falls.jpg?w=1200&h=1200&s=1",
        "description": "Famous waterfalls known as 'Spa of South India'. दक्षिण भारत का स्पा कहे जाने वाले झरने।"
      },
      {
        "name": "Kasi Viswanathar Temple (काशी विश्वनाथर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/b5/5c/8b/aaa.jpg?w=1200&h=1200&s=1",
        "description": "Replica of Kashi temple. वाराणसी विश्वनाथ मंदिर जैसा।"
      },
      {
        "name": "Five Falls (फाइव फॉल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/f3/d9/96/falls.jpg?w=900&h=-1&s=1",
        "description": "Five streams of waterfalls. पांच धाराओं का झरना।"
      },
      {
        "name": "Old Courtallam Falls (ओल्ड कुर्तालम फॉल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/85/2e/29/pc-ramanarayanan-kallidai.jpg?w=1200&h=1200&s=1",
        "description": "Scenic old waterfall. पुराना सुंदर झरना।"
      },
    ],

    // 🔹 Theni (थेनी)
    "Theni (थेनी)": [
      {
        "name": "Meghamalai Hills (मेघमलई हिल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/94/f8/62/welcome-to-maduraiecotourism.jpg?w=900&h=500&s=1",
        "description": "Scenic hill station with tea plantations. चाय बागानों वाला हिल स्टेशन।"
      },
      {
        "name": "Suruli Falls (सुरुली झरना)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/14/6a/4c/59/img-20180901-102219-largejpg.jpg",
        "description": "Popular waterfall in Western Ghats. पश्चिमी घाट का झरना।"
      },
      {
        "name": "Vaigai Dam (वैगई डैम)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/1b/63/ab/82/caption.jpg",
        "description": "Major dam with gardens. बड़ा डैम और गार्डन।"
      },
      {
        "name": "Bodi Mettu (बोदी मेट्टु)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/6c/d8/f2/vattavada.jpg?w=400&h=-1&s=1",
        "description": "Scenic mountain pass. सुंदर पहाड़ी दर्रा।"
      },
    ],

    // 🔹 Thoothukudi / Tuticorin (तूतीकोरिन)
    "Thoothukudi (Tuticorin) (तूतीकोरिन)": [
      {
        "name": "Our Lady of Snows Basilica (आवर लेडी ऑफ स्नोज बेसिलिका)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/b5/73/a8/photo0jpg.jpg?w=1200&h=-1&s=1",
        "description": "Popular Catholic church. प्रसिद्ध कैथोलिक चर्च।"
      },
      {
        "name": "Tuticorin Port (तूतीकोरिन बंदरगाह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxxwo942XMDfCcHt5f5pY7rRm5VuS4GYdm0Q&s",
        "description": "Major seaport in Tamil Nadu. तमिलनाडु का बड़ा बंदरगाह।"
      },
      {
        "name": "Kalugumalai Murugan Temple (कलुगुमलाई मुरुगन मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/c9/8e/03/temple-tank.jpg?w=1200&h=-1&s=1",
        "description": "Rock-cut temple and Jain monuments. गुफा मंदिर और जैन स्मारक।"
      },
      {
        "name": "Hare Island (हेयर आइलैंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKpHH73dJPqE6L1Cc7BsRUJJwiQeU7xC774Q&s",
        "description": "Beach and picnic spot. समुद्र तट व पिकनिक स्थल।"
      },
    ],

    // 🔹 Tiruchirappalli (त्रिची)
    "Tiruchirappalli (तिरुचिरापल्ली)": [
      {
        "name": "Rockfort Temple (रॉकफोर्ट मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/db/ed/b0/rockfort-ucchi-pillayar.jpg?w=900&h=500&s=1",
        "description": "Historic fort temple on huge rock. विशाल चट्टान पर किला-मंदिर।"
      },
      {
        "name": "Sri Ranganathaswamy Temple, Srirangam (श्री रंगनाथस्वामी मंदिर, श्रीरंगम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/7b/60/14/gopuram.jpg?w=1200&h=1200&s=1",
        "description": "Largest functioning Hindu temple. विश्व का सबसे बड़ा सक्रिय हिंदू मंदिर।"
      },
      {
        "name": "Jambukeswarar Temple (जम्बुकेश्वरर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/9f/77/4d/sri-akilandeshwari-sametha.jpg?w=700&h=-1&s=1",
        "description": "One of the Pancha Bhoota temples. पंचभूत मंदिरों में से एक।"
      },
      {
        "name": "Kallanai Dam (कल्लनई डैम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/64/d1/4f/caption.jpg?w=900&h=500&s=1",
        "description": "Ancient dam built by Cholas. चोल राजाओं का प्राचीन डैम।"
      },
    ],

    // 🔹 Tirunelveli (तिरुनेलवेली)
    "Tirunelveli (तिरुनेलवेली)": [
      {
        "name": "Nellaiappar Temple (नेल्लैअप्पर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_aECVBEP8yU6WlqX_L4q33AQCUBtx3w4png&s",
        "description": "Famous temple dedicated to Lord Shiva. भगवान शिव का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Courtallam Falls (कुर्तालम फॉल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/85/2e/29/pc-ramanarayanan-kallidai.jpg?w=500&h=500&s=1",
        "description": "Popular waterfalls, shared with Tenkasi. तेनकासी और तिरुनेलवेली का प्रसिद्ध झरना।"
      },
      {
        "name": "Papanasam Dam (पापनासम डैम)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/07/13/68/39/panaromic-view-of-manimuthar.jpg",
        "description": "Dam and hydroelectric station. डैम व पिकनिक स्थल।"
      },
      {
        "name": "Agasthiyar Falls (अगस्त्य झरना)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/db/9b/a9/waterfall.jpg?w=1200&h=-1&s=1",
        "description": "Sacred waterfalls in Western Ghats. पश्चिमी घाट का पवित्र झरना।"
      },
    ],

    // 🔹 Tirupathur (तिरुपत्तूर)
    "Tirupathur (तिरुपत्तूर)": [
      {
        "name": "Yelagiri Hills (येलागिरि हिल्स)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/23/b4/7f/view-of-the-town-below.jpg?w=900&h=500&s=1",
        "description": "Popular hill station with trekking and boating. ट्रेकिंग और नौका विहार वाला प्रसिद्ध हिल स्टेशन।"
      },
      {
        "name": "Jalagandeeswarar Temple (जलगंडेश्वरर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/b0/3f/e5/img-20190306-120035-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Ancient temple with Vijayanagara architecture. विजयनगर शैली का प्राचीन मंदिर।"
      },
      {
        "name": "Vainu Bappu Observatory (वैणु भाप्पु वेधशाला)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/d9/c9/64/vainu-bappu-observatory.jpg?w=1200&h=-1&s=1",
        "description": "Asia’s largest telescope. एशिया की सबसे बड़ी दूरबीन।"
      },
      {
        "name": "Alangayam Lake (अलंगायम झील)",
        "image": "https://c8.alamy.com/comp/J92CA9/salt-pans-on-tuticorin-salt-lake-india-it-is-indias-largest-saline-J92CA9.jpg",
        "description": "Scenic lake and picnic spot. सुंदर झील और पिकनिक स्थल।"
      },
    ],

    // 🔹 Tiruppur (तिरुप्पुर)
    "Tiruppur (तिरुप्पुर)": [
      {
        "name": "Avinashi Temple (अविनाशी मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/0e/44/f5/the-raja-gopuram.jpg?w=1200&h=-1&s=1",
        "description": "Famous Shiva temple. भगवान शिव का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Thirumurugan Poondi Temple (थिरुमुरुगन पूंडी मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Thirumuruganpoondi6.JPG/1200px-Thirumuruganpoondi6.JPG",
        "description": "Ancient temple near Tiruppur. तिरुप्पुर के पास का प्राचीन मंदिर।"
      },
      {
        "name": "Amaravathi Dam (अमरावती डैम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZLxT6hgzoGbU_R77u6pYCLg4apVARNxQkew&s",
        "description": "Large dam with crocodile park. मगरमच्छ पार्क वाला बड़ा डैम।"
      },
      {
        "name": "Udumalaipettai Wildlife Sanctuary (उडुमलाइपेट्टई वन्यजीव अभयारण्य)",
        "image": "https://i.ytimg.com/vi/RvUFb4-4_0E/hqdefault.jpg?v=639541f0",
        "description": "Wildlife sanctuary with elephants. हाथियों वाला वन्यजीव अभयारण्य।"
      },
    ],

    // 🔹 Tiruvallur (तिरुवल्लुर)
    "Tiruvallur (तिरुवल्लुर)": [
      {
        "name": "Veera Raghava Perumal Temple (वीर राघव पेरुमल मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo133WYSTJT_BdSGWlBYTOaOYYsIIuubLozg&s",
        "description": "One of the 108 Divya Desams. 108 दिव्य देशमों में से एक।"
      },
      {
        "name": "Poondi Reservoir (पूंडी जलाशय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/9c/28/f5/poondi-reservoir-at-dawn.jpg?w=1200&h=-1&s=1",
        "description": "Scenic dam and water supply source. सुंदर बांध और जल स्रोत।"
      },
      {
        "name": "Pazhaverkadu (Pulicat Lake) (पझवेर्काडु / पुलिकट झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmHm8e5vZbgTMQCC8VHwI-j9sqIH36VSYh8g&s",
        "description": "Second largest brackish water lagoon in India. भारत की दूसरी सबसे बड़ी खारे पानी की झील।"
      },
      {
        "name": "Thiruthani Murugan Temple (तिरुत्तनी मुरुगन मंदिर)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/2d/6f/73/a0/thiruthani-murugan-temple.jpg",
        "description": "One of the six abodes of Murugan. भगवान मुरुगन के छह निवासों में से एक।"
      },
    ],

    // 🔹 Tiruvannamalai (तिरुवन्नामलाई)
    "Tiruvannamalai (तिरुवन्नामलै)": [
      {
        "name": "Annamalaiyar Temple (अन्नामलैयार मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6whU1dKuIJ96oDoOFfFACYt2A7os6e-bUyg&s",
        "description": "Massive Shiva temple, one of Pancha Bhoota Sthalams. पंचभूत स्थलों में से एक विशाल शिव मंदिर।"
      },
      {
        "name": "Arunachala Hill (अरुणाचल पहाड़ी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/7f/59/b8/oi000026-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Sacred hill associated with Lord Shiva. भगवान शिव से जुड़ी पवित्र पहाड़ी।"
      },
      {
        "name": "Sri Ramana Ashram (श्री रमण आश्रम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/7f/59/b8/oi000026-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Spiritual center of Sri Ramana Maharshi. श्री रमण महार्षि का आध्यात्मिक केंद्र।"
      },
      {
        "name": "Sathanur Dam (सतनूर डैम)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/bf/85/a7/sathanur-reservoir.jpg?w=300&h=-1&s=1",
        "description": "Large dam with crocodile farm. मगरमच्छ फार्म वाला बड़ा डैम।"
      },
    ],

    // 🔹 Tiruvarur (तिरुवरूर)
    "Tiruvarur (तिरुवारुर)": [
      {
        "name": "Thyagaraja Temple (त्यागराज मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/60/b3/27/temple-entrance.jpg?w=1200&h=-1&s=1",
        "description": "One of the largest temple complexes in Tamil Nadu. तमिलनाडु का सबसे बड़ा मंदिर परिसर।"
      },
      {
        "name": "Kamalaalayam Tank (कमलालयम टैंक)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0d/f3/28/1a/haridranadhi.jpg",
        "description": "Sacred temple tank. पवित्र मंदिर सरोवर।"
      },
      {
        "name": "Koothanur Saraswathi Temple (कूठनूर सरस्वती मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/b0/01/4a/shri-mahasaraswathi-temple.jpg?w=1200&h=-1&s=1",
        "description": "Famous temple for Goddess Saraswathi. देवी सरस्वती का प्रसिद्ध मंदिर।"
      },
      {
        "name": "Udayamarthandapuram Bird Sanctuary (उदयमार्तंडपुरम पक्षी अभयारण्य)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-m/1280/1c/21/e3/1c/birds.jpg",
        "description": "Bird sanctuary with migratory species. प्रवासी पक्षियों का अभयारण्य।"
      },
    ],

    // 🔹 Vellore (वेल्लोर)
    "Vellore (वेल्लोर)": [
      {
        "name": "Vellore Fort (वेल्लोर किला)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMLzlkpQt2x2TjL1RE-StQsf3-mbX54gsY5w&s",
        "description": "Historic fort with temples, church and mosque. मंदिर, चर्च और मस्जिद वाला ऐतिहासिक किला।"
      },
      {
        "name": "Golden Temple Sripuram (गोल्डन टेंपल, श्रीपुरम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ3VMiT7z-hwRsWyMDi4yaZZ-22oY9EPqkJg&s",
        "description": "Golden coated spiritual temple. स्वर्ण जड़ित आध्यात्मिक मंदिर।"
      },
      {
        "name": "Jalakandeswarar Temple (जलकंड़ेश्वरर मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/b0/3f/e5/img-20190306-120035-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "Ancient temple inside Vellore Fort. वेल्लोर किले के अंदर का प्राचीन मंदिर।"
      },
      {
        "name": "Amirthi Zoological Park (अमृथि जूलॉजिकल पार्क)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/32/50/6b/img-20180211-152449-hdr.jpg?w=900&h=500&s=1",
        "description": "Small zoo and picnic spot. छोटा चिड़ियाघर और पिकनिक स्थल।"
      },
    ],

// 🔹 Viluppuram & Virudhunagar Tourist Places

    // 🔹 Viluppuram (विलुप्पुरम)
    "Viluppuram (विलुप्पुरम)": [
      {
        "name": "Gingee Fort (सेनजी किला)",
        "image": "https://c8.alamy.com/comp/B8KP8H/india-tamil-nadu-gingee-fort-rajagiri-fort-vellore-gate-B8KP8H.jpg",
        "description": "भारत का 'ट्रॉय का किला' कहा जाता है। Known as the 'Troy of the East'."
      },
      {
        "name": "Melmalayanur Temple (मेलमलयनूर मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFmj_IpHwRLcEKR7XRX_jYHI_th8qp-W6x-A&s",
        "description": "अंगालम्मन देवी का प्रमुख मंदिर। Famous Angalamman temple."
      },
      {
        "name": "Thiruvakkarai Fossil Park (थिरुवक्करई जीवाश्म पार्क)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHPHMZySDjWzAxMftb-bcrDof1uM4ctN3nDg&s",
        "description": "प्राचीन जीवाश्मों का संग्रहालय। National fossil wood park."
      },
      {
        "name": "Vedapureeswarar Temple (वेदपुरीश्वरर मंदिर)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Vedapureeswar_temple%2C_Thiruverkadu4.JPG/1200px-Vedapureeswar_temple%2C_Thiruverkadu4.JPG",
        "description": "भगवान शिव को समर्पित प्राचीन मंदिर। Historic Shiva temple."
      },
      {
        "name": "Kalrayan Hills (कलरायन हिल्स)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxQ8Mxr3Alb9W_leG6l12r8FVdaoMhgypzHg&s",
        "description": "प्राकृतिक सुंदरता और ट्रेकिंग स्थल। Scenic hills for trekking."
      },
    ],

    // 🔹 Virudhunagar (वीरुधुनगर)
    "Virudhunagar (वीरुधुनगर)": [
      {
        "name": "Ayyanar Falls (अय्यनार जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQymqS0SrgVTZKT8ESJriq8ZXnX5jW3QtcsPA&s",
        "description": "प्रकृति प्रेमियों के लिए सुंदर जलप्रपात। Picturesque waterfall for nature lovers."
      },
      {
        "name": "Thiruchuli Temple (तिरुचुली मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZc_jrv0WPSdWtdHoCELca8RntK7Yp6499tQ&s",
        "description": "भगवान शिव का पवित्र मंदिर। Sacred Shiva temple."
      },
      {
        "name": "Srivilliputhur Andal Temple (श्रीविल्लिपुथुर आंडाल मंदिर)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/85/37/b7/temple-view-6.jpg?w=1200&h=1200&s=1",
        "description": "भगवान विष्णु और आंडाल को समर्पित मंदिर। Famous Andal temple."
      },

      {
        "name": "Pilavakkal Dam (पिलावक्कल बांध)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/34/7c/28/pilavakkal-dam.jpg?w=900&h=-1&s=1",
        "description": "सुंदर हरियाली और झील का दृश्य। Beautiful dam with greenery."
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
