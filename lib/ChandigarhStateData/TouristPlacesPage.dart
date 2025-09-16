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

  // ✅ Map with districtName as key
  final Map<String, List<Map<String, String>>> districtPlaces = {
    "Chandigarh (चंडीगढ़)": [
      {
        "name": "Rock Garden (रॉक गार्डन)",
        "image":
        "https://cdn.s3waas.gov.in/s303afdbd66e7929b125f8597834fa83a4/uploads/bfi_thumb/2018030953-olw6914cqdjp12kx28sp86k4r4ebfzpv3th47p3htu.jpg",
        "description":
        "रॉक गार्डन चंडीगढ़ का प्रसिद्ध पर्यटक स्थल है जिसमें लाखों कचरे से बने मूर्तियां हैं।\n\nChandigarh’s iconic Rock Garden is adorned with thousands of sculptures made from recycled waste."
      },
      {
        "name": "Sukhna Lake (सुखना झील)",
        "image":
        "https://cdn.s3waas.gov.in/s303afdbd66e7929b125f8597834fa83a4/uploads/bfi_thumb/2018030930-olw6914cqdjp12kx28sp86k4r4ebfzpv3th47p3htu.jpg",
        "description":
        "शिवालिक की तलहटी में स्थित सुंदर कृत्रिम झील, नौकायन और पिकनिक के लिए प्रसिद्ध।\n\nA serene man-made lake at the foothills of Shivaliks, ideal for boating and picnics."
      },
      {
        "name": "Rose Garden (रोज गार्डन)",
        "image":
        "https://cdn.s3waas.gov.in/s303afdbd66e7929b125f8597834fa83a4/uploads/bfi_thumb/2018041030-olw6930141m9oai6r9lyd631xw51vdxbs2s3690phe.jpg",
        "description":
        "एशिया का सबसे बड़ा गोलाबारु किस्में वाले गुलाब जिसमे 50,000 से अधिक पौधे हैं।\n\nAsia's largest rose garden with over 50,000 rose bushes across 1,600 varieties."
      },
      {
        "name": "Leisure Valley (लीजर वैली)",
        "image":
        "https://cdn.s3waas.gov.in/s303afdbd66e7929b125f8597834fa83a4/uploads/bfi_thumb/2018030999-olw69226x7kzcojjwr7bsoblci9onotlfy4loz23nm.jpg",
        "description":
        "शहर के बीचों-बीच फैला हरियाली से भरा पार्क, शांति और सैर के लिए उपयुक्त।\n\nA sprawling green corridor in the heart of the city, perfect for relaxation and walks."
      },
      {
        "name": "Capitol Complex (कैपिटोल कॉम्प्लेक्स)",
        "image":
        "https://cdn.s3waas.gov.in/s303afdbd66e7929b125f8597834fa83a4/uploads/bfi_thumb/2025011450-qzzib8m0efc9uw823xls4sbfnn1f2kz3o2yaupbf2a.jpg",
        "description":
        "Le Corbusier द्वारा डिज़ाइन की गई एक UNESCO विश्व धरोहर। आधुनिक वास्तुकला की मिसाल।\n\nA UNESCO World Heritage Site designed by Le Corbusier, exemplifying modernist architecture."
      },
      {
        "name": "Government Museum & Art Gallery (सरकारी म्यूज़ियम)",
        "image":
        "https://lh3.googleusercontent.com/gps-cs-s/AC9h4noVmhaljgcv1aWfJ3opp0KZMzG1bxPhE0gRy41osO1JQ89x4FKP8YQL4OzlPXxdnKeMdRBbjOdL2qfJ7XafA1H9t4T2Q8rDDPL1iTOABuPBQYfQf-Nt_3VMJtDlooq28Tc0ShDUbQ=s1360-w1360-h1020-rw",
        "description":
        "यह संग्रहालय पांडव और मध्यकालीन भारतीय कलाकृतियों, मिनिएचर पेंटिंग्स, और स्कल्पचर के लिए प्रसिद्ध है।\n\nThis museum houses an impressive collection of Gandharan sculptures, miniature paintings, and tribal art."
      },
      {
        "name": "Elante Mall (एलांते मॉल)",
        "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/81/80/07/elante-mall.jpg?w=700&h=400&s=1",
        "description":
        "चंडीगढ़ का सबसे बड़ा मॉल, जहां शॉपिंग, भोजन, और मनोरंजन के विकल्प उपलब्ध हैं।\n\nThe largest mall in North India offering shopping, dining, and entertainment under one roof."
      },
      {
        "name": "Japanese Garden (जापानी गार्डन)",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNX-nz-32lJcvEncZyv1AgT53WID-7pqHBGu93n8A0anz9DSY_&s",
        "description":
        "जापानी शैली में निर्मित शांतिपूर्ण उद्यान, जिसमें पागोडा, तालाब और मूर्तियाँ शामिल हैं।\n\nA peaceful, Japanese-themed garden featuring pagodas, ponds, and serene pathways."
      },
      {
        "name": "Terraced Garden (टेरेस्ड गार्डन)",
        "image":
        "https://lh3.googleusercontent.com/p/AF1QipM7t6yVtONhh_Fy9tP1TB2N2dNO2p7jkZYWPGM_=s1360-w1360-h1020-rw",
        "description":
        "वार्षिक Chrysanthemum शो और संगीत फव्वारे के लिए प्रसिद्ध गार्डन।\n\nFamous for its annual Chrysanthemum show and musical fountain displays."
      },
      {
        "name": "War Memorial (वार मेमोरियल)",
        "image":
        "https://cdn.s3waas.gov.in/s303afdbd66e7929b125f8597834fa83a4/uploads/bfi_thumb/2025011444-qzzihck8tnpdbnckfkohc8tansxb3r8aiblx5g9ama.jpg",
        "description":
        "वार मेमोरियल भारत का सबसे बड़ा स्वतंत्रता पश्चात युद्ध स्मारक है।\n\nThe War Memorial is the largest post-independence war memorial of India, paying tribute to brave soldiers."
      },
    ]
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
          // 🔍 Search bar
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
          // 📍 List of places
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
