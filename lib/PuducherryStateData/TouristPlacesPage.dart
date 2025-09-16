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

    "Karaikal (करैकाल)": [
      {
        "name": "Karaikal Ammaiyar Temple (कारैकल अम्मैयार मंदिर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSfCqJ5ky6i8dbNwRD4Q0yJOgtnxPRYpv_NAydZtdx1fKYOU8K8FmrG_g4Sonv0kB8-4A&usqp=CAU",
        "description": "Karaikal Ammaiyar Temple is dedicated to Karaikal Ammaiyar, one of the 63 Nayanmars, and is a major pilgrimage site. | कारैकल अम्मैयार मंदिर 63 नायनमार संतों में से एक कारैकल अम्मैयार को समर्पित है और एक प्रमुख तीर्थ स्थल है।"
      },
      {
        "name": "Our Lady of Angels Church (आवर लेडी ऑफ एंजेल्स चर्च)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc-tn6G4_z879LzwuekpKiTkhbj7t3FdtIrA&s",
        "description": "Built in French architectural style, this church is one of the most beautiful colonial structures in Karaikal. | फ्रांसीसी स्थापत्य शैली में निर्मित यह चर्च कारैकल की सबसे सुंदर औपनिवेशिक संरचनाओं में से एक है।"
      },
      {
        "name": "Sri Kailasanathar Temple (श्री कैलासनाथर मंदिर)",
        "image": "https://www.nativeplanet.com/photos/223x125x100/2018/07/photo-91-173632-1.jpg",
        "description": "Sri Kailasanathar Temple is dedicated to Lord Shiva and is famous for its Dravidian style architecture. | श्री कैलासनाथर मंदिर भगवान शिव को समर्पित है और द्रविड़ वास्तुकला के लिए प्रसिद्ध है।"
      },
      {
        "name": "Saniswaran Temple, Thirunallar (शनिस्वरन मंदिर, तिरुनल्लार)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUTC4kheIOsut24qdsy4cJHEqlQ6Bw3aBRlA&s",
        "description": "The Thirunallar Saniswaran Temple is dedicated to Lord Shani (Saturn) and is a unique Navagraha temple. | तिरुनल्लार शनिस्वरन मंदिर भगवान शनि को समर्पित है और एक अनोखा नवग्रह मंदिर है।"
      },
      {
        "name": "Karaikal Beach (कारैकल बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-TqCqWxr19tXpiySIVCPqpTJTHCJa6_CTdw&s",
        "description": "Karaikal Beach is a peaceful seashore ideal for relaxation, picnics, and enjoying sunrise and sunset. | कारैकल बीच एक शांत समुद्र तट है जो विश्राम, पिकनिक और सूर्योदय-सूर्यास्त देखने के लिए आदर्श है।"
      },
      {
        "name": "Nagore Dargah (नागौर दरगाह)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0J8ldvkAgeRGGYWy5BAqYjBGj1SMNIdF2zA&s",
        "description": "Located near Karaikal, Nagore Dargah is one of the most revered Muslim pilgrimage centers in South India. | कारैकल के पास स्थित नागौर दरगाह दक्षिण भारत के सबसे पूजनीय मुस्लिम तीर्थ स्थलों में से एक है।"
      },
      {
        "name": "Amirthagadeswarar Temple, Thirukkadaiyur (अमृतगदीश्वर मंदिर, तिरुक्कडैयूर)",
        "image": "https://cdn.s3waas.gov.in/s3ec8ce6abb3e952a85b8551ba726a1227/uploads/bfi_thumb/2018030819-olwe86tcman7whgu9dblypvlyt14z5psl4b88vboxu.jpg",
        "description": "Located near Karaikal, this temple is dedicated to Lord Shiva (Amritaghateswarar) and Goddess Abirami. | कारैकल के पास स्थित यह मंदिर भगवान शिव (अमृतगडीश्वर) और देवी अबिरामी को समर्पित है।"
      },
      {
        "name": "Sri Mehanadhar Temple, Thirumeeyachur (श्री मेहनाधर मंदिर, तिरुमीयचूर)",
        "image": "https://cdn.s3waas.gov.in/s3ec8ce6abb3e952a85b8551ba726a1227/uploads/bfi_thumb/2018030841-olwe86tcman7whgu9dblypvlyt14z5psl4b88vboxu.jpg",
        "description": "A famous Shiva temple in Thirumeeyachur where the presiding deity is Lord Meganathaswami. | तिरुमीयचूर का यह प्रसिद्ध शिव मंदिर है जहाँ मुख्य देवता भगवान मेगनाथस्वामी हैं।"
      },
      {
        "name": "Maha Saraswathy Temple, Koothanur (महा सरस्वती मंदिर, कूथनूर)",
        "image": "https://cdn.s3waas.gov.in/s3ec8ce6abb3e952a85b8551ba726a1227/uploads/bfi_thumb/2018041659-olwe8ooa85bo12qwd31is3dd94l41eoozkpgd4l7nm.jpg",
        "description": "The only temple dedicated to Goddess Saraswathy in South India, located in Koothanur. | दक्षिण भारत का एकमात्र मंदिर जो देवी सरस्वती को समर्पित है, कूथनूर में स्थित।"
      },
      {
        "name": "Shrine Basilica of Our Lady of Good Health, Velankanni (वेलांकन्नी चर्च)",
        "image": "https://cdn.s3waas.gov.in/s3ec8ce6abb3e952a85b8551ba726a1227/uploads/bfi_thumb/2018030874-1-olwe86tcman7whgu9dblypvlyt14z5psl4b88vboxu.jpg",
        "description": "A world-famous Christian pilgrimage shrine located at Velankanni, about 26 km from Karaikal. | वेलांकन्नी में स्थित विश्व प्रसिद्ध ईसाई तीर्थ स्थल, कारैकल से लगभग 26 किमी दूर।"
      },
      {
        "name": "Fort Dansborg, Tharangambadi (फोर्ट डांसबोर्ग, तरंगमबड़ी)",
        "image": "https://cdn.s3waas.gov.in/s3ec8ce6abb3e952a85b8551ba726a1227/uploads/bfi_thumb/2018030857-olwe83zu1sjcxnkxpu3q98l86nf1c2elkqcrt1fvgi.jpg",
        "description": "Built by the Danish in 1620, Fort Dansborg at Tharangambadi is an important historic site near Karaikal. | डेनिश द्वारा 1620 में निर्मित फोर्ट डांसबोर्ग, कारैकल के पास तरंगमबड़ी में एक ऐतिहासिक स्थल है।"
      }
    ],

    "Mahe (माहे)": [
      {
        "name": "St. Theresa Shrine Basilica (सेंट थेरेसा श्राइन बेसिलिका)",
        "image": "https://cdn.s3waas.gov.in/s37e7757b1e12abcb736ab9a754ffb617a/uploads/bfi_thumb/2018031321-olwa0jios8havtk56fgwtsvzx55rqre3pmfs74zvy6.jpg",
        "description": "This 18th-century church is the most important religious site in Mahe, dedicated to St. Theresa of Avila. | 18वीं शताब्दी का यह चर्च माहे का सबसे प्रमुख धार्मिक स्थल है, जो सेंट थेरेसा ऑफ एविला को समर्पित है।"
      },
      {
        "name": "Mahe Beach (माहे बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/d1/3b/93/walk-way.jpg?w=800&h=800&s=1",
        "description": "A serene beach ideal for sunrise, evening walks, and relaxation by the Arabian Sea. | अरब सागर किनारे स्थित यह शांत बीच सूर्योदय, सैर और विश्राम के लिए आदर्श है।"
      },
      {
        "name": "Mahe River Walkway (माहे नदी वॉकवे)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/3f/76/2a/photo3jpg.jpg?w=900&h=500&s=1",
        "description": "A beautiful riverside walkway along the Mahe River, offering scenic views and a calm atmosphere. | माहे नदी के किनारे स्थित यह वॉकवे प्राकृतिक सुंदरता और शांत वातावरण के लिए प्रसिद्ध है।"
      },
      {
        "name": "Puthalam Temple (पुथलम मंदिर)",
        "image": "https://cdn.s3waas.gov.in/s37e7757b1e12abcb736ab9a754ffb617a/uploads/bfi_thumb/2018031534-olwa0jios8havtk56fgwtsvzx55rqre3pmfs74zvy6.jpg",
        "description": "An ancient Bhagavathi temple known for ‘Thirayattam’, a traditional folk art form. | यह प्राचीन मंदिर हर साल थिरयट्टम लोकनृत्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Hillock (Mooppenkunnu) / Mahe Hill – Government House (हिलॉक / माहे हिल)",
        "image": "https://cdn.s3waas.gov.in/s37e7757b1e12abcb736ab9a754ffb617a/uploads/bfi_thumb/2018052161-olwa154z5fawauoqo6tbx5fll077nsrxglfy8i3tz2.jpg",
        "description": "A small hillock with the old Government House, offering panoramic views of Mahe town and the sea. | माहे का यह हिलॉक गवर्नमेंट हाउस और खूबसूरत दृश्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Azhimukham (अझिमुखम)",
        "image": "https://cdn.s3waas.gov.in/s37e7757b1e12abcb736ab9a754ffb617a/uploads/bfi_thumb/2018052124-olwa0yk3tl1w1kyaqlyxxp3dfb3n5x1t3ovjvkdl6m.jpg",
        "description": "The estuary of River Mayyazhi and Arabian Sea, a picturesque location with scenic beauty. | यह स्थल माय्याझी नदी और अरब सागर का संगम है।"
      },
      {
        "name": "Water Sports Complex, Manjakkal (वाटर स्पोर्ट्स कॉम्प्लेक्स, मंजक्कल)",
        "image": "https://cdn.s3waas.gov.in/s37e7757b1e12abcb736ab9a754ffb617a/uploads/bfi_thumb/2018031565-olwa0rz8hqsvsb7ut14jy8r59m02o1boqsb5imnce6.jpg",
        "description": "Located on the bank of the Mahe river, offering boating and water adventure activities. | माहे नदी किनारे स्थित यह स्थल वॉटर स्पोर्ट्स के लिए प्रसिद्ध है।"
      },
      {
        "name": "Museum & Government House (म्यूज़ियम और गवर्नमेंट हाउस)",
        "image": "https://cdn.s3waas.gov.in/s37e7757b1e12abcb736ab9a754ffb617a/uploads/bfi_thumb/2018031569-olwa0rz8hqsvsb7ut14jy8r59m02o1boqsb5imnce6.jpg",
        "description": "A historic colonial building now functioning as a museum, preserving artefacts of Mahe’s heritage. | यह ऐतिहासिक इमारत अब संग्रहालय के रूप में कार्य करती है।"
      }
    ],

    "Yanam (यन्नम)": [
      {
        "name": "Pathway at Riverfront (रिवरफ्रंट वॉकवे)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/2018/04/2018042013-1024x576.jpg",
        "description": "A scenic walkway along the Godavari river, perfect for morning and evening strolls. | गोदावरी नदी किनारे बना यह सुंदर वॉकवे सुबह और शाम की सैर के लिए आदर्श है।"
      },
      {
        "name": "Kamarajar Children Park (कामराजर चिल्ड्रन पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042047-1024x576-olwdq76jxtwfz3r0c04w355cviqgccm3omnnploesg.jpg",
        "description": "A well-maintained park with play areas for children and relaxing spots for families. | बच्चों के खेल क्षेत्र और परिवार के लिए विश्राम स्थल वाला सुंदर पार्क।"
      },
      {
        "name": "Beach Road (बीच रोड)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042013-1-olwdq68pqzv5nhsdhhq9indwa4v34nidci068bpsyo.jpg",
        "description": "A lively promenade along the riverbank, offering views and evening gatherings. | नदी किनारे स्थित यह बीच रोड शाम की सैर और मेलजोल के लिए प्रसिद्ध है।"
      },
      {
        "name": "Glass House at Botanical Garden (बोटैनिकल गार्डन का ग्लास हाउस)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042071-olwdq76jxtwfz3r0c04w355cviqgccm3omnnploesg.jpg",
        "description": "A glasshouse showcasing exotic plants inside the Botanical Garden. | बोटैनिकल गार्डन में स्थित यह ग्लास हाउस दुर्लभ पौधों को प्रदर्शित करता है।"
      },
      {
        "name": "Botanical Garden View (बोटैनिकल गार्डन दृश्य)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042094-olwdq84e4nxqappn6ijinmwtgwltk1pu0rb56vn0m8.jpg",
        "description": "A green retreat with landscaped gardens and natural beauty. | यह गार्डन हरियाली और प्राकृतिक सुंदरता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Yanam Tower (यन्नम टॉवर)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042040-1-1024x768-olwdq68pqzv5nhsdhhq9indwa4v34nidci068bpsyo.jpg",
        "description": "A tall structure symbolizing Yanam’s identity and offering panoramic views. | यन्नम की पहचान दर्शाता यह टॉवर आसपास के दृश्यों का सुंदर नज़ारा दिखाता है।"
      },
      {
        "name": "Botanical Garden Entrance (बोटैनिकल गार्डन प्रवेश द्वार)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042011-1024x768-olwdq5avk5tvbvtqmzbmy5mfoqzpwyen0dcor1r74w.jpg",
        "description": "A grand entrance to Yanam’s lush Botanical Garden. | यन्नम के बोटैनिकल गार्डन का भव्य प्रवेश द्वार।"
      },
      {
        "name": "Public Swimming Pool (पब्लिक स्विमिंग पूल)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042069-1024x768-olwdq76jxtwfz3r0c04w355cviqgccm3omnnploesg.jpg",
        "description": "A modern swimming facility for recreation and sports. | मनोरंजन और खेलों के लिए आधुनिक स्विमिंग पूल।"
      },
      {
        "name": "Shivam Bath at Night (शिवम बाथ रात का दृश्य)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042070-olwdq76jxtwfz3r0c04w355cviqgccm3omnnploesg.jpg",
        "description": "An illuminated bath area near the river, popular for its night beauty. | नदी किनारे स्थित यह स्थल रात के समय रोशनी से जगमगाता है।"
      },
      {
        "name": "Ambedkar Nagar Park (अंबेडकर नगर पार्क)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042072-olwdq76jxtwfz3r0c04w355cviqgccm3omnnploesg.jpg",
        "description": "A local park dedicated to social reformer Dr. B.R. Ambedkar. | डॉ. भीमराव अंबेडकर को समर्पित यह स्थानीय पार्क।"
      },
      {
        "name": "Gandhiji Statue at Botanical Garden (गांधीजी की प्रतिमा, बोटैनिकल गार्डन)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042041-768x1024-olwdq76jxtwfz3r0c04w355cviqgccm3omnnploesg.jpg",
        "description": "A statue of Mahatma Gandhi inside the Botanical Garden. | बोटैनिकल गार्डन में महात्मा गांधी की प्रतिमा।"
      },
      {
        "name": "St. Ann's Church (सेंट ऐन चर्च)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042029-olwdq68pqzv5nhsdhhq9indwa4v34nidci068bpsyo.jpg",
        "description": "A historic Catholic church with colonial architecture. | उपनिवेशकालीन स्थापत्य वाला प्राचीन कैथोलिक चर्च।"
      },
      {
        "name": "Boating in Godavari River (गोदावरी नदी में बोटिंग)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042012-1-olwdq5avk5tvbvtqmzbmy5mfoqzpwyen0dcor1r74w.jpg",
        "description": "Recreational boating facility on the Godavari river. | गोदावरी नदी पर नौकायन की सुविधा।"
      },
      {
        "name": "Shivam Bath (शिवम बाथ)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042015-1-1024x530-olwdq68pqzv5nhsdhhq9indwa4v34nidci068bpsyo.jpg",
        "description": "A bathing ghat on the Godavari river, used by locals and tourists alike. | गोदावरी नदी पर स्नान घाट, स्थानीय और पर्यटकों दोनों के लिए लोकप्रिय।"
      },
      {
        "name": "GMC Balayogi Vaaradhi (जीएमसी बालयोगी वाराधि)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042331-olwdq84e4nxqappn6ijinmwtgwltk1pu0rb56vn0m8.png",
        "description": "A long bridge across the Godavari river named after GMC Balayogi. | गोदावरी नदी पर बना यह विशाल पुल जीएमसी बालयोगी के नाम पर है।"
      },
      {
        "name": "Jesus Statue (जीसस प्रतिमा)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042365-olwdq928bhz0mboa10y584oa2ah6rqtkcvymo5lmg0.png",
        "description": "A statue of Jesus Christ, symbolizing peace and devotion. | प्रभु यीशु मसीह की प्रतिमा, शांति और श्रद्धा का प्रतीक।"
      },
      {
        "name": "Bharat Matha Statue (भारत माता प्रतिमा)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042362-olwdq928bhz0mboa10y584oa2ah6rqtkcvymo5lmg0.png",
        "description": "A patriotic statue of Bharat Mata, representing national pride. | राष्ट्र गौरव का प्रतीक भारत माता की प्रतिमा।"
      },
      {
        "name": "Nagoor Mera Saheb Janda Prayer Hall (नागूर मेरा साहब झंडा प्रेयर हॉल)",
        "image": "https://cdn.s3waas.gov.in/s3ddb30680a691d157187ee1cf9e896d03/uploads/bfi_thumb/2018042380-olwdq928bhz0mboa10y584oa2ah6rqtkcvymo5lmg0.png",
        "description": "A prayer hall and dargah, important for the local Muslim community. | स्थानीय मुस्लिम समुदाय के लिए महत्वपूर्ण धार्मिक स्थल।"
      }
    ],

    "Puducherry (पुडुचेरी)": [
      {
        "name": "Promenade Beach (प्रोमेनेड बीच)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRAnaqum-XQmdvMluTMKAGDhl7DQn6a3HOqg&s",
        "description": "A scenic beachfront stretch, popular for evening walks and sunrise views. | समुद्र किनारे स्थित यह बीच शाम की सैर और सूर्योदय देखने के लिए प्रसिद्ध है।"
      },
      {
        "name": "Auroville (ऑरोविल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_BZY81MdY_rcPqxwN6OVGJH0PpOvNJBpWGQ&s",
        "description": "An experimental township promoting unity and harmony, famous for the Matrimandir. | मातृमंदिर के लिए प्रसिद्ध यह टाउनशिप एकता और सद्भाव को बढ़ावा देती है।"
      },
      {
        "name": "Paradise Beach (पैराडाइस बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/fa/d8/fd/photo2jpg.jpg?w=1200&h=-1&s=1",
        "description": "A pristine beach accessible by boat, ideal for relaxation and water sports. | नाव द्वारा पहुँचा जाने वाला यह बीच विश्राम और जलक्रीड़ा के लिए आदर्श है।"
      },
      {
        "name": "Rock Beach (रॉक बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/ef/40/ed/rock-beach.jpg?w=900&h=500&s=1",
        "description": "A rocky stretch along the Bay of Bengal, perfect for photography and evening leisure. | बंगाल की खाड़ी के किनारे स्थित यह बीच फोटोग्राफी और शाम की सैर के लिए बढ़िया है।"
      },
      {
        "name": "French War Memorial (फ्रेंच वॉर मेमोरियल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/38/fc/71/img-20171109-095729-largejpg.jpg?w=1200&h=-1&s=1",
        "description": "A memorial honoring soldiers who died in World War I. | प्रथम विश्व युद्ध में शहीद सैनिकों की स्मृति में बना स्मारक।"
      },
      {
        "name": "Basilica of the Sacred Heart of Jesus (बेसिलिका ऑफ द सेक्रेड हार्ट ऑफ जीसस)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2BosYbXWgHsCKI9TouJ7vXat9WmzgqNX0Q&s",
        "description": "A Gothic-style Catholic church known for stained glass panels. | गोथिक शैली का कैथोलिक चर्च, कांच की रंगीन खिड़कियों के लिए प्रसिद्ध।"
      },
      {
        "name": "Immaculate Conception Cathedral (इमैक्युलेट कंसेप्शन कैथेड्रल)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt9olhaSzD530uzqjMiLg9IDrCINSrBtaJJw&s",
        "description": "One of the oldest churches in Puducherry with colonial architecture. | उपनिवेशकालीन स्थापत्य वाला पुडुचेरी का एक प्राचीन चर्च।"
      },
      {
        "name": "Botanical Garden (बोटैनिकल गार्डन)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0Yr2rkEELxTM_XJ9NBMZYIMlKNVALyhEBng&s",
        "description": "A lush green garden with rare plants and a musical fountain. | दुर्लभ पौधों और म्यूज़िकल फाउंटेन वाला हरियाली से भरा गार्डन।"
      },
      {
        "name": "Pondicherry Museum (पांडिचेरी संग्रहालय)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/f7/84/51/museum.jpg?w=1200&h=1200&s=1",
        "description": "Museum showcasing sculptures, artifacts, and French colonial history. | मूर्तियों, कलाकृतियों और फ्रेंच उपनिवेशकालीन इतिहास को दर्शाने वाला संग्रहालय।"
      },
      {
        "name": "Serenity Beach (सेरेनिटी बीच)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/af/3b/96/serenity-beach.jpg?w=1200&h=-1&s=1",
        "description": "A peaceful beach, popular among surfers and nature lovers. | शांति से भरा बीच, सर्फिंग और प्रकृति प्रेमियों के लिए लोकप्रिय।"
      },
      {
        "name": "Arikamedu (अरिगमेडु)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEpoHmZBpH-Zh1AryhCew2AQ7sXyB0GC05IQ&s",
        "description": "An ancient Roman trade center with archaeological remains. | प्राचीन रोमन व्यापार केंद्र, पुरातात्विक अवशेषों के साथ।"
      },
      {
        "name": "Ousteri Lake (औस्टेरी झील)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/4b/bb/61/ousteri-lake.jpg?w=900&h=500&s=1",
        "description": "A freshwater lake and bird sanctuary, ideal for nature lovers. | मीठे पानी की झील और पक्षी अभयारण्य, प्रकृति प्रेमियों के लिए उत्तम।"
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
