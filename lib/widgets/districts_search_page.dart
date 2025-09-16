import 'package:flutter/material.dart';
import '../models/district_model.dart';

class DistrictsSearchPage extends StatefulWidget {
  final String stateName;
  final List<District> districts;

  const DistrictsSearchPage({
    super.key,
    required this.stateName,
    required this.districts,
  });

  @override
  _DistrictsSearchPageState createState() => _DistrictsSearchPageState();
}

class _DistrictsSearchPageState extends State<DistrictsSearchPage> {
  String query = "";

  @override
  Widget build(BuildContext context) {
    final filtered = widget.districts.where((district) {
      final name = district.name.toLowerCase();
      final desc = district.description.toLowerCase();
      return name.contains(query.toLowerCase()) ||
          desc.contains(query.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.stateName} Districts"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search District...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (val) {
                setState(() {
                  query = val;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                final district = filtered[index];
                return ListTile(
                  leading: Image.asset(
                    district.image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(district.name),
                  subtitle: Text(
                    district.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
