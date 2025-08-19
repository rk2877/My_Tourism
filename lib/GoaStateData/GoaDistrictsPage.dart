import 'package:flutter/material.dart';
import 'TouristPlacesPage.dart';

class GoaDistrictsPage extends StatelessWidget {
  final List<Map<String, String>> districts = [
    {
      "name": "North Goa (उत्तर गोवा)",
      "image": "assets/images/north_goa.jpg",
      "description":
      "North Goa is famous for vibrant beaches, forts, and nightlife. उत्तर गोवा अपने जीवंत समुद्र तटों, किलों और रात्रि जीवन के लिए प्रसिद्ध है।"
    },
    {
      "name": "South Goa (दक्षिण गोवा)",
      "image": "assets/images/south_goa.jpg",
      "description":
      "South Goa offers serene beaches, Portuguese heritage, and peaceful surroundings. दक्षिण गोवा शांत समुद्र तटों, पुर्तगाली विरासत और शांत वातावरण के लिए जाना जाता है।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goa Districts (गोवा के ज़िले)"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          final district = districts[index];
          return Card(
            margin: EdgeInsets.all(8),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 4,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TouristPlacesPage(
                      districtName: district["name"]!,
                    ),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // District Name
                    Text(
                      district["name"]!,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    // District Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        district["image"]!,
                        width: double.infinity,
                        height: 180,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: double.infinity,
                            height: 180,
                            color: Colors.grey[300],
                            child: Icon(Icons.image, size: 50),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 8),
                    // District Description
                    Text(
                      district["description"]!,
                      style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
