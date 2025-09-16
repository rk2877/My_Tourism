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

    "Papum Pare (पपुम पारे)": [

      {
        "name": "Ganga Lake (गंगा झील)",
        "image": "https://cdn.s3waas.gov.in/s3b4a528955b84f584974e92d025a75d1f/uploads/bfi_thumb/2018060117-olwbkkoli6vg95ht8hfzzs60rn79smxo6n12jrluve.jpg",
        "description": "Ganga Lake, also called Gyakar Sinyi, is a tranquil spot for boating, picnics, and nature walks. Surrounded by hills and forests, it attracts locals and tourists alike for leisure and photography. The calm waters reflect the scenic landscape, making it ideal for relaxation. Families and travelers frequently visit to enjoy the peaceful ambiance. घने पहाड़ों और जंगलों से घिरी गंगा झील नौकायन, पिकनिक और प्राकृतिक सैर के लिए प्रसिद्ध है। पर्यटक और परिवार अक्सर यहाँ आते हैं।"
      },
      {
        "name": "Itanagar Wildlife Sanctuary (इटानगर वन्यजीव अभयारण्य)",
        "image": "https://cdn.s3waas.gov.in/s3b4a528955b84f584974e92d025a75d1f/uploads/bfi_thumb/2018060189-olwbkkoli6vg95ht8hfzzs60rn79smxo6n12jrluve.jpg",
        "description": "Itanagar Wildlife Sanctuary is home to rare and endemic species of birds and animals. Trekking, birdwatching, and guided nature tours attract many visitors. The dense forests, scenic trails, and natural beauty make it a must-visit for nature lovers. Educational tours also help visitors understand conservation efforts. पर्यटक वन्यजीव अभयारण्य में ट्रेकिंग, पक्षी अवलोकन और जंगल की सैर का आनंद लेते हैं। यह स्थान प्रकृति प्रेमियों के लिए आदर्श है।"
      },
      {
        "name": "Crafts Emporium (हस्तशिल्प केंद्र)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/06/9f/dd/19/craft-centre-emporium.jpg",
        "description": "The Crafts Emporium showcases authentic Arunachal handicrafts like bamboo work, wood carvings, and traditional textiles. Tourists can shop for souvenirs, observe artisans at work, and attend workshops. It provides cultural insight and preserves tribal heritage. Visitors looking for unique gifts and souvenirs often flock here. पापुम परे का हस्तशिल्प केंद्र पारंपरिक बांस, लकड़ी और कपड़े के काम के लिए प्रसिद्ध है। पर्यटक हस्तशिल्प सीख सकते हैं और खरीद सकते हैं।"
      },

      {
        "name": "Gumto Waterfalls (गुमटो झरने)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqKB1o8XJc6Zxtc22tyrB-WxN4xTBqTkmzqA&s",
        "description": "Gumto Waterfalls offers breathtaking views and trekking opportunities. Surrounded by forests, it is ideal for picnics and photography. Nature enthusiasts frequently visit to experience the serene environment and lush greenery. The cascading water provides a refreshing retreat. गुमटो झरने प्राकृतिक सुंदरता और ट्रेकिंग के लिए प्रसिद्ध हैं। पर्यटक पिकनिक और फ़ोटोग्राफ़ी के लिए आते हैं।"
      },

      {
        "name": "Gyakar Sinyi Picnic Spot (ग्यारक सिंयी पिकनिक स्थल)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/2a/b1/6b/ganga-lake.jpg?w=1200&h=-1&s=1",
        "description": "A serene picnic area beside Ganga Lake, ideal for families and photography. Visitors enjoy boating, nature walks, and local snacks. Occasional festivals enhance cultural experience. घने जंगलों और झील के किनारे यह शांत पिकनिक स्थल परिवार और फ़ोटोग्राफ़रों के लिए आदर्श है।"
      },
    ],
     "Tawang (तवांग)":[

      {
        "name": "Tawang Monastery (तवांग मठ)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Tawang_Monastery_%28Tibetan_Buddhist%29.jpg/1280px-Tawang_Monastery_%28Tibetan_Buddhist%29.jpg",
        "description": "Tawang Monastery is the largest monastery in India and the second largest in the world. Situated on a hilltop, it offers breathtaking views of Tawang town and surrounding mountains. Tourists visit to explore its intricate architecture, ancient scriptures, and the spiritual rituals performed daily. Festivals like Losar attract thousands of visitors, showcasing local culture, traditional dances, and religious ceremonies. The monastery provides insight into Tibetan Buddhism, meditation practices, and the peaceful lifestyle of monks. Photography enthusiasts also love the scenic beauty and colorful prayer flags. तवांग मठ भारत का सबसे बड़ा मठ है और दुनिया में दूसरा सबसे बड़ा। यह पर्यटकों और धर्म-प्रेमियों के लिए प्रमुख स्थल है।"
      },
      {
        "name": "Sela Pass (सेला पास)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Tawang_Gate.jpg/1280px-Tawang_Gate.jpg",
        "description": "Sela Pass is a high-altitude mountain pass connecting Tawang to other regions. Surrounded by snow-capped peaks, pristine lakes, and pine forests, it is a photographer’s paradise. Tourists come for trekking, sightseeing, and experiencing the cold, crisp mountain air. The nearby Sela Lake adds scenic beauty, and local legends enhance cultural interest. The pass is accessible during summer months and provides panoramic views perfect for sunrise and sunset. Travelers often stop here to enjoy nature’s tranquility and the Himalayan landscape. सेला पास हिमालय में उच्चतम पर्वतीय मार्गों में से एक है और पर्यटकों के लिए अत्यंत लोकप्रिय स्थल है।"
      },
      {
        "name": "Bum La Pass (बम ला पास)",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Bumla-Pass.jpg/500px-Bumla-Pass.jpg",
        "description": "Bum La Pass is a strategic and scenic border pass between India and China. Tourists visit to witness the stunning Himalayan landscape, snow-covered peaks, and the historical significance of the region. Guided tours explain its military history and local tribal culture. Adventure travelers enjoy trekking and photography opportunities. The pass is especially visited during summer when roads are accessible. It offers a unique experience combining natural beauty with historical and cultural insights. बम ला पास प्राकृतिक सुंदरता और ऐतिहासिक महत्व के लिए प्रसिद्ध है। यह पर्यटकों और साहसी यात्रियों के लिए लोकप्रिय स्थल है।"
      },
      {
        "name": "Tawang War Memorial (तवांग युद्ध स्मारक)",
        "image": "https://media.istockphoto.com/id/458249389/photo/indian-military-war-memorial-tawang-arunachal-pradesh-india.jpg?s=1024x1024&w=is&k=20&c=CzsP88ICtGbleXmRhLiLaTzaWBSGj75aL7RIMsX7MCE=",
        "description": "Tawang War Memorial commemorates the soldiers who fought in the 1962 Sino-Indian War. It is a place of respect, reflection, and learning. Tourists visit to pay homage, understand historical events, and enjoy the scenic surroundings of Tawang. The memorial features plaques, statues, and inscriptions highlighting bravery and sacrifice. Photography enthusiasts appreciate the backdrop of mountains. Educational tours are also organized for students and visitors interested in history. तवांग युद्ध स्मारक 1962 के चीन-भारत युद्ध के शहीद सैनिकों को समर्पित है। यह इतिहास प्रेमियों और पर्यटकों के लिए महत्वपूर्ण स्थल है।"
      },
      {
        "name": "Nuranang Falls (नुरानंग झरना)",
        "image": "https://i0.wp.com/thelandofwanderlust.com/wp-content/uploads/2020/01/FBFFADE5B15FFC3BC9042DC6FB65E793-1024x768-1.jpg",
        "description": "Nuranang Falls, also known as Jang Falls, is a majestic waterfall near Tawang. Tourists visit for trekking, photography, and picnics. The surrounding pine forests and clear water create a serene environment. Adventure enthusiasts enjoy walking the trails and capturing the natural beauty. The falls are especially popular during monsoon and spring when the water flow is high. Local folklore adds cultural significance to the site. Visitors often combine this trip with Tawang town sightseeing. नुरानंग झरना तवांग के पास प्राकृतिक सुंदरता का अद्भुत स्थल है। यह पर्यटकों और फ़ोटोग्राफ़रों के लिए लोकप्रिय है।"
      },
      {
        "name": "Madhuri Lake (माधुरी झील)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV3CkSuaBirXb90Vhi0nNJxGGFMMnW2oiKgMASasRdgZcmiiQ&s",
        "description": "Madhuri Lake, named after a Bollywood movie, is a pristine high-altitude lake surrounded by mountains and pine forests. Tourists visit for photography, nature walks, and picnic outings. The calm, reflective waters and scenic beauty make it a favorite among travelers. Local guides provide insights into the flora, fauna, and legends associated with the lake. The area is especially popular in summer and post-monsoon months for its accessibility and serene environment. माधुरी झील हिमालय में एक सुंदर और शांत स्थल है। पर्यटक यहां प्राकृतिक सुंदरता और फोटो के लिए आते हैं।"
      },
    ],
    "West Kameng (पश्चिम कामेंग)": [
      {
        "name": "Bomdila Monastery (बोमडिला मठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwdc7GGLTkqL34P_BgnlZ1M0BTWw2EFt_-NA&s",
        "description": "Bomdila Monastery is a prominent Buddhist monastery situated on a hill in West Kameng. Tourists visit to witness the intricate architecture, colorful murals, and daily prayers performed by monks. The serene environment makes it ideal for meditation, reflection, and photography. Festivals and rituals attract local devotees and travelers, providing insight into Tibetan Buddhism and local culture. The surrounding hills and valleys offer panoramic views, trekking opportunities, and nature walks. Visitors often enjoy the peaceful ambiance, learn about Buddhist teachings, and experience the spiritual traditions of Arunachal Pradesh. बोमडिला मठ पश्चिम कामेंग में स्थित प्रमुख बौद्ध मठ है। यहाँ पर्यटक ध्यान, पूजा और धार्मिक अनुष्ठानों का अनुभव करते हैं।"
      },
],

    "Lohit (लोहित)": [
      {
        "name": "Parshuram Kund (परशुराम कुंड)",
        "image": "https://cdn.s3waas.gov.in/s3c0c7c76d30bd3dcaefc96f40275bdc0a/uploads/bfi_thumb/2018060759-olwby2n5njcozjvxeti4avjbvuo1c5iwdgb3ntlbii.jpg",
        "description": "Parshuram Kund is a famous Hindu pilgrimage site on the Lohit river. It attracts thousands of devotees during Makar Sankranti. Surrounded by hills, the kund is ideal for photography, rituals, and scenic enjoyment. पर्यटक और श्रद्धालु परशुराम कुंड में स्नान और पूजा करने आते हैं। यह स्थान प्राकृतिक सुंदरता और सांस्कृतिक महत्व के लिए प्रसिद्ध है।"
      },
      {
        "name": "Sadiya",
        "image": "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSExIWFRUWFRUWFRgXGBgXFRUVFRUXFhUVFhgYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQGyslHyUtLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALEBHAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAAECBAUGB//EAEsQAAIBAgQCBgUHCAgEBwAAAAECEQADBBIhMQVBBhMiUWFxMoGRobEUFiNCcsHRM0NSYoKSstIHFTRTVHOi8IPC4fEkRGNkk7Pz/8QAGgEBAQEBAQEBAAAAAAAAAAAAAQACAwQGBf/EACkRAAICAQMFAQABBAMAAAAAAAABAhESAxNRBBQhMUFhIpGh4fAFMnH/2gAMAwEAAhEDEQA/AMJUqYt0QCpqlfZWfLg1SiBKJlqQWmwB5KkFogSpAVWVAwtOENFC1IJTZUC6ulko0VILVY0Cy1IJRQlSC02NAerpZKPlpZarGgQWn6uihallpsKA5KWSj5alkqyLEAEp+ro+WlloyLEAUp8lWAtLLVkNFfJSCVYyUslWRUV8tIJVjLSy1ZFiAy0slHyUslWRUAyUxt1Yy0slWQYlbq6fq6sZaYLVkOIA26jkq1lpitWQYlTJTZKslaWSqwcTIS3U1WpKtSC157OlEctSC0QCphKcixBBKmFooSpKtWQ4gwlSyUTLUgtORUCCVNVqYSphKbKgQWny0ULUstORUCCUslHCU+SrIqABacJR8lOEoyKgQSpZKKEqXV0ZDSAZafJR8lMbdGRUAipBaMLdLJVkFAgtLJRgtPloyGkAyUglGy0oqyLEDkpZKOFpoqyLEDkpFKNFRy1ZDQHJSy0YiminIqBZKWSixSiqyxAG3TZaORUctKYOJjBaKqU4NTFefI6YCC1IJUlqYinIsaIqtSCVKpKacixIhakBUxTinIcGRC1LLUlqdWRYAwtSy1Imok05DgxwtOBTBqlNGaLAYininmmLVZIsBxUgaZLTnZGPqMe2j3eH3FXMQB4SJHnyrD1Y+hWmwYpUNkYDMQQJieU1IK36Jq3IltslSpgDGaDl740pKT3VKaZYMenpSeelPNNmcGNSNSpjVY4EacUxBiY0phVkhwZKkaiacVWgwGYVCiEeIqBA7xVki2xqYGmNJachwERSikR3VA0ZliZAapqaqI1GV681nWiypqamgIxoqCmyaCg04NRC0RbdRUOGpw1IW6mLVI0RzVINUshpuppsh8w50ay6A6iaCLFS6igU0i01+2TEaeVHXEJlgD7qzTh6Y2jRQ5BfOPDYe3vqxbvqI7I++qPUUxsGryVo1/60WdCR66JcxoYbaDkedYfUVIYfzrOBpahujF5xB27vKqox65jKx6qzupPeaY4epadE5o2rmLUqFbbceFVG4iFmCDVI2T40hh6VFIHKy0cYjySIY+PPvoYxo2Ike/20MYenGGpoxYX5Qk7aU/XqNjQvk9RNitAWbfEoOsRTti1JkiqnU0/U0UayDPi/LTwp+vVgZUA1X6ml1NNBYXMJojXhpI84oHU0hZqGwxvDYRFVmapGzSFqoLIrejkKmb87rUGtU3VVWRyQ4vY/T91TTjVj9L3VyHyBf731affFEs8MDbOx+ys+yOdfn92l8PRs/p2VvjFnlmPkpqXzhsjedu6uT/qU6zbunzRx8CKJ/URj+z3Z3kW7hHvJo7z8LY/TqPnPYHf7vxqR6VWBrDe77q5ux0ecjTC3z5Iyzp4oatL0WvGP/B3/ABkEezsU94+B2P02z0usjWD7RPs3qHzzs8lPtFZp6G4ogf8AhWHnlXx7x4U9rofieeHUf8VAfdco718FsGl88rf6HtYD41E9NE/Q/wBX4VXtdFb6nWzaMjKA7Z9Drp2pHmCDVteh+eQbS2j3Fhct/ZjRl9c0d7Iu3QH56pyQe2pL0xna0SPAE0h0MxAP5O0IO+ZR7NJ9cUVOhd0nexPg2Y+uLdHeTHt0Rbpkg3gHuKnfu3oLdN1H1Y/Z/wCtaXzJYHt37K+Y+8xRx0HH+JQeSg/84o7yY7ETDbptrsPWI++m+ebbAD2V0R6IgDTEsx7lSPjc99Hw/QwtqbrHXuH8x+NT6zULYicp88X1BEHuy0w6Y3Tpl/0mPbXV4no1YteleA1jtFUHkCedPY6N4c/nZPcrqTHf6Jo7rVLZicuvSu6RIWfL8I/3FR+dt2fQJ1jY7+rWuvvcAwyalrpgxoC0n1WDVBsNZEjqMSe6MuvqNmjutQdiJg3OlOJI0tEeOS4T8Ipm6Q4rlbYfsn7xWtefCro2Hvqf17gHrgWhR7K4A7q4+yLzn2C2B76u61WOzAwk43jT+bPsA+NSTjON52yPPKPia6VMBg2+piQORARPdcGamuYDCaZBiM3dmXU/sqfcK0tXXZh6cDmjx3F6yp/0/jUjxrF/oN7ortLHC7RH9mxR7yzMo9pVdKsLhsMv/kiT43j+NHcavI7UDz4cbxh+r5VM8Sx3O2w8wfwr0m3we24GXA2xO03Hj2VA9G7skLYww81uNv456t/U5LbhwedjHY47Kf3W/Cp/Lcd+i3lladP2a9EHRvEH81hP/j385Bp7nRB2bMQqbdm2VCeIy9QffQ+o1F9LZjwec/K8fzRh+y/8tP8AK8d+g8/Yf+Su+xa28OerN3DLcA2Zgz67adVp5RWe+IumRnQTtFmyfjbrcNTVn/1YShCPs5BsTjv0W/cb+WoXMVxAam3cA7yjAe9a7IcSxCjS+3kEtD+G2DQx0gxI/OH1qPvBruo6/wBZzb0ziV4tjDy/37KsDE8Q/u3/AHD+FdW/HMQ29wEeKJ961RdwTJCSf1E/lpx1frC4cHOWumF5fQwqj2Rr3DOdduVG+eWOmFtW130J28YKAe+t9elCjddPtCfetHXphb0iyT3y42/c3rybOodlqwOR+c/E2MgqNtFQHfWR2JPIb1oYbiXF2/8AxEHTu15611g6Y2Y0tvPd2Y9UtTN01b6mHB+1cj4IaFo6jF6sDnrd7jRIgwOY6pVH41qWbXGHQywUx9VTm9WZh/s0Zul+MbZLVseRc+0sPhVS50ixbCTiSP1bYCD/AH666x6ef+sw9WLDLwTGuPpxn1JkG4vOR2c0e+iXsGLSy1tFjcsqDXxJBNYl7iLtrfuvvqWJPLuzZffQlxWBnW9dPI9WLIj/AFzFadQ9pf0DzL6bdrEKyyrWx9lbbR+8vj3VJ+J3UEpbzA/WGFdl08bax76yl4hgMoc28Y6yfSvWlEjnAaavN0s4fHaw7PsPpLrPPnuIrM5xfqIxjJfSwOkFw7qojeLeU+3MCKvcH6QXby9myb1qSA6aZY5EswBjwJjurLtdMuHqdMIiECZ6u3PtgGrq/wBIuHgkWzA7mt6earJUeYFcJJNeEdla9s2bxuHVAqeFxYM9+YEiPMTQxYxh3e2o3nQ6epDWM/8ASPZOnUtHiVIPkMtVr3T60NUsXfUyqNwZgrE6b791YucV6Gov6dIOG4o74sD7K/hFQfouz63MQXPiub1atWdwrpxYvDXssELMCYac8BUH1jBBk+ytu7iD2hbAuMsBlNzIwJBIEFe4HUxtTuy4JxjyAsdELS7NH2VVfgatfN5BHbuSOYOUjyI1rDx3Sd7RAbClO7OxIP2SFg+omqVzpvdjS3bHnnP/ADCuqhqtHLPTR1zcMAHav3tP0rraVL5CnO9cb/jXI9xrhW6Z3+62P2PxJoT9L8V/fZfJEH/LV2+qT14HoCcOsHQqSfFrh95OtHXhFga9UvmZ+815nd6UYlhBv3PU2X+GKzr2NLasxY/rHMfaa2umn9kYevH4j1e4mDX0zhx59XPvNR/rrBJoLlkDuUAj3CvJvlNN8ora6W/cmZfUcI9QbpFghzU/ZtH+SoN0zw6+hbc+pVHxJ91eZ/Kaf5Qa0ujh9MvqZnoNzpu31bKjulyfcFFCfptdOyWx+8fvFcGMTRbeIFbXTaXBh9RPk6250oxTfnyvgqpHvUn31UxXEbtwEPeuMCI/KOojySB64rCGMEgaye4EjTvOwqYxQInbw0n3V0WlpL4T1J+7B4jgVhiSQdd+0xJPfJO9Rs8ICehfu2/BW09k074qhnFGnbhwG5Lkv9Y6j8qX+0FB9WWPfUPlDnkD56fjVIXmPL31YRmj0Z9YitpmbYzCd7a+78BQ+oX+5X2LResctoBl9U8uZbz5VVuWr7ElbihTsCkkeBIJBoZqjb+YCsQUuta74yv7M6mKPxDoayKWtPmgeg3pGBrDDQnwgVy46WY3XKtlR4s5I9lFw3SzGj07lpu76PNl8ixHvmvztPdT8I9U1pvxZTOMA5H4e6oNjh3GgtcX1+oUDrRXuydHkLq4hT9T2wfjNT+WAHsiPIgfdVEXRO1M97wpTKjRXHL+t8fiamMap/6isc36icTFZsjaHEyh7KkeKmD7qu2+K8+zPiqk+skVyrYo+r30/XA6yffR/H6kaqR1T8cc73WEdzFY/dihXuNu295z5u5HszRXNdbzE03y4bTV/DhF/Pk3mxrnd59Ta/vGgRrPZ/dE/fWUMZNSGJNP8eAeZqXLSuIcBhymdPICI9tFa7dVcqXDcQurlHJBLLqIZdd49lZAxFEGOjnWZ6cJeyjOcTr7PTofTC9ozMCtu4vYPa7XaLSQRsO0BO3Krl75Bea2pPU3LiqR1ZDoGYwFfLIUyRoRb330McFfxYdcrAMO47eqg4B2ssty1dyMDMT3aaHyryy0nDzH+x6I6ikqkdtjuid8DNZKXl71IB0337LHwVia57EW3Q5XDKRupUqfYdaJwLpT1Nx7t4urMjyUcKC5WAzSrBjzEg6gV0nBek/ym264hbV22iZgxNpCzSAqhLpCSddUyRAmJpXUTivPkHowfrwcmGA5e3Wk14dwrqbHCsDi/wCzXWt3IJ6syToJP0dw5j+w71j8T6KYu2Tlt9aBubRzMo/Wt6XB+7HjXePUQfh+H+nJ6MvaMs36XXCs+5cgwRBG45g9xHI1EXvGumXBzo0xeoguisk4qi4e4uub1a05FRodYKkLwqr16kbgU6qOUH102WKLnX1F7lVgRT9bUmWKCNdO01HrD3++hm5UM9NlQcXj3++jJjD31QzUs9SYYmoOIHvoRdJJyrJMnsjU950rPFym6yrIMWVxiBSbFjvrLD0+auGZ3xLzYqofKaplqbPRmOJe+UmotfNUxcpG7VmWJZN403W1VL0xajIcS0btLrv9zVSaVGZYssG/SN6gZakABvRkOLCm/wCNN1p8ffU8PZL6W7bOf1FLH3A1s4XotjLno4dx9uLfucih6qX00tNsxAzVLK1dXZ/o9xp36tPO5Mfug0c/0cXwJbEWwfDOR7Y+6s78OTS0WcettqnDDeukPQa4N76R5MPYTpVzC9DsP+cfFHvyC06n9wkgVh9XpjsSZyatyIB8DrUVwmpKMbZIggaruDrrPLxr0TDcF4YmpyE9165etmfI6e6texwnBmCmFwx7vpSQfbbrlLqtOXtGo9PNejzLg/FbmFudY9pH7DKHILKCykSIZYJnLqQYY6Vf4T0uvowW3fQqX0t3mm3bzNooZznsqJjRhEV6N/VdpSSuAw/7NxQYP7A5Vat3GBAGEIBGmV7RUDymY9VcH1Kttq//AE6rRfhXRzvG+P4B7xtYpLbaCLkrfEQNM9puuskGdO1tNUMR0Iw95DdwmIEDkT11sHkOstjNb8mUmuzbDOxk2VjXRiv8p91D+RsFcZOqzZe1Zdi2hDHUW1IOkSORIrkurcUsf8G3oKT8nlPFOjOKsjO9olBu6RcQfaZJy/tRWN1vca9zB2JHbjVrX0LzzMAkR4MG86hdFggF7dhy1wp9IiW7pYgsFzxkZoUnX9E6V6Yf8gvTRwl0nDPDWuUg55SPKvbbnBMITBs2UYgnJdsopjvDhcpGu+lAv9G8Onp4Sz59WmU+TAQfbXTvkvjM9q+Txs4hv0jSGKf9I+uvXW4Dg+eFtepY+FAbo/gv8Kg/eH3099Dhh2sjyv5W/f7hS+WP3j2V6j83cF/h09rfjT/NvB/4df3n/mp76H6Xay/Dyz5W3fSOLavUx0dwX+GT/Ufvog4Bg/8ADWvYD8au9jwy7WX4eTfKmqBxJ769ht8FwY/8pZ23yIfilWFwGFXTqbI/4SfyVl9cuDS6ZnhWalnpYaw9z8nbd/sKz/wirqcDxBMFFT/NuWrUeYdgfdWszOJSmnzVo2+EJJFzGWFiZyC7d1G4BVAh9TVZHD8Go7eIxDnl1dlEnyL3D7YrL1or6aWmzFJpxXbjoxYyq9vDXMSp1k4lVPfEW1UbaeluKrWsfaQsq8NsApqesW5dYATMm4dTttpXN9VFCtJnJosmBqe4an2Vo4To9irnoYe4fNcg9rwK6dOlt782bdsaaW7aAHlzHnGvKnucWxNxA3ylsvaJJYWo1UQY0JjNzjfbSufecI3s8mfhugOLPpBEH6zSR6kBHvrXw39HyjW5eY/YUL72LfCs1Wut2jfLelE3CZIEiJOo0mfKp2rRM65oImTIjQg79x7p+7hPq9Q6R0o/TfsdGsCm6o5/9S8T7gwHurQsDCWzCW8GnkVDe3U1x164CZmNO7UZh2dfH35poVnTMCBmVgpI2hgIMH1b+NcHrzf06rTjwegNxSyN76Dfa5ppMx76ZsbhSIOJUd4DsDp4iK4UroJI3ULAlTmYADTU8ufdyOkSFAMzpAbvBjNOU89DppuZ7hnOTRrE7ZbHDpH08FtiL7iQBJkhtB51pYTBYUH6N8zcoxLMeX6+tecXFt6GGAOn1AfsnXnEad3qqdpgGUmCpAz6jMQFJ0kFW0OkyBoYMVLU/CxPV0OvMe/4UW4LDdm51beDAT6p1mvLxjEUQltU1bVVhwCACOttwe/l4a6Crj8WJyMqBiuXS4kpqIMJbyqAe8iRyNa3UGJ6Jbw2HIyAIfAgHw+tVHGdHMESS2Hsg96oEaPNADXC4/iFu4oBsi2yghgiQO0Seclh9qedDtcde2RkuXoGuQk5I5AqG9HU6AireXAYHaLwLCiOrxVy3zAF7MD6rktHgDUW6PEn+36eKifUcwrkcRxazeADq6GcxyFgGneWJMk/rSKqW8ThlgKHkNILXLgCGN/owQee4NWafwqaO3xXRN32x1wbaoFn1EsYqueiVwCP6xxXn9HPl6JrirmO/wDdMhGxGZiZYAKQViAJ7UCkcbiXYjD4svrAV4Rm/dY+8AVpS4Kv069ujd8ejxPE7RDi26+x109lZ93AcRtr1a9TiEDZgRls3TpEliohtSMykNB3FZ9nA8YIEnKCdjcJI+0FnL66hjOAcSb07ixvIuNpHfI286bf1IvBsv0nxNpSLvD76DnlAv2R4lRMedWujfSmzeNwWibeW21xurzEDICWLWbkEaA7EjTbv5cdEuIjtLiLoO/Yugnyy5tfVRMFw3itnrMjsxds1wXVtP24VQ+W4DlMACfCpuPzw/7B5O2w1+3dEqBdXU57DfSgEky9llBjfUKBoINSbh2fW04f9U9h/YxgnyNeZXuiXFGuNfg5y2YutxUJbvHVkZdhtFbi8X4ugUYjBJiUiAS30gHhdDlxy9Ka3jF+mgtnR3MO6mGQoe5tKbqD31ocF4mXsOz9Zh8hUMmKKXbahtJDqD4gFgKu4jD2BbUksgIAFxYuWie8mdfUa5qK5NWYiWT40dbRo74ZozIOuXvtasPO2Yb2A1n/ANe2ASrMVI0IYEEHuI3Fb9AWnDCm6099BPFbB/Ogecj4ihnG2uVxPbT7CjzB7rXFIv4gtqCv0j3N+WVTAI05c6EzrbhlVGAk9pN572PaMR6MxtvFdCqcOzT1RcAAZjchZPIq57PnrWdxK1hUzOj7GUQEsDopksUgaCfLaaXZlFK/xS7cKgrbQiAMiKu2gltxrGsz94sGtyT1c+MRqJBGnPUcqt3GgibNxBGcEEFw3IhisqDJI0O420i4ONX/AEWvEAKGDXFualZ0BRVPONZ2rPgS/wAKwmKVSwU+l2mDMbjMNQvVl0Rkkkx5jWTWocPes2irD5db1LWcqo9guVaEUAkbaBYg92lUrHSq6bYVsxDAgOvVsqNuSS8yRtqNAde+kOmtm3KraXYHrFymWkA5pJMbxry5U0iKWK4Lp2VTVFOr5DbDQwRluAS3kd6wvlbInZZoEAjMe3bzEzlnwAO9FxvG2dy8gnOGXOqFweyxIjTc8/VtUU4qwDjIjKxmCm2gUMNzMcp5VmkPkhdxTF1BuPCmElnYLIAOUkiAcwjuEnnVy5cvJo5IdSDAeezzJKmIjQHX60TWal9SIYjSR3QCeXcYqdu4msGBvpyy7aEbzqPM694/IJF61jXYsFGYSxIiSVncDaSAwg9xO0CjLxUOcrW2znKzGCJ0AD7a6zyBga7RVNQr8wR2Y3DFi5LmeR1mfhUEvMh3JENrHaI2WVO+xHPUHxBy4xo0mzUdhrmJ0ObtIhX0mOYrqJEAAbQToeQbt1GElQjSScigARo4JBmNNCDGmvcBYC7cuMZBaJAAElmB7lkwNVOnwq/Za7adWt2GtsswXsqWieZdSSZzbbAHaaw1Xs3YWxw9rhGVHPpZQJJYDUwNS2kejNbOG6EXF3R1QA6Bch21DlxJO8QvMzFYmG4zfS71iOyEkSqsUUkSCSpOUgjLoY2EbVC5xbFGQb9yJE5ZCkH0dtDtTGqLyafEnw9tsqSCIGpUsxJb0lQEAgzrty5VSw3E82cAmMy77mDO090+kfurHN/NBnfwyzJAOkct/X7YW70w+Zmg8zG+w28DWHEjV+XFWUwp1GmhU9nfyHhA99EwvG3CgKAVGYQQT6WeWlW0232rH+UxsASynY9/LyJ+FCe+2sSCdBLbjlqNvu1iqMQbNQ44sohVKjbY6kjNOu2u3ka2MDxu2sm5gbLqQMpW1alW0gSYBENrp+FcocTmyqzHRcsqIGwB9ACdI1J5U62yRCxMciZJBG8kgnbQ1tKmB6JhOkKdUrLgyHOY/R2FNsLmOWSApJyxy3NZ/EOnrCVWxbUjQ5w4nv2ML7TXLLi7hPazEggvmUlVOwlNo84iDXT2mulEN3BQlxZBzos5hpo8RPi3rpyJIez/AEg3AfyEkgaKzEnnKqxn/tW9g+N4q/a6yx1EbEOzh1P6yxA5c6zrXDEZ4AuDSBIUnTUk5bmwJjU860MH0Zt2y7C9czkRKFkUc4AJPxNVtjSKvE+KY7rciqpSQcyKxCgelm3LieQIHfQ8TxK86oesuMA4bZDbWNSrC2WYSORuDcaVes9H7WbO73Lp09Jrh+N0U6WcMxYiyyt1knKqqSRHakMVG3PXurMnyaOex+DxF1ieouMjS4uBoA5wURWOgHdyq78kxNhOstaM67XLV5tBrzhV82Vd+VdDdx6KWZRfJKkALcSJ/SCEZJ8YNZWCNxcxNt/SLKS83Qx8UUCPPN7NKy6+ASw3GHZSr2jbUqOsfsqFZTIEZQG15gnf2ulmWL4W+yFjLPaXsP8A5krlcju3FGucWxAJbI86x2c0SNttKzuKYrit2OpuMixqIKk+OYg+zTzrCTvwaL1niuJUhb2FNyfz2FZLbCDpmtuQrGN9FrfF0Ohz5b6gbXFKYhRzjWT+wa4X5bxhVg2idAJBt6xzjNE99Zgw3Eb9zJiFe1bKtmuXSerAiYZLTRB2kwBOpFd4y1GYaR2eO4FazhbZa05OUh4dbagHWcodjoBDZt99KivRK7yt27g5MrLB9r7+ob0/EuPNgcPZa6UvWltW1drjoXuXNA1yypJ6wHfsMOe9aFviOHcBwl0BgCMjypB2PbEjyNdVjVmfJ5M1qzPa1aQzFS3okxEJlgfaY60K5iXBIVm1khYYsqnT60zrrvr6q6O9gzclrNtzOYy+a1aE7kgiQPXPntRrPA8Wik9ZbDbsPpGH6sC31a/V2IJrWJizkVuNE9cI0PbZs2o1ZlAIGubnpQcJ1LOetckAHsIrfV0BB8FMSO/nXUrwU3Wi62GBALHKpAjSTcBjKJnRtyaMnRVQvWKtq6g1RkdbYbUiTkTkeYJjUQasSsxEw2AOpDQDPbeJkb5WYGPEfo1ttwrBra636KNQoDSCdgOyD4bjSdYrn8dgZcFbCpOkJ9JbMA6h27J7jDE67ChhltHKuRtNJ+lbxCyMmWAIGpgnWoSeKuqHAS2sEkyC+XTvXWe8R3UDG3C0FCdZWTmERsBmMamdfbyq1h3vnKZuIdjmFxVWCSAoWJUaH1eo3+G20dshxd03GYB+wQg9KCTBMeiNW05+BbE5RcMWiSzkzAAOp205keI/CtfBdH775gLeWGgdYyh2PIqh7XLku9dWEwFpirYi1bbKQQly47jXWbgmdPqxpJ3AFZt7A4MsHtcQCse0Mk+MlhGgPPb1VAU8LwYI4D30tOFZlXq7s5eYPZ22MQfjVK7dsq3aJuAmTlDIp9LMZdQRoY0HlVz5v37rGMQ90LPauaKZ3WWuDTy+NWsF0MxJiXsKAwOjZixHJgEMjzPqrGIg8Tx5CnVWbR6sAaB1YoNIAUDUaRJ11OpqpcvEwcwUyfR7LRuzDKPRAjTcR6665uB38httftkGNMoRDGy/RKpCjlWZa6NscovAyxYFrdzsWlVZTRxmaTA0nbuqqxTMDGWEUKTcYuxGXLmfPOgykxGsd+3dVG6ygEOxiY8gZWSJ0OpEDma7dei9hV1+leI7ZYL7BIHLcGo2ujaxqba9kiGQXo13zuAdddAAByoXg0cktq1kQjERO6hWJQSRIJ0Omu/PSab5DtF0kEGGjcROqAzIruBwiwrZma3GXLkCsFIiNczGR4GtFsLaaCUtsAAARlMAbSQJ9tFAecrw27Olt2I0MI07d0H2H/pUl4FiWPZw94nQ9pSgGve2URoa9Pt3IEA6coC/ECaa3eM6k+s/7AqUWXg4G10dxmcD5PAgalkEDT63Wb+/QV0mF6IZYZ7dtTl9Nbl25lfWDlW2pnfXPFdGt6OU/H1UZrSkSzwD3mBvS4MjkE6LkXQyXFyiJMMXJ+tDM5y+YI7q6OzbdHLZ2uCfzkMyrB0VtxJy+Gm2taQsgDQacu6oPbpjplkZyhEZ2RAC5BbfUgQCdYmoNcduelXXwZ3ipLgTvGnfypxQWyiCQN4pws6VbfDoAWZ0AXfWSPUsmsLGdI7KaWQbzd+qWx5lhmn9n10OMUNs2rFsDlVwiuaTpC5SQFtnvkEA+uudxXHWDF2xbmJ06xtxuMiwAPVRa+IqfJ6MdN4HnA23iaEnE7J2uTp9VWb4CPVNeYXulqkhmzuSANTqo5r/ANt6hiOmSwFW2wUGQNBz115edNvgqPR8X0isICYYxpBGXWJ23rzzpV0ov3ZVbhtoSQFSVYjxO/I+ysy/0la82QWSzOYABEknntvtziKuP0cK9q4x1g9hc59EcyZPPYfGmn9IfoDgkW49xkViElcwkyWgkTrI12766LEHOxIYDWD241HPasW3hWtQyZzAHJQNCJIg7ROh76Pg8VhoOdL0liR2COydtjrWZWyXg9CX6nmP4hVPjn5F/wDLf+GlSr1nBHnFz8lh/wDMX4UuO/2i/wDZb+I0qVcn7NoxMX+XH2F/gqxj/wAtZ+2n8C0qVD9ihN/Z732z/G1UH9K7+1/EKVKhiR+o/l95rquG/wBmxHkf/sWlSoRfDve/7VR4j+Tf7LfwmlSpiQ130V8h8BULlPSrDNA2+776bnTUqyQ3Op4ff2/EUqVSBhx6VS50qVdDCLdqh8V3T9n+G5SpVSOiL/APQHmPhWmu3qpUqogcP+ev/wCYn8Irk+mf5U+dKlXNmkbHQ/8AJN5CsV/yx/zD8BSpUExdI/Q9tclf+4U1KukfYfAPM1G5tSpV0Mh+D/l0/a/hNencP/Inzf8AiNKlWGIDjOy+r4Vg3t6VKsv2R//Z",
        "description": "Sadiya is a historic town on the Brahmaputra River, known for ancient temples and archaeological remains. Visitors explore local culture, river views, and festivals. साडिया ऐतिहासिक स्थल और संस्कृति के लिए प्रसिद्ध है।"
      },
      {
        "name": "Roing",
        "image": "https://i.ytimg.com/vi/joz27UAarSM/maxresdefault.jpg",
        "description": "Roing town offers scenic river valleys, lush greenery, and trekking trails. Popular for local markets and peaceful environment. रॉइंग घाटी और हरियाली के लिए प्रसिद्ध है।"
      },
    ],

    "Anjaw (अंजॉ)": [

  {
  "name": "Walong War Memorial (वालोंग युद्ध स्मारक)",
  "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Walong_War_Memorial.JPG/500px-Walong_War_Memorial.JPG",
  "description": "A memorial dedicated to the Indian soldiers who fought bravely during the 1962 Sino-India war at Walong. 1962 के चीन-भारत युद्ध में शहीद भारतीय सैनिकों की याद में बनाया गया स्मारक।"
  },
  {
  "name": "Kibithu Village (किबिथू गांव)",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa4AD9AYnO5er7rZx2VOv_BREQ6yW-g6mHgA&s",
  "description": "The easternmost inhabited village of India, offering scenic beauty and cultural richness. भारत का सबसे पूर्वी बसा हुआ गांव, जो प्राकृतिक सौंदर्य और सांस्कृतिक धरोहर के लिए प्रसिद्ध है।"
  },
  {
  "name": "Hayuliang Township (हयुलियांग टाउनशिप)",
  "image": "https://img.traveltriangle.com/blog/wp-content/uploads/2025/07/Cover-Image-8.jpg",
  "description": "A picturesque township known for its stunning valleys and convergence of Lohit and Delei rivers. खूबसूरत घाटियों और लोहित तथा देलेई नदियों के संगम के लिए प्रसिद्ध नगर।"
  },
  {
  "name": "Chaglogam Village (चाग्लोगाम गाँव)",
  "image": "https://i0.wp.com/eastmojo.com/wp-content/uploads/2019/12/IMG_20191128_WA0025.jpg?resize=780%2C439&ssl=1",
  "description": "A remote village surrounded by breathtaking landscapes and rich tribal culture. दूरदराज का गाँव, जो अद्भुत प्राकृतिक दृश्यों और आदिवासी संस्कृति के लिए प्रसिद्ध है।"
  },
  {
  "name": "Kamlang Wildlife Sanctuary (कामलांग वन्यजीव अभयारण्य)",
  "image": "https://pbs.twimg.com/media/FKvbJkEaQAAe9Ao?format=jpg&name=large",
  "description": "Home to diverse flora and fauna, including the famous Kamlang Tiger Reserve. यहाँ समृद्ध वनस्पति और जीव-जंतु पाए जाते हैं, जिसमें कामलांग टाइगर रिजर्व भी शामिल है।"
  },
  ],


    "Changlang (चांगलांग)": [
      {
        "name": "Namdapha National Park (नमदाफा राष्ट्रीय उद्यान)",
        "image": "https://i0.wp.com/kaziranganationalparkassam.in/wp-content/uploads/2018/07/namdapha-1.png?resize=648%2C381&ssl=1",
        "description": "One of the largest protected areas in India, famous for rich biodiversity including tigers, leopards, and red pandas. भारत के सबसे बड़े संरक्षित क्षेत्रों में से एक, जो बाघ, तेंदुए और लाल पांडा सहित समृद्ध जैव विविधता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Nampong Border Town (नमपोंग सीमा नगर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF35Z9_XWmeILFIBrSeJATll4KuIqc5C6BIg&s",
        "description": "A historic town near the Indo-Myanmar border, known for the Stilwell Road and cultural diversity. भारत-Myanmar सीमा के पास स्थित ऐतिहासिक नगर, जो स्टिलवेल रोड और सांस्कृतिक विविधता के लिए प्रसिद्ध है।"
      },
      {
        "name": "Miao Town (मियाओ नगर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpP5klCCn3qQvI6CEWlaDEaCeFR3c-6VfwhQ&s",
        "description": "A scenic town located on the banks of the Noa-Dihing River, gateway to Namdapha National Park. नोह-डिहिंग नदी के किनारे बसा सुंदर नगर, जो नमदाफा राष्ट्रीय उद्यान का प्रवेश द्वार माना जाता है।"
      },
    ],

    "Kurung Kumey (कुरुंग कुमेय)": [
      {
        "name": "Koloriang (कोलोरेआंग)",
        "image":
        "https://images.firstpost.com/uploads/2023/05/Mountains_and_vegetation_in_Tafl-1.jpg?im=FitAndFill=(596,336)", // replace with real image URL
        "description":
        "Koloriang is the district headquarters with lush hills, rivers, and tribal villages. Visitors experience culture, trekking, and serene landscapes. कोलोरेआंग प्राकृतिक सुंदरता और आदिवासी संस्कृति के लिए प्रसिद्ध है।"
      },
      {
        "name": "Damin",
        "image": "https://pbs.twimg.com/media/GjmEW4DWsAAveYK.jpg",
        "description": "Damin area attracts tourists for pristine rivers, green forests, and remote adventure experiences. डमिन क्षेत्र प्राकृतिक सौंदर्य और साहसिक अनुभव के लिए प्रसिद्ध है।"
      },
    ],

    "Upper Siang (अपर सियांग)": [
      {
        "name": "Taliha",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo8Zk-6QFZUuL0eOL1d4RUk7GJ9IRYWwA51g&s",
        "description": "Taliha is known for scenic hills, forests, and traditional tribal lifestyle. Adventure seekers and photographers frequently visit. तलीहा प्राकृतिक सुंदरता और आदिवासी जीवन के लिए प्रसिद्ध है।"
      },
      {
        "name": "Daporijo",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_LJvXsh1Po0CGJlJ4Ysf9fRdABhgRGsQBY1PUCRRlljgfJXS0d8BuYtRwXDVX7BhkoA&usqp=CAU",
        "description": "Daporijo town offers river views, trekking, and cultural insights into local tribes. दापोरिजो प्राकृतिक दृश्य और सांस्कृतिक अनुभव के लिए प्रसिद्ध है।"
      },
    ],

    "Lower Dibang Valley (लोअर दिबांग घाटी)": [
      {
        "name": "Ziro Valley (जीरो घाटी)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZLlkvo6ZdH5BelX65HYpPKAmj1OKEGG7P4A&s",
        "description": "Ziro Valley is world-famous for its scenic rice fields, pine forests, and Apatani tribal culture. Ziro Music Festival attracts international visitors. जीरो घाटी अपनी प्राकृतिक सुंदरता और अपतानी संस्कृति के लिए अंतरराष्ट्रीय प्रसिद्ध है।"
      },
      {
        "name": "Hapoli",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrEPzAdsT6hwT44P2C09KZ7Vu6XPIcLvBs_w&s",
        "description": "Hapoli town offers green landscapes, local markets, and cultural exposure. हापोली प्राकृतिक दृश्य और सांस्कृतिक अनुभव के लिए प्रसिद्ध है।"
      },
],

  "East Kameng (पूर्वी कामेंग)": [
    {
      "name": "Pakke Wildlife Sanctuary & Tiger Reserve (पक्के वन्यजीव अभयारण्य और टाइगर रिजर्व)",
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZLlkvo6ZdH5BelX65HYpPKAmj1OKEGG7P4A&s",
      "description":
      "A beautiful sanctuary known for tigers, elephants, and over 300 species of birds. यह एक सुंदर अभयारण्य है जहाँ बाघ, हाथी और 300 से अधिक प्रजातियों के पक्षी पाए जाते हैं।"
    },
    {
      "name": "Seppa Town (सेप्पा नगर)",
      "image":"https://i.ytimg.com/vi/Vq-CDx9QWkw/maxresdefault.jpg",
      "description":
      "The headquarters of East Kameng district surrounded by scenic hills and rivers. ईस्ट कामेंग का जिला मुख्यालय, जो सुंदर पहाड़ियों और नदियों से घिरा हुआ है।"
    },
  ],


    "Pakke-Kessang (पक्के-केसांग)": [
      {
        "name": "Pakke Tiger Reserve (पक्के टाइगर रिज़र्व)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHFOrCZ4pn3BOtAdHPoyM07JFdbk8FHnuxJQ&s",
        "description":
        "A famous wildlife sanctuary home to tigers, elephants, hornbills and 300+ bird species. यह एक प्रसिद्ध वन्यजीव अभयारण्य है जहाँ बाघ, हाथी, हॉर्नबिल और 300+ पक्षी प्रजातियाँ पाई जाती हैं।"
      },
      {
        "name": "Pakke Paga Festival (पक्के पगा उत्सव)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIg6Ip5bkK7cl1fRoCQ2WiVbbyGDa7EUZRkA&s",
        "description":
        "Annual festival celebrated to protect hornbills and wildlife, attracting tourists worldwide. हॉर्नबिल और वन्यजीव संरक्षण के लिए मनाया जाने वाला वार्षिक उत्सव, जहाँ देश-विदेश से पर्यटक आते हैं।"
      },
      {
        "name": "Seijosa (सेइजोसा)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgsWZINKEQ2b7tykyrQKGLq3jO3YNZ-NBeYw&s",
        "description":
        "A scenic town on the banks of Pakke River, known for natural beauty and eco-tourism. पक्के नदी के किनारे बसा खूबसूरत कस्बा, जो प्राकृतिक सुंदरता और इको-टूरिज़्म के लिए मशहूर है।"
      },
    ],


    "Kamle (कामले)": [
      {
        "name": "Deding Hill (डेडिंग हिल)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlBzAkqIhnJ_lUi3riojViavKAeRX2-CaLHQ&s", // आप इसे real URL से replace करें
        "description":
        "Stunning panoramic views of Kamle district – perfect for trekking, photography and sunset picnics. खूबसूरत दृश्य, ट्रेकिंग और पिकनिक के लिए आदर्श।"
      },
      {
        "name": "Harmuti River (हरमुटी नदी)",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/2a/b1/6b/ganga-lake.jpg?w=600&h=400&s=1",
        "description":
        "Serene riverside ideal for boating, fishing and relaxing amidst scenic hills. शांत नदी किनारा जहां बोटिंग, मछली पकड़ना और आराम किया जा सकता है।"
      },
      {
        "name": "Tachang Village (टाचांग गाँव)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfvEL5bqo80ldZq2cFml_XyLBmxexwV5610Q&s",
        "description":
        "Picturesque village with traditional huts and rice fields, offering cultural immersion and photography. पारंपरिक मिट्टी के घरों और खेतों वाला सुंदर गांव — संस्कृति और फोटोग्राफी के लिए बढ़िया।"
      },
    ],


    "Kra Daadi (क्रा दादी)": [
      {
        "name": "Tali Valley (ताली घाटी)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeKg8IBfxsLy1lK8nDMMWlL6YKyOyOtosrOA&s",
        "description":
        "A breathtaking valley surrounded by lush green mountains, famous for trekking and adventure tourism. यह खूबसूरत घाटी हरे-भरे पहाड़ों से घिरी है और ट्रेकिंग व एडवेंचर टूरिज्म के लिए मशहूर है।"
      },
      {
        "name": "Subansiri River (सुबहनसिरी नदी)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOFyM0rFZh1b6bCcKcJdG-tKO2adIvexALGA&s",
        "description":
        "One of the major rivers of Arunachal Pradesh flowing through Kra Daadi, ideal for river rafting and nature exploration. अरुणाचल प्रदेश की प्रमुख नदियों में से एक, जो क्रा दादी से बहती है और रिवर राफ्टिंग व प्राकृतिक सौंदर्य के लिए प्रसिद्ध है।"
      },
      {
        "name": "Local Tribal Villages (स्थानीय जनजातीय गाँव)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxCo6Q-1yABspG4P4O6CTeew9pu6s2ffQE2A&s",
        "description":
        "Traditional Nyishi tribal villages showcasing bamboo houses, local culture, and unique lifestyle. पारंपरिक न्यीशी जनजातीय गाँव जहाँ बाँस से बने घर, स्थानीय संस्कृति और अनोखी जीवनशैली देखने को मिलती है।"
      },
    ],


    "Lower Subansiri (लोअर सुबनसिरी)": [
      {
        "name": "Ziro Valley (ज़िरो वेली)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZLlkvo6ZdH5BelX65HYpPKAmj1OKEGG7P4A&s", // उदाहरण लिंक—आप वास्तविक स्रोत से replace करें
        "description":
        "A tranquil valley known for terraced rice fields, pine-clad hills, and Apatani tribal culture. शांत घाटी, जहां चावल के खेत, देवदार के पेड़ और अपतानी जनजातीय संस्कृति मिलती है।"
      },
      {
        "name": "Talley Valley Wildlife Sanctuary (टैली वेली वन्यजीव अभयारण्य)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrQvT8YzBET5QNsrCg9lzulCjUbZxLF4MOAQ&s", // उदाहरण लिंक
        "description":
        "A high-altitude sanctuary with dense forests, diverse flora & fauna, including clouded leopard. उच्च पठारी अभयारण्य, जहाँ घने जंगल और विविध वन्यजीवन पाया जाता है।"
      },
      {
        "name": "Shivalinga at Kardo Forest (शिवलिंग, कार्डो वन)",
        "image":
        "https://i0.wp.com/bijitdutta.com/wp-content/uploads/2017/06/Hapoli_Siva_temple_Ziro-4.jpg?ssl=1", // उदाहरण लिंक
        "description":
        "World's tallest natural Shiva Linga (25 feet) with constant water flow from its base. दुनिया का सबसे ऊँचा प्राकृतिक शिवलिंग (25 फीट), जिसकी नीचे से लगातार जल प्रवाहित होता है।"
      },
    ],


    "Upper Subansiri (अपर सुबनसिरी)": [
      {
        "name": "Menga Cave (मेंगा गुफा)",
        "image":
        "https://cdn.s3waas.gov.in/s328267ab848bcf807b2ed53c3a8f8fc8a/uploads/bfi_thumb/2018080434-olw7c8y5yqcms2r8pn2ix7yv5pzweg7mkp2crhgn7u.jpg",
        "description":
        "A natural cave dedicated to Lord Shiva, located near Daporijo. Pilgrims and tourists visit here for its religious significance and scenic surroundings. यह प्राकृतिक गुफा भगवान शिव को समर्पित है और दापोरिजो के पास स्थित है। धार्मिक महत्व और प्राकृतिक सौंदर्य के कारण यह जगह प्रसिद्ध है।"
      },
      {
        "name": "Daporijo Town & Suspension Bridge (दापोरिजो नगर व सस्पेंशन ब्रिज)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGqBOOdRet1JPBfkU5tr_kTHbFMxf6QI4C_A&s",
        "description":
        "Daporijo, the headquarters of Upper Subansiri, is known for its bamboo suspension bridge over Subansiri River, one of the longest of its kind. दापोरिजो अपर सुबनसिरी का मुख्यालय है, जो सुबनसिरी नदी पर बने बाँस के सस्पेंशन ब्रिज के लिए मशहूर है।"
      },
      {
        "name": "Siyum Valley (सियुम घाटी)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP23G-QLTLcqFbDVTrU54gi5AijaWLSd0NGA&s",
        "description":
        "A picturesque valley surrounded by mountains and rivers, perfect for trekking, photography, and exploring tribal culture. पहाड़ों और नदियों से घिरी यह खूबसूरत घाटी ट्रेकिंग, फोटोग्राफी और जनजातीय संस्कृति को जानने के लिए उत्तम स्थान है।"
      },
    ],


    "Lepa-Rada (लेपा-राड़ा)": [
      {
        "name": "Basar (बसर)",
        "image": "https://i0.wp.com/www.traveldiaryparnashree.com/wp-content/uploads/2019/04/Basar_ArunachalPradesh_5344-2.jpg?resize=799%2C600&ssl=1",
        "description":
        "Headquarters hill town known for scenic landscapes and the annual Basar Confluence festival celebrating Galo culture."
      },
      {
        "name": "Gori Lake",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_N2799mC2pKp3GlTtyyLSOkwozlcxd79C0A&s",
        "description":
        "A serene lake surrounded by greenery; ideal for boating, picnics, and peaceful nature time."
      },
      {
        "name": "Donyi Polo Temple",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKFbaiTbU06v8ZcgbF_dejKCrcoHGF9OWHzw&s",
        "description":
        "A religious site dedicated to the Sun (Donyi) and Moon (Polo) deities, reflecting indigenous spirituality."
      },
      {
        "name": "Traditional Villages (Paya, Kago, Sago)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0e/46/53/93/kabu-village.jpg",
        "description":
        "Experience Galo tribal culture, traditional houses, festivals, and local lifestyle in these charming villages."
      },
      {
        "name": "Siru Rijo",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbwG_ovGYyI2LAAjuVHLcBTAl_rFKpWNOv6Q&s",
        "description":
        "Scenic hill station perfect for trekking, nature walks and panoramic views."
      },
    ],


    "Lower Siang (लोअर सियांग)": [
      {
        "name": "Likabali – Malinithan & Akashiganga (लिकाबाली – मलिनिथान और आकारशिगंगा)",
        "image": "https://static2.tripoto.com/media/filter/tst/img/1221393/SpotDocument/1550819852_1550819840644.jpg.webp",
        "description":
        "Likabali, the district headquarters, is known for the ancient Malinithan Temple ruins and the sacred Akashiganga waterfall with mythological links and scenic beauty."
      },
      {
        "name": "Mehao Wildlife Sanctuary (मिहाओ वन्यजीव अभयारण्य)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS5FGvMKD-e8iOrL7FeASfFzWWsTUXjHaVLQ&s",
        "description":
        "A biodiversity hotspot rich with elephants, tigers, leopards, and hornbills. Ideal for wildlife hiking and nature enthusiasts."
      },
      {
        "name": "Basar & Gori Lake (बसर और गोरी झील)",
        "image": "https://i.ytimg.com/vi/e9zKJc7YA1w/hqdefault.jpg",
        "description":
        "Basar is culturally vibrant with scenic landscapes, Gori Lake ideal for boating & picnics, and hosts the famous Basar Confluence festival."
      },
    ],


    "Siang (सियांग)": [
      {
        "name": "Mouling National Park",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSQv8tXXjTuFLk3s7-Q5YeMJQ48yNZ9hLEUUWZoddTb3T91eCEKg8kznSi_egK7tz_Qj8&usqp=CAU",
        "description":
        "A rich biodiversity hotspot home to rare species like snow leopards, golden langurs, takins & hornbills. Ideal for trekking & wildlife lovers."
      },
      {
        "name": "Mariyang–Pekimodi Cultural Circuit",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_N2799mC2pKp3GlTtyyLSOkwozlcxd79C0A&s",
        "description":
        "Scenic hillock villages inhabited by Adi tribes—experience Ponung dance, Solung festival & traditional life."
      },
      {
        "name": "Tuting–Gelling Adventure Trail",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkH05rpbLmXP28EI6AYbXXqAKBFABFa-8IRg&s",
        "description":
        "Explore Dampo Tso lake, Sibe-Re waterfall, Kapangla Pass & Buddhist culture on the banks of Siang River at the border region."
      },
    ],



    "West Siang (पश्चिम सियांग)": [
      {
        "name": "Aalo (Along) Town (आलॉन्ग / आलू नगर)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_N2799mC2pKp3GlTtyyLSOkwozlcxd79C0A&s",
        "description":
        "Aalo, the headquarters of West Siang, is situated at the confluence of Sipu and Siyom rivers. It is famous for orange orchards, tribal culture, hanging bridges, and scenic landscapes."
      },
      {
        "name": "Mechuka Valley (मेचुका घाटी)",
        "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/7f/6f/0d/mechuka-valley.jpg?w=900&h=500&s=1",
        "description":
        "Mechuka is a breathtaking valley near the Indo-China border, surrounded by snow-clad mountains. It is well known for its 400-year-old Buddhist monastery, trekking, and adventure tourism."
      },
      {
        "name": "Siko Dido Waterfall (सिको दिदो जलप्रपात)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL3ma0-xapDQj2kzPjYk7ay9UXzUSHWGg7qA&s",
        "description":
        "A beautiful and serene waterfall near Aalo, attracting tourists with its scenic beauty and peaceful atmosphere. It is a must-visit spot for nature lovers."
      },
    ],


    "Shi-Yomi (शि-योमी)": [

      {
        "name": "Samten Yongcha Monastery (समतेन योंगचा मठ)",
        "image": "https://i.ytimg.com/vi/e9zKJc7YA1w/hqdefault.jpg",
        "description":
        "लगभग 400 साल पुराना यह बौद्ध मठ मेचुका घाटी के ऊँचे पहाड़ पर स्थित है। यहाँ से पूरी घाटी का अद्भुत दृश्य दिखाई देता है और यह धार्मिक दृष्टि से भी महत्वपूर्ण है।\n\nThis 400-year-old Buddhist monastery is perched on a hilltop in Mechuka Valley. It offers panoramic views of the valley and holds great spiritual and cultural significance."
      },
      {
        "name": "Dorjeeling Village (डोरजीलिंग गाँव)",
        "image": "https://media-cdn.tripadvisor.com/media/photo-s/0e/46/53/93/kabu-village.jpg",
        "description":
        "एक पारंपरिक आदिवासी गाँव जो अपनी लकड़ी के घरों, शांत वातावरण और अनोखी संस्कृति के लिए प्रसिद्ध है। यह प्रकृति प्रेमियों और फोटोग्राफी के शौकीनों के लिए स्वर्ग है।\n\nA traditional tribal village known for its wooden houses, serene environment, and unique culture. It is a paradise for nature lovers and photography enthusiasts."
      },
    ],



    "Tirap (तिराप)": [
      {
        "name": "Khonsa (खोंसा)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEYpzd9_LtGhatQjsPPjKVUPijhS9YgKq7ug&s",
        "description":
        "तिराप जिले का मुख्यालय, जो हरे-भरे पहाड़ों और जनजातीय संस्कृति के लिए प्रसिद्ध है। यहाँ के बाज़ारों में हस्तशिल्प और बांस के बने सामान विशेष आकर्षण हैं।\n\nThe headquarters of Tirap district, surrounded by lush green hills and rich tribal culture. The local markets are known for handicrafts and bamboo products."
      },
],
    "Longding (लोंगडिंग)": [
      {
        "name": "Longding Town (लोंगडिंग नगर)",
        "image": "https://i.ytimg.com/vi/wgvgHdKat2o/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDV8R2Z4f8jCFiRq2cvsiwLVWY7qg",
        "description":
        "लोंगडिंग जिला मुख्यालय, जो वानचो जनजाति की संस्कृति और परंपराओं का केंद्र है। यह जगह प्राकृतिक सौंदर्य और पहाड़ी दृश्यों के लिए प्रसिद्ध है।\n\nThe headquarters of Longding district, known as the cultural hub of the Wancho tribe. It is popular for its natural beauty and hilly landscapes."
      },
],
    "Namsai (नमसाई)": [
      {
        "name": "Golden Pagoda (स्वर्ण पगोडा, कोन्गम)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxGyAfcrNsG-gBM4EIve6mz-I9xWJB8akf7g&s",
        "description":
        "स्वर्ण पगोडा नमसाई का सबसे प्रसिद्ध धार्मिक स्थल है, जिसे कोन्गम भी कहा जाता है। यह सुंदर बौद्ध मठ अपनी अनोखी वास्तुकला और शांति के वातावरण के लिए प्रसिद्ध है।\n\nThe Golden Pagoda, also known as Kongmu Kham, is the most famous landmark of Namsai. This beautiful Buddhist monastery is renowned for its unique architecture and serene ambiance."
      },
      {
        "name": "Parashuram Kund (परशुराम कुंड)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOtshJSKsoBnfFDfzMjFjs9JM9L7oaqwG5tg&s",
        "description":
        "ब्रहमपुत्र नदी की सहायक लोहित नदी के तट पर स्थित, परशुराम कुंड हिंदुओं का पवित्र तीर्थ स्थल है। मकर संक्रांति पर हजारों श्रद्धालु यहाँ स्नान करते हैं।\n\nLocated on the banks of the Lohit River, Parashuram Kund is a sacred pilgrimage site for Hindus. Thousands of devotees take a holy dip here during the Makar Sankranti festival."
      },
      {
        "name": "Empong Monastery (एम्पॉन्ग मठ)",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS09JwsXE7LaQVsV-ATOcZR9kGJXZ8H9N-h1A&s",
        "description":
        "यह मठ नमसाई क्षेत्र के बौद्ध समुदाय के लिए महत्वपूर्ण धार्मिक स्थल है। यहाँ ध्यान, प्रार्थना और पारंपरिक त्योहार मनाए जाते हैं।\n\nThis monastery is an important religious site for the Buddhist community of Namsai. It is known for meditation, prayers, and celebration of traditional festivals."
      },
],
  "Dibang Valley (दिबांग घाटी)": [
    {
      "name": "Mehao Wildlife Sanctuary (मेहाओ वन्यजीव अभयारण्य)",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg5-QnTpQOb64O0zEwvbwO44KzGTD0n_M2iw&s",
      "description":
      "मेहाओ वन्यजीव अभयारण्य अपनी हरी-भरी पहाड़ियों, विविध जीव-जंतुओं और खूबसूरत मेहाओ झील के लिए प्रसिद्ध है। यह ट्रेकिंग और प्रकृति प्रेमियों के लिए स्वर्ग समान है।\n\nMehao Wildlife Sanctuary is famous for its lush green hills, rich biodiversity, and the beautiful Mehao Lake. It is a paradise for trekking and nature lovers."
    },
    {
      "name": "Roing (रोइंग)",
      "image": "https://img.traveltriangle.com/blog/wp-content/uploads/2024/08/atm.jpg",
      "description":
      "रोइंग दिबांग घाटी का मुख्य नगर है। यह स्थान पहाड़ों, नदियों और प्राकृतिक दृश्यों से घिरा हुआ है। यह जिले का सांस्कृतिक और पर्यटन केंद्र भी है।\n\nRoing is the headquarters of Dibang Valley, surrounded by mountains and rivers. It serves as both a cultural and tourism hub of the district."
    },
    {
      "name": "Mayudia Pass (मायुदिया दर्रा)",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDgSTENY0ocJAPQaYKoWgSozdYfnHj417Juw&s",
      "description":
      "मायुदिया दर्रा अपनी बर्फ से ढकी चोटियों और अद्भुत दृश्यों के लिए प्रसिद्ध है। यह सर्दियों में बर्फबारी का अनुभव करने के लिए सबसे उपयुक्त स्थान है।\n\nMayudia Pass is well known for its snow-covered peaks and breathtaking views. It is the best place to enjoy snowfall during winters."
    },


],












}; // <-- Correct closing of map

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